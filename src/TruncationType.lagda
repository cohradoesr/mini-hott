---
layout: page
title: "Truncation Type"
permalink : /truncation-type/
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
\end{code}
</div>


## Truncation

\begin{code}
module TruncationType where

  private
    -- Higher inductive type, defined with equalities between any two
    -- members.
    data !∥_∥ {ℓ} (A : Type ℓ) : Type ℓ where
      !∣_∣ : A → !∥ A ∥

  ∥_∥ : ∀ {ℓ} (A : Type ℓ) → Type ℓ
  ∥ A ∥ = !∥ A ∥

  ∣_∣ : ∀ {ℓ} {X : Type ℓ} → X → ∥ X ∥
  ∣ x ∣ = !∣ x ∣

  -- Any two elements of the truncated type are equal
  postulate
    trunc : ∀ {ℓ} {A : Type ℓ} → isProp ∥ A ∥

  -- Recursion principle
  trunc-rec : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {P : Type ℓⱼ}
            → isProp P
            → (A → P)
            ---------
            → ∥ A ∥ → P
  trunc-rec _ f !∣ x ∣ = f x
\end{code}
