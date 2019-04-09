{-# OPTIONS --without-K #-}
open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import FunExtAxiom
open import HLevelTypes
module IntervalType where

  private
    -- The interval is defined as a type with a nontrivial equality
    -- between its two elements.
    data !I : Type₀ where
      !Izero : !I
      !Ione : !I

  I : Type₀
  I = !I

  Izero : I
  Izero = !Izero

  Ione : I
  Ione = !Ione

  postulate
    seg : Izero == Ione

  -- Recursion principle on points.
  I-rec : ∀ {ℓ} {A : Type ℓ}
        → (a b : A)
        → (p : a == b)
        --------------
        → (I → A)
  I-rec a _ _ !Izero = a
  I-rec _ b _ !Ione  = b

  -- Recursion principle on paths.
  postulate
    I-βrec : ∀ {ℓ}
      → (A : Type ℓ)
      → (a b : A)
      → (p : a == b)
      ---------------------------
      → ap (I-rec a b p) seg == p
