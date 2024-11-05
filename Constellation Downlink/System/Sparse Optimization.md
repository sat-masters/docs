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
indices = [[0 ,    1]
		   [21,    1]
		   [12,    3]
		   [12,    2]
		   [0,     4]]
values = ones()
)

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
	indices = [[0, index(1,0,0)],
			   [1, index(4,0,0)]]
	values = ones()
)



```

**Transition constraint**
$$s_{c,u,t} \geq x_{c,u,t}-x_{c,u,t-1}$$
```python
			# C  U  T
A.indices = [[1, 0, 0]
			 [1, 2, 1]
			 [3, 1, 2]
			 [2, 1, 2]
			 [4, 0, 0]]

H.append(     # range()*2, [index(C,U,T), index(C,U,T-1)] 
	indices = [[0, index(1, 0, 0)       ]
			   [0, index(1, 0,-1) = None]
			   [1, index(1, 2, 1)       ]
			   [1, index(1, 2, 0) = None]
			   [2, index(3, 1, 2)       ]
			   [2, index(3, 1, 1) = None]
			   [3, index(2, 1, 2)       ]
			   [3, index(2, 1, 1) = None]
			   [4, index(4, 0, 0)       ]
			   [4, index(4, 0,-1) = None]
	values = [ ones(), ones()*-1]
)

```