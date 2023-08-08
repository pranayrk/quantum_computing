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



# Resources

## Books
* **Quantum Computing: A Gentle Introduction, Eleanor G. Rieffel and Wolfgang H. Polak** [gdrive](https://drive.google.com/file/d/11I6w6WlGISlnUawouQzLZCT5r_DFQdpl/view?usp=drive_link)
* **Quantum Computing: From Alice to Bob, Alice Flarend and Robert Hilborn** [gdrive](https://drive.google.com/file/d/1BGsw5h7frncfrsQ9ZJQdfbR0a919623-/view?usp=drive_link)
* **An Introduction to Quantum Computing, Phillip Kaye, Raymond Laflamme, Michele Mosca** [gdrive](https://drive.google.com/file/d/1bThjMp9Ia796H3Zpwge5FpymBaKGsUfH/view?usp=drive_link)
* **Quantum Computing Explained, David McMahon** [gdrive](https://drive.google.com/file/d/1MfQkNf7F_SKvthIoWRu0Z6WXzWPf2e09/view?usp=drive_link)
* **Introduction to Quantum Computing, Ray LaPierre** [gdrive](https://drive.google.com/file/d/1fQSs4b_kv1JTULjYOag6nIUZh2O8XZY4/view?usp=drive_link)
* **Quantum Computation, Helmut Bez, Tony Croft** [gdrive](https://drive.google.com/file/d/13q01a5_762HS5-k01gNdbzUWhPYOHeLn/view?usp=drive_link)
* **Quantum Computation and Quantum Information, Michael A. Nielsen, Isaac L. Chuang** [gdrive](https://drive.google.com/file/d/19sczt6sHbE9Kdokkk6653lphdDkzTvHM/view?usp=drive_link)
* **An Introduction to Quantum Computing Algorithms, Arthur O. Pittenger** [gdrive](https://drive.google.com/file/d/1B3HScVBFhsVGjgIJtIo-cpvf5unQlpbb/view?usp=drive_link)

## Other Recommended Books
* **Principles Of Quantum Computation And Information by Giuliano Benenti, Giuliano Strini, Giulio Casati** This is a more beginner-friendly version, compared to Nielsen's book, but it also covers in depth many experimental applications and quantum information theory aspects rather than QC in particular
* **An Introduction to Quantum. Computing, Phillip Kaye, Raymond Laflamme, and Michele Mosca. Oxford U. Press, New York, 20072. An Introduction to Quantum. Computing, Phillip Kaye, Raymond Laflamme, and Michele Mosca. Oxford U. Press, New York, 2007** his is an excellent book for QC. It explains in detail all of the fundamental QC problems (Deutsch-Jozsa, Simon, Grover, QFT-based algorithms and Shor's algorithm as well as many of the more theoretical problems such as the abelian stabilizer problem or the Solovay–Kitaev theorem with the appropiate Group Theory background being laid out).
* **Quantum Computer Science, N. David Mermin, Cambridge University Press 2007**
* **Introduction to Classical and Quantum Computing by Thomas Wong**  a super introduction book that explains basic Classical computing to Quantum computing.
* **Quantum Computing: An Applied Approach -Springer (2021) by Hidary, Jack D.** talks about the foundation and tools you need for QC.
* **Classical and Quantum Computation by Kitaev, Shen and Vyalyi** "little yellow book experience"

## Popular Science
* **Dancing with Qubits, Robert Sutor** [gdrive](https://drive.google.com/file/d/1T9Iw5vR8IKcT21suxGx7q-K4Iy_x5Wyx/view?usp=drive_link)
* **Quantum Computing Since Democritus, Scott Aaronson** [gdrive](https://drive.google.com/file/d/1MNHmFXQ-Fq1hFREg1PzlEOml8z1R6KyI/view?usp=drive_link)

## More Specialized Books
* **From Classical to Quantum Shannon Theory, Mark Wilde** Thorough and detailed with plenty of exercises
* **The Functional Analysis of Quantum Information Theory written by Gupta, Mandayam and Sunder based on lectures by Effros, Paulsen, Pisier and Winter** Denser and focused on the math side more than applications.
* **Alice and Bob meet Banach by Aubrun and Szarek** Incomplete textbook draft, but it looks like it'll be the definitive treatment of the probabilistic method in quantum information.
* **The Mathematics of Entanglement by Brandao, Christandl, Walter and myself** Idiosyncratic and incomplete lecture notes on some of our pet topics.

### Courses

* [Introduction to Quantum Information Science by Artur Ekert](https://www.arturekert.org/iqis) Introduction to Quantum Information Science” is a free online course offered by Artur Ekert, a prominent physicist and professor at the University of Oxford. 
* [NPTEL Course on Introduction to Quantum Computing: Quantum Algorithms and Qiskit](https://youtu.be/2SPjEA-4lKk)


## Presentations
* **Qubit system and measurement in Quantum Computing, Harsh Trivedi** [gdrive](https://drive.google.com/file/d/1F11b4QNZwfx_-KpL3y2b4heORlBNOIwr/view?usp=drive_link)

## Lecture Notes

* [Lectures on Quantum Computation, Quantum Error Correcting Codes and Information Theory, K. R. Parthasarathy](https://static.cse.iitk.ac.in/users/ppk/notes/krp.pdf)
* [David Mermin's lecture notes](http://www.lassp.cornell.edu/mermin/qcomp/CS483.html) are elementary and have a CS focus 
* [John Presskil Lecture notes](http://www.theory.caltech.edu/~preskill/ph229/) are slightly more advanced and use a physics perspective
* [Quantum Algorithms lecture notes, Andrew Childs](http://www.cs.umd.edu/~amchilds/qa/qa.pdf)

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

# Project

## Presentation Slides

* Quantum Computing Title
* Quantum Computing Introduction
* Quantum Computing Timeline 1: 
    * Main Image: Timeline
    * Early 1980s: Charles Bennett, Feynman, etc
* Quantum Computing Timeline 2:
    * Main Image: Timeline
    * Early 1990s: Proof that quantum computer could be faster, Shor's Algorithm, Grover's Algorithm
* Key facts from Quantum Mechanics
    * Photons have polarization a v1 + b v2 where a and b are complex numbers
    * Measuring a state changes it to one of the preferred bases with a certain probability
* Introduction to Qubits
    * Two state systems, which could be from photon polarization, electron spin, and the ground state together with an excited state of an atom.
* A concrete realization of a Qubit through polarizing filters
* Introduction to the Braket Notation

