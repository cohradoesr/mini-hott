---
layout: page
title: "Equivalences for Sets"
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
open import QuasiinverseType
open import DecidableEquality
open import NaturalType
open import HLevelTypes
open import HLevelLemmas
open import HedbergLemmas
open import TruncationType
open import FiberType
\end{code}
</div>

\begin{code}
module EquivalencesForSets where
\end{code}

\begin{code}
  IsSurjection
    : ∀ {ℓ₁ ℓ₂} {A : Type ℓ₁}{B : Type ℓ₂}
    → (f : A → B) → Type (ℓ₁ ⊔ ℓ₂)
  IsSurjection {B = B} f = (b : B) → ∥ fib f b ∥

  IsSetEmbedding
    : ∀ {ℓ₁ ℓ₂} {A : Type ℓ₁}{B : Type ℓ₂}
    → (f : A → B) → isSet A → isSet B
    → Type (ℓ₁ ⊔ ℓ₂)
  IsSetEmbedding {A = A} f iA iB = (x y : A) → (f x == f y → x == y)

  IsEquivBetweenSets
    : ∀ {ℓ₁ ℓ₂} {A : Type ℓ₁}{B : Type ℓ₂}
      → (f : A → B) → isSet A → isSet B
      → Type (ℓ₁ ⊔ ℓ₂)

  IsEquivBetweenSets f iA iB = IsSetEmbedding f iA iB × IsSurjection f

  open import ContractibleType

  postulate
    EquivInSets
      : ∀ {ℓ₁ ℓ₂} {A : Type ℓ₁}{B : Type ℓ₂}
      → (f : A → B) → (ia : isSet A) → (ib : isSet B)
      → IsSetEmbedding f ia ib → IsSurjection f
      → A ≃ B
\end{code}
