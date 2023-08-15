<!-- ### Review of Direct Sum

Let $V$ be an $n$-dimensional vector space with basis $\alpha = \{ \ket{a_1}, \ket{a_2}, ..., \ket{a_n}$ and $W$ be an $m$-dimensional vector space with basis $\beta = \{ \ket{b_1}, \ket{b_2}, ..., \ket{b_m} \}$
The **direct sum** $V \oplus W$ is the $n+m$-dimensional vector space with basis $\alpha \cup \beta = \{ \ket{a_1}, \ket{a_2}, ..., \ket{a_n}, \ket{b_1}, \ket{b_2}, ..., \ket{b_m} \}$, where every vector in $V \oplus W$ can be written as $v \oplus w = \begin{bmatrix} x_1 \\ x_2 \\ \vdots \\ x_n \\ y_1 \\ y_2 \\ \vdots \\ y_m \end{bmatrix}$ for some $v = x_1 a_1 + x_2 a_2 + ... + x_n a_n = \begin{bmatrix} x_1 \\ x_2 \\ \vdots \\ x_n \end{bmatrix} \in V$ and $w = y_1 b_1 + y_2 b_2 + ... + y_m b_m = \begin{bmatrix} y_1 \\ y_2 \\ \vdots \\ y_m \end{bmatrix} \in W$.

-->

### Review of Tensor Product
Let $V$ be an $n$-dimensional vector space with basis $\alpha = \{ \ket{a_1}, \ket{a_2}, ..., \ket{a_n}$ and $W$ be an $m$-dimensional vector space with basis $\beta = \{ \ket{b_1}, \ket{b_2}, ..., \ket{b_m} \}$
The tensor product $V \otimes W$ is an $nm$-dimensional space with basis elements of the form $\ket{a_i} \otimes \ket{b_j}$, where $\otimes$ is the tensor product defined to satisfy the following relations:
1. $(\ket{v_1} + \ket{v_2} ) \otimes w = \ket{v_1} \otimes \ket{w} + \ket{v_2} \otimes \ket{w}$
2. $\ket{v} \otimes (\ket{w_1} + \ket{w_2}) =  \ket{v} \otimes \ket{w_1} + \ket{v} \otimes \ket{w_2}$
3. $(a \cdot \ket{v}) \otimes \ket{w} = \ket{v} \otimes (a \cdot \ket{w})  = a \cdot (\ket{v} \otimes \ket{w})$

Every element in $V \otimes W$ can be represented as $\ket{v_1} \otimes \ket{w_1} + \ket{v_2} \otimes \ket{w_2} + ... + \ket{v_k} \otimes \ket{w_k}$ where $k = \text{min}(n,m)$ and $v_i \in V, w_i \in W$.

Every element in $V \otimes W$ can also be written as $\alpha_1 (\ket{a_1} \otimes \ket{b_1}) + \alpha_2 (\ket{a_2} \otimes \ket{b_2}) + ... + \alpha_{nm} (\ket{a_{nm}} \otimes \ket{b_{nm}})$, but most elements cannot be written as $\ket{v} \otimes \ket{w}$ where $v \in V, w \in W$.


The tensor product of two unit vectors is a unit vector.

If the underlying vector spaces all have orthonormal bases, then the tensor product space has an orthonormal basis consisting of the tensor product of basis vectors.

#### Relationship between outer and inner product
*Source: [Carnegie Melon PDF](https://www.cs.cmu.edu/~odonnell/quantum15/QuantumComputationScribeNotesByRyanODonnellAndJohnWright.pdf), Observation 2.4*
$\mathrm{tr}(\ket{x2}\bra{x1}) = \braket{x1|x2}$
