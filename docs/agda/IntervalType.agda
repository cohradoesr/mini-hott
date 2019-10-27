{-# OPTIONS --without-K --exact-split #-}
open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import FunExtAxiom
open import HLevelTypes
module IntervalType where

  private

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
  I-rec
    : ∀ {ℓ : Level} {A : Type ℓ}
    → (a b : A)
    → (p : a == b)
    --------------
    → (I → A)

  I-rec a _ _ !Izero = a
  I-rec _ b _ !Ione  = b
  postulate
    I-βrec
      : ∀ {ℓ : Level} (A : Type ℓ)
      → (a b : A)
      → (p : a == b)
      ---------------------------
      → ap (I-rec a b p) seg == p
