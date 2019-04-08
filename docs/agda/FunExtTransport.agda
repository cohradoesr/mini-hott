{-# OPTIONS --without-K #-}
open import Transport
open import EquivalenceType
open import FunExtAxiom
module FunExtTransport
  {ℓᵢ ℓⱼ} {X : Type ℓᵢ} {A B : X → Type ℓⱼ} {x y : X} where
  funext-transport
    : (p : x == y) → (f : A x → B x) → (g : A y → B y)
    ------------------------------------------------------------
    → ((p ✶) f == g) ≃ ((a : A(x)) → (p ✶) (f a) == g ((p ✶) a))

  funext-transport idp f g = eqFunExt
  funext-transport-l
    : (p : x == y)
    → (f : A x → B x)
    → (g : A y → B y)
    → ((p ✶) f == g)
    -------------------------------------------
    → ((a : A(x)) → (p ✶) (f a) == g ((p ✶) a))

  funext-transport-l p f g = lemap (funext-transport p _ _)
  funext-transport-r
    : (p : x == y)
    → (f : A x → B x)
    → (g : A y → B y)
    → ((a : A(x)) → (p ✶) (f a) == g ((p ✶) a))
    -------------------------------------------
    → ((p ✶) f == g)

  funext-transport-r p f g = remap (funext-transport p _ _)
