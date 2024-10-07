---
title: "A Distributed Collaborative Data Relay Method: VLEO Earth Observation Constellation Cross-Layer Access to the Mega-LEO Satellite Internet"
aliases: 
url: https://www.authorea.com/doi/full/10.36227/techrxiv.172349600.02868732?commit=4d2234826b7aa32b9408d55e6c0e6610c6dc6bd6 
doi: 10.36227/techrxiv.172349600.02868732/v1 
citekey: hanDistributedCollaborativeData
tags: simulation, model, FSO, routing 
type: paper
created: 
modified:
---

# Paper Details
|             |                                    |
| ----------- | ---------------------------------- |
| Authors     | Kai Han, Marie Siew, Bingbing Xu, Shengjun Guo, Tianxiang Wang, Wenbin Gong, Tony Q. S. Quek, Qianyi Ren                        |
| doi         | [10.36227/techrxiv.172349600.02868732/v1](https://doi.org/10.36227/techrxiv.172349600.02868732/v1) |
>[!abstract]-
>With the rapid development of large-scale Low Earth Orbit (LEO) satellite internet, Very Low Earth Orbit (VLEO) Earth observation constellations are increasingly using Inter-Satellite Links (LISLs) for cross-layer access to Internet satellites as an e

---
# Summary

This paper primarily aims to develop an algorithm for routing in a collaborative system of 2 constellations.

It is assumed that each constellation has ISL using FSO and linking between the constellation requires an intra layer link to convert into an inter layer link, thus changing the topology of the networks.

The paper focuses on developing a distributed routing mechanism using graph optimization.

# General Thoughts

The paper presents FSO links as the only obvious solution to constellation relaying.  
It may be because it deals with the cooperative system of two constellations, and in that sense, linking with FSO makes more obvious sense.

## Stuff we can use

Although the paper mostly deals with routing, there are some access models presented for FSO links, that could be of use.

## Criticism

When establishing the ISL FSO link, they assume that signaling is done using radio communication.  
This makes sense as broadcasting is not possible with FSO links. However, they do not argue that the hardware is present, for this to be possible.  
It may be a good idea to find out whether Starlink uses radio for signaling between constellation satellites.

[Edit note](zotero://select/groups/5655478/items/NU4XI3XL)

---

# Annotations

| <mark class="hltr-grey"> Highlight Color</mark> | Meaning          |
| ----------------------------------------------- | ---------------- |
| <mark class="hltr-red">Red</mark>               | Aim to Improve   |
| <mark class="hltr-yellow">Yellow</mark>         | Neutral comments |
| <mark class="hltr-green">Green</mark>           | Aim to replicate |
| <mark class="hltr-blue">Blue</mark>             | Further Reading  |

- <mark class="hltr-yellow">"For example, the data collection rates of the U.S. GeoEye-1 and China’s Resource One 02D satellites are 8.4 Gbps and 3.5 Gbps, respectively, but their downlink rates are only 740 Mbps and 900 Mbps [4]"</mark> [Page 2](zotero://open-pdf/groups/5655478/items/FPBRDQEE?page=1&annotation=I4SWVVPW)
	 - #further_reading, #metrics
	 - Real data collection rates
  <br>
- ![](Attachments/zotero/hanDistributedCollaborativeData/hanDistributedCollaborativeData-2-x310-y270.png)
	 - #figure, #overview
	 - Downlink types
  <br>
- <mark class="hltr-blue">"Some researchers have proposed using communication satellites for data relay services due to their longer visibility windows with ground stations. Geostationary Earth Orbit (GEO) and Medium Earth Orbit (MEO) satellites, which are positioned in higher orbits, are preferred for these relays [6], [7], [8]."</mark> [Page 2](zotero://open-pdf/groups/5655478/items/FPBRDQEE?page=1&annotation=8MD5WG84)
	 - #further_reading
	 - Read these to understand why GEO & MEO are preferred for relay service.
It is probably due to lager FOV, but should still be looked into.
  <br>
- <mark class="hltr-blue">"At the same time, Free-Space Optical (FSO) links, or laser links, are gaining attention for their strong anti-interference capabilities and high transmission speeds compared to radio links [13]."</mark> [Page 3](zotero://open-pdf/groups/5655478/items/FPBRDQEE?page=2&annotation=PPPXULYZ)
	 - #further_reading, #FSO

  <br>
- <mark class="hltr-blue">"Multi-layer satellite networks can achieve cross-layer communication through Laser Inter-Satellite Links (LISLs) [15]."</mark> [Page 3](zotero://open-pdf/groups/5655478/items/FPBRDQEE?page=2&annotation=JCRMTXEW)
	 - #further_reading, #FSO, #cross-layer
	 - Laser links cross layer
  <br>
- <mark class="hltr-blue">"Consequently, existing methods for optimizing radio cross-layer link topologies are unsuitable for optical link scenarios [12]."</mark> [Page 3](zotero://open-pdf/groups/5655478/items/FPBRDQEE?page=2&annotation=P929WZ5S)
	 - #further_reading, #FSO, #cross-layer
	 - Look into why current cross-layer links don't work for FSO
  <br>
- <mark class="hltr-yellow">"• Laser Quantity and Installation Location Issues: In existing research scenarios [17], [18], communication satellites must be equipped with additional lasers specifically for crosslayer access. In practical scenarios, only lasers on both observation and communication satellites, used for intra-layer ISLs, can be reallocated for cross-layer topologies when needed. This reallocation can disrupt the original topologies of both networks."</mark> [Page 3](zotero://open-pdf/groups/5655478/items/FPBRDQEE?page=2&annotation=F2NKCX2N)
	 - #FSO, #cross-layer
	 - This raises an important concern for FSO cross-layer links:

1. Existing infrastructure must be able to communicate duplex to UE, which implies using current hardware used for maintaining intra-layer links.

2. Using these laser terminals for cross-layer implies temporarily removing the original link, that laser terminal was maintaining.
  <br>
- ![](Attachments/zotero/hanDistributedCollaborativeData/hanDistributedCollaborativeData-4-x43-y549.png)
	 - #cross-layer, #figure
	 - Illustration of before mentioned problem with laser links only serving one link at a time
  <br>
- <mark class="hltr-yellow">"• In engineering applications, VLEO and LEO satellites each have their own independent and complete inter-satellite routing networks enabled by onboard lasers. • There are no dedicated cross-layer access lasers on VLEO and LEO satellites. The lasers used to build intra-layer inter-satellite routing networks are also repurposed for establishing cross-layer topologies."</mark> [Page 4](zotero://open-pdf/groups/5655478/items/FPBRDQEE?page=3&annotation=XCCSES7A)
	 - #criticism
	 - The paper focuses heavily on "engineering applications", this however seems to just mean the exact case they are considering (Dove constellation)
  <br>
- <mark class="hltr-blue">"In this study, we focus on the topology optimization between VLEO and LEO satellites (the red lightning line in Fig. 3). Hence, the network topology and routing amongst VLEO and LEO satellites are set to the Grid-Mesh +, and shortest path strategy by default [17], [21], respectively1."</mark> [Page 5](zotero://open-pdf/groups/5655478/items/FPBRDQEE?page=4&annotation=NH5A6VIE)
	 - #further_reading
	 - Try to understand what this means
  <br>
- ![](Attachments/zotero/hanDistributedCollaborativeData/hanDistributedCollaborativeData-5-x47-y230.png)
	 - #metrics, #application, #table
	 - This is a simple table, but should be considered together with other paremeterization tables, like it, from other papers
  <br>
- <mark class="hltr-yellow">"Given that our study focuses on the design of the topology rather than the routing algorithms, the Dijkstra shortest path strategy, one of the most fundamental algorithms in network routing, is adopted for intra-layer routing in both the VLEO and LEO satellite networks [17]."</mark> [Page 5](zotero://open-pdf/groups/5655478/items/FPBRDQEE?page=4&annotation=ZUXL3KUK)	 - Attention to the choice of algorithm
  <br>
- <mark class="hltr-yellow">"Assuming that both VLEO and LEO satellites are equipped with multiple types of communication antennas, wherein microwave antennas facilitate signaling interactions, while laser transceivers handle observational data transmission [19]."</mark> [Page 6](zotero://open-pdf/groups/5655478/items/FPBRDQEE?page=5&annotation=Y6LPXB3N)
	 - #hardware-req
	 - Attention to the fact that signaling is performed using radio communication.
  <br>
- <mark class="hltr-red">"Unlike the existing DIM [17], where access decision-making is managed by LEO satellites, our proposed LDIM shifts this...responsibility to the VLEO satellites: LDIM introduces the RRI message, which assists the VLEO satellite in initiating the access request in identifying and understanding the IDs of other VLEO satellites involved in the access competition."</mark> [Page 6](zotero://open-pdf/groups/5655478/items/FPBRDQEE?page=5&annotation=YZ57FP4B)	 - It seems unreasoanable to demand this responsibility, taking it from the mega constellation that facilitates the connection.
I am however unsure whether this is what it means, alternatively it seems it cloud mean that the responsibility is purely for sending requests, and seperating logic between constellations.
  <br>
- <mark class="hltr-red">"Once the cross-layer topology is established, it persists until either the two satellites are no longer within each other’s visibility range or the data transmission concludes."</mark> [Page 6](zotero://open-pdf/groups/5655478/items/FPBRDQEE?page=5&annotation=ZNMS6AJG)
	 - #criticism
	 - This is likely a simplification to make the algorithm work, but seems like a huge demand to make of the LEO constellation
  <br>
- <mark class="hltr-green">"A. Access Theory"</mark> [Page 6](zotero://open-pdf/groups/5655478/items/FPBRDQEE?page=5&annotation=J35MSPF2)
	 - #simulation, #model
	 - This whole section could be useful when simulating as it has a rather detailed access model
  <br>
- ![](Attachments/zotero/hanDistributedCollaborativeData/hanDistributedCollaborativeData-6-x309-y75.png)
	 - #further_reading, #hardware-req, #FSO, #Starlink
	 - Starlink mounting of FSO terminals
  <br>
- ![](Attachments/zotero/hanDistributedCollaborativeData/hanDistributedCollaborativeData-7-x47-y585.png)
	 - #FSO, #model
	 - access parameters for fso links
  <br>
- <mark class="hltr-green">"However, in the current scenarios modeled in the literature [31], [32], each satellite is equipped with only one ISL terminal, and the antenna is pointed toward the ground."</mark> [Page 7](zotero://open-pdf/groups/5655478/items/FPBRDQEE?page=6&annotation=NBG4FHXJ)
	 - #further_reading, #model
	 - Maybe the referenced works describe simpler models which may be sufficient
  <br>
- ![](Attachments/zotero/hanDistributedCollaborativeData/hanDistributedCollaborativeData-7-x310-y618.png)
	 - #FSO, #model
	 - access parameters for fso links
  <br>
- <mark class="hltr-green">"Then, we define Ξp,t as a binary matrix representing the cross-layer topology planning results of PO VLEO satellites and QC LEO satellites at time t, and matrix  Ap,t     ai, j  p,q,t ∈ Ap,t     to represent their visibility relationship.  Here, xi, j  p,q,t     xi, j  p,q,t ∈ Ξp,t     signifies the access status of the i-th laser terminal of satellite Op and the j-th laser terminal  of satellite Cq. If xi, j  p,q,t &ai, j  p,q,t = 1, it indicates that satellites Op and Cq establish a cross-layer links and transmit data."</mark> [Page 9](zotero://open-pdf/groups/5655478/items/FPBRDQEE?page=8&annotation=QSD5UVJT)
	 - #notation, #nomenclature
	 - We should refer to this when establishing our choice of notation
  <br>


