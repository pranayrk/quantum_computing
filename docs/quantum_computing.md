# Notes


## What is quantum computing?

* The computers we use today rely on classical information theory, which are based on 'bits' which can represents a 0 or 1 state. 
* These computers, referred to as classical computers henceforth, can be reduced to an equivalence with a Turing Machine, i.e. they can both compute similar things with similar efficiency.
* In the last decades of the twentieth century, certain scientists sought to combine two of the recent most influential and revolutionary theories: information theory and quantum mechanics.
* They recognized that certain quantum phenomena (those associated with "entangled particles") could not be simulated efficiently by a Turing machine.
* This observation led to speculation that these quantum phenomena could be used to speed up computation in general.
* Such a program required rethinking the information theoretic model underlying computation, which resulted in a new framework for computation called quantum computing

## A note on Dirac's Bra/Ket Notation

The Bra–ket notation, or Dirac notation, is a notation for linear algebra and linear operators on complex vector spaces.
It is specifically designed to ease the types of calculations that frequently come up in quantum mechanics, and it's use is very widespread to denote quantum states and linear transformations that act on these quantum stat to denote quantum states and linear transformations that act on these quantum states.
We will be using it extensively in these notes and will incrementally explain how it works.

## From Quantum Computing Since Democritus, Scott Aaronson

"Quantum mechanics is a beautiful generalization of the laws of probability: a generalization based on the 2-norm rather than the 1-norm, and on complex numbers rather than nonnegative real numbers. It can be studied completely separately from its applications to physics (and indeed, doing so provides a good starting point for learning the physical applications later). This generalized probability theory leads naturally to a new model of computation – the quantum computing model – that challenges ideas about computation once considered a priori, and that theoretical computer scientists might have been driven to invent for their own purposes, even if there were no relation to physics. In short, while quantum mechanics was invented a century ago to solve technical problems in physics, today it can be fruitfully explained from an extremely different perspective: as part of the history of ideas, in math, logic, computation, and philosophy, about the limits of the knowable."

## From Carnegie Mellon -- Quantum Computation and Information 2015
The idea of quantum computation was pioneered in the 1980s mainly by Feynman and Deutsch, with Albert independently introducing quantumautomata and with Benioff analyzing the link between quantum mechanics andreversible classical computation. The initial idea of Feynman was the following: Although it is perfectly possible to use a (normal) computer to simulate the behavior of n-particlesystems evolving according to the laws of quantum, it seems be extremely inefficient. In particular, it seems to take an amount of time/space that is exponential in $n$. This is peculiar because the actual particles can be viewed as simulating themselves efficiently. So why not call the particles themselves a “computer”? After all, although we have sophisticated theoretical models of (normal) computation, in the end computers are ultimately physical objects operating according to the laws of physics. If we simply regard the particles following their natural quantum-mechanical behavior as a computer, then this “quantum computer” appears to be performing a certain computation (namely, simulating a quantum system)exponentially more efficiently than we know how to perform it with a normal, “classical” computer. Perhaps we can carefully engineer multi-particle systems in such a way that their natural quantum behavior will do other interesting computations exponentially more efficiently than classical computers can.This is the basic idea behind quantum computers. As it turns out, you can get (seemingly) exponential speedups for a (seemingly) small number of natural computational problems by carefully designing a multi-particle quantum system and letting it evolve according tothe (100-year old, extremely well-confirmed) laws of quantum mechanics. By far the most spectacular example is Shor’s factoring algorithm, an algorithm implementable on a quantum computer that can factor any $n$-digit integer (with high probability) in roughly $n^2$-time. This is contrast to the fact that the fastest known “classical” algorithm for factoring $n$-digit integers seems to require roughly $2^{n^{1/3}}$-time, and in fact the presumed computational difficulty of factoring is relied upon in an enormous number of real-world cryptographic applications

## Qubits

A qubit (quantum bit) is the basic unit of information in any quantum computing framework. It is based on a quantum-mechanical system.
It is the counterpart to the bit (binary digit) in classical computing which takes on two values, usually referred to as $0$ and $1$.
Unlike bits which take on only two values, quantum bits take on a continuum of values.

