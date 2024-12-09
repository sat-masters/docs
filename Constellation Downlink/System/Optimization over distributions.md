The optmization problem can be stated as follows: 
$$\max_{x} \mathbb{P}(\frac{1}{T}\sum_t^T(R_{t}(a,c,x))\geq Q)$$

Subject to: 
$$\sum_c^C x_{c,t} \in \{0,1\} \quad \forall t$$
$$x_{c,t} \in \{0,1\} \quad \forall c,t$$

Where T is the total number of timesteps, a is the random variable of "congestion"/pre occupied resources at the satellite. x is the binary descision variable which is 1 if the link i active and 0 otherwise. $R_t$ is the function calculating the achievable rate at a given pre occupied resources at a satellite. Q is the requested throughput for the timeperiod $t..t+T$. 



This can also be writen as: 
$$\mathbb{P}(\frac{1}{T}\sum_t^T(R_{t}(a,c,x))\geq Q) = 1-F_x(Q)$$
Where $F_x(q)$ is the joint CDF for $R_t$ for all t.  


The CDF of x can be found as the integral of th convolution of the probability density function of the rates R: 
$$F_x(q) = \int_{-\infty}^{\infty}(f_{R_1} * f_{R_2}*...*f_{R_T})(s)ds$$
 $R_t$ can be defined as: 
 $$R_t(a,c,x)=a\cdot c \cdot x$$



