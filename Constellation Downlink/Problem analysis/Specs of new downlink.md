For this scenario a single satellite orbiting in LEO below a megaconstellation placed in LEO is considered. 

## Latency

[According to SpaceX ](https://www.nasa.gov/wp-content/uploads/2024/07/sxs-spacex.png) mentioned in the [[Communication Services project (CSP)]] poster. less than 100 ms to and from anywhere on earth. 

We will do our own calculations at some point. 


## Throughput 

### Bandwidth
This should be the same as the traditional downlink to be able to compare the two. Depending on perspective either the connection should be split in time or in frequency. 

### SNR
As the signal does not have to travel through a dense atmosphere the SNR of the recieved signal should be higher. 
%% TODO: Lav overslagsregning på ny SNR %%

From the SNR and the bandwidth the capacity of the link can be found using the shannon theorem: 
$$C = B \cdot log_2(1+\frac{S}{N})$$
Where B is the bandwidth, S is the average power of the signal and N is the average power of the noise. 





### Shared connection

As the satellite interacts with the mega constellation as a traditional user, the link would be shared between users in time. Therefore the throughput of the satellite depends on the amount of users simultaneous trying to connect using the constellaion. 
Assuming the connection is shared evenly between the users the throughput would be: 
 $$Th = C/U$$
 Th is the throughput, C is the capacity of the link and U is the number of users. 





## Price 

Something similar to this is the Iridium project (See [[Interessenter]]). 
%% TODO: find pris på iridium %%
The SpaceX plan for aviation is 10 000 $ a month for unlimited data and 2000 $ for 20 GB.
 [Starlink Business | Aviation](https://www.starlink.com/business/aviation)
 
## Resilience 
No dependency on one single groundstation, as these mega constellations has multiple. 
