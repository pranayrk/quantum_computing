## Geometric Representations of a Qubit

It is sometimes helpful to have a representation of the state-space of a qubit that corresponds with points in space.

### Representation as the Extended Complex Plane
A correspondence between the set of all complex numbers and single-qubit systems is given by: 
$a \ket{0} + b \ket{1} \mapsto \frac{b}{a} = \alpha$

Its inverse is given by $\alpha \mapsto \frac{1}{\sqrt{1 + |\alpha|^2}} \ket {0} + \frac{\alpha}{\sqrt {1+|\alpha|^2}} \ket{1}$

To make this well-defined for $\ket{1}$ with $a=0, b=1$, we add into the complex plane the point $\infty$ and define $\infty \mapsto \ket{1}$

We now have $\ket{0} \mapsto 0$, $\ket{1} \mapsto \infty$, $\ket{+} \mapsto +1$, $\ket{-} \mapsto -1$


### Bloch Sphere
Once we have $\alpha$ in the previous representation, we can map each state onto the unit sphere.
Say $\alpha = s + \mathrm{i} t$. We define the map as the standard stereographic projection $(s,t) \mapsto \left ( \frac{2s}{|\alpha|^2 + 1}, \frac{2t}{|\alpha|^2 + 1}, \frac{1-|\alpha|^2}{|\alpha|^2 + 1} \right )$

In this representation $\ket{0} \mapsto (0,0,1)$, $\ket{1} \mapsto (0,0,-1)$, $\ket{+} \mapsto (1,0,0)$, $\ket{-} \mapsto (-1,0,0)$.
![Bloch Sphere](/images/bloch_sphere.png)

`Note: Unlike the vector representation as $\ket{v} = a \ket{0} + b \ket{1}$, $a, b \in \mathbb{C}$, $a^2 + b^2 = 1$, the above representations are one-one. This is because of **global phase**, refer to Quantum Computing: A Gentle Introduction, Eleanor G. Rieffel and Wolfgang H. Polak Section 2.5.1`
