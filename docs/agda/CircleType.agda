{-# OPTIONS --without-K #-}
open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import FunExtAxiom
open import HLevelTypes
module CircleType where
  private
    data !S¹ : Type₀ where
      !base : !S¹

  S¹ : Type₀
  S¹ = !S¹

  base : S¹
  base = !base

  postulate
    loop : base == base
  S¹-rec
    : (A : Type ℓ)
    → (a : A)
    → (p : a == a)
    --------------
    → (S¹ → A)

  S¹-rec A a p !base = a
  postulate
    S¹-βrec
      : (A : Type ℓ)
      → (a : A)
      → (p : a == a)
      ------------------------------
      → ap (S¹-rec A a p) loop == p
  S¹-ind
    : (P : S¹ → Type ℓ)
    → (x : P base)
    → (x == x [ P ↓ loop ])
    --------------------------
    → ((t : S¹) → P t)

  S¹-ind P x p !base = x
  postulate
    S¹-βind
      : (P : S¹ → Type ℓ)
      → (x : P base)
      → (p : x == x [ P ↓ loop ])
      -------------------------------
      → apd (S¹-ind P x p) loop == p
