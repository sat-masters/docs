
# Attendees:
Petar
Israel
Jens?

# Agenda:
Presentation follow up
- Shortest path 
	- Dijkstra
	- Bellman-ford
	- Longest path (sp with neg weights)
- Jimmy Nielsen 
- crossings
	- Reduce search space of allocation changing times
	- Reduce what sats can be changed from -> to

Worked on:
- Temporal lattice graph
	- Longest path solution
	- Weights (Point estimate vs Distribution )
* Reduced graphs
	* Ideas for graph building techniques
	* throughput ranking 
	* slope ranking
* Antenna gain model
	* plots her
* Numerical vs Analytical
	* parametrize orbits -> gain function
	* Computational complexity in or out of scope

Future Work
- Capacity as distributions
	- Bellaman Ford with Convolutions
	- Parameterise distributions
		- faster/analytical convolutions

## Visuals:
![[Pasted image 20250212105834.png]]
![[Pasted image 20250212112525.png]]![[Pasted image 20250212113731.png]]
![[Pasted image 20250212114230.png]]
![[Pasted image 20250213130652.png]]
# Notes:
- Not go in the diretion of modelling the traffic in the constellation satellites
- Take the trafic models from other papers. 
	- latency profile for ground to sat has been done but not sat to sat (could be our contribution)
	- average latency for packets arriving 
	- estimate the latency through the constellation satellite to the destination (could be ground or another satellite)
	- For our user satellite 
		- make fixed packets arriving with a specific rate 
	- make a constant rate 
	- Network calculus 
	- What to optimize for:
		- Start off by just doing what we are doing
		- 

Read papers about modelling traffic if easy, use that. if not use normals
Less uncertainty with less satellites adding variance when doing convolution 
Connection leads to discovery. 
Preplanned optization vs. unceartenty in satellite utilization. If the unceartenty of the satellite utilization is high the preplanning doesnt give really that much clarity as we dont really know the capacity of the satellites anyway. 

Moving window?
Sliding window 
Size of window vs how long we are connected
When the rate actually is very low we might also want to make switch (this is when the unceartenty is higher). 

