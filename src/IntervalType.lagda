---
layout: page
title: "Interval Type"
toc: true
agda: true
gallery: true
latex: true
references: false
linkify: true
showcitation: true
---

<div class="hide" >
\begin{code}
{-# OPTIONS --without-K #-}
open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import FunExtAxiom
open import HLevelTypes
\end{code}
</div>

### Intervals

Interval. An interval is defined by taking two points (two elements) and a path
between them (an element of the equality type). This path is nontrivial.

\begin{code}
module IntervalType where

  private

    data !I : Type₀ where
      !Izero : !I
      !Ione : !I

  I : Type₀
  I = !I

  Izero : I
  Izero = !Izero

  Ione : I
  Ione = !Ione

  postulate
    seg : Izero == Ione
\end{code}

Recursion principle on points.
{: .foldable until="6" }
\begin{code}
  I-rec
    : {A : Type ℓ}
    → (a b : A)
    → (p : a == b)
    --------------
    → (I → A)

  I-rec a _ _ !Izero = a
  I-rec _ b _ !Ione  = b
\end{code}

Recursion principle on paths.
{: .foldable until="6" }
\begin{code}
  postulate
    I-βrec
      : (A : Type ℓ)
      → (a b : A)
      → (p : a == b)
      ---------------------------
      → ap (I-rec a b p) seg == p
\end{code}
