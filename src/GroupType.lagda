---
layout: page
title: "Group Type"
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
open import MonoidType
\end{code}
</div>

### Groups

\begin{code}
module
  GroupType
    where
\end{code}

A group is an algebraic structure which is a monoid but with additional structure.
There is an operation that produces "the inverse" for an element. This name
comes from the fact, the ouptut is the inverse for the operation in the monoid, both directions in the application.

\begin{code}
  Group : ∀ {ℓ} → Type (lsuc ℓ)
  Group
    = ∑ (Monoid) (λ {(monoid G e _<>_ GisSet lunit runit assoc)
      → ∑ (G → G) (λ iOp → -- A group has inverses
        ∏ G (λ x →
          -- properties:
          ( (x <> iOp x) == e)
          × ( (iOp x <> x) == e ))
          )})
\end{code}
