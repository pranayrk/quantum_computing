## Systems of Multiple Qubits

While it may seem like a qubit has an infinite number of states, in reality, a single qubit only gives us one bit worth of information once measured. The benefits of quantum computing become more apparent once we start including multiple interacting qubits in the system. 
In a classical world, a computer with $n$-bit register will have one dimension for each bit, resulting in a state space of dimensions $n$. This is because each bit has *one independent degree of freedom*.
Therefore, adding one bit into the $n$-bit register adds one more dimension to the state space, resulting in $n+1$-dimensions, i.e. it is linear in $n$.

<!--
Let us consider the case when we have a system of $n$ qubits which are kept isolated and not allowed to interact.
Let each qubit have the state $\ket{v_i} = a_i \ket{0} + b_i \ket{1} = \begin{bmatrix} b_i \\ a_i \end{bmatrix}$ where $a_i, b_i \in \mathbb{C}$ and $a_i ^2 + b_i ^2 = 1$.
The state of the complete system of $n$ bits can be represented by the vector $\begin{bmatrix} a_1 \\ b_1 \\ a_2 \\ b_2 \\ \vdots \\ a_n \\ b_n \end{bmatrix}$, i.e. a system of $n$ isolated qubits results in a state space of $2n$. Thus the state space grows linearly, when we have a system of non-interacting qubits.
To be more precise, the state space of $n$ isolated qubits is the direct sum $V_1 \oplus V_2 \oplus ... \oplus V_n$ of the vector spaces $V_i$ modelling each individual qubit.
-->


When allowed to interact, Quantum Computing systems behave very differently, they have *exponential state space*.
Now let us consider a system of $n$-qubits where each qubit is allowed to interact with each other. 


`Refer Kaye's Book, P46`
> **Entanglement Postulate:**
> When we have two qubits being treated as a combined system, the state space of the combined system is the tensor product $V_1 \otimes V_2$ of the state spaces $V_1, V_2$ of the component qubit subsystems.
> If the first qubit is in state $\ket{v}$ and the second in state $\ket{w}$, then the combined system of two interacting qubits is in state $\ket{v} \otimes \ket{w}$.
> Similarly, for a system of $n$ qubits, the state space is the tensor product $V_1 \otimes V_2 \otimes ... \otimes V_n$ of the state spaces of the $n$ independent qubits.

Therefore the entanglement of $n$ qubits interacting in a system will result in a state space of $2^n$.

> **Dirac's Bra/Ket Notation:** When considering the tensor product of two states, $\ket{v} \otimes \ket{w}$, we will write it in the reduced form $\ket{v}\ket{w}$ or even $\ket{vw}$

Consider a system of two qubits, each with standard basis $\{ \ket{0}, \ket{1} \}$, then the combined system will have state space $V \otimes W$ which has $\{ \ket{0} \otimes \ket{0}, \ket{0} \otimes \ket{1}, \ket{1} \otimes \ket{0}, \ket{1} \otimes \ket{1} \} = \{ \ket{00}, \ket{01}, \ket{10}, \ket{11} \} = \{ \ket{0}, \ket{1}, \ket{2}, \ket{3} \}$ as standard basis.

If the first qubit has the state $a_1 \ket{0} + b_1 \ket{1}$ and the second has state $a_2 \ket{0} + b_2 \ket{1}$, then the tensor product $a_1 a_2 \ket{0} + a_1 b_2 \ket{1} + a_2 b_1 \ket{2} + a_2 b_2 \ket{3} = \begin{bmatrix} a_1 a_2 \\ a_1 b_2 \\ a_2 b_1 \\ a_2 b_2 \end{bmatrix}$ represents the state of the 2-qubit system.

Most states in a 2-qubit system cannot be written as a tensor product of vectors in $V$ and $W$, most states are said to be *entangled*.
`Verify through Proof`

