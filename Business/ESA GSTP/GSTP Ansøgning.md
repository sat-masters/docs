---
modified: 2025-04-11T10:50:16+02:00
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
A more detailed explanation of the technology can be found in Annex 2.
The goal is to create a de-facto standard for downlink in small to medium LEO missions, and to enable seamless, resilient, and high-throughput internet in space.
The proposed architecture is a connectivity management module that will be integrated into the satellite's communication stack.
The module will be responsible for intelligently selecting and establishing links to relevant available Space Internet Providers (SIP), ensuring stable and reliable data transfer.
The module will interface with the [STANDARD RADIO INTERFACE] of the satellite radio module, and will receive data from the satellite's payload.
The project will span over 24 months, with a budget of 200,000 EUR.

##### Budget
Salary $$3600 \cdot 2 \cdot 24 = 172 800$$
Materials $$27 200$$
Total: $$172 800+27 200 = 200 000$$


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
We are a startup dedicated to revolutionizing connectivity for small and medium satellites in LEO by lowering the barriers to entry for satellite communications and enabling **always-on connectivity** in space. The current model forces standalone satellite operators to invest heavily in ground station infrastructure, a costly and inefficient requirement. Our innovative product eliminates the need for extensive ground station management, streamlines the downlink design process, and facilitates **real-time data services** for LEO operators.

To achieve these goals, we are applying to the GSTP program to develop a **Disruption Tolerant Networking (DTN) solution**, as we believe that our solution plays a key role in the future **solar system internet**. In the near term, our focus will be on collaborating with prominent **European mega-constellations** and **Danish satellite manufacturers** for seamless integration in upcoming missions. This project marks the initial phase of our strategic roadmap, which ultimately aims to establish a **seamless, resilient, and high-throughput communication network** in space, thereby significantly lowering entry barriers and bolstering Europe’s competitive stance in the space sector.

[TIMELINE IS NOT FINAL]
Our development will follow a structured timeline: the first 6 months will focus on system architecture, design specification, and partner onboarding. The subsequent 12 months will cover subsystem development, iterative testing, and integration with simulated mission environments. By month 24, we aim to be fully ready for pilot integrations with early adopters, setting the stage for real-world validation and operational scaling beyond the project’s formal end.


#### Detail the strategic, economic, social, etc. benefit this activity has to you company?

* Our history
* We are starting our company.
* This is our core technology. 
* This funding would accelerate the development of a technology we see as a essential part of the industry in the coming years. 
* (Would enable us to better compete against established companies)
* We will develop the technology anyways. 


This funding is critical to accelerating our development roadmap. It will enable us to bring our core technology to market faster and more efficiently, creating a competitive edge against established companies. By reducing time-to-market, we can secure vital partnerships, enhance our intellectual property portfolio, and better position ourselves within a rapidly evolving global landscape.

Economically, the accelerated development brought by this grant will lower entry barriers in a market that has long been dominated by larger players. The improved efficiency and faster realization of revenue streams will allow us to reinvest in further research and development, laying the foundation for sustained long-term growth.

Accelerating this technology not only benefits our company but also boosts the global competitiveness of European mega-constellations. By enhancing our capabilities, we support a collaborative ecosystem that strengthens both individual market positions and Europe’s overall presence in the space sector.

Socially, the project promises substantial positive impacts. Improved technology can lead to better weather forecasting and increased security, delivering significant benefits to a range of sectors, including farming, defense, environmental monitoring, and disaster management. Additionally, advancing this technology will contribute to European autonomy.

#### Describe the financial commitment required for this activity. Include a breakdown by company/organization, showing member state, work packages etc. where appropriate.

* List of milestones that need to be reached
	* Who is responsible for each milestone
	* What is the "cost" of each milestone
	* Timeline i kronologisk rækkefølge
* Are there any financial commitment from the companies "own pockets"?
* All companies in DK?
* 
##### Timeline: 

- Analysis deliverables. 
	- Performance of Legacy vs. new system on key metrics
	- Antenna design ITR vs. isotropic 
	- RF band pollution analysis
	- Performance analysis of DTN vs no DTN protocols
		- Performance with transport layer.  
