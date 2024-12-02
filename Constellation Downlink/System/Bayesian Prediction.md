---
created: 2024-12-02T00:48:58+01:00
modified: 2024-12-02T00:48:58+01:00
---
Read More about
- MCMC
- Bayesian timeseries

Prior distribution
- distribution parameterised by tuple (position, time)
- Possion Point proccess
- Shot Noise Process
- Markov model / queue model (user connects / disconnects with some rate)

Observation
- UE sat asks "next" satellites at some points in time for $\alpha$ 
- Posterior uncertainty dictates time of next inquiry
- Optimize frequency of inquiry vs uncertainty of model
	- Maximise entropy of and minimize cost of inquiry
	- Maximum entropy is where the model has highest uncertainty
- Final choice of satellite is determined
	- Greedy algorithm
	- Game Theory?

"Next" Satellites
- Ranking of satellites from prior parameters
- Central server sends $N$ best satellites for all $[t \dots t + \Delta T]$
- Ranking is result of Large optimization problem
- How to choose multiple?
	- Find solution and remove -> iterate?
	- Deviation of prior -> Deviation of solution -> $N$ closest to optimum? 
