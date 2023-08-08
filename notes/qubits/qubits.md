## Qubits

A qubit is the basic unit of information in the quantum computing framework.
It is the counterpart to the bit (binary digit) in classical computing.
Unlike bits which take on only two values, quantum bits take on a continuum of values.

Formally,
> Any quantum mechanical system that can be modeled by a two-dimensional complex vector space can be viewed as a **qubit**

Consider the two-dimensional complex vector space $V$ that forms the qubit. 

The standard basis of this vector space $V$ are normally denoted as
$\ket{0} = \begin{bmatrix} 0 \\ 1 \end{bmatrix}$ and $\ket{1} = \begin{bmatrix} 1 \\ 0 \end{bmatrix}$

The 'state' of the qubit can be represented as any unit vector in $V$. 
With respect to the standard basis we can write the state as $\ket{v} = a \ket{0} + b \ket{1}$ where $a,b \in \mathbb{C}$.
When $a$ and $b$ are both non-zero, $\ket{v}$ is said to be a superposition of $\ket{0}$ and $\ket{1}$

> **Dirac's Notation:** Observe above that we have written the vector $\vec{v} \in V$ as $\ket{v}$. This is the notation for a vector in Dirac's bra/ket notation, and is read **ket v**

The systems able to be represented as $\ket{v} = a \ket{0} + b \ket{1}$ are called 'two-state quantum' systems.
Note that this does not mean that this system has only two states, but rather that all possible states exist as a linear combination of just two states, which are the vectors in the basis we choose.
This highlights the difference between bits and qubits. Where bits can take on only 2 values, say $\ket{0}$ and $\ket{1}$, qubits can take on 
any superposition of these values $a \ket{0} + b \ket{1}$, where $a^2 + b^2 = 1$. 

![Qubit](/images/qubit_space.png)

For $\ket{v} = a \ket{0} + b \ket{1}$, where $a, b \in \mathbb{C}$, $a^2 + b^2 =1$ 
and 
$\ket{v'} = a \ket{0} + b \ket{1}$ where $a', b' \in \mathbb{C}$, $(a')^2 + (b')^2 = 1$, 
if $\ket{v} = c(\ket{v'})$ where $c \in \mathbb{C}$, $c = e^{i \phi}$ is a complex number with modulus 1, then $\ket{v}$ and $\ket{v'}$ are considered to be the same qubit value.

Of course as is the case with vector spaces, we are not limited to choosing $\ket{0}$ and $\ket{1}$ as basis,  however in quantum mechanics we are mainly concerned with bases that are **orthonormal**, unless specified otherwise.

Other than $\{ \ket{0}, \ket{1}\}$, another common basis that we often use is the **Hadamard Basis** which is given by $\left\{ \ket{+}, \ket{-} \right\}$ where $\ket{+} = \displaystyle\frac{1}{\sqrt 2} (\ket{0} + \ket{1})$ and $\ket{-} = \displaystyle\frac{1}{\sqrt 2} (\ket{0} - \ket{1})$

There could be systems whose states are modelled as vectors in $3$-dimensional vector spaces, these are called qutrits. Similar, systems whose states are modelled with $n$-dimensional vector spaces are called qudrits. However, all of these higher dimensional systems can be modelled by a system of qubits, so they do not offer any higher computational power.

There can be quite a few real-life realizations of qubits which satisfy the above criteria, these could include photon polarization, or electron spin, or an atom with its ground state and excited state.

The fact that a qubit can exist in superposition of two basis vectors $\ket{0}$ and $\ket{1}$ may lead us to believe that we have a continuum of values to work with in our computational model. However, this is not the case. While the qubit itself  may be in a superposition state, quantum theory states that we cannot interact with the qubit without fundamentally altering its state. Any measurement device that interacts with the qubit will itself have two preferred basis vectors, say $\ket{u}$ and $\ket{u^\perp}$. When we measure the state of the qubit, it will give the value of one of the preferred basis vectors. 

Given the orthonormal basis $\{ \ket{u}, \ket{v} \}$, if the state of the qubit is $\ket{v} = a \ket{u} + b \ket{v}$, then measurement will yield the value of either $\ket{u}$ with a probability of $|a|^2$ or $\ket{v}$ with a probability $|b|^2$.
This also changes the state of the qubit itself to the result of the measurement.

This behaviour is an axiom of quantum mechanics, found by empirical observation from experiments with measurement devices. 
This property restricts the amount of information that can be extracted from a qubit, a single measurment yields atmost a single classical bit worth of information, and we cannot make more than one measurement of original state of the qubit.


