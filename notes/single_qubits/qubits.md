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
