{-# OPTIONS --without-K --exact-split #-}
open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import FunExtAxiom
open import HLevelTypes
open import CircleType
open import GroupType
module FundamentalGroupType where
  Ω
    : ∀ {ℓ : Level}(A : Type ℓ)
    ------------------
    → (a : A) → Type ℓ

  Ω A a = (a == a)
  Ω-gr
    : ∀ {ℓ : Level} (A : hSet ℓ)
    → (a : π₁ A) → Group {ℓ}
  Ω-gr (A , A-is-set) a =
    monoid
      (Ω A a)
      (refl a)
      _·_
      (set-is-groupoid A-is-set a a)
      (λ (x : Ω A a) → refl x)
      (λ (x : Ω A a) → ! (·-runit x))
      (λ x y z → ! (·-assoc x y z)  )
    , inv , λ x → ·-rinv x , ·-linv x
    where
      open import MonoidType
      open import HLevelLemmas
