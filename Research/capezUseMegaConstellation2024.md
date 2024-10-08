---
title: "On the Use of Mega Constellation Services in Space: Integrating LEO Platforms into 6G Non-Terrestrial Networks"
aliases: 
url: https://ieeexplore.ieee.org/abstract/document/10679201/authors#authors
doi: 10.1109/JSAC.2024.3459078
citekey: capezUseMegaConstellation2024
tags: metrics, simulation, constellation-info, hardware-req, channel-coding
type: paper
created: 
updated: 
modified: 2024-09-24T10:59:45+02:00
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

## Good Things

I like the methods for evaluation / simulation the paper proposes and we could more or less use their methods exactly as they are built to deal with this exact system model.

They provide a lot of good

## Room for Improvement

The fact that they use the same connection for both “UE’s” and “gNB’s” is smart as it can be sold as a more versatile system, however the two implementations have vastly different implications for requirements wrt. latency and throughput.  
Focusing on one aspect may be (most probably UE) may be advantageous.

They don’t assume any beamforming from the UE, leaving it up to the satellite designer to implement. This may be an area to improve the link and create a general solution to this.

[Edit note](zotero://select/groups/5655478/items/AUMSHCV9)

---

# Annotations

| <mark class="hltr-grey"> Highlight Color</mark> | Meaning          |
| ----------------------------------------------- | ---------------- |
| <mark class="hltr-red">Red</mark>               | Aim to Improve   |
| <mark class="hltr-yellow">Yellow</mark>         | Neutral comments |
| <mark class="hltr-green">Green</mark>           | Aim to replicate |
| <mark class="hltr-blue">Blue</mark>             | Further Reading  |

- <mark class="hltr-blue">"The exploration of leveraging LEO mega-constellation linksfor communication began with H. Al-Hraishawi et al. in 2021 [26], where multi-layer space information networks were considered. This concept was further expanded upon by G.Maiolini Capez et al. in 2023 with a detailed characterizationof the Mega-Constellation links for LEO Missions [27]. Inthe same year, H. Chougrani et al. contributed a feasibility study, emphasizing the significant potential of MCSS [28]."</mark> [Page 4](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=4&annotation=HRQ332RF)
	 - #further_reading
	 - We should look into these papers for historical context / citations
 <br>
- <mark class="hltr-blue">"FCC filings related to Earth Stations (termi-nals, gateways) and Space Stations (satellites) of specific satel-lite operators [38], [39]"</mark> [Page 5](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=5&annotation=AM49L6V4)
	 - #further_reading
	 - The cited filings could be interesting to read
 <br>
- <mark class="hltr-yellow">"Our previous study in [27] thoroughly ana-lyzed the Doppler effect within the MCSS framework"</mark> [Page 6](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=6&annotation=MXZUNRGE)
	 - #further_reading
	 - Look into how they analyzed the doppler effect
 <br>
- ![](Attachments/zotero/capezUseMegaConstellation2024/capezUseMegaConstellation2024-7-x50-y604.png)
	 - #metrics, #room_for_impovement
	 - Important margins to note
 <br>
- <mark class="hltr-yellow">"we apply a 20% reductionto the calculated capacity. Additionally, we consider a 20% protocol overhead in our calculations."</mark> [Page 7](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=7&annotation=PYMQCIPB)
	 - #metrics, #room_for_impovement
	 - This seems arbitrary, we could look into proper estimates of this?
 <br>
- <mark class="hltr-yellow">"Insteadof delineating specific antenna beams, a satellite’s visibility isdetermined solely based on the off-Zenith angle, providingterminal designers with the flexibility to optimize antennadesign within the bounds of a viable minimum elevationangle. This approach simplifies the design process, although aspecific radiation pattern mask can be applied if detailed beamcharacterization is necessary"</mark> [Page 8](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=8&annotation=ASNZ2A2Z)
	 - #room_for_impovement
	 - This leaves room for focusing on beamforming from the UE for possibly better results
 <br>
- <mark class="hltr-yellow">"For the purposes outlined in this paper,we have chosen to fix the user bandwidth and focus on opti-mizing the Modulation and Coding Scheme (MCS) selection."</mark> [Page 9](zotero://open-pdf/groups/5655478/items/IH34KBC6?page=9&annotation=XY7C98X5)
	 - #metrics, #room_for_impovement

 <br>


