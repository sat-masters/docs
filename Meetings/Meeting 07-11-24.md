
# Attendees:

Jens 
Albert 
Petar 
JEns 
Israel?
# Agenda:

- Show the optimization problem: 
Maximize: 
$$f(x) = \sum (C\cdot x)-\sum(C\cdot x)$$

Subject to: 
$$\sum_C x_{c,u,t} \leq 1 \quad \forall u,t$$
$$x_{c,u,0} = 0 \quad\forall c,u$$
$$s_{c,u,t} \geq x_{c,u,t}-x_{c,u,t-1} \quad \forall c,u,t$$
$$y_{c,u,t} \geq s_{c,u,t-k} \quad \forall c,u,t,k$$

Where $x \in B^{C \times U \times T}$ is a binary variable indicating if there is a connection with the given satellite at a given time. 
$C \in \mathbb{R}^{C \times U \times T}$ is the capacity between each user u and constellation satellite c for time t. 



- Show the optimization problem solution
	- ![[Pasted image 20241107115550.png]] 
	- ![[Pasted image 20241107115540.png]]
	- Looking into makeing the optimization problem smaller 
- Ask for how to discretize the capacity( Capez has written that they used a table we cant find)
- 

# Notes:
