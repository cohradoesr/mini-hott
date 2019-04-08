---
layout: page
title: "Function extensionality and Transport"
category: lemmas functions homotopy
toc: true
agda: true
gallery: true
latex: true
references: true
linkify: true
showcitation: true
home: true
---

<div class="hide" >
\begin{code}
{-# OPTIONS --without-K #-}
open import Transport
open import EquivalenceType
open import FunExtAxiom
\end{code}
</div>

Function extensionality in the transport case

\begin{code}
module FunExtTransport
  {ℓᵢ ℓⱼ} {X : Type ℓᵢ} {A B : X → Type ℓⱼ} {x y : X} where
\end{code}

\begin{code}
  funext-transport
    : (p : x == y) → (f : A x → B x) → (g : A y → B y)
    ------------------------------------------------------------
    → ((p ✶) f == g) ≃ ((a : A(x)) → (p ✶) (f a) == g ((p ✶) a))

  funext-transport idp f g = eqFunExt
\end{code}

\begin{code}
  funext-transport-l
    : (p : x == y)
    → (f : A x → B x)
    → (g : A y → B y)
    → ((p ✶) f == g)
    -------------------------------------------
    → ((a : A(x)) → (p ✶) (f a) == g ((p ✶) a))

  funext-transport-l p f g = lemap (funext-transport p _ _)
\end{code}

\begin{code}
  funext-transport-r
    : (p : x == y)
    → (f : A x → B x)
    → (g : A y → B y)
    → ((a : A(x)) → (p ✶) (f a) == g ((p ✶) a))
    -------------------------------------------
    → ((p ✶) f == g)

  funext-transport-r p f g = remap (funext-transport p _ _)
\end{code}
