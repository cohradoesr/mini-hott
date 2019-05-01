{-# OPTIONS --without-K #-}
module _ where

open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import HomotopyLemmas

open import HalfAdjointType
open import QuasiinverseType
open import QuasiinverseLemmas
module Propositions where
  -- Def.
  isProp
    : ∀ {ℓ} (A : Type ℓ) → Type ℓ
  isProp A = ((x y : A) → x == y)
  -- The type of mere propositions
  hProp : ∀ {ℓ} → Type (lsuc ℓ)
  hProp {ℓ} = Σ (Type ℓ) isProp
open Propositions public
module Sets where

  isSet : ∀ {ℓ}  (A : Type ℓ) → Type ℓ
  isSet A = (x y : A) → isProp (x == y)

  -- The type of sets.
  hSet : ∀ {ℓ} → Type (lsuc ℓ)
  hSet {ℓ} = Σ (Type ℓ) isSet

open Sets public
-- TODO: define hlevels by the recursive definition
