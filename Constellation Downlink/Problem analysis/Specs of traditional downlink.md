For a traditional scenario a single satellite in LEO with a single ground station is considered. 
## Latency
Considering a scenario of line of sight (LoS) between the ground station and the satellite. The latency should be dominated by propagation delay. 
A rough estimation of transmission delay for a satellite in a 500 km orbit gives a round trip delay of 3,33 ms. and a one way latency of 1,666 ms. (easy calculations put in [[metrics.html]])
This is considerably lower than the 100 ms.  reported in [[Communication Services project (CSP)]]

For a non LoS scenario depending on the orbit of the satellite the latency varies a lot. 
The best case scenario would be an equatorial orbit. Here the satellite will pass the same places each orbit meaning the latency would be between 0-90 minutes %% TODO: skriv lige lidt flottere %%
The worst case scenario would be an polar orbit where the satellite would only pass the same spot every 12 hours, resulting in getting signal roughly 3-4 times every 12 hours(since the satellite doesn't have to be directly above the ground station, but only needs LoS to establish a connection).  
Meaning the latency can be as high as roughly 12 hours. %% TODO: We should probably make the exact calculations. %%

## Capacity 

### Bandwidth 
The bandwidth is assumed to be $240\,\mathrm{MHz}$ as this is equivalent to 1 channel in the Ku band used by Starlink. 

### SNR 
SNR is assumed to be between $5 - 15 \mathrm{dB}$ for a small satellite mission with a relativley small grounstation. 

### Data Generation Capacity
To estimate the capacity of a traditional downlink, we can use the Shannon-Hartley theorem:
$$C = B \log_2(1 + \frac{S}{N})$$
where:
- $C$ is the channel capacity in bits per second
- $B$ is the bandwidth in Hz
- $\frac{S}{N}$ is the signal to noise ratio

For different orbits and channel snr:
![[mission_capacity_5_10_db.png]]



  
## Price 
Relates in some way to all of this: https://aws.amazon.com/ground-station/


The price of a traditional downlink is complicated to find an exact number for.
The price of this can be split into two parts: 
- Establishing costs 
- Maintenance costs

### Establishing costs
This includes the costs of the hardware of the ground station, but also all the labour hours associated with setting up the hardware. 


### Maintenance costs
This includes the labour hours of maintaining the hardware, such as making sure the antenna move as intended by keeping them clean and free of rust and other debris. 

## Resilience 
