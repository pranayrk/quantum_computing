## Qubits

A qubit is the basic unit of information in the quantum computing framework.
It is the counterpart to the bit (binary digit) in classical computing.
Unlike bits which take on only two values, quantum bits take on a continuum of values.

Formally,
> Any quantum mechanical system that can be modeled by a two-dimensional complex vector space can be viewed as a **qubit**

Consider the two-dimensional complex vector space $V$ that forms the qubit. 

The standard basis of this vector space $V$ are normally denoted as
$\ket{\rightarrow} = \begin{bmatrix} 1 \\ 0 \end{bmatrix}$ and $\ket{\uparrow} = \begin{bmatrix} 0 \\ 1 \end{bmatrix}$

The 'state' of the qubit can be represented as any unit vector in $V$, and can be considered to be a **superposition** between the basis vectors $\ket{\rightarrow}$ and $\ket{\uparrow}$.
With respect to the standard basis is $\ket{v} = a \ket{\rightarrow} + b \ket{\uparrow}$ where $a,b \in \mathbb{C}$.

> **Dirac's Notation:** Observe above that we have written the vector $\vec{v} \in V$ as $\ket{v}$. This is the notation for a vector in Dirac's bra/ket notation, and is read **ket v**

![Qubit](/images/qubit_space.png)


There can be quite a few real-life realizations of qubits which satisfy the above criteria, these could include photon polarization, or electron spin, or an atom with its ground state and excited state.

