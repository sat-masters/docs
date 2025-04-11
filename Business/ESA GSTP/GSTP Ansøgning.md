---
modified: 2025-04-11T08:21:24+02:00
---

#### Outline the technology this activity addresses including the technical work to be undertaken. Briefly indicate the implementation schedule and requested budget.

* Intro which takes the proposal as a starting point. 
	* Creating a solar system internet starts by connecting Earth satellites

The development of this product should start with a focus on the Earth observation satellites. 
The use of DTN protocols stemms from the fact that the connection is intermitten.. 
Our proposal is to use existing infrastructure to minimize the disruptions (both in amount and time). 
To make a true "space internet " we can connect satellites to LEO infrastruture. 

Enable satellites to talk to each other through mega constellation enabling the "solar system internet" without the need for the information to travel to the earth first. 
Quantum computing? - hvis det er en fordel at gøre i rummet, så er det jo meget vigtigt at få delt den information hurtigt (pga. decoherence) her kan man ikke vente på groundstation pass. 

* Why our solution is relevant to this activity 

* What is our solution more technically

* Implementation schedule 
	* phase 1, 8 months
	* The activity states 8 moths is this realistic? 
		* Talk with someone. 
		* Can we ask for more?

Alberts forslag:
This activity addresses the advancement of Disruption Tolerant Networking (DTN) for next-generation space communication.
The main problem addressed by DTN solutions are the intermittent connectivity and long delays in space communication.
The current downlink model for small to medium satellites in Low Earth Orbit (LEO) is limited by ground station availability, making the use of solutions like Bundle Protocol (BP) necessary to ensure _data delivery_.  
We propose to use existing LEO infrastructure, such as OneWeb, Iridium, and Iris² to minimize the disruptions, both in amount and time.
The goal is to create a de-facto standard for downlink in small to medium LEO missions, and to enable seamless, resilient, and high-throughput internet in space.
The proposed architecture is a connectivity management module that will be integrated into the satellite's communication stack.
The module will be responsible for intelligently selecting and establishing links to relevant available Space Internet Providers (SIP), ensuring stable and reliable data transfer.
The module will interface with the [STANDARD RADIO INTERFACE] of the satellite radio module, and will receive data from the satellite's payload.
The project will span over 24 months, with a budget of 200,000 EUR.


- **Outline the technology**
- **Briefly indicate the implementation schedule and requested budget.**
	- 24 months
##### Budget
Salary $$3600 \cdot 2 \cdot 24 = 172 800$$
Materials $$27 200$$
Total: $$172 800+27 200 = 200 000$$


Maskinens forslag: 
"
#### Technology Outline and Technical Work

This activity addresses the advancement of Disruption Tolerant Networking (DTN) for next-generation space communication—starting not with Mars, but with **Earth observation satellites**. Our proposal views the **creation of a true Solar System Internet** as a staged process, beginning by connecting EO satellites via **existing Low Earth Orbit (LEO) infrastructure**, such as mega-constellations.

Currently, EO satellites experience intermittent contact with ground stations, leading to **delays, data bottlenecks, and missed opportunities**. By integrating them into space-based relay networks using **DTN protocols**, we reduce downtime, **increase data availability**, and move toward **always-on connectivity** in orbit.
"



#### Why is the development of this technology a priority to you company/organization? How will you develop this opportunity during and after the activity? What happens next (please include a timeline)?

* Purpose of our company is to develop this technology 
* What have we observed with the current way of doing it. 

* Collaboration between the European mega constellations. 
* Collaboration with Danish satellite building companies. 

* We see this product being the de-facto downlink solution for small to medium sized satellites In the coming years.
- When we have developed an MVP we will sell ad hoc to satelllite manufacturers and sell case by case. However we envision 
- That could lead to a collaboration with mega constellations.
- Product lifetime overview


Alberts forslag:
We are a startup focused on changing the connectivity paradigm for small and medium satellites in LEO.
Our mission is to lower the barriers to entry for satellite communication and enable **always-on connectivity** in space.
Currently, standalone satellite operators must invest in ground station infrastructure to downlink data, which is _costly and inefficient_. 
Our product will remove the hassle of ground station management, make the downlink design process easier and cheaper, and enable **real-time data services** for LEO satellite operators.
To realize this vision, we are applying for the GSTP program to develop a **Disruption Tolerant Networking (DTN) solution** as we believe that our solution plays a key role in the future **solar system internet**.
The immediate goal is to collaborate with **European mega-constellations** and **Danish satellite manufacturers** for integration in upcoming missions.
This will be the first step in our long-term vision of creating a **seamless, resilient, and high-throughput communication network** in space, making the barriers to entry in the satellite industry lower than ever before.

[NO TIMELINE?]


