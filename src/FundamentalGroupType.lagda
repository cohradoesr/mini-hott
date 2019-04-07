---
layout: page
title: "Fundamental Group Type"
permalink : /fundamental-group-type/
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
open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import FunExtAxiom
open import HLevelTypes
open import CircleType
open import GroupType
\end{code}
</div>

## Fundamental group

Definition of the fundamental group of a type.
Let a:A be one point of the type. The fundamental group on a is the
group given by proofs of the equality (a=a).

\begin{code}
module FundamentalGroupType where

  -- Definition of the fundamental group.
  Ω : ∀ {ℓ} (A : Type ℓ) → (a : A) → Type ℓ
  Ω A a = (a == a)

  -- Its group structure.
  Ω-st : ∀ {ℓ} (A : Type ℓ) → (a : A) → GroupStructure (Ω A a)
  Ω-st A a = group-structure _·_ (refl a)
    (λ a → inv (·-lunit a)) (λ a → inv (·-runit a))
    (λ x y z → inv (·-assoc x y z))
    inv ·-rinv ·-linv

  Ω-gr : ∀ {ℓ} (A : Type ℓ) → (a : A) → Group {ℓ}
  Ω-gr A a = group (a == a) (Ω-st A a)

  Ω-st-r : ∀ {ℓ} (A : Type ℓ) → (a : A) → GroupStructure (Ω A a)
  Ω-st-r A a = group-structure (λ x y → y · x) (refl a)
    (λ a → inv (·-runit a)) (λ a → inv (·-lunit a))
    (λ x y z → ·-assoc z y x)
    inv ·-linv ·-rinv
\end{code}
