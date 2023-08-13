## Qubits

A qubit is the basic unit of information in the quantum computing framework.
It is the counterpart to the bit (binary digit) in classical computing.
Unlike bits which take on only two values, quantum bits take on a continuum of values.

Formally,
> A **qubit** is any quantum mechanical system that can be modeled by a two-dimensional complex vector space, known as the **state space**.
> The **state** of the qubit is any vector in that vector space.

The dimensions of the state space are, intuitively, the system’s *“independent degrees of freedom"*.

More precisely,
`Alternatively, from Kaye's book`
> The state of a qubit is described by a unit vector in a complex Hilbert space $\mathcal{H}$.

On a real quantum computer, the underlying quantum mechanical system could be be based on photon polarization, electron spin, or an atom's ground state and excited state, or even defect centers in diamonds. The specific implementation of the system is of little concern as they all will follow the same rules. So it is enough to work with an abstracted idea of a qubit.

We will consider only unit vectors as valid states (because then the amplitudes have a more direct relation to
the measurement probabilities and because keeping track of the normalization factor provides a
check that helps avoid errors.)

Consider the two-dimensional complex vector space $V$ that forms the qubit. 
The standard basis of this vector space $V$ are normally denoted as
$\ket{0} = \begin{bmatrix} 0 \\ 1 \end{bmatrix}$ and $\ket{1} = \begin{bmatrix} 1 \\ 0 \end{bmatrix}$

While included as a definition of a qubit above, let us state the following as a postulate that we expect all physical realizations of a qubit to follow:
> **Postulate of Superposition**
> With respect to the basis $\{ \ket{0}, \ket{1} \}$, the state of the qubit can be described as $\ket{v} = a \ket{0} + b \ket{1} = \begin{bmatrix} 0 \\ a \end{bmatrix} + \begin{bmatrix} b \\ 0 \end{bmatrix} = \begin{bmatrix} b \\ a \end{bmatrix}$ where $a,b \in \mathbb{C}$ and $a^2 + b^2 = 1$. 
> When $a$ and $b$ are both non-zero, $\ket{v}$ is said to be a superposition of $\ket{0}$ and $\ket{1}$

> **Dirac's Bra/Ket Notation:** Observe above that we have written the vector $\vec{v} \in V$ as $\ket{v}$. This is the notation for a vector in Dirac's bra/ket notation, and is read **ket v**

These qubits are called 'two-state quantum' systems. This does not mean that this system has only two states, but rather that all possible states exist as a linear combination of just two states, i.e. vectors in the basis for the two-dimensional complex vector space. This highlights the difference between bits and qubits. Where bits can take on only 2 values, say $\ket{0}$ and $\ket{1}$, qubits can take on any superposition of these values as $a \ket{0} + b \ket{1}$, where $a,b \in \mathbb{C}$ and $a^2 + b^2 = 1$. (there is a caveat however, we will not have the information in all the superposition states actually available to us).
There could be systems whose states are modelled as vectors in $3$-dimensional vector spaces, these are called qutrits. Similar, systems whose states are modelled with $n$-dimensional vector spaces are called qudrits. However, all of these higher dimensional systems can be modelled by a system of qubits, so they do not offer any higher computational power.

![Qubit](/images/qubit_space.png)

Note: For $\ket{v} = a \ket{0} + b \ket{1}$, where $a, b \in \mathbb{C}$, $a^2 + b^2 =1$ and $\ket{v'} = a \ket{0} + b \ket{1}$ where $a', b' \in \mathbb{C}$, $(a')^2 + (b')^2 = 1$, if $\ket{v} = c(\ket{v'})$ where $c \in \mathbb{C}$, $c = e^{i \phi}$ is a complex number with modulus 1, then $\ket{v}$ and $\ket{v'}$ are considered to be the same qubit value.

Of course as is the case with vector spaces, we are not limited to choosing $\ket{0}$ and $\ket{1}$ as basis. It is to be noted that in general we will mainly use bases that are **orthonormal**, unless specified otherwise. For example, other than the standard basis $\{ \ket{0}, \ket{1}\}$, another common basis that we often use is the **Hadamard Basis** which is given by $\left\{ \ket{+}, \ket{-} \right\}$ where $\ket{+} = \displaystyle\frac{1}{\sqrt 2} (\ket{0} + \ket{1})$ and $\ket{-} = \displaystyle\frac{1}{\sqrt 2} (\ket{0} - \ket{1})$

The fact that a qubit can exist in superposition of two basis vectors $\ket{0}$ and $\ket{1}$ may lead us to believe that we have a continuum of values to work with in our computational model. However, this is not the case. While the qubit itself  may be in a superposition state, quantum theory states that we cannot interact with the qubit without fundamentally altering its state. Any measurement device that interacts with the qubit will itself have two preferred basis vectors, say $\ket{u}$ and $\ket{v}$. When we measure the state of the qubit, it will result the value of one of the preferred basis vectors. 

> **[Born's Rule](https://en.wikipedia.org/wiki/Born_rule) Postulate**
> Given the orthonormal basis $\{ \ket{u}, \ket{v} \}$, if the state of the qubit is $\ket{v} = a \ket{u} + b \ket{v}$, then measurement of the qubit will yield the value of either $\ket{u}$ with a probability of $|a|^2$ or $\ket{v}$ with a probability $|b|^2$. 


This also changes the state of the qubit itself to the result of the measurement. This behaviour is an axiom of quantum mechanics, found by empirical observation from experiments with measurement devices. This property restricts the amount of information that can be extracted from a qubit, a single measurment yields atmost a single classical bit worth of information, and we cannot make more than one measurement of original state of the qubit.
