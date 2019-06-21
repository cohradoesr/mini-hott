{-# OPTIONS --without-K #-}
open import BasicTypes
module
  FibreType {A : Type ℓᵢ} {B : Type ℓⱼ}
    where
  -- Fiber
  fibre
    : (f : A → B)
    → (b : B)
    ---------------
    → Type (ℓᵢ ⊔ ℓⱼ)

  fibre f b = Σ A (λ a → f a == b)
  fib = fibre
  syntax fibre f b = f // b
  -- Lemma.
  fib-eq
    : ∀ {f : A → B} {b : B}
    → (h : fib f b)
    ---------------
    → f (proj₁ h) == b

  fib-eq (a , α) = α
  -- Lemma.
  fib-image
    :  ∀ {f : A → B} → {a : A}
    → fib f (f a)

  fib-image {f} {a} = a , refl (f a)
