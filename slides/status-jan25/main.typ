
== Definition of the problem

- High latency & low throughput vs Many Ground Stations
- Current Technology
  - Private groundstations
  - Renting shared groundstations
- constellations
  - Starlink (600km) (only one with isl)
  - OneWeb (1200km)
  - Kuiper (600km) (not yet launched)

== Area of interest

- access protocol for UE satellite to constellation satellite
- billede fra "on the use"

== System models

- Weather missions.
	- Getting real time information about the weather will increase the performance of the weather models. 
- Emergency responder missions
	- For emergency responding (for example natural disaster responding) latency of information is paramount. 
- Military mission 
	- To get near realtime data of the battlefield is very important. 
- Hyperspectral imaging 
	- These missions create a large amount of data. Since the datalink is continous the amount of data that can be generated and downlinked can increase. 
- 6GnB? 
  - Both low latency and high throughput is important.
  - Or links with independent QoS requirements.

== Client models

- High throughput
  - Hyperspectral imaging
- Low latency
  - Emergency responder missions
- High throughput and low latency
  - 6GnB

== Satellite models

- radiation pattern
- antenna gain
osv...

== Initial Optimization

- Choosing the best link for each time slot
- Optimizing for throughput
- results
   - with/without handover time
   


= Ideas

== Discrete MODCODs 
-  Since the intersatellite links use MODCODs the achievable throughput is discrete 

== Satellite utilization
- Utilization modeling 
- Models based onearth cell not satellite
- simple model (high / low utilization)
- queuing model (M/M/1)

== Optimization reframing
- Minimize chance of failure to meet requirements
- Distributions instead of expectations
- Seperate optimization levels
  - Best physical links + modcod
  - of N candidates, choose one based on utilization 

== Implementation (hurdles)
- The optimization problem becomes a large very sparse problem to solve
- Seperate the problem into a deterministic part (done on central server), and a stochastic part(done on the UE)? 
- Multiarm bandit

