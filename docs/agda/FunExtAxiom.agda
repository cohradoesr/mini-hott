{-# OPTIONS --without-K #-}
open import Transport
open import EquivalenceType
open import HomotopyType

module FunExtAxiom {ℓᵢ ℓⱼ} {A : Type ℓᵢ}
  {B : A → Type ℓⱼ} {f g : (a : A) → B a} where
  -- Application of an homotopy
  happly
    : f == g
    ------------------------
    → ((x : A) → f x == g x)

  happly idp x = refl (f x)

  -- synonyms:
  ≡-app = happly
  postulate
    axiomFunExt : isEquiv happly
  eqFunExt
    : (f == g) ≃ ((x : A) → f x == g x)

  eqFunExt = happly , axiomFunExt
  -- From this, the usual notion of function extensionality follows.
  funext
    : ((x : A) → f x == g x)
    ------------------------
    → f == g

  funext = remap eqFunExt
  -- Beta and eta rules for function extensionality
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
