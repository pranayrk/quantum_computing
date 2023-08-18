### Quantum State Transformations

Here Quantum State Transformations mean a mapping from the state space of a quantum system to itself.

Measurements are not quantum transformations, since they have only finitely many outcome which are probabilistic.

Per experiments, we have determined that nature allows only a limited portions of such transformations. They have to satisfy, 
1. They must be linear. For a transformation $U$ acting on a state $\ket{\psi} = a_1 \ket{\psi_1} + a_2 \ket{\psi_2} + ... + a_k \ket{\psi_k}$, we have $U(\ket{\psi}) = U(a_1 \ket{\psi_1} + a_2 \ket{\psi_2} + ... + a_k \ket{\psi_k}) = a_1 U(\ket{\psi_1}) + a_2 U(\ket{\psi_2}) + ... + a_k U(\ket{\psi_k})$ 
2. Unit vectors are mapped to unit vectors
3. Orthogonal subspaces map to orthogonal subspaces (implied by above)

It can be shown that these properties hold only when the transformation $U$ satisfies $U^\dagger U = I$, i.e. $U$ is unitary.
`TODO: Prove`

> **Postulate of Transformation:**
> any state of the qubit can be transformed into any other state. Such transformations are carried out by means of processes that can be represented using unitary linear transformations

Geometrically, all quantum state transformations are rotations of the complex vector space associated with the quantum state space.

1. $U$ is unitary iff all its columns are orthonormal. $U$ is unitary iff its rows are orthonormal.
2. The product of two unitary matrices $U_1U_2$ is again unitary
3. If $U_1$ is a unitary transformation on space $X_1$ and $U_2$ is a unitary transformation on $X_2$, then $U_1 \otimes U_2$ is a unitary transformation on $X_1 \otimes X_2$
    `TODO: Prove`

All quantum state transformations are unitary, however that does not mean every unitary operator can be efficiently realized as a quantum transformation.

The fact that transformations are unitary imply that they are reversible.

`Refer Rieffel, Polak, P73, Section 5.1.1 for why unitary transformations imply the nocloning principle`

The hadamard gates and the phase-shift gates are enough to perform any unitary operation on a single qubit.
`Refer Beneti, Casati P108`
