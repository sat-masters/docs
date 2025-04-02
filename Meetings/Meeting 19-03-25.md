
# Attendees:

Petar 
Israel 
Albert (online)
Jens 
# Agenda:
What we have been working on: 
- Using network calculus to create arrival, departure, service curves and backlog curves. 
1. Tried to minimize the probability of overflow in the buffer. 
2. Backlog length 
	1. Have this working
3. Time in the backlog
	1. Implementation issues
- The last two are not probabilities
![[Messenger_creation_640D65A8-82CA-4EAC-9806-DC617CF43EFC.jpeg]]

Our problems right now
- Variance 
	- The variance of the probabilities is basically very low, and therefore it does not matter what satellite we choose as they are are all either 0% chance or 100% chance. 
	- Maybe use probabilistic arrivals (H265) 
- Using distributions we have to have some sort of demands to optimize for 
- Joint distributions
	- Both optimizing for a probability of spending less than x time in the buffer and not going over the buffer (Maybe also something with minimizing the addition load we put on the system(Choosing a satellite which is not very congested)) 
	- Is this a thing and does it make sense? 

Monte Carlo is that a good idea?
Meetings more often/ regularly?


# Notes:

Make a rate/latency curve THis is the important part 



Make burstiness 
Fix arrivalrate change burstiness
Fix burstiness change arrivalrate


