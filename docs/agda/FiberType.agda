{-# OPTIONS --without-K #-}
open import EqualityType
module FiberType {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {B : Type ℓⱼ}  where
  -- Fiber
  fib
    : (f : A → B)
    → (b : B)
    ---------------
    → Type (ℓᵢ ⊔ ℓⱼ)

  fib f b = Σ A (λ a → f a == b)
  -- Lemma.
  fib-eq
    : ∀ {f : A → B} {b : B}
    → (h : fib f b)
    ---------------
    → f (π₁ h) == b

  fib-eq (a , α) = α
  -- Lemma.
  fib-image
    :  ∀ {f : A → B} → {a : A}
    → fib f (f a)

  fib-image {f} {a} = a , refl (f a)
