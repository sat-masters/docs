---
created: 2024-12-02T00:48:58+01:00
modified: 2024-12-02T02:10:57+01:00
---
Read More about
- MCMC
- Bayesian timeseries

Find Papers on
- NTN uplink distributions
- 5G RAN Game Theory Resource Allocation
- Multi-Solution Optimization Problems



Prior distribution
- distribution parameterised by tuple (position, time)
- Poisson Point process
- Shot Noise Process
- Markov model / queue model (user connects / disconnects with some rate)
- Ask Israel about state of the art models

Observation
- UE sat asks "next" satellites at some points in time for $\alpha$ 
- Posterior uncertainty dictates time of next inquiry
	- $\alpha$ of future connection may be relevant to previous choice
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
