{-# OPTIONS --without-K --exact-split #-}

open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import FunExtAxiom
open import HLevelTypes
module
  MonoidType
    where
  record
    Monoid {ℓ : Level}
      : Type (lsuc ℓ)
      where
    constructor monoid
    field
      M   : Type ℓ       -- The carrier
      e   : M            -- Unit element (at least one element, this one)
      _⊕_ : M → M → M    -- Operation

      M-is-set : isSet M   -- the carrier is a set

      -- axioms:
      l-unit : (x : M) → (e ⊕ x) == x
      r-unit : (x : M) → (x ⊕ e) == x
      assoc  : (x y z : M) → (x ⊕ (y ⊕ z)) == ((x ⊕ y) ⊕ z)
