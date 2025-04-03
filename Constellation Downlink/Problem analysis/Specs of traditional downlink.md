---
tags:
  - metrics
---



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

Calculations can be found in [[metrics.ipynb]]


  
## Price 
Commercial ground station solutions:
- [AWS Ground Station](https://aws.amazon.com/ground-station/)
- [KSATlite - KSAT - Kongsberg Satellite Services](https://www.ksat.no/ground-network-services/ksatlite/)

The price of a traditional downlink is complicated to find an exact number for.
The price of this can be split into two parts: 
- Establishing costs 
- Maintenance costs

### Establishing costs
This includes the costs of the hardware of the ground station, but also all the labour hours associated with setting up the hardware. 


### Maintenance costs
This includes the labour hours of maintaining the hardware, such as making sure the antenna move as intended by keeping them clean and free of rust and other debris. 

## Resilience 