Maskinens forslag:
The development of this technology is central to our company’s mission: we were founded to enable seamless, resilient, and high-throughput communication in space.
This project represents not just an opportunity for us, but the exact kind of work we were created to do.

From our experience, the current downlink model for small and medium satellites is **limited by ground station availability, latency, and bandwidth constraints**. This is an outdated model—especially with the rapid deployment of **LEO mega constellations** that could be used as relays.

We see an opportunity to flip the model: instead of waiting for ground passes, **we route data through space**—leveraging **existing European LEO constellations** to relay and distribute traffic using DTN protocols. This is not only technically feasible but strategically important for Europe's autonomy in space communication infrastructure.

We are also working closely with **Danish satellite manufacturers**, who are looking for next-generation communication stacks to integrate into their upcoming missions. By aligning with their timelines and technical needs, we ensure this solution is **mission-driven and deployment-ready**.

Our ambition is for this product to become the **de-facto standard for downlink** in small to medium EO satellites. By embedding DTN into satellite operations and making relay-through-space the norm, we significantly **increase the reliability and availability of mission data**, reduce operational costs, and open the door to real-time services.


#### Detail the strategic, economic, social, etc. benefit this activity has to you company?

* Our history
* We are starting our company.
* This is our core technology. 
* This funding would accelerate the development of a technology we see as a essential part of the industry in the coming years. 
* (Would enable us to better compete against established companies)
* We will develop the technology anyways. 

#### Describe the financial commitment required for this activity. Include a breakdown by company/organization, showing member state, work packages etc. where appropriate.

* List of milestones that need to be reached
	* Who is responsible for each milestone
	* What is the "cost" of each milestone
	* Timeline i kronologisk rækkefølge
* Are there any financial commitment from the companies "own pockets"?
* All companies in DK?
* 
##### Timeline: 

- Integration with DTN protocols?
	- Just brief mention that DTN can be build on top of our solution.
- 
- Analysis deliverables. 
	- Performance of Legacy vs. new system on key metrics
	- Antenna design ITR vs. isotropic 
	- RF band pollution analysis
	- Performance analysis of DTN vs no DTN protocols
		- Performance with transport layer.  
- Simulation environment for multiple constellations, users and groundstations. 
	- Collaboration? Watch for IPR
	- Our self?
	- Watch out for Licenses

- Selection algorithm 
	- In high level language for demonstration
	- in compiled language which can run on embedded systems
	- What is input / output for this block?
- Choice of random access protocol
	- Maybe custom?
- Define system statemachine.
- Integration of system block and simulation environment.
- Simulation of multiple satellites using multiple constellations as cohesive network. 
- Hardware in the loop?

### APPENDIX / ANNEX

#### Who is involved ?

* Jens & Albert
	* Who are we etc.
* List of supervisors / mentors / advisors
	* Their qualifications
	* Background in the industry
	* Involvement in the project

#### Technical specification
In the legacy connectivity paradigm LEO satellites gather data throughout it's orbit, however communication with the satellite is only possible  when it's passing a ground station. This means critical data has to wait for a ground station pass to be downlinked.
This results in  intermittent connectivity and long delays. 
However every second several opportunities to establish a connection to the ground flys by overhead. 
If these opportunities can be utilized the connectivity of LEO satellites can be improved significantly. 
The legacy connectivity paradigm can be seen in the following figure.
![[legacy_topology]]
Our new connectivity paradigm utilizes existing infrastructure in space to essentially connect LEO satellites to the internet. 
The new communication paradigm can be seen in the following figure. 
![[New_topology]]
This enables a link which has higher throughput throughout the day and lower latency.
A sketch of the characteristics of the two connectivity paradigms can be seen below. 
![[throughput_legacy_vs_new]]

To enable this new paradigm a new architecture has to be used. This can be seen in the following figure: 
![[Drawing 2025-04-09 14.41.48.excalidraw]]
The new architecture contains the following elements: 
1. LEO satellite
	The LEO satellite is a satellite typically generating data, this could be for Earth observation or other things. 
2. Connection management system
	As there there can be several different constellation satellites visible at any given time a module is needed to facilitate the connection. 
	- Since the progression of the orbits of both the LEO satellite and the constellation satellites is deterministic, different characteristics of the link between any two satellites can be estimated. These characteristics inform the decision of which link to choose. 
3. Radio module
	The connection management module controls the radio which will then transmit the data 
4. Mega-constellation
	The data is then handed off to the mega constellation, through which the data is routed to the destination. 
5. Destination user
	Here the destination user(s) can access the data. The destination user(s) could be ground users but also other satellites in LEO. This could be edge compute centers or other similar satellites thereby creating a virtual inter satellite link. 




##### Interfaces
* Block diagram of "placement" of technology in current system infrastructure
* Interfaces that we use / expose
* (Vague description of optimization objective)
	* Unsure if this is too specific