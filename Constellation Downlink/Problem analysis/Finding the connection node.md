One of the important things when connecting to a satellite mega constellation is to choose the right satellite to establish a connection with. 
To determine this first a plot of availability of all the satellites can be found. 

One of the main metrics to look at when establishing a connection is to look at how the angular separation/angular distance between the satellite and all of the satellites in the constellation changes over time. 

In the following it is described how to calculate the angular distance between two satellites. 
By knowing the Kepler orbital parameters, the 3D position of the satellites can be found in the ECI frame of refference. 


![[Pasted image 20241014104730.png]]
The angle to find is the angle between the vector describing the constellations satellite(CS) and the vector from the CS to the user satellite (US). 

This angle can be found using the following equation: 
$$\vec{R} \cdot \vec{B} = \Vert\vec{R}\Vert \Vert\vec{B}\Vert \cos(\theta)$$
Which can be written as: 
$$ \theta  =\cos^{-1}\left( \frac{\vec{R} \cdot \vec{B}}{\Vert\vec{R}\Vert \Vert\vec{B}\Vert} \right)$$
This can then be plotted for all the satellites in the constellation. 

![[cov_10_10.png]]
The angle is denoted 0 when the CS is below the US FOV plane. 
For this plot this FOV plane was made as horizontal plane meaning the US has a FOV of 180 degrees. This can be seen here: 
![[Pasted image 20241014105706.png]]
%% TODO måske fiks billede så det er de rigtige bogstaver%%
As the