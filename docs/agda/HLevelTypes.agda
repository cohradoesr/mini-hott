{-# OPTIONS --without-K #-}
module _ where

open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import HomotopyLemmas

open import HalfAdjointType
open import QuasiinverseType
open import QuasiinverseLemmas
-- Def.
isProp
  : ∀ {ℓ} (A : Type ℓ) → Type ℓ
isProp A = ((x y : A) → x == y)
-- The type of mere propositions
hProp : ∀ {ℓ} → Type (lsuc ℓ)
hProp {ℓ} = ∑ (Type ℓ) isProp
isSet : Type ℓ → Type ℓ
isSet A = (x y : A) → isProp (x == y)
hSet : Type (lsuc ℓ)
hSet {ℓ} = ∑ (Type ℓ) isSet
isGroupoid : Type ℓ → Type ℓ
isGroupoid A  = (a₀ a₁ : A) → isSet (a₀ ≡ a₁)
Groupoid : Type (lsuc ℓ)
Groupoid {ℓ} = ∑ (Type ℓ) isGroupoid