On a real-life quantum computer, the underlying quantum mechanical system could be be implemented using a multitude of phenomena.In labs, qubits have been implemented using photon polarization, electron spin of a single-electron quantum dot, the ground/excited state of an atom in a cavity, and even defect centers in diamonds. The specific implementation of the system is of little concern as long as they all follow the same rules, which we will abstract out.

> A **qubit** is any quantum mechanical system which is associated with two-dimensional complex Hilbert space $\mathcal{H}_S$ (known as the **state space**) and follows the below postulates:
> * Postulate of Superposition
> * Measurement (Born's Rule) Postulate
> * Entanglement Postulate
> * Postulate of Transformation
>
> A given state of the system is completely described by a unit vector $\ket{\psi}$, which is called the **state vector** (or wave function) on the Hilbert Space $\mathcal{H}_S$

We will consider only unit vectors as valid states (because then the amplitudes have a more direct relation to the measurement probabilities and because keeping track of the normalization factor provides a check that helps avoid errors.)

Consider the two-dimensional complex vector space $\mathcal{H}$ that models the qubit. 
The standard basis (often referred to as the 'computational basis' of this vector space $\mathcal{H}$ are normally denoted as
$\ket{0} = \begin{bmatrix} 0 \\ 1 \end{bmatrix}$ and $\ket{1} = \begin{bmatrix} 1 \\ 0 \end{bmatrix}$

> **Postulate of Superposition**
> With respect to the basis $\{ \ket{0}, \ket{1} \}$, the state of the qubit can be described as $\ket{v} = a \ket{0} + b \ket{1} = \begin{bmatrix} 0 \\ a \end{bmatrix} + \begin{bmatrix} b \\ 0 \end{bmatrix} = \begin{bmatrix} b \\ a \end{bmatrix}$ where $a,b \in \mathbb{C}$ and $a^2 + b^2 = 1$. 
> When $a$ and $b$ are both non-zero, $\ket{v}$ is said to be a superposition of $\ket{0}$ and $\ket{1}$

The above follows from the **Schrodinger Wave Equation** which is a linear first order differential equation.

> **Dirac's Bra/Ket Notation:** Observe above that we have written the vector $\vec{v} \in V$ as $\ket{v}$. This is the notation for a vector in Dirac's bra/ket notation, and is read **ket v**

These qubits are called 'two-state quantum' systems. This does not mean that this system has only two states, but rather that all possible states exist as a linear combination of just two states, i.e. vectors in the basis for the two-dimensional complex vector space. This highlights the difference between bits and qubits. Where bits can take on only 2 values, say $\ket{0}$ and $\ket{1}$, qubits can take on any superposition of these values as $a \ket{0} + b \ket{1}$, where $a,b \in \mathbb{C}$ and $a^2 + b^2 = 1$. (there is a caveat however, we will not have the information in all the superposition states actually available to us).
There could be systems whose states are modelled as vectors in $3$-dimensional vector spaces, these are called qutrits. Similar, systems whose states are modelled with $n$-dimensional vector spaces are called qudrits. However, all of these higher dimensional systems can be modelled by a system of qubits, so they do not offer any higher computational power.

![Qubit](/images/qubit_space.png)

Note: For $\ket{v} = a \ket{0} + b \ket{1}$, where $a, b \in \mathbb{C}$, $a^2 + b^2 =1$ and $\ket{v'} = a \ket{0} + b \ket{1}$ where $a', b' \in \mathbb{C}$, $(a')^2 + (b')^2 = 1$, if $\ket{v} = c(\ket{v'})$ where $c \in \mathbb{C}$, $c = e^{i \phi}$ is a complex number with modulus 1, then $\ket{v}$ and $\ket{v'}$ are considered to be the same qubit value.

Of course as is the case with vector spaces, we are not limited to choosing $\ket{0}$ and $\ket{1}$ as basis. It is to be noted that in general we will mainly use bases that are **orthonormal**, unless specified otherwise. For example, other than the standard basis $\{ \ket{0}, \ket{1}\}$, another common basis that we often use is the **Hadamard Basis** which is given by $\left\{ \ket{+}, \ket{-} \right\}$ where $\ket{+} = \displaystyle\frac{1}{\sqrt 2} (\ket{0} + \ket{1})$ and $\ket{-} = \displaystyle\frac{1}{\sqrt 2} (\ket{0} - \ket{1})$

At this stage, one might be tempted to say that a single qubit could be used to store an infinite amount of information.
However, there is a catch: to extract this information we must perform a measurement and quantum mechanics tells us that from the measurement of the polarization state $\sigma_n$ of a qubit along any axis $n$, we obtain only a single bit of information ($\sigma_n = +1$ or $\sigma_n = −1$).

The fact that a qubit can exist in superposition of two basis vectors $\ket{0}$ and $\ket{1}$ may lead us to believe that we have a continuum of values to work with in our computational model. However, this is not the case. While the qubit itself  may be in a superposition state, quantum theory states that we cannot interact with the qubit without fundamentally altering its state. 

> **Measurement ([Born's Rule](https://en.wikipedia.org/wiki/Born_rule)) Postulate for a single qubit** 
> Any measurement device that interacts with the qubit will be calibrated with a pair of orthonormal vectors called the **preferred basis**, say $\{ \ket{u}, \ket{v} \}$. When we measure the state of the qubit with the device, it will output the result as one of the preferred basis vectors. 
> If the state of the qubit with respect to the preferred basis is $\ket{v} = a \ket{u} + b \ket{v}$, then measurement of the qubit will yield either $\ket{u}$ with a probability of $|a|^2$ or $\ket{v}$ with a probability $|b|^2$. 
> After measurement, the state of the qubit itself will be changed to the output of the measurement.


Alternatively,
`From Beneti, Casati P64`
> Any physical observable is associated with a self-adjoint operator $\mathcal{A}$ on the Hilbert space $\mathcal{H}_S$. The possible outcome of a measurement of the observable $\mathcal{A}$ is one of the eigenvalues of the operator $\mathcal{A}$. Writing the eigenvalues equation, 
> $\mathcal{A} \ket{i} = a_i \ket{i}$
> where $\ket{i}$ is an orthonormal basis of eigenvectors of the operator $\mathcal{A}$, and expanding the state vector $\ket{\psi(t)}$ over this basis,
> $\ket{\psi(t)} = \sum_i c_i(t) \ket{i}$,
> then the probability that a measurement of the observable $\mathcal{A}$ at a time $t$ results in the outcome $a_i$ is given by
> $p_i (t) = |\braket{i|\psi(t)}|^2 = |c_i (t)|^2$

This behaviour is an axiom of quantum mechanics, found by empirical observation from experiments with measurement devices. This property restricts the amount of information that can be extracted from a qubit, a single measurment yields atmost a single classical bit worth of information, and we cannot make more than one measurement of original state of the qubit.

The measurement principle also indicates why we work with unit vectors. If we have two possibilities, each corresponding to a probability of $|a|^2$ and $|b|^2$, then the total probability of the whole space will be $|a|^2 + |b|^2 = 1$, which is valid for unit vectors.

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


Consider the bipartite quantum system (two qubits), we have the state space $\mathcal{H} = \mathcal{H}_1 \otimes \mathcal{H_2}$
The most natural basis for $\mathcal{H}$ is constructed from the tensor products of the basis vectors $\mathcal{H_1}$ (say $\{ \ket{0}_1, \ket{1}_1 \}$and $\mathcal{H_2}$ (say $\{ \ket{0}_2, \ket{1}_2\}$), then a basis for $\mathcal{H}$ is given by $\{ \ket{0}_1 \otimes \ket{0}_2, \ket{0}_1 \otimes \ket{1}_2, \ket{1}_1 \otimes \ket{0}_2, \ket{1}_1 \otimes \ket{1}_2 \} = \{ \ket{00}, \ket{01}, \ket{10}, \ket{11} \}$

So an arbitary state $\ket{\psi}$ for the bipartite system can be described using the basis vectors as $\ket{\psi} = c_1 \ket{00} + c_2 \ket{01} + c_3 \ket{10} + c_4 \ket{11}$.

A state $\ket{\psi}$ is said to be **entangled** if it cannot be written as a simple tensor product of states $\ket{\alpha}_1 \in \mathcal{H}_1$ and $\ket{\beta}_2 \in \mathcal{H}_2$. If we can write $\ket{\psi} = \ket{\alpha}_1 \otimes \ket{\beta}_2$, the state is said to be **seperable**.

**Example:** Consider the state $\ket{\psi_1} = \frac{1}{\sqrt{2}} (\ket{00} + \ket{11})$. We can show this is entangled.
`TODO`
**Example:** Consider the state $\ket{\psi_2} = \frac{1}{\sqrt{2}} (\ket{01} + \ket{11})$. We can show this is seperable since we can write $\ket{\psi_2} = \frac{1}{\sqrt{2}} (\ket{0} + \ket{1}) \otimes \ket{1}$

Most states in a 2-qubit system cannot be written as a tensor product of vectors in $V$ and $W$, most states are said to be *entangled*.
`Verify through Proof`

## Hilbert Space
> **Definition** A Hilbert space is a real or complex inner product space that is also a complete metric space with respect to the distance function induced by the inner product.

To say that a complex vector space $\mathcal{H}$ is a complex inner product space means that there is an inner product $\langle x, y \rangle$ associating a complex number to each pair of elements $x,y$ of $\mathcal{H}$ that satisfies the following properties: 
1. Conjugate Symmetric: $\langle y,x \rangle = \overline{\langle x,y \rangle}$
2. Linear in first argument: $\langle a x_1 + b x_2 , y \rangle  = a \langle x_1, y \rangle + b \langle x_2, y \rangle$
3. Inner product of an element with itself is positive definite: $\langle x,x \rangle > 0$ if $x \neq 0$, $\langle x,x \rangle = 0$ if $x = 0$

Hilbert spaces have an easier structure and are in a way (most often infinite dimensional) Euclidian spaces. However, many spaces of interest that are Banach spaces are not Hilbert spaces, hence they are important too. 
A Hilbert space is a very special type of Banach space - one which is meant to generalize familiar notions from $\mathbb{R}^n$. 

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

# Resources

## Books
* **Quantum Computing: A Gentle Introduction, Eleanor G. Rieffel and Wolfgang H. Polak** [gdrive](https://drive.google.com/file/d/11I6w6WlGISlnUawouQzLZCT5r_DFQdpl/view?usp=drive_link)
* **Principles Of Quantum Computation And Information by Giuliano Benenti, Giuliano Strini, Giulio Casati** [gdrive](https://drive.google.com/file/d/1rw_7z9fPHqUHMceGHSnojIlQQlHwmHi0/view?usp=drive_link) This is a more beginner-friendly version, compared to Nielsen's book, but it also covers in depth many experimental applications and quantum information theory aspects rather than QC in particular
* **Quantum Computing Explained, David McMahon** [gdrive](https://drive.google.com/file/d/1MfQkNf7F_SKvthIoWRu0Z6WXzWPf2e09/view?usp=drive_link)
* **An Introduction to Quantum Computing, Phillip Kaye, Raymond Laflamme, Michele Mosca** [gdrive](https://drive.google.com/file/d/1bThjMp9Ia796H3Zpwge5FpymBaKGsUfH/view?usp=drive_link)
* **Quantum Computing: From Alice to Bob, Alice Flarend and Robert Hilborn** [gdrive](https://drive.google.com/file/d/1BGsw5h7frncfrsQ9ZJQdfbR0a919623-/view?usp=drive_link)
* **Introduction to Quantum Computing, Ray LaPierre** [gdrive](https://drive.google.com/file/d/1fQSs4b_kv1JTULjYOag6nIUZh2O8XZY4/view?usp=drive_link)
* **Quantum Computation, Helmut Bez, Tony Croft** [gdrive](https://drive.google.com/file/d/13q01a5_762HS5-k01gNdbzUWhPYOHeLn/view?usp=drive_link)
* **Quantum Computation and Quantum Information, Michael A. Nielsen, Isaac L. Chuang** [gdrive](https://drive.google.com/file/d/19sczt6sHbE9Kdokkk6653lphdDkzTvHM/view?usp=drive_link)
* **An Introduction to Quantum Computing Algorithms, Arthur O. Pittenger** [gdrive](https://drive.google.com/file/d/1B3HScVBFhsVGjgIJtIo-cpvf5unQlpbb/view?usp=drive_link)
* **Quantum Computer Science, N. David Mermin, Cambridge University Press 2007** [gdrive](https://drive.google.com/file/d/110YqOICSQmQOrqHZC68iwz3zr8u316tZ/view?usp=drive_link)
* **Introduction to Classical and Quantum Computing by Thomas Wong** [gdrive](https://drive.google.com/file/d/1CCZoKao3bLZak_A_RWvZq5nhcBhId1Bn/view?usp=drive_link)  a super introduction book that explains basic Classical computing to Quantum computing.
* **Quantum Computing: An Applied Approach -Springer (2021) by Hidary, Jack D.** [gdrive](https://drive.google.com/file/d/1itsLK62K6EoZauyMlxrrghFMCrTSZn-G/view?usp=drive_link) talks about the foundation and tools you need for QC.
* **Classical and Quantum Computation by Kitaev, Shen and Vyalyi** [gdrive](https://drive.google.com/file/d/1nXKgPD0-GjEkJ_PQ6vsn5HHEACy2WBOT/view?usp=drive_link) "little yellow book experience"

## More Specialized Books
* **From Classical to Quantum Shannon Theory, Mark Wilde** Thorough and detailed with plenty of exercises
* **The Functional Analysis of Quantum Information Theory written by Gupta, Mandayam and Sunder based on lectures by Effros, Paulsen, Pisier and Winter** Denser and focused on the math side more than applications.
* **Alice and Bob meet Banach by Aubrun and Szarek** Incomplete textbook draft, but it looks like it'll be the definitive treatment of the probabilistic method in quantum information.
* **The Mathematics of Entanglement by Brandao, Christandl, Walter and myself** Idiosyncratic and incomplete lecture notes on some of our pet topics.

## Popular Science
* **Dancing with Qubits, Robert Sutor** [gdrive](https://drive.google.com/file/d/1T9Iw5vR8IKcT21suxGx7q-K4Iy_x5Wyx/view?usp=drive_link)
* **Quantum Computing Since Democritus, Scott Aaronson** [gdrive](https://drive.google.com/file/d/1MNHmFXQ-Fq1hFREg1PzlEOml8z1R6KyI/view?usp=drive_link)

### Courses

* [Introduction to Quantum Information Science by Artur Ekert](https://www.arturekert.org/iqis) Introduction to Quantum Information Science” is a free online course offered by Artur Ekert, a prominent physicist and professor at the University of Oxford. 
* [NPTEL Course on Introduction to Quantum Computing: Quantum Algorithms and Qiskit](https://youtu.be/2SPjEA-4lKk)


## Presentations
* **Qubit system and measurement in Quantum Computing, Harsh Trivedi** [gdrive](https://drive.google.com/file/d/1F11b4QNZwfx_-KpL3y2b4heORlBNOIwr/view?usp=drive_link)

## Lecture Notes and Course Material

* [Peter Shor's Lecture Notes 2022](https://math.mit.edu/~shor/435-LN/)
* [Lectures on Quantum Computation, Quantum Error Correcting Codes and Information Theory, K. R. Parthasarathy](https://static.cse.iitk.ac.in/users/ppk/notes/krp.pdf)
* [David Mermin's lecture notes](http://www.lassp.cornell.edu/mermin/qcomp/CS483.html) are elementary and have a CS focus 
* [John Presskil Lecture notes](http://www.theory.caltech.edu/~preskill/ph229/) are slightly more advanced and use a physics perspective
* [Quantum Algorithms lecture notes, Andrew Childs](http://www.cs.umd.edu/~amchilds/qa/qa.pdf)
* [Carnegie Mellon - Quantum Computation and Information 2015 Course Notes](https://www.cs.cmu.edu/~odonnell/quantum15/) | [Full Course Notes](https://www.cs.cmu.edu/~odonnell/quantum15/QuantumComputationScribeNotesByRyanODonnellAndJohnWright.pdf)

## Articles and Blog Posts
* [Igor Ferst's Blog on State Space](https://sirjosephporter.com/2022/02/14/state-space/)

## Videos
* [Lukas's Lab - How to Build a Quantum Computer](https://www.youtube.com/watch?v=N06hC1GL1ns)

## Books focussing on Quantum Mechanics

* **Sakurai's Quantum Mechanics**
* **Shankar's Principles of Quantum Mechanics**

## Books for the mathematics
* **Linear Algebra and Linear Models by R. B. Bapat.**

## Other Books
* [Qiskit Textbook by IBM](https://qiskit.org/textbook/preface.html) The Qiskit Textbook is a free digital resource for anyone learning about quantum algorithms and computations. This textbook provides a comprehensive introduction to quantum computing, covering basic quantum mechanics concepts

## Other
* [Quantum Computing for the very curious](https://quantum.country/qcvc) Quantum Computing for the Very Curious is a series of articles written by Andy Matuschak and Michael A. Nielsen that offers a basic and comprehensive introduction to quantum computing. The series covers a wide range of topics, from basic quantum mechanics concepts to advanced quantum algorithms.


### Running and Testing

* [Qiskit](https://qiskit.org/), IBMs quantum computing python package
* [Cirq](https://quantumai.google/cirq/tutorials) Google's version
* [IBM Quantum](https://quantum-computing.ibm.com/) basically is like a Jupyter notebook, so a python environment, so you can just use Qiskit there without the need to install anything. But it also as two additional advantages. One: you can run your code (if it doesn't involve too many qubits) on a real quantum computer for free
* [Xanadu Quantum Codebook](https://codebook.xanadu.ai/) by Catalina Albornoz, Guillermo Alonso, Mikhail Andrenkov, and more. it is a fantastic codebook that gives you a good basic understanding of quantum computing, you should go over it before going for more exercise or content, if you get stuck hard check the walkthrough from [Owen Lockwood](https://youtube.com/playlist?list=PL91jA61XuCIB-4giBW3Hs-We1FE-fUxPV).
* [IBM Quantum Challenge](https://github.com/search?q=org%3Aqiskit-community+quantum+challenge&type=repositories) by the qiskit community, each year has a different topic, where you can learn more about quantum computing, if you need help, go to qiskit slack, each challenge has different channels, where you can search for previous hints or questions asked.
* [QOSF Monthly Challenges](https://github.com/qosf/monthly-challenges) by qosf contributor, contains a lot of challenges and interesting topics in quantum computing.
* [Quantum Katas by Microsoft](https://learn.microsoft.com/en-us/azure/quantum/tutorial-qdk-intro-to-katas) is an open-source project developed by Microsoft that provides a set of self-paced programming exercises and tutorials for learning quantum computing
* [Quantum Computing Playground](https://www.quantumplayground.net/#/home) The Quantum Computing Playground is a browser-based interactive online platform that allows users to simulate and experiment with quantum circuits fun and engagingly

### Certifications

* [IBM Certified Associate Developer - Quantum Computation using Qiskit v0.2X](https://www.ibm.com/training/certification/C0010300), you can find all kinds of exam related resources and information from qiskit slack channel #qiskit-cert-exam, this certificate proven yourself able to demonstrates fundamental knowledge of quantum computing concepts and is able to express them using the qiskit open sources SDK. This also open opportunity for you to join [qiskit-advocate](https://qiskit.org/advocates/).

