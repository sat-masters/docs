From [[fidlerGuideStochasticNetwork2015]] we have the following definition of the backlog
$$B(t) \leq \max_{\tau \in [0,t]} \{ A(\tau, t) - S(\tau,t)\}$$Where $B(t)$ is the length of the backlog at time $t$.
$A(\tau, t) = A(t) - A(\tau)$ & $S(\tau, t) = S(t) - S(\tau)$ where $A(t)$ is the total amount of bits arrived in $[0,t]$ and $S(t)$ is the service at time $t$


Alternatively we can use the following definition:
$$B(t) = A(t) - D(t)$$
where $$D(t) = \min_{\tau \in [0,t]} \{A(\tau)+S(\tau,t)\}$$
