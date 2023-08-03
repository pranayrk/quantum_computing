# Daily Learning

## 2023-08-02

### Quantum Computing Background
[Source](http://www.mit.edu/~aram/advice/quantum.html)

*General background:* Quantum computing (theory) is at the intersection of math, physics and computer science. (Experiment also can involve electrical engineering.) Eventually you will want to learn aspects of all of these fields, but when starting you can use any for an entry into the field. Within each field, the subjects you will want to know are:
    * Physics: First learn quantum mechanics. At more advanced levels, various aspects of quantum information overlap with AMO, condensed matter and high energy.
    * Math: First linear algebra and probability. Later my preferences would be to learn some group and representation theory, random matrix theory and functional analysis, but eventually most fields of math have some overlap with quantum information, and other researchers may emphasize different areas of math.
    * Computer Science: Most theory topics are relevant although are less crucial at first: i.e. algorithms, cryptography, information theory, error-correcting codes, optimization, complexity, machine learning. If you haven't had any CS theory exposure, undergrad algorithms is a good place to start because it will show you CS-theory ways of thinking, including ideas like asymptotic analysis. 

# Resources

## Books
*source: online*

* **Quantum Computation and Quantum Information, Michael A. Nielsen and Isaac L. Chuang, Cambridge University Press, 2002** The canonical reference for learning quantum computing, It's really complete. It has all the necesary prerrequisites (such as linear algebra, foundations of Quantum Mechanics, Shannon's formulation of Classical Information Theory, the basis of computer science and problem complexity, circuital approach to QC -rather than the more abstract Turing Machine formulation to QC-). It's an excellent book, though a little overwhelming if you never studied QM before.
* **Principles Of Quantum Computation And Information by Giuliano Benenti, Giuliano Strini, Giulio Casati** This is a more beginner-friendly version, compared to Nielsen's book, but it also covers in depth many experimental applications and quantum information theory aspects rather than QC in particular
* **An Introduction to Quantum. Computing, Phillip Kaye, Raymond Laflamme, and Michele Mosca. Oxford U. Press, New York, 20072. An Introduction to Quantum. Computing, Phillip Kaye, Raymond Laflamme, and Michele Mosca. Oxford U. Press, New York, 2007** his is an excellent book for QC. It explains in detail all of the fundamental QC problems (Deutsch-Jozsa, Simon, Grover, QFT-based algorithms and Shor's algorithm as well as many of the more theoretical problems such as the abelian stabilizer problem or the Solovay–Kitaev theorem with the appropiate Group Theory background being laid out).
* **Quantum Computer Science, N. David Mermin, Cambridge University Press 2007**
* **Dancing with Qubits by Robert Sutor**
* **Quantum Computing Since Democritus** talks about popular science
* **Introduction to Classical and Quantum Computing by Thomas Wong**  a super introduction book that explains basic Classical computing to Quantum computing.
* **Quantum Computing: An Applied Approach -Springer (2021) by Hidary, Jack D.** talks about the foundation and tools you need for QC.
* **Classical and Quantum Computation by Kitaev, Shen and Vyalyi** "little yellow book experience"

## Books
*source: harsh sir, presentation*

* **Rieffel, Eleanor and Polak, Wolfgang Quantum computing: A gentle introduction**
* **Flarend, Alice and Hilborn, Bob Quantum computing—from Alice to Bob**
* **Kaye, Phillip and Laflamme, Raymond and Mosca, Michele An introduction to quantum computing,**
* **McMahon, David, Quantum computing explained**
* **LaPierre, Ray; Introduction to Quantum Computing**
* **Helmut Bez and Tony Croft**
* **Michael A. Nielsen and Isaac L. Chuang**
* **K. R. Parthasarathy; Lectures on Quantum Computation, Quantum Error Correcting Codes and Information Theory**
* **Arthur O. Pittenger; An introduction to Quntum Computing Algorithms**


## More Specialized Books

* **Quantum Algorithms lecture notes by Andrew Childs**
* **From Classical to Quantum Shannon Theory by Mark Wilde** Thorough and detailed with plenty of exercises
* **The Functional Analysis of Quantum Information Theory written by Gupta, Mandayam and Sunder based on lectures by Effros, Paulsen, Pisier and Winter** Denser and focused on the math side more than applications.
* **Alice and Bob meet Banach by Aubrun and Szarek** Incomplete textbook draft, but it looks like it'll be the definitive treatment of the probabilistic method in quantum information.
* **The Mathematics of Entanglement by Brandao, Christandl, Walter and myself** Idiosyncratic and incomplete lecture notes on some of our pet topics.


### Courses

* [Introduction to Quantum Information Science by Artur Ekert](https://www.arturekert.org/iqis) Introduction to Quantum Information Science” is a free online course offered by Artur Ekert, a prominent physicist and professor at the University of Oxford. 
* [NPTEL Course on Introduction to Quantum Computing: Quantum Algorithms and Qiskit](https://youtu.be/2SPjEA-4lKk)


## Lecture Notes

* [David Mermin's lecture notes](http://www.lassp.cornell.edu/mermin/qcomp/CS483.html) are elementary and have a CS focus 
* [John Presskil Lecture notes](http://www.theory.caltech.edu/~preskill/ph229/) are slightly more advanced and use a physics perspective

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