- Simulation environment for multiple constellations, users and groundstations. 

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

##### WP 1 Simulation
**Duration** [X months]

**Budget** [salary * X]

**Activities**
This activity includes integration of core technologies in simulation environment to evaluate the performance of the proposed architecture. 

**Deliverables**
- ???

##### WP 2 Technology development and prototyping
**Duration**[Y months]

**Budget** [salary *Y]

**Activities**
This activity supports the core technology design and intellectual property development.

##### WP 3 Analysis and evaluation
**Duration**[Z months]

**Budget** [salary *Z]

**Activities**
This activity includes the analysis of the proposed architecture in the DTN context.

**Deliverables**
- Performance of Legacy vs. new system on key metrics
- Performance analysis of DTN vs no DTN protocols
- Simulation of multiple satellites using multiple constellations as cohesive network. 

[SKAL nedenstående være her?]
##### WP 4
**Duration**[Æ months]

**Budget**[salary *Æ]

**Activities**
This activity supports the integration of the system with hardware to run HIL simulations. 

### APPENDIX / ANNEX

#### Who is involved ?

* Jens & Albert
	* Two electronics engineering master students from Aalborg University, with a focus on wireless communication. 
	* Have worked on satellites throughout our studies. 
	* 
	* Who are we etc.
* List of supervisors / mentors / advisors
	* Israel: 
	* Jens: 
		* Have participated in the cubesat revolution and led the well known AAU SATLAB. 
			CV: [Insert the table the right way]
	* ![[Jens-CV.png]]
	


	* Petar: 
		Petar Popovski (Fellow, IEEE) is a Professor at Aalborg University, where he heads the section on Connectivity and a Visiting Excellence Chair at the University of Bremen. He received his Dipl.-Ing and M. Sc. degrees in communication engineering from the University of Sts. Cyril and Methodius in Skopje and the Ph.D. degree from Aalborg University in 2005. He received an ERC Consolidator Grant (2015), the Danish Elite Researcher Award (2016), the IEEE Fred W. Ellersick Prize (2016), the IEEE Stephen O. Rice Prize (2018), the Technical Achievement Award from the IEEE Technical Committee on Smart Grid Communications (2019), the Danish Telecommunication Prize (2020) and Villum Investigator Grant (2021). He was a Member at Large of the Board of Governors of IEEE Communication Society 2019-2021. He is currently an Editor-in-Chief of the IEEE Journal on Selected Areas in Communications and a Chair of the IEEE Communication Theory Technical Committee. His research interests are in the area of wireless communication and communication theory. He authored the book ”Wireless Connectivity: An Intuitive and Fundamental Guide
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

##### Architectural overview

The figure below shows the Connectivity Management Module (CMM) in respect to the relevant satellite subsystems.
![[Drawing 2025-04-09 14.41.48.excalidraw]]
The CMM receives data from the satellite's payload, and other subsystems.
The CMM is responsible for establishing and maintaining the connection to the relevant Space Internet Provider (SIP).
The CMM interfaces with the satellite's radio module through a standardized radio interface.


In the context of the OSI model, the CMM operates at the Data Link Layer (Layer 2).
The module recieves Layer 3 packets from the payload and mimics the Layer 2 representation expected by the recieving SIP node.
[INSERT OSI MODEL MAYBE?]

In the context of the LEO satellite network, the CMM facilitates the connection to the SIP node, whereafter the SIP is responsible for routing the data to a ground station, and subsequently to the end user.
This model is illustrated in the figure below.
![[New_topology]]
This approach allows for a seamless integration of the CMM into existing satellite architectures, while also providing the flexibility to adapt to different SIPs and communication protocols in a modular fashion.
The CMM is designed to be agnostic to the specific SIP used, allowing for easy integration with different providers and protocols. 
This modularity enables the CMM to adapt to the evolving landscape of space communication, ensuring long-term viability and relevance in the rapidly changing space industry.