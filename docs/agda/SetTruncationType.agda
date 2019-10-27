{-# OPTIONS --without-K --exact-split #-}

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
module SetTruncationType where

  private
    -- Higher inductive type
    data !∥_∥₀ {ℓ} (A : Type ℓ) : Type ℓ where
      !∣_∣₀ : A → !∥ A ∥₀

  ∥_∥₀
    : ∀ {ℓ : Level} (A : Type ℓ)
    → Type ℓ

  ∥ A ∥₀ = !∥ A ∥₀

  ∣_∣₀
    : ∀ {ℓ : Level} {X : Type ℓ}
    → X
    → ∥ X ∥₀

  ∣ x ∣₀ = !∣ x ∣₀

  postulate
    strunc
      : ∀ {ℓ : Level} {A : Type ℓ}
      → isSet ∥ A ∥₀
  strunc-rec
    : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{P : Type ℓ₂}
    → isSet P
    → (A → P)
    ------------
    → ∥ A ∥₀ → P

  strunc-rec _ f !∣ x ∣₀ = f x
  strunc-ind
    : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁} {B : ∥ A ∥₀ → Type ℓ₂}
    → ((a : ∥ A ∥₀) → isSet (B a))
    → (g : (a : A) → B ∣ a ∣₀)
    ------------------------------
    → (a : ∥ A ∥₀) → B a

  strunc-ind _ g !∣ x ∣₀ = g x
