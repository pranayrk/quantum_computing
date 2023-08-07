# Daily Learning

## 2023-08-02

### Quantum Computing Background
[Source](http://www.mit.edu/~aram/advice/quantum.html)

*General background:* Quantum computing (theory) is at the intersection of math, physics and computer science. (Experiment also can involve electrical engineering.) Eventually you will want to learn aspects of all of these fields, but when starting you can use any for an entry into the field. Within each field, the subjects you will want to know are:

* Physics: First learn quantum mechanics. At more advanced levels, various aspects of quantum information overlap with AMO, condensed matter and high energy.
* Math: First linear algebra and probability. Later my preferences would be to learn some group and representation theory, random matrix theory and functional analysis, but eventually most fields of math have some overlap with quantum information, and other researchers may emphasize different areas of math.
* Computer Science: Most theory topics are relevant although are less crucial at first: i.e. algorithms, cryptography, information theory, error-correcting codes, optimization, complexity, machine learning. If you haven't had any CS theory exposure, undergrad algorithms is a good place to start because it will show you CS-theory ways of thinking, including ideas like asymptotic analysis. 

## 2023-08-06

`From Quantum Computing: A Gentle Introduction, Eleanor G. Rieffel and Wolfgang H. Polak`

"Many of the concepts are subtle and unintuitive, and much of the notation unfamiliar. Readers will need to spend time working with the concepts and notations to develop a level of fluency at each stage. For example, even readers with significant mathematical background may not have worked much with tensor products and may not be familiar with the relation of tensor product spaces to their component spaces ... It is well worth the effort to master them, as well as the concise Dirac notation in which they are generally expressed, but mastery will require effort. The precise nature of these mathematical formalisms provides a means of working with quantum concepts before fully understanding them. Intuition for quantum mechanics and quantum information processing will develop from playing with the formal mathematics."

"features of quantum mechanics that give quantum computation its power and are responsible for its limitations. Neither the extent of the power of quantum computation nor its limitations have been fully understood. Research challenges remain not only in building quantum computers and developing novel algorithms and protocols, but also in answering fundamental questions as to the source of quantum computing’s power and the reasons for its limitations."

"In the last decades of the twentieth century, scientists sought to combine two of the century’s most influential and revolutionary theories: information theory and quantum mechanics. Their success gave rise to a new view of computation and information."

"In the early 1980s, a few researchers realized that quantum mechanics had unanticipated implications for information processing. Charles Bennett and Gilles Brassard, building on ideas of Stephen Wiesner, showed how nonclassical properties of quantum measurement provided a provably secure mechanism for establishing a cryptographic key. Richard Feynman, Yuri Manin, and others recognized that certain quantum phenomena—phenomena associated with so-called entangled particles—could not be simulated efficiently by a Turing machine. This observation led to speculation that perhaps these quantum phenomena could be used to speed up computation in general. Such a program required rethinking the information theoretic model underlying computation, taking it out of the purely classical realm."

"Quantum information processing ... explores the implications of using quantummechanics instead of classical mechanics to model information and its processing. ... The change starts at the most basic level: the fundamental unit of computation is no longer the bit, but rather the quantum bit or qubit. Placing computation on a quantum mechanical foundation led to the discovery of faster algorithms, novel cryptographic mechanisms, and improved communication protocols.

"As a final example, while the conversion between general classical circuits and reversible classical circuits is a purely classical topic, it is the heart of the proof that anything a classical computer can do, a quantum computers can do with comparable efficiency. ... David Deutsch developed a notion of a quantum mechanical Turing machine. Daniel Bernstein, Vijay Vazirani, and Andrew Yao improved upon his model and showed that a quantum Turing machine could simulate a classical Turing machine, and hence any classical computation, with at most a polynomial time slowdown."

"The standard quantum circuit model was then defined, which led to an understanding of quantum complexity in terms of a set of basic quantum transformations called quantum gates. These gates are theoretical constructs that may or may not have direct analogs in the physical components of an actual quantum computer."

"In the early 1990s, researchers developed the first truly quantum algorithms. In spite of the probabilistic nature of quantum mechanics, the first quantum algorithms, for which superiority over classical algorithms could be proved, give the correct answer with certainty. They improve upon classical algorithms by solving in polynomial time with certainty a problem that can be solved in polynomial time only with high probability using classical techniques."


## 2023-08-07

`From Quantum Computing: A Gentle Introduction, Eleanor G. Rieffel and Wolfgang H. Polak`

"Peter Shor, ... polynomial-time quantum algorithm for factoring integers. This result provided a solution to a well-studied problem of practical interest. ... It is unknown whether an efficient classical solution exists, so Shor’s result does not prove that quantum computers can solve a problem more efficiently than a classical computer."

"Properties of quantum mechanics, such as the impossibility of reliably copying an unknown quantum state, made it look unlikely that effective error-correction techniques for quantum computation could ever be found. ... (However in) 1996 Shor and Robert Calderbank, and independently Andrew Steane, saw a way to finesse the seemingly show-stopping problems of quantum mechanics to develop quantum error correction techniques. Today, quantum error correction is arguably the most mature area of quantum information processing."

![polarization realization](/images/polarized_realization.png)

"In general, the set of all possible states of a physical system is called the state space of the system. Any quantum mechanical system that can be modeled by a two-dimensional complex vector space can be viewed as a qubit. ... Such systems, called two-state quantum systems, include photon polarization, electron spin, and the ground state together with an excited state of an atom. The two-state label for these systems does not mean that the state space has only two states—it has infinitely many—but rather that all possible states can be represented as a linear combination, or superposition, of just two states. For a two-dimensional complex vector space to be viewed as a qubit, two linearly independent states, labeled 0 and 1, must be distinguished."

"Quantum theory postulates that any device that measures a two-state quantum system must have two preferred states whose representative vectors, {u, u⊥}, form an orthonormal basis for the associated vector space. Measurement of a state transforms the state into one of the measuring device’s associated basis vectors u or u⊥. The probability that the state is measured as basis vector u is the square of the magnitude of the amplitude of the component of the state in the direction of the basis vector u. For example, given a device for measuring the polarization of photons with associated basis {u, u⊥}, the state v = au + bu⊥ is measured as u with probability a squared and as u⊥ with probability b squared ... For this reason, whenever anyone says “measure a qubit," they must specify with respect to which basis the measurement takes place."

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

