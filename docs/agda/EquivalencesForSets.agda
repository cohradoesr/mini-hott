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
open import FibreType
module EquivalencesForSets where
  IsSurjection
    : ∀ {ℓ₁ ℓ₂} {A : Type ℓ₁}{B : Type ℓ₂}
    → (f : A → B) → Type (ℓ₁ ⊔ ℓ₂)
  IsSurjection {B = B} f = (b : B) → ∥ fib f b ∥

  IsSetEmbedding -- a.k.a Injective
    : ∀ {ℓ₁ ℓ₂} {A : Type ℓ₁}{B : Type ℓ₂}
    → (f : A → B) → isSet A → isSet B
    → Type (ℓ₁ ⊔ ℓ₂)
  IsSetEmbedding {A = A} f iA iB = (x y : A) → (f x == f y → x == y)

  IsBijection
    : ∀ {ℓ₁ ℓ₂} {A : Type ℓ₁}{B : Type ℓ₂}
      → (f : A → B) → isSet A → isSet B
      → Type (ℓ₁ ⊔ ℓ₂)

  IsBijection f iA iB = IsSetEmbedding f iA iB × IsSurjection f

  

  postulate
    Bijection
      : ∀ {ℓ₁ ℓ₂} {A : Type ℓ₁}{B : Type ℓ₂}
      → (f : A → B) → (ia : isSet A) → (ib : isSet B)
      → IsBijection f ia ib
      → A ≃ B

