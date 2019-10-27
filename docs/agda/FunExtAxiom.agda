{-# OPTIONS --without-K --exact-split #-}
open import Transport
open import EquivalenceType
open import HomotopyType
module FunExtAxiom {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁} {B : A → Type ℓ₂} {f g : (a : A) → B a} where
  happly
    : f == g
    ------------------------
    → ((x : A) → f x == g x)

  happly idp x = refl (f x)
  ≡-app = happly
  postulate
    axiomFunExt : isEquiv happly
  eqFunExt
    : (f == g) ≃ ((x : A) → f x == g x)

  eqFunExt = happly , axiomFunExt
  funext
    : ((x : A) → f x == g x)
    ------------------------
    → f == g

  funext = remap eqFunExt
  funext-β
    : (h : ((x : A) → f x == g x))
    ------------------------------
    → happly (funext h) == h

  funext-β h = lrmap-inverse eqFunExt
  funext-η
    : (p : f == g)
    ------------------------
    → funext (happly p) == p

  funext-η p = rlmap-inverse eqFunExt
