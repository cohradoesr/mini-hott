{-# OPTIONS --without-K #-}
open import TransportLemmas
open import EquivalenceType
open import HomotopyType
module DecidableEquality {ℓ} where

  -- A type has decidable equality if we can prove that any two of its
  -- elements are equal or different.
  decEq : (A : Type ℓ) → Type ℓ
  decEq A = (a b : A) → (a == b) + ¬ (a == b)

  -- The product of types with decidable equality is a type with
  -- decidable equality.
  decEqProd
    : {A B : Type ℓ}
    → decEq A → decEq B
    -------------------
    → decEq (A × B)

  decEqProd da db (a1 , b1) (a2 , b2) with (da a1 a2) | (db b1 b2)
  decEqProd da db (a1 , b1) (a2 , b2) | inl aeq | inl beq = inl (prodByComponents (aeq , beq))
  decEqProd da db (a1 , b1) (a2 , b2) | inl aeq | inr bnq = inr λ b → bnq (ap π₂ b)
  decEqProd da db (a1 , b1) (a2 , b2) | inr anq | u       = inr λ b → anq (ap π₁ b)