#### Outline the technology this activity addresses including the technical work to be undertaken. Briefly indicate the implementation schedule and requested budget.

* Intro which takes the proposal as a starting point. 
	* Creating a solar system internet starts by connecting Earth satellites

The development of this product should start with a focus on the Earth observation satellites. 
The use of DTN protocols stemms from the fact that the connection is intermitten.. 
Our proposal is to use existing infrastructure to minimize the disruptions (both in amount and time). 
To make a true "space internet " we can connect satellites to LEO infrastruture. 



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
The current downlink model for small and medium satellites is limited by ground station availability, making the use of _technologies_ like Bundle Protocol (BP) necessary to ensure data delivery. 
With focus on Earth observation satellites, we propose to use existing Low Earth Orbit (LEO) infrastructure, such as OneWeb, Iridium, and Iris² to minimize the disruptions (both in amount and time).
The goal is to create a de-facto standard for downlink in small to medium LEO missions, and to enable seamless, resilient, and high-throughput internet in space.


Maskinens forslag: 
"
### Technology Outline and Technical Work

This activity addresses the advancement of Disruption Tolerant Networking (DTN) for next-generation space communication—starting not with Mars, but with **Earth observation satellites**. Our proposal views the **creation of a true Solar System Internet** as a staged process, beginning by connecting EO satellites via **existing Low Earth Orbit (LEO) infrastructure**, such as mega-constellations.

Currently, EO satellites experience intermittent contact with ground stations, leading to **delays, data bottlenecks, and missed opportunities**. By integrating them into space-based relay networks using **DTN protocols**, we reduce downtime, **increase data availability**, and move toward **always-on connectivity** in orbit.

We focus on:

- Applying **DTN concepts** to near-term, Earth-based assets to demonstrate practical value early in the roadmap.
    
- Using the **Bundle Protocol (BP)** and **BPSEC**, adapting them for real-world EO use cases with existing commercial and institutional infrastructure.
    
- Developing a network management layer that is **interoperable**, **secure**, and able to support **multi-actor missions** (space agencies, academia, commercial providers).
    

Our key innovation lies in **minimizing disruption—not just technically, but operationally—by using infrastructure that already exists**. By linking EO satellites to active LEO networks, we:

- Improve **throughput** and **latency**,
    
- Create a **pathway to full in-space internetworking**, and
    
- Build a testbed for future Lunar and planetary DTN deployments.
    

Technical tasks will include:

- Developing DTN network management concepts optimized for EO satellite constellations,
    
- Prototyping and simulating DTN-enabled EO data pipelines using commercial relays,
    
- Validating operational models in simulated and real data delivery scenarios,
    
- Ensuring interoperability with ESA and CCSDS standards.
    

---

### Implementation Schedule

We propose a **phased approach** aligned with the GSTP activity, but framed around our goal of EO integration first:

- **Phase 1 – Concept consolidation and design (8 months, €350k)**  
    Define the DTN architecture for Earth satellites using LEO infrastructure. Assess mission impact, security policies (BPSEC), and ground-to-space integration.
    
- **Phase 2 – Prototyping and demonstration (16 months, €550k)**  
    Build a simulation and prototype testbed. Demonstrate end-to-end connectivity for EO missions via LEO constellations, with DTN routing and security. Refine models for interoperability and contribute to standards."




* Requested budget.
* Justify the budget. (lav budgettet)


#### Why is the development of this technology a priority to you company/organization? How will you develop this opportunity during and after the activity? What happens next (please include a timeline)?

* Purpose of our company is to develop this technology 
* What have we observed with the current way of doing it. 

* Collaboration between the European mega constellations. 
* Collaboration with Danish satellite building companies. 

* We see this product being the de-facto downlink solution for small to medium sized satellites In the coming years.


The development of this technology is central to our company’s mission: we were founded to enable seamless, resilient, and high-throughput communication in space.
This project represents not just an opportunity for us, but the exact kind of work we were created to do.

From our experience, the current downlink model for small and medium satellites is **limited by ground station availability, latency, and bandwidth constraints**. This is an outdated model—especially with the rapid deployment of **LEO mega constellations** that could be used as relays.

We see an opportunity to flip the model: instead of waiting for ground passes, **we route data through space**—leveraging **existing European LEO constellations** to relay and distribute traffic using DTN protocols. This is not only technically feasible but strategically important for Europe's autonomy in space communication infrastructure.

We are also working closely with **Danish satellite manufacturers**, who are looking for next-generation communication stacks to integrate into their upcoming missions. By aligning with their timelines and technical needs, we ensure this solution is **mission-driven and deployment-ready**.

Our ambition is for this product to become the **de-facto standard for downlink** in small to medium EO satellites. By embedding DTN into satellite operations and making relay-through-space the norm, we significantly **increase the reliability and availability of mission data**, reduce operational costs, and open the door to real-time services.

M
### During and After the Activity – What Happens Next

**During the activity**, we will:

- Develop a prototype and validate it with simulation and hardware-in-the-loop.
    
- Start integration pilots with Danish-built EO satellites.
    
- Initiate interoperability tests with at least one European LEO constellation operator.
    

**After the activity**, we will:

- Productize the DTN communication stack, including software, integration support, and testing tools.
    
- Launch flight demonstrations in collaboration with our satellite manufacturing partners.
    
- Scale integration support and certification to make our system a drop-in module for commercial and institutional EO missions.
    

**Timeline:**

- **Year 1**: Concept validation, architecture definition, partner coordination.
    
- **Year 2**: Prototyping, mission integration, operational validation.
    
- **Year 3 onward**: Commercial rollout, live satellite deployments, ongoing refinement.



#### Detail the strategic, economic, social, etc. benefit this activity has to you company?

* We are starting our company.
* This is our core technology. 
* This funding would accelerate the development of a technology we see as a essential part of the industry in the coming years. 
* (Would enable us to better compete against established companies)
* We will develop the technology anyways. 

#### Describe the financial commitment required for this activity. Include a breakdown by company/organization, showing member state, work packages etc. where appropriate.

* List of milestones that need to be reached
	* Who is responsible for each milestone
	* What is the "cost" of each milestone
* Are there any financial commitment from the companies "own pockets"?
* All companies in DK?


### APPENDIX / ANNEX

#### Who is involved ?

* Jens & Albert
	* Who are we etc.
* List of supervisors / mentors / advisors
	* Their qualifications
	* Background in the industry
	* Involvement in the project

#### Technical specification
Primarily for the ESA engineers who will be advising UFM 
In th

The proposed architecture is as seen in the following figure: 
![[Drawing 2025-04-09 14.41.48.excalidraw]]
The LEO satellite is a satellite typically generating data, this could be for Earth observation or other things. 

* Block diagram of "placement" of technology in current system infrastructure
* Interfaces that we use / expose
* (Vague description of optimization objective)
	* Unsure if this is too specific