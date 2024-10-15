---
modified: 2024-10-14T16:13:31+02:00
---
One of the important things when connecting to a satellite mega constellation is to choose the right satellite to establish a connection with. 
To determine this first a plot of availability of all the satellites can be found. 

One of the main metrics to look at when establishing a connection is to look at how the angular separation between the satellite and all of the satellites in the constellation changes over time. 

In the following it is described how to calculate the angular distance between two satellites. 
By knowing the Kepler orbital parameters, the 3D position of the satellites can be found in the ECI frame of refference. 

![[Pasted image 20241014110712.png]]
The angle to find is the angle between the vector describing the constellations satellite(CS) and the vector from the CS to the user satellite (US). 

This angle can be found using the following equation: 

$$\vec{C} \cdot (\vec{U}-\vec{C}) = \Vert\vec{C}\Vert \Vert(\vec{U}-\vec{C})\Vert \cos(\theta)$$

Which can be written as: 

$$ \theta  =\cos^{-1}\left( \frac{\vec{C} \cdot (\vec{U}-\vec{C})}{\Vert \vec{C} \Vert \Vert(\vec{U}-\vec{C})\Vert} \right)$$

This can then be plotted for all the satellites in the constellation. 

![[cov_10_10.png]]
The angle is denoted 0 when the CS is below the US FOV plane. 
For this plot this FOV plane was made as horizontal plane meaning the US has a FOV of 180 degrees. This can be seen in the figure.

The simplest way to connect to the satellites is to find the first available satellite and connect to that one. Then staying connected to this satellite until it's out of sight. Then connecting to the next available satellite. 
In the following figure the angular seperation of a US in the orbit of the ISS with a walker delta constellation with 70 planes with 30 satellites in each plane. 
![[Pasted image 20241015100016.png]]
After using the algorithm to choose the satellites. The angular separation looks like this:
![[Pasted image 20241015100024.png]]
As it can be seen there is a lot of handovers. 
%% TODO: Måske lave dem så de er lidt tydeligere hvor dårlig den her er%%


- Skal vi også bruge distancen?