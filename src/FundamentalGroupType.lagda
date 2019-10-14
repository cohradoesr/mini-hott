---
layout: page
title: "Fundamental Group Type"
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
{-# OPTIONS --without-K --exact-split #-}
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
Let `a:A` be one point of the type. The fundamental group on `a` is the
group given by proofs of the equality (`a=a`).

\begin{code}
module FundamentalGroupType where
\end{code}

Definition of the fundamental group.
\begin{code}
  Ω
    : ∀ {ℓ : Level}(A : Type ℓ)
    ------------------
    → (a : A) → Type ℓ

  Ω A a = (a == a)
\end{code}

\begin{code}
  Ω-gr
    : ∀ {ℓ : Level} (A : hSet ℓ)
    → (a : π₁ A) → Group {ℓ}
  Ω-gr (A , A-is-set) a =
    monoid
      (Ω A a)
      (refl a)
      _·_
      (set-is-groupoid A-is-set a a)
      (λ (x : Ω A a) → refl x)
      (λ (x : Ω A a) → ! (·-runit x))
      (λ x y z → ! (·-assoc x y z)  )
    , inv , λ x → ·-rinv x , ·-linv x
    where
      open import MonoidType
      open import HLevelLemmas
\end{code}
