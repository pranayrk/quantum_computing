## Hilbert Space
> **Definition** A Hilbert space is a real or complex inner product space that is also a complete metric space with respect to the distance function induced by the inner product.

To say that a complex vector space $\mathcal{H}$ is a complex inner product space means that there is an inner product $\langle x, y \rangle$ associating a complex number to each pair of elements $x,y$ of $\mathcal{H}$ that satisfies the following properties: 
1. Conjugate Symmetric: $\langle y,x \rangle = \overline{\langle x,y \rangle}$
2. Linear in first argument: $\langle a x_1 + b x_2 , y \rangle  = a \langle x_1, y \rangle + b \langle x_2, y \rangle$
3. Inner product of an element with itself is positive definite: $\langle x,x \rangle > 0$ if $x \neq 0$, $\langle x,x \rangle = 0$ if $x = 0$

Hilbert spaces have an easier structure and are in a way (most often infinite dimensional) Euclidian spaces. However, many spaces of interest that are Banach spaces are not Hilbert spaces, hence they are important too. 
A Hilbert space is a very special type of Banach space - one which is meant to generalize familiar notions from $\mathbb{R}^n$. 
