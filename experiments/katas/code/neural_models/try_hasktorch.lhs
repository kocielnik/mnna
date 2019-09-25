#!/usr/bin/env stack
> --stack --install-ghc runghc --package markdown-unlit -- "-pgmL markdown-unlit"

> {-# LANGUAGE OverloadedStrings #-}

> module TryHaskTorch (main) where

Modern machine learning frameworks facilitate model-building by providing extensive libraries of efficient, composable n-dimensional array operations. As these libraries gain adoption, there is increasing awareness that deep learning models built with such frameworks can also be viewed as an emerging approach to computation based on optimization over composed differentiable functions [1].

Popular deep learning libraries such as Tensorflow and PyTorch thereby also serve as embedded domain specific languages (eDSLs) to express such programs. These popular libraries primarily target imperative, weakly-typed languages such as Python, Lua, and R, and inherit the design of their host language. While they have spurred rapid progress in both research and applications, the machine learning field has mostly left statically typed pure functional model representations unexplored.

We believe a functional programming approach to machine learning holds great promise - the inherently compositional nature of deep learning lends itself to functional perspectives [1-4]. Furthermore, the ability to express data model invariants through an advanced type system would aid in building reliable machine learning systems by making invalid program states inexpressible.

As machine learning systems are being implemented for mission-critical processes in diverse domains including healthcare, news media, finance, and transportation, the reliability and correctness of such systems is increasingly essential. To enable research and experimentation in this design space, we built Hasktorch, a Haskell framework for tensor-based computation and differentiable functional programming. It builds on a C library that has been in development for over a decade and is the backend for the widely-used PyTorch library [5].

Hasktorch’s higher-level APIs are designed with several basic principles that, while well-known in functional programming, are not commonly incorporated together with machine learning (exceptions include recent open source projects such as [4, 6, 7], which informed our perspectives here):

1. Represent data flow invariants, such as tensor dimensions and data model requirements, as types. This includes the use of dependent types to capture the fluid, extensible data types common to machine learning.
2. Express machine learning algorithms as algebras, including automatic differentiation using the Backprop library’s abstractions [4].
3. Compose machine learning models declaratively, leveraging the compiler to infer intent and validate correctness prior to runtime via type inference and checking.

With these concepts in mind, the Hasktorch library makes available hundreds of mathematical operations including linear algebra, GPU computation, non-linear neural network transformations and their gradients, high level lapack/blas interfaces, and probability distributions/sampling tools. These comprehensive operations provide a foundation for exploring machine learning systems with statically typed functional programming.

References

1. Olah, Chris. “Neural Networks, Types, and Functional Programming”. https://colah.github.io/posts/2015-09-NN-Types-FP/
2. Fong, Brendan, Spivak, David I., and Tuyéras Rémy . 2017. “Backprop as Functor: A compositional perspective on supervised learning”. https://arxiv.org/abs/1711.10455
3. Pearlmutter, Barak A, Siskind, Jeffrey Mark. 2008. “Reverse-Mode AD in a Functional Framework: Lambda the Ultimate Backpropagator”. ACM Transactions on Programming Languages and Systems (TOPLAS), Volume 30 Issue 2: 7:1-7:36.
4. Le, Justin. “A Purely Functional Typed Approach to Trainable Models”. https://blog.jle.im/entry/purely-functional-typed-models-1.html
5. Paszke, Adam and Gross, Sam and Chintala, Soumith and Chanan, Gregory and Yang, Edward and DeVito, Zachary and Lin, Zeming and Desmaison, Alban and Antiga, Luca and Lerer, Adam. 2017. “Automatic differentiation in PyTorch”. 31st Conference on Neural Information Processing Systems (NIPS).
6. Campbell, Huw. “Grenade”. https://github.com/HuwCampbell/grenade
7. Pierson, Tim. “Diffhask”. https://github.com/o1lo01ol1o/diffhask
8. This text: https://icfp18.sigplan.org/event/npfl-2018-papers-hasktorch-a-comprehensive-haskell-library-for-differentiable-functional-programming

> main :: IO()
> main = do
>     putStrLn "Hello world!"

