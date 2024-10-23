---
title: "On the Use of Mega Constellation Services in Space: Integrating LEO Platforms into 6G Non-Terrestrial Networks"
aliases: 
url: https://ieeexplore.ieee.org/abstract/document/10679201/authors#authors 
doi: 10.1109/JSAC.2024.3459078 
citekey: capezUseMegaConstellation2024
tags: metrics, simulation, constellation-info, hardware-req, channel-coding 
type: paper
created: 
modified:
---

# Paper Details
|             |                                    |
| ----------- | ---------------------------------- |
| Authors     | Gabriel Maiolini Capez, Mauricio A. Cáceres, Roberto Armellin, Chris P. Bridges, Juan A. Fraire, Stefan Frey, Roberto Garello                        |
| Pulbication | IEEE Journal on Selected Areas in Communications               |
| doi         | [10.1109/JSAC.2024.3459078](https://doi.org/10.1109/JSAC.2024.3459078) |
>[!abstract]-
>This paper presents a framework for integrating Low-Earth Orbit (LEO) platforms with Non-Terrestrial Networks (NTNs) in the emerging 6G communication landscape. Our work applies the Mega-Constellation Services in Space (MCSS) paradigm, leveraging LEO mega-constellations’ expansive coverage and capacity, designed initially for terrestrial devices, to serve platforms in lower LEO orbits. Results show that this approach overcomes the limitation of sporadic and time-bound satellite communication links, a challenge not fully resolved by available Ground Station Networks and Data Relay Systems.We contribute three key elements: (i) a detailed MCSS evaluation framework employing Monte Carlo simulations to assess space user links and distributions; (ii) a novel Space User Terminal (SUT) design optimized for MCSS, using different configurations and 5G New Radio Adaptive Coding and Modulation; (iii) extensive results demonstrating MCSS’s substantial improvement over existing Ground Station Networks and Data Relay Systems, motivating its role in the upcoming 6G NTNs. The space terminal, incorporating a multi-system, multi-orbit, and software-defined architecture, can handle Terabit-scale daily data volumes and minute-scale latencies. It offers a compact, power-efficient solution for properly integrating LEO platforms as space internet nodes.

---
# Summary

The paper describes the idea of attaching a satellite in a “lower” LEO to a mega constellation in a “higher” LEO. Primary contributions are a framework for analysis of such a system, and a baseline system model.

# General Thoughts

Very important paper in the context of our project as it deals directly with the subject matter.  
However it also leaves room for improvements, as the paper doesn’t delve into the exact implementations of the system, and “only” deals with the problem from a relatively large meta perspective.

For most of the results they only use OneWeb, as it is the constellation with higher altitudes and is therefore maybe also more suited for the task. However it seems OneWeb is struggling in the real world so maybe we should do some analysis on only starlink?

## Good Things

I like the methods for evaluation / simulation the paper proposes and we could more or less use their methods exactly as they are built to deal with this exact system model.

They provide a lot of good

## Room for Improvement

The fact that they use the same connection for both “UE’s” and “gNB’s” is smart as it can be sold as a more versatile system, however the two implementations have vastly different implications for requirements wrt. latency and throughput.  
Focusing on one aspect (most probably UE) may be advantageous.

They don’t assume any beamforming from the UE, leaving it up to the satellite designer to implement. This may be an area to improve the link and create a general solution to this.

For most of the results they only use OneWeb, as it is the constellation with higher altitudes and is therefore maybe also more suited for the task. However it seems OneWeb is struggling in the real world so maybe we should do some analysis on only starlink?

[Edit note](zotero://select/groups/5655478/items/AUMSHCV9)

---

# Annotations

| <mark class="hltr-grey"> Highlight Color</mark> | Meaning          |
| ----------------------------------------------- | ---------------- |
| <mark class="hltr-red">Red</mark>               | Aim to Improve   |
| <mark class="hltr-yellow">Yellow</mark>         | Neutral comments |
| <mark class="hltr-green">Green</mark>           | Aim to replicate |
| <mark class="hltr-blue">Blue</mark>             | Further Reading  |

- <mark class="hltr-green">"Missing these brief communication windows results in delays from several minutes to hours before the next opportunity arises"</mark> [Page ](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=1&annotation=6LRDEDJG)	 - As we also try to argue, the resulting delays are high
  <br>
- ![](Attachments/zotero/capezUseMegaConstellation2024/capezUseMegaConstellation2024-2-x50-y443.png)
	 - #figure, #overview

  <br>
- <mark class="hltr-blue">"6G Next Generation NodeB"</mark> [Page 2](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=2&annotation=6PSWQAR8)	 - Is this a standard thing?
  <br>
- <mark class="hltr-blue">"Current commercial MEO and LEO optical data relay constellations, such as Kepler’s...Aether Optical High-Data Rate Service [13],"</mark> [Page 3](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=3&annotation=8KYH8W6R)	 - FSO Data relay systems
  <br>
- <mark class="hltr-red">"However, these optical systems’ premium cost and rigorous operational demands have led us to exclude them from our comparative analysis, focusing instead on more established and broadly applicable RF data relay solutions."</mark> [Page 3](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=3&annotation=A57EJZX2)
	 - #FSO, #Data_relay_system
	 - Dont know if its fair to exclude them from the comaprison
  <br>
- <mark class="hltr-blue">"The core opportunities and challenges of inter-satellite links are discussed by Kodheli et al. in [4]."</mark> [Page 3](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=3&annotation=8UVU667F)
	 - #further_reading, #inter-satellite_links
	 - Challenges of inter-satellite links
  <br>
- <mark class="hltr-blue">"The exploration of leveraging LEO mega-constellation linksfor communication began with H. Al-Hraishawi et al. in 2021 [26], where multi-layer space information networks were considered. This concept was further expanded upon by G.Maiolini Capez et al. in 2023 with a detailed characterizationof the Mega-Constellation links for LEO Missions [27]. Inthe same year, H. Chougrani et al. contributed a feasibility study, emphasizing the significant potential of MCSS [28]."</mark> [Page 4](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=4&annotation=HRQ332RF)
	 - #further_reading
	 - We should look into these papers for historical context / citations
  <br>
- <mark class="hltr-yellow">"Starlink and OneWeb operate in overlapping frequency"</mark> [Page 4](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=4&annotation=NS5HLCMJ)
  <br>
- <mark class="hltr-yellow">"bands and share similar terminal configurations, hinting at the possibility of future terminals seamlessly switching between these networks"</mark> [Page 5](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=5&annotation=YIDLGK34)- ![](Attachments/zotero/capezUseMegaConstellation2024/capezUseMegaConstellation2024-5-x42-y637.png)
	 - #metrics, #constellation-info, #table, #tag
	 - OneWeb & Starlink Obirtal parameters...They also investigate the possibility to combine both OneWeb and Starlink
  <br>
- <mark class="hltr-blue">"FCC filings related to Earth Stations (termi-nals, gateways) and Space Stations (satellites) of specific satel-lite operators [38], [39]"</mark> [Page 5](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=5&annotation=AM49L6V4)
	 - #further_reading
	 - The cited filings could be interesting to read
  <br>
- <mark class="hltr-blue">"Finally, we consider the link budget analysis outlined in [41]."</mark> [Page 5](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=5&annotation=CYL3XPU7)
	 - #link_budget
	 - Link budget
  <br>
- <mark class="hltr-blue">"Our previous study in [27] thoroughly ana-lyzed the Doppler effect within the MCSS framework"</mark> [Page 6](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=6&annotation=MXZUNRGE)
	 - #further_reading, #doppler
	 - Look into how they analyzed the doppler effect
  <br>
- <mark class="hltr-yellow">"We determined that in the Ku-band, SUTs experience a maximum Doppler offset of up to 550 kHz. The Doppler rates observed range from below 2 kHz/s at elevation angles lower than 70 degrees to approximately 20 kHz/s when the satellite is directly overhead (at the Zenith)."</mark> [Page 6](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=6&annotation=CA9DW7ND)
	 - #doppler
	 - Interesting findings about doppler
  <br>
- <mark class="hltr-yellow">"This approach allows us to explore how MCSS can leverage standard 5G-NR bandwidths and adapt to conventional 5G parameters, such as 5, 10, and 20 MHz bandwidths"</mark> [Page 6](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=6&annotation=S6SNTPY4)
	 - #5G-NR, #bandwidth
	 - How they choosed the bandwidth for the communication channel
  <br>
- ![](Attachments/zotero/capezUseMegaConstellation2024/capezUseMegaConstellation2024-7-x50-y604.png)
	 - #metrics, #room_for_impovement
	 - Important margins to note
  <br>
- <mark class="hltr-yellow">"we apply a 20% reductionto the calculated capacity. Additionally, we consider a 20% protocol overhead in our calculations."</mark> [Page 7](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=7&annotation=PYMQCIPB)
	 - #metrics, #room_for_impovement
	 - This seems arbitrary, we could look into proper estimates of this?
  <br>
- <mark class="hltr-blue">"(SC-FDMA)"</mark> [Page 7](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=7&annotation=B27XR5VN)
	 - #further_reading, #multiple-access
	 - Used in OneWeb
  <br>
- <mark class="hltr-yellow">"It was determined that starting with 5000 SUTs yields a robust estimate of system capacity with a 60-second timestep across a 24-hour window. For latency metrics, we ran simulations with 19650 LEO users from the OneWeb constellation at one-second intervals over 128 minutes, guaranteeing the capture of a complete orbital period for every user’s trajectory."</mark> [Page 7](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=7&annotation=TBUEPMI8)
	 - #simulation
	 - We can maybe use these simulation parameters
  <br>
- <mark class="hltr-yellow">"Insteadof delineating specific antenna beams, a satellite’s visibility isdetermined solely based on the off-Zenith angle, providingterminal designers with the flexibility to optimize antennadesign within the bounds of a viable minimum elevationangle. This approach simplifies the design process, although aspecific radiation pattern mask can be applied if detailed beamcharacterization is necessary"</mark> [Page 8](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=8&annotation=ASNZ2A2Z)
	 - #room_for_impovement
	 - This leaves room for focusing on beamforming from the UE for possibly better results
  <br>
- <mark class="hltr-yellow">"For the purposes outlined in this paper,we have chosen to fix the user bandwidth and focus on opti-mizing the Modulation and Coding Scheme (MCS) selection."</mark> [Page 9](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=9&annotation=XY7C98X5)
	 - #metrics, #room_for_impovement

  <br>
- ![](Attachments/zotero/capezUseMegaConstellation2024/capezUseMegaConstellation2024-10-x88-y580.png)
	 - #metrics, #table, #application
	 - Application parameterization table, to be considered together with other tables, like it, from other papers.
  <br>
- <mark class="hltr-red">"An alternative approach for high-altitude users could be using the side lobes of constellation satellites, though this introduces challenges in managing interference between beams."</mark> [Page 11](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=11&annotation=UP8R3SFJ)
	 - #possible_improvements
	 - Possible idea
  <br>
- <mark class="hltr-red">"Fig. 7: MCSS Latency for CC configuration and OneWeb constellation. The Z-axis is limited to 600 seconds (10 minutes). Black indicates no coverage/latency. White corresponds to nominal mega-constellation latency (about 50 ms)."</mark> [Page 11](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=11&annotation=LSA45NDA)
	 - #possible_improvements
	 - For most of these figures they only use OneWeb, as it is the constellation with higher altitudes and is therefore maybe also more suited for the task. However it seems OneWeb is struggling in the real world so maybe we should do some analysis on only starlink?
  <br>
- <mark class="hltr-yellow">"Terrestrial demands typically utilize 20-30% of network resources, with satellites often reaching total capacity during peak times [50]."</mark> [Page 12](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=12&annotation=CGFFRYXM)
	 - #utilization
	 - Just an interesting note
  <br>
- <mark class="hltr-red">"With dynamic traffic patterns and congestion management requirements, up to 90% of capacity may be reserved for ground users. Given these conditions, the system could support approximately 4,000 SUTs in the High-End (HE) configuration to 100,000 SUTs in the Low-End (LE) configuration."</mark> [Page 12](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=12&annotation=WI6DK8WN)
	 - #capacity
	 - They dont show how they get to this number
But very interesting.
  <br>
- <mark class="hltr-red">"Further research for future studies includes service and technical aspects like licensing, addressing, routing, compatibility, channel allocation, more sophisticated handover criteria, and interference mitigation."</mark> [Page 12](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=12&annotation=DWYXYK9D)
	 - #possible_improvements
	 - Their take on possible future work
  <br>


