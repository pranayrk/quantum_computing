`Note: Include Representation of Linear Transformations in Bra/Ket Notation, P48`

### Measurement Revisited

We saw that measurement the state of a single qubit follow the postulate:

> **Measurement ([Born's Rule](https://en.wikipedia.org/wiki/Born_rule)) Postulate for a single qubit**
> Any measurement device that interacts with the qubit will be calibrated with a pair of orthonormal vectors called the **preferred basis**, say $\{ \ket{u}, \ket{v} \}$. When we measure the state of the qubit with the device, it will output the result as one of the preferred basis vectors.
> If the state of the qubit with respect to the preferred basis is $\ket{v} = a \ket{u} + b \ket{v}$, then measurement of the qubit will yield either $\ket{u}$ with a probability of $|a|^2$ or $\ket{v}$ with a probability $|b|^2$.
> After measurement, the state of the qubit itself will be changed to the output of the measurement.

We wish to formulate this rule in mathematical way, and generalize it to measurement on multiple qubits.

Consider the vector space $V$ modelling a system of $n$ qubits. For any subspace $S$ of $V$, the subspace $S^{\perp}$ consists of all the vectors in $V$ that are perpendicular to all the vectors in $S$. Then we can write $V$ as a direct-sum decomposition of as $V = S \oplus S^{\perp}$, 
and any vector $\ket{v} \in V$ can be written as $\ket{v} = \vec{s_1} + \vec{s_2}$ where $\vec{s_1} \in S, \vec{s_2} \in S^{\perp}$.

We can then find the projection of $\ket{v}$ onto $S$ or $S^{\perp}$ with the help of a **projection operator** (or **projector**).
For a subspace $S$ of $V$, the projection operator $P_S$ is the linear operator $P_S : V \to S$ that sends $\ket{v} \to \vec{s_1}$ where $\ket{v} = \vec{s_1} + \vec{s_2}$ with $\vec{S_1} \in S, \vec{S_2} \in S^{\perp}$.
For a one-dimensional subspace of $V$ spanned by $\ket{\psi}$, we can write the projection operator as $\ket{\psi}\bra{\psi}$.

> **Dirac's Bra/Ket Notation:** 
> $\bra{v}$ refers to the conjugate transpose (also known as Hermitian conjugate or dual vector) of $\ket{v}$ and is read **bra v** 
> When $\ket{v} = a \ket{0} + b \ket{1} = \begin{bmatrix} b \\ a \end{bmatrix}$, then $\bra{v} = \ket{v}^\dagger = \begin{bmatrix} \overline{b} & \overline{a} \end{bmatrix}$
> Here the dagger symbol $\dagger$ refers to the operation of conjugate transpose.

For a unit vector $\ket{psi} = a \ket{0} + b \ket{1}$, we have $\ket{\psi}\bra{\psi} = \begin{bmatrix} b \\ a \end{bmatrix} \begin{bmatrix} \overline{b} & \overline{a} \end{bmatrix} = \begin{bmatrix} |b|^2 & \overline{a} b \\ a \overline{b} & |a|^2  \end{bmatrix}$.

Consider we want the projection of $\ket{v} = a \ket{0} + b \ket{1}$ onto $\ket{0}$. Then we will apply the projection operator $\ket{0}\bra{0}$ onto $\ket{v}$. Here $\ket{0}\bra{0} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}$. Therefore,
$\ket{0}\bra{0} (\ket{v}) = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix} \begin{bmatrix} a \\ b \end{bmatrix} = \begin{bmatrix} a \\ 0 \end{bmatrix} = a \ket{0}$

For a qubit with vector space $V$ which has direct sum decomposition $V = S_1 \oplus S_2 \oplus S_3 ... \oplus S_k$ into orthogonal subspaces $S_i$, measuring the state of the qubit in state $\ket{\psi}$ results in the state $\ket{\phi} = \frac{P_i \ket{\psi}}{|P_i \ket{\psi}|}$ with probability $|P_i \ket{\psi}|^2$ where $P_i$ are the projectors $P_i : V \to S_i$.


