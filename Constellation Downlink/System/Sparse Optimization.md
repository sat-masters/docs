**Single-assignment constraint:**
$$\sum_C x_{c,u,t} \leq 1 \quad \forall u,t$$
```python     
			# C  U  T
A.indices = [[1, 0, 0]
			 [1, 2, 1]
			 [3, 1, 2]
			 [2, 1, 2]
			 [4, 0, 0]]



H.append?(#[U ^ T, index(C,U,T)]
indices = [[0 ,    x_index(1,0,0)]
		   [21,    x_index(1,2,1)]
		   [12,    x_index(3,1,2)]
		   [12,    x_index(2,1,2)]
		   [0,     x_index(4,0,0)]]
values = ones()
)

bl = 0
bu = 1

```

**Initialization constraint**
$$x_{c,u,0} = 1 \quad\forall c,u$$
```python     
			# C  U  T
A.indices = [[1, 0, 0]
			 [1, 2, 1]
			 [3, 1, 2]
			 [2, 1, 2]
			 [4, 0, 0]]
									
idx = where(A.indices[:,2] = 0) 
	=   [[1, 0, 0]
		 [4, 0, 0]]

H.append(     # range(), idex(C,U,T) 
	indices = [[0, x_index(1,0,0)],
			   [1, x_index(4,0,0)]]
	values = ones()
)

bl = 1
bu = 1


```

**Transition constraint**
$$s_{c,u,t} \geq x_{c,u,t}-x_{c,u,t-1}$$
$$ -\infty \leq (x_{c,u,t} - x_{c,u,t-1}) - s_{c,u,t} \leq 0   $$
```python
			# C  U  T
A.indices = [[1, 0, 0]
			 [1, 2, 1]
			 [3, 1, 2]
			 [2, 1, 2]
			 [4, 0, 0]]

H.append(     # range()*3, [index(C,U,T), index(C,U,T-1)] 
	indices = [[0, x_index(1, 0, 0)       ]
			   [0, x_index(1, 0,-1) = None]
			   [0, s_index(1, 0, 0)       ]
			   
			   [1, x_index(1, 2, 1)       ]
			   [1, x_index(1, 2, 0) = None]
			   [1, s_index(1, 2, 1)       ]
			   
			   [2, x_index(3, 1, 2)       ]
			   [2, x_index(3, 1, 1) = None]
			   [2, s_index(3, 1, 2)       ]
			   
			   [3, x_index(2, 1, 2)       ]
			   [3, x_index(2, 1, 1) = None]
			   [3, s_index(2, 1, 2)       ]
			   
			   [4, x_index(4, 0, 0)       ]
			   [4, x_index(4, 0,-1) = None]
			   [4, s_index(4, 0, 0)       ]]
	values = [ ones(), ones()*-1, ones()*-1]
)

bl = -inf
bu = 0
```

**Offset Constraint for y**
$$y_{c,u,t} \geq s_{c,u,t-k} \quad \forall c,u,t,k$$
```python
			# C  U  T
A.indices = [[1, 0, 0]
			 [1, 2, 1]
			 [3, 1, 2]
			 [2, 1, 2]
			 [4, 0, 0]]

for k in range(K):
	H.append(     # range()*2*k, [index(C,U,T), index(C,U,T-k)]
		indices =  [[0, y_index(1,0,0)  ]
					[0, s_index(1,0,0-k)]
					
					[1, y_index(1,2,1)  ]
					[1, s_index(1,2,1-k)]
					
					[2, y_index(3,1,2)  ]
					[2, s_index(3,1,2-k)]
					
					[3, y_index(2,1,2)  ]
					[3, s_index(2,1,2-k)]
					
					[4, y_index(4,0,0)  ]
					[4, s_index(4,0,0-k)]]
		
		values = [ones()*-1, ones()]
	)

bl = -inf
bu = 0

```