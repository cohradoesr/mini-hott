{-# OPTIONS --without-K #-}
module _ where

open import BasicTypes
open import BasicFunctions
  
isContr
  : (A : Type ℓ)
  --------------
  → Type ℓ

isContr A = Σ A (λ a → ((x : A) → a == x))
Contractible = isContr
is-singleton = isContr
allAreCenter
  : ∀ {ℓ} {A : Type ℓ}
  → (c₁ : A) → (f : (x : A) → c₁ == x)
  → (∀ (c₂ : A) → (∀ (x : A) → c₂ == x))

allAreCenter c₁ f c₂ x = sym (f c₂) · (f x)
isProp
  : ∀ {ℓ} (A : Type ℓ) → Type ℓ

isProp A = ((x y : A) → x == y)
is-subsingleton = isProp
is-prop         = isProp
hProp
  : ∀ {ℓ} → Type (lsuc ℓ)

hProp {ℓ} = ∑ (Type ℓ) isProp
isSet
  : Type ℓ → Type ℓ
isSet A = (x y : A) → isProp (x == y)
is-set = isSet
hSet
  : Type (lsuc ℓ)

hSet {ℓ} = ∑ (Type ℓ) isSet
isGroupoid
  : Type ℓ → Type ℓ

isGroupoid A  = (a₀ a₁ : A) → isSet (a₀ ≡ a₁)
is-groupoid = isGroupoid
Groupoid
  : Type (lsuc ℓ)
Groupoid {ℓ} = ∑ (Type ℓ) isGroupoid
