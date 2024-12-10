---
modified: 2024-12-10T09:53:11+01:00
---
This section assumes that we know the distribution for the utilisation of all satellites at all times.
In reality, these random variables would follow unknown distributions that would need to be estimated online.   

The optimization problem aims to maximise the probability that the requested resources ($Q$) will be satisfied by the decision variable $x$

$$
\begin{aligned}
	\underset{x}{\operatorname{maximize}} &\quad& f(x) &= \mathbb{P}(\frac{1}{T}\sum_T(R_{t}(a,c,x))\geq Q)\\
	\operatorname{subject to} && \sum_C x_{c,t} &\in \{0,1\} &\quad& \forall t\\
	&& x_{c,t} &\in \{0,1\} &&\forall c,t
\end{aligned}
$$

Where $T$ is the total number of timesteps, $a$ is the random variable for resource utilization of the satellite, described by the pdf $f_a$. 
$x$ is the binary decision variable which is 1 if the link i active and 0 otherwise. 
$R_t$ is the function calculating the achievable. 
Since $a$ is a random variable, $R_t( \cdot )$ is also a R.V., described by pdf $f_{R_t}$ 
$Q$ is the requested average throughput for the time period $[t\dots t+T]$. 

The probability of observing an output, higher or lower than a constant is better described by a CDF: 

$$
\mathbb{P}(\frac{1}{T}\sum_t^T(R_{t}(a,c,x))\geq Q) = 1-F_x(Q)
$$

Where $F_x(q)$ is the joint CDF for $R_t$ for all t.  


The CDF $F_x$ can be found as the integral of the convolution of the probability density function of the rates R:

$$
F_x(q) = \int_{-\infty}^{\infty}(f_{R_1} * f_{R_2}*...*f_{R_T})(s)\, \mathrm{d}s
$$

 $R_t$ can be defined as: 
 
$$
\begin{aligned}
 R_t(a,c,x)&=(1-a) c x\\
 f_{R_t}(s) &= 
 \begin{cases}
 \frac{1}{c} f_a(1-\frac{s}{c}) & x = 1\\
 \delta(s) & x = 0 
 \end{cases}
\end{aligned}
 $$

Where a is the utilization of the specific constellation satellite. c is the shannonrate of the channel. x is the binary decision variable. 
