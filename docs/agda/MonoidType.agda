{-# OPTIONS --without-K #-}
open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import FunExtAxiom
open import HLevelTypes
module
  MonoidType
    where
  record
    Monoid
      : Type (lsuc ℓ)
      where
    constructor monoid
    field
      M    : Type ℓ       -- Carrier set
      e    : M            -- Unit element (at least one element, this one)
      _<>_ : M → M → M    -- Operation

      -- property
      M-is-set : isSet M   -- the carrier is a hSet

      -- Axioms of a monoid
      lunit : (x : M) → (e <> x) == x
      runit : (x : M) → (x <> e) == x
      assoc : (x y z : M) → (x <> (y <> z)) == ((x <> y) <> z)
  open Monoid public
