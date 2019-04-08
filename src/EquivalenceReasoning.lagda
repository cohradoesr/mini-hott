---
layout: page
title: "Equivalence reasoning"
category: functions
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
-- module _ where

open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import HomotopyLemmas

open import HalfAdjointType
open import QuasiinverseType
open import QuasiinverseLemmas
\end{code}
</div>

## Equivalence reasoning

\begin{code}
module EquivalenceReasoning where

  infixr 2 _≃⟨⟩_
  _≃⟨⟩_ : ∀ {ℓ} (A {B} : Type ℓ) → A ≃ B → A ≃ B
  _ ≃⟨⟩ e = e

  infixr 2 _≃⟨_⟩_
  _≃⟨_⟩_
    : ∀ {ℓ₁ ℓ₂ ℓ₃} (A : Type ℓ₁) {B : Type ℓ₂}{C : Type ℓ₃}
    → A ≃ B → B ≃ C
    ---------------
    → A ≃ C

  _ ≃⟨ e₁ ⟩ e₂ = ≃-trans e₁ e₂


  infix  3 _≃∎
  _≃∎ :  ∀ {ℓ} (A : Type ℓ) → A ≃ A
  _≃∎ = λ A → idEqv {A = A}

  infix  1 begin≃_
  begin≃_ : ∀ {ℓ₁ ℓ₂} {A : Type ℓ₁}{B : Type ℓ₂} → A ≃ B → A ≃ B
  begin≃_ e = e
\end{code}
