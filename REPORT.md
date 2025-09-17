# MP Report

## Personal Information

- Name: Krishna Mukesh Patel
- AID: A20594385

## Self-Evaluation Checklist

Tick the boxes (i.e., fill them with 'X's) that apply to your submission:

- [X] The simulator builds without error

- [X] The simulator runs on at least one configuration file without crashing

- [X] Verbose output (via the `-v` flag) is implemented

- [X] I used the provided starter code

- The simulator runs correctly (to the best of my knowledge) on the provided
  configuration file(s):

  - [X] conf/sim1.yaml

  - [X] conf/sim2.yaml

  - [X] conf/sim3.yaml

  - [X] conf/sim4.yaml

  - [X] conf/sim5.yaml

## Summary and Reflection

I designed the simulator for modularity and readability with well-defined classes. Using OOP, I implemented separate process types—SingletonProcess, PeriodicProcess, and StochasticProcess—each responsible for generating its own events. All events are merged and sorted by arrival time to preserve processing order, and the run loop efficiently computes wait times and aggregates per-process and overall statistics to match the required output format.

Meaningful outcomes emerged from event-driven simulation because its dynamic process interactions occurred between each other.The key challenge was to keep a precise track of transaction times while maintaining the right order of processing events.I enjoyed the study of different queueing system response patterns which became an educational experience.The project could have benefited from an initial explanation of different boundary situations.
