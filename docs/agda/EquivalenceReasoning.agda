{-# OPTIONS --without-K #-}
-- module _ where

open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import HomotopyLemmas

open import HalfAdjointType
open import QuasiinverseType
open import QuasiinverseLemmas
module EquivalenceReasoning where
  _≃⟨⟩_
    : (A {B} : Type ℓ)
    → A ≃ B
    -------
    → A ≃ B

  _ ≃⟨⟩ e = e
  infixr 2 _≃⟨⟩_
  _≃⟨by-def⟩_
    : (A {B} : Type ℓ)
    → A ≃ B
    -------
    → A ≃ B

  _ ≃⟨by-def⟩ e = e
  infixr 2 _≃⟨by-def⟩_
  _≃⟨_⟩_
    : (A : Type ℓᵢ) {B : Type ℓⱼ}{C : Type ℓₖ}
    → A ≃ B → B ≃ C
    ---------------
    → A ≃ C

  _ ≃⟨ e₁ ⟩ e₂ = ≃-trans e₁ e₂
  infixr 2 _≃⟨_⟩_
  _≃∎
    : (A : Type ℓ)
    → A ≃ A

  _≃∎ = λ A → idEqv {A = A}
  infix  3 _≃∎
  begin≃_
    : {A : Type ℓᵢ}{B : Type ℓⱼ}
    → A ≃ B
    -------
    → A ≃ B

  begin≃_ e = e
  infix  1 begin≃_
