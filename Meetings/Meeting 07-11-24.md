
# Attendees:

Jens 
Albert 
Petar 
JEns 
Israel?
# Agenda:

- Show the optimization problem: 
Maximize: 
$$f(x) = \sum (C\cdot x)-\sum(C\cdot y)$$


Subject to: 
$$\sum_C x_{c,u,t} \leq 1 \quad \forall u,t$$
$$x_{c,u,0} = 0 \quad\forall c,u$$
$$s_{c,u,t} \geq x_{c,u,t}-x_{c,u,t-1} \quad \forall c,u,t$$
$$y_{c,u,t} \geq s_{c,u,t-k} \quad \forall c,u,t,k$$

Where $x \in B^{C \times U \times T}$ is a binary variable indicating if there is a connection with the given satellite at a given time. 
$C \in \mathbb{R}^{C \times U \times T}$ is the capacity between each user u and constellation satellite c for time t. 
$s \in \mathbb{B}^{C \times U \times T}$ is a he



- Show the optimization problem solution
	- ![[Pasted image 20241107115550.png]] 
	- ![[Pasted image 20241107115540.png]]
	- Looking into makeing the optimization problem smaller 
- Ask for how to discretize the capacity( Capez has written that they used a table we cant find)
- 

# Notes:
Lav en low rate og en high rate

Bruge latency og load
Control resourcer (Hvordan får man fat i dem )
Spilteori (Vi kæmper mod andre satelliter ikke naturen)
Skifter lige nu kun på baggrund af rate, men måske skrifte i stedet på baggrund af routing. 
R/n
Lige nu antager vi at kapaciteten af cs ikke er et problem. 
Bidding på alpha for US - sidste stadie


