{-# OPTIONS --without-K --exact-split #-}
open import TransportLemmas
open import ProductIdentities
open import EquivalenceType
open import HomotopyType
module DecidableEquality where
  decEq
    : ∀ {ℓ : Level} → (A : Type ℓ) → Type ℓ

  decEq A = (a b : A) → (a == b) + ¬ (a == b)
  _is-decidable
    : ∀ {ℓ : Level} → (A : Type ℓ) → Type ℓ
  A is-decidable = decEq A
  decEqProd
    : ∀ {ℓ : Level} {A B : Type ℓ}
    → decEq A → decEq B
    -------------------
    → decEq (A × B)

  decEqProd da db (a1 , b1) (a2 , b2)
   with (da a1 a2) | (db b1 b2)
  ... | inl aeq | inl beq = inl (prodByComponents (aeq , beq))
  ... | inl _   | inr bnq = inr λ b → bnq (ap π₂ b)
  ... | inr anq | _       = inr λ b → anq (ap π₁ b)
