= Appendix
== Who is Involved?

About our company and our mission?

*Main Contributors*
- Albert Werner Laursen

About Albert

- Jens Moeslund Larsen
About Jens

*Supporting Contributors*
- Petar Popovski
About Petar

- Israel Leyva-Mayorga
About Israel

- Jens Dalsgaard Nielsen
About Jens Dalsgaard

#pagebreak()
== Technical

The figure below illustrates the *Connectivity Management Module (CMM)* in relation to the relevant satellite subsystems.  
#image("Drawing 2025-04-09 14.41.48.excalidraw.svg")

The *CMM* is a key subsystem responsible for managing connectivity between the satellite and the designated *Space Internet Provider (SIP)*. It receives data from the satellite's payload and other onboard systems and ensures robust and continuous communication with the SIP. This is achieved through a standardized interface with the satellite's radio module, ensuring compatibility with various radio units and reducing integration complexity.

Functionally, the *CMM operates at the Data Link Layer (Layer 2)* of the OSI model. It receives Layer 3 network packets from the payload and encapsulates them in the Layer 2 format expected by the SIP's ground infrastructure. This abstraction enables the CMM to interface seamlessly with multiple SIP implementations without requiring changes to the payload or other upstream systems.
// TODO: Add a figure of the OSI model with the CMM in Layer 2
*[Make OSI model figure]*

Within a Low Earth Orbit (LEO) satellite network context, the CMM is responsible for establishing and maintaining the connection to the SIP node in orbit. Once the link is established, the SIP takes over the responsibility of routing the data via its satellite network to the appropriate ground station and ultimately to the end user.  
#image("New_topology.svg")

This architecture offers significant advantages in terms of modularity and interoperability. The CMM has been designed to be *SIP-agnostic*, supporting a wide range of providers and protocols. This design philosophy facilitates flexible integration into diverse satellite platforms and ensures forward compatibility as SIP technologies and standards evolve.

By abstracting Layer 2 functionality and standardizing the radio interface, the CMM enables a plug-and-play approach to connectivity management. This not only reduces time and cost during satellite integration but also supports *rapid adaptation to the dynamic landscape of space-based communication services*. The CMM's modular nature ensures its long-term applicability and value across multiple missions, contributing to the broader goal of *enhancing the competitiveness and sustainability of European satellite communication systems*.

== More figures yet to be included
#image("legacy_topology.svg")
#image("throughput_legacy_vs_new.svg")