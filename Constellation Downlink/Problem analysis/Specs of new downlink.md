For this scenario a single satellite orbiting in LEO below a megaconstellation placed in LEO is considered. 

## Latency

[According to SpaceX ](https://www.nasa.gov/wp-content/uploads/2024/07/sxs-spacex.png) mentioned in the [[Communication Services project (CSP)]] poster. less than 100 ms to and from anywhere on earth. 


## Throughput 

### Bandwidth
This should be the same as the traditional downlink to be able to compare the two. Depending on perspective either the connection should be split in time or in frequency. 

### SNR
As the signal does not have to travel through a dense atmosphere the SNR of the recieved signal should be higher. 
%% TODO: Lav overslagsregning på ny SNR %%

### Shared connection

Theoretically the same as a traditional downlink as, however as the satellite interacts with the mega constellation as a traditional user, the link would be shared between users. Therefore the throughput of the satellite depends on the amount of users simultaneous trying to connect using the constellaion. 
Assuming the connection is shared evenly between the users the throughput would be: 
 $$Th = C/U$$
 Th is the throughput, C is the capacity of the link and U is the number of users. 





## Price 

Something similar to this is the Iridium project (See [[Interessenter]]). 
%% TODO: find pris på iridium %%
The most expensive plan from SpaceX is 9 000 kr. /month
## Resilience 
No dependency on one single groundstation, as these mega constellations has multiple. 
