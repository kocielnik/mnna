% Modern Neural Network Architectures
% Patryk Kocielnik
% March 2019

Patryk Kocielnik (<a class="author" href="https://kocielnik.pl">kocielnik.pl</a> )

This is the first draft of this document.

#### License

This code and text are dedicated to the public domain. You can copy, modify,
distribute and perform the work, even for commercial purposes, all without
asking permission.

You may copy and paste any code here verbatim into your codebase, wiki, blog,
book or Haskell musical production as you see fit. The Markdown and Haskell
source is [available on Github](https://github.com/kocielnik/mnna). Pull requests are
welcome for changes and additional content. This is a living document.

Pocket Versions
---------------

**[PDF Version](http://mnna.kocielnik.pl/mnna.pdf)**
**[EPUB Version](http://mnna.kocielnik.pl/mnna.epub)**

Changelog
---------

**0.1**

* Base on presentation framework from Stephen Diehl. (Thanks, Stephen!)

Components
==========

The source of this book is [here](https://github.com/kocielnik/mnna).

The code for this book is [here](https://gitlab.com/kocielnik/neural-network-architectures).

The wider context for this book is the currently private [Advanced Drone Technology Handbook](https://gitlab.com/kocielnik/advanced_drone_technology_handbook).

Introduction
==============

I am currently searching for a way to explore how human cognition and origins work, through empirical studies and quantitative comparison.

> Our main goal is developing a computationally based understanding of human intelligence and establishing an engineering practice based on that understanding.

-- Tagline of the research group Center for Brains, Minds and Machines of CSAIL, MIT, [website](https://www.csail.mit.edu/research/center-brains-minds-and-machines#projects)

This lies in accordance with the goals of the Center for Brains, Minds and Machines research group on MIT, whose tagline is quoted above.

The Center for Brains, Minds and Machines posts a part of its know-how publically on-line under the address [^github_cbmm].

[^github_cbmm]: [CBMM on GitHub](https://github.com/CBMM)

> [This course series] is designed to help you learn about progress toward the scientific goal of understanding human intelligence from a computational point of view. The foundations for 6.xxx were developed by a group that styles itself as The Human Intelligence Enterprise, from which this subject draws its name.

-- [^mit_ocw_human-intelligence]

[^mit_ocw_human-intelligence]: [The Human Intelligence Enterprise, Electrical Engineering and Computer Science faculty, MIT](http://ocw2.mit.edu/courses/electrical-engineering-and-computer-science/6-803-the-human-intelligence-enterprise-spring-2006/syllabus/)

> You should take 6.xxx if you want to learn about the enterprise of explaining intelligence from a computational point of view. When you have finished the subject, you will understand the powerful ideas behind an optimistic view of what will be discovered in the next decade.

-- [^mit_ocw_human-intelligence]

> Upon completion of 6.034, students should be able to develop intelligent systems by assembling solutions to concrete computational problems; understand the role of knowledge representation, problem solving, and learning in intelligent-system engineering; and appreciate the role of problem solving, vision, and language in understanding human intelligence from a computational perspective.

-- [^mit_artificial-intelligence_2010]: MIT OCW course card [Artificial Intelligence](http://ocw2.mit.edu/courses/electrical-engineering-and-computer-science/6-034-artificial-intelligence-fall-2010/)

Similar research around the globe
=================================

> There is a golden opportunity within reach, the kind of opportunity that comes along just a few times in a century. That opportunity is to bring together people dedicated to understanding human intelligence from the neuron level up to the manifestation of behavior.

-- The Human Intelligence Enterprise manifesto, MIT [^hie]

[^hie]:[The Human Intelligence Enterprise, MIT](http://groups.csail.mit.edu/genesis/HIE/)

> We are on the verge of discoveries about human intelligence that are as important to understanding the way we think as the discovery of the structure of DNA was to molecular biology. Such discoveries can be made only once in the history of our species. We believe they can be made during the coming decade. 

-- The Human Intelligence Enterprise manifesto, MIT [^hie]

Basics
======

Observations
============

> Great minds see analogies between analogies.

-- S. Banach

Analogies between objects take the form of the *properties* of those objects. Analogies between analogies concern the ways those properties are formed. What form the "ways" take? They can be likened to *functions* generating object with such properties, and functions have their *derivatives*. Analogies, then, take the form of derivatives!

Others talk about "mathematical beauty" or "beautiful symmetry" in mathematics. Is it not the exactly same thing they are all searching for?

Here, we explore different artifacts in the area of reproducing human cognition, together with their "creations" (that should be rather called "compositions" for better clarity), and how they relate to human performance in qualitative and quantitative aspects.

The graphic lambda calculus notation used in the discussion of the networks is based on the model by Alan Turing from 1948, as mentioned [here](https://chorasimilarity.wordpress.com/2013/06/26/teaser-b-type-neural-networks-in-graphic-lambda-calculus-i/). The original technical report of Turing is available [here](http://www.alanturing.net/turing_archive/archive/l/l32/L32-001.html).

> The distinctive property of deep learning is that it studies deep neural networks – neural networks with many layers. Over the course of multiple layers, these models progressively bend data, warping it into a form where it is easy to solve the given task.

-- Christopher Olah, [blog](https://colah.github.io/posts/2015-09-NN-Types-FP/), 2015

Notation
--------

Leibniz had as ideal the following.

1. Create a ‘universal language’ in which all possible problems can be stated.
2. Find a decision method to solve all the problems stated in the universal language.

These are cited after the Introduction to Lambda Calculus available [here](https://www.researchgate.net/profile/Henk_hendrik_Barendregt/publication/215458960_Introduction_to_lambda_calculus/links/004635182bdcc3df8e000000/Introduction-to-lambda-calculus.pdf?origin=publication_detail).

Music
-----

A deep neural network model has been created by OpenAI. The model has been called MuseNet and is able to generate 4-minute musical compositions with 10 different instruments. MuseNet can imitate the styles from country to the Beatles to Mozart [^openai_musenet].

[^openai_musenet]: https://openai.com/blog/musenet/

Dreams
------

Google Deep Dream Project, a whole gallery can be found [here](https://photos.google.com/share/AF1QipPX0SCl7OzWilt9LnuQliattX4OUCj_8EP65_cTVnBmS1jnYgsGQAieQUc1VQWdgQ?key=aVBxWjhwSzg2RjJWLWRuVFBBZEN1d205bUdEMnhB).

![](https://3.bp.blogspot.com/-4Uj3hPFupok/VYIT6s_c9OI/AAAAAAAAAlc/_yGdbbsmGiw/s1600/ibis.png)

![](https://4.bp.blogspot.com/-PK_bEYY91cw/VYIVBYw63uI/AAAAAAAAAlo/iUsA4leua10/s1600/seurat-layout.png)

# Architectures

## Attention mechanisms

1. OpenAI.com
2. https://skymind.ai/wiki/attention-mechanism-memory-network

## Recurrent NNs

## Lottery ticket NNs

# Automatic generation 

