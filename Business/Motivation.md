## Latency
The latency a packet experiences between the LEO satellite and the destination can be described as the sum of all the latencies in the links.  
The latency for each link can be calculated as the sum of the queuing time $t_q (u)$, the transmission time $t_t (u, v)$ and the propagation time $t_p (u, v)$.

$$ L_{u,v} (u, v) = t_q (u) + t_t (u, v) + t_p (u, v) $$


### Traditional scenario
For a traditional scenario a single satellite in LEO with a single ground station is considered. 

Considering a scenario of line of sight (LoS) between the ground station and the satellite. The latency should be dominated by propagation delay. 
A rough estimation of transmission delay for a satellite in a 500 km orbit gives a round trip delay of 3,33 ms. and a one way latency of 1,666 ms. 

For a non LoS scenario the latency is dominated by the queueing time, as the satellite has to store and forward the data generated when it has LoS. 
This queueing latency depends on the orbit of the satellite and the placement of the groundstation(also the amount of groundstations).
Assuming one groundstation placed at equator, the best case scenario would be an equatorial orbit. Here the satellite will pass the same places each orbit meaning the latency would be between 0-90 minutes %% TODO: skriv lige lidt flottere %%
The worst case scenario would be an polar orbit where the satellite would only pass the same spot every 12 hours, resulting in getting signal roughly 3-4 times every 12 hours(since the satellite doesn't have to be directly above the ground station, but only needs LoS to establish a connection).  
Meaning the latency can be as high as roughly 12 hours. %% TODO: We should probably make the exact calculations. %%

#### Ground station as a service (GSaaS)
The highest 

### New scenario

For the new scenario the number of links is higher, however the latency of these links are lower. 

[According to SpaceX ](https://www.nasa.gov/wp-content/uploads/2024/07/sxs-spacex.png) mentioned in the [[Communication Services project (CSP)]] poster. less than 100 ms to and from anywhere on earth. 


#### Coverage analysis
From "On the Use of Mega Constellation Services in  Space: Integrating LEO Platforms into 6G  Non-Terrestrial Networks" they find that the average latency is as seen in the following figure: 
![[Pasted image 20250403110002.png]]
Fig. 7: MCSS Latency for CC configuration and OneWeb constellation. The Z-axis is limited to 600 seconds (10 minutes). Black indicates no coverage/latency. White corresponds to nominal mega-constellation latency (about 50 ms).


As it can be seen the average latency for a satellite using the OneWeb constellation and with an altitude below 1100 km. has a average latency below 10 minutes.  

## Capacity
Since capacity varies a lot for the user along it's orbit we look at the net daily capacity. 
I.e. the average capacity over a period of 24 hours. 

### Traditional scenario
As with latency getting a connection to the satellite requires LoS.  
As the groundstation can be purpose built the achievable rate in the LoS scenario is 3-10 times higher than space based services. However as the rate is 0 for NLoS scenarios and a single ground station can only offer 50 minutes of contact per day, the net daily capacity in a traditional scenario much lower than that of space based services. 


![[Pasted image 20250403121949.png]]

Looking at constellations: Often, multiple satellites are within the visibility range of one ground station simultaneously, competing for the limited downlink opportunities.
https://arxiv.org/html/2501.00354v1

"For instance, Planet’s Dove satellites generates approximately one Terabyte of data per satellite per day" https://www.usenix.org/system/files/nsdi24-tao.pdf

### New scenario

Link availability and capacity: 
![[Pasted image 20250403110104.png]]

### Other advantages
- No dependence on weather. (or we can atleast mitigate it by using other ground stations)
- Creating virtual constellations/ISL
- 