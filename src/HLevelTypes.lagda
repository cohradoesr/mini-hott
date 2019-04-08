---
layout: page
title: "H-Levels Types"
category: types
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
module _ where

open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import HomotopyLemmas

open import HalfAdjointType
open import QuasiinverseType
open import QuasiinverseLemmas
\end{code}
</div>


## Hlevels

Higher levels of the homotopical structure, where the
first levels are:

- Contractible types ($-2$)
- Propositions ($-1$)
- Sets ($0$)

### Propositions

\begin{code}
module Propositions where
\end{code}

A type is a *mere proposition* if any two inhabitants of the type are equal.

{: .foldable until="5"}
\begin{code}
  -- Def.
  isProp
    : ∀ {ℓ} (A : Type ℓ) → Type ℓ
  isProp A = ((x y : A) → x == y)
\end{code}

\begin{code}
  -- The type of mere propositions
  hProp : ∀ {ℓ} → Type (lsuc ℓ)
  hProp {ℓ} = Σ (Type ℓ) isProp
\end{code}

\begin{code}
open Propositions public
\end{code}

### Sets

A type is a *set& by definition if any two equalities on the type are equal Sets
are types without any higher *dimensional structure*,  all parallel paths are
homotopic and the homotopy is given by a continuous function on the two paths.

\begin{code}
module Sets where

  isSet : ∀ {ℓ}  (A : Type ℓ) → Type ℓ
  isSet A = (x y : A) → isProp (x == y)

  -- The type of sets.
  hSet : ∀ {ℓ} → Type (lsuc ℓ)
  hSet {ℓ} = Σ (Type ℓ) isSet

open Sets public
\end{code}
