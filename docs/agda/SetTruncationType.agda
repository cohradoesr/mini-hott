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
module SetTruncationType where

  private
    -- Higher inductive type
    data !∥_∥₀ {ℓ} (A : Type ℓ) : Type ℓ where
      !∣_∣₀ : A → !∥ A ∥₀

  ∥_∥₀
    : (A : Type ℓ)
    → Type ℓ

  ∥ A ∥₀ = !∥ A ∥₀

  ∣_∣₀
    : {X : Type ℓ}
    → X
    → ∥ X ∥₀

  ∣ x ∣₀ = !∣ x ∣₀

  postulate
    strunc
      : {A : Type ℓ}
      → isSet ∥ A ∥₀
  strunc-rec
    : {A : Type ℓᵢ} {P : Type ℓⱼ}
    → isSet P
    → (A → P)
    ------------
    → ∥ A ∥₀ → P

  strunc-rec _ f !∣ x ∣₀ = f x
  strunc-ind
    : {A : Type ℓᵢ} {B : ∥ A ∥₀ → Type ℓⱼ}
    → ((a : ∥ A ∥₀) → isSet (B a))
    → (g : (a : A) → B ∣ a ∣₀)
    ------------------------------
    → (a : ∥ A ∥₀) → B a

  strunc-ind _ g !∣ x ∣₀ = g x
