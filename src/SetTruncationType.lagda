---
layout: page
title: "Set Truncation Type"
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

### Set truncations

An analogous form of truncation for Sets instead of
Propositions. It truncates any higher-dimensional homothopical
structure.

\begin{code}
module SetTruncationType where

  private
    -- Higher inductive type
    data !∥_∥₀ {ℓ} (A : Type ℓ) : Type ℓ where
      !∣_∣₀ : A → !∥ A ∥₀

  ∥_∥₀ : ∀ {ℓ} (A : Type ℓ) → Type ℓ
  ∥ A ∥₀ = !∥ A ∥₀

  ∣_∣₀ : ∀ {ℓ} {X : Type ℓ} → X → ∥ X ∥₀
  ∣ x ∣₀ = !∣ x ∣₀

  -- Any two equalities on the truncated type are equal
  postulate
    strunc : ∀ {ℓ} {A : Type ℓ} → isSet ∥ A ∥₀

  -- Recursion principle
  strunc-rec : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {P : Type ℓⱼ} → isSet P → (A → P) → ∥ A ∥₀ → P
  strunc-rec _ f !∣ x ∣₀ = f x

  -- Induction principle
  strunc-ind : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {B : ∥ A ∥₀ → Type ℓⱼ} → ((a : ∥ A ∥₀) → isSet (B a))
             → (g : (a : A) → B ∣ a ∣₀) → (a : ∥ A ∥₀) → B a
  strunc-ind _ g !∣ x ∣₀ = g x
\end{code}
