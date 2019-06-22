{-# OPTIONS --without-K #-}
open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import FunExtAxiom
open import HLevelTypes
open import CircleType
open import GroupType
module FundamentalGroupType where
  Ω
    : (A : Type ℓ)
    ------------------
    → (a : A) → Type ℓ
    
  Ω A a = (a == a)
  Ω-gr
    : (A : Type ℓ)
    → (a : A) → Group {ℓ}
  Ω-gr A a =
    monoid
      (Ω A a)
      (refl a)
      _·_
      (λ x y p q → _)
      (λ (x : Ω A a) → refl x)
      (λ (x : Ω A a) → ! (·-runit x))
      (λ x y z → ! (·-assoc x y z)  )
    , inv , λ x → ·-rinv x , ·-linv x
    where open import MonoidType
