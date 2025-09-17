import 'dart:io';
import 'package:args/args.dart';
import 'package:yaml/yaml.dart';
import '../lib/simulator.dart';

void main(List<String> arguments) {
  // Set up command-line argument parser
  final argParser = ArgParser()
    ..addOption('conf', abbr: 'c', help: 'Path to the configuration file')
    ..addFlag('verbose',
        abbr: 'v',
        defaultsTo: false,
        negatable: false,
        help: 'Enable verbose logging');

  final results = argParser.parse(arguments);

  // print help message if the user omitted the config file path

  if (!results.wasParsed('conf')) {
    print(argParser.usage);
    exit(0);
  }

  // this flag is true if the user provided the verbose flag
  final verbose = results['verbose'] as bool;
  // get and check the config file path
  final file = File(results['conf']);
  if (!file.existsSync()) {
    print('Config file not found: ${results['conf']}');
    exit(1);
  }

  // load the config file
  final yamlString = file.readAsStringSync();
  final yamlData = loadYaml(yamlString);

   // create a simulator, run it, and print the report
  final simulator = Simulator(yamlData, isVerbose: verbose);
  simulator.run();
  simulator.printReport();
}