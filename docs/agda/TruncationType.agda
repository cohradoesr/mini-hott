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
module
  TruncationType
  where
  private
    data
      !∥_∥ {ℓ} (A : Type ℓ)
        : Type ℓ
        where
        !∣_∣ : A → !∥ A ∥
  ∥_∥
    :  (A : Type ℓ)
    → Type ℓ

  ∥ A ∥ = !∥ A ∥
  ∣_∣
    : {X : Type ℓ}
    → X
    → ∥ X ∥

  ∣ x ∣ = !∣ x ∣
  postulate
    trunc
      : {A : Type ℓ}
      → isProp ∥ A ∥
  trunc-rec
    : {A : Type ℓᵢ} {P : Type ℓⱼ}
    → isProp P
    → (A → P)
    ---------
    → ∥ A ∥ → P

  trunc-rec _ f !∣ x ∣ = f x
