{-# OPTIONS --without-K #-}
open import BasicTypes
open import BasicFunctions
open import FiberType
module ContractibleType where
  -- Def.
  isContr
    : ∀ {ℓ}
    → (A : Type ℓ)
    --------------
    → Type ℓ

  isContr A = Σ A (λ a → ((x : A) → a == x))

  -- Lemma.
  allAreCenter
    : ∀ {ℓ} {A : Type ℓ}
    → (c₁ : A) → (f : (x : A) → c₁ == x)
    → (∀ (c₂ : A) → (∀ (x : A) → c₂ == x))
  allAreCenter c₁ f c₂ x = ! (f c₂) · (f x)

  -- Def.
  isContrMap
    : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {B : Type ℓⱼ}
    → (f : A → B)
    → Type (ℓᵢ ⊔ ℓⱼ)

  isContrMap {B = B} f = (b : B) → isContr (fib f b)
