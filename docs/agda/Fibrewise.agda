{-# OPTIONS --without-K #-}
open import BasicTypes
open import Transport
open import FibreType
fibre-transport
  : {A : Type ℓᵢ} {B : Type ℓⱼ}
  → (f : A → B)
  → {b b' : B} → (h : b == b')
  ------------------------------------------------
  → ∀ a e → (a , e) == (a , (e · h)) [ (fibre f) ↓ h ]

fibre-transport f idp a idp = idp
