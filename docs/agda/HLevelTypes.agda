{-# OPTIONS --without-K --exact-split #-}
module _ where

open import BasicTypes
open import BasicFunctions
isContr
  : ∀ {ℓ : Level} (A : Type ℓ)
  --------------
  → Type ℓ

isContr A = Σ A (λ a → ((x : A) → a == x))
Contractible = isContr
is-singleton = isContr
isSingleton  = isContr
_is-contr    = isContr
contr-connects
  : ∀ {ℓ : Level} {A : Type ℓ}
  → A is-contr
  ----------------------
  → (a a' : A) → a ≡ a'

contr-connects (c₁ , f) c₂ x = ! (f c₂) · (f x)
isProp
  : ∀ {ℓ : Level} (A : Type ℓ) → Type ℓ

isProp A = ((x y : A) → x == y)
is-subsingleton = isProp
isSubsingleton  = isProp
_is-prop         = isProp
hProp
  : ∀ (ℓ : Level) → Type (lsuc ℓ)

hProp ℓ = ∑ (Type ℓ) isProp
_has-property_
  : ∀ {ℓ : Level}
  → (A : Type ℓ)
  → (P : Type ℓ → hProp ℓ)
  → Type ℓ

A has-property P = π₁ (P A)

_holds-property = _has-property_
_has-all-properties-of_because-of-≡_
    : ∀ {ℓ : Level}
    → (A : Type ℓ)
    → (B : Type ℓ)
    → A ≡ B
    -------------------------------------
    → (P : Type ℓ → hProp ℓ)
    → B has-property P → A has-property P

A has-all-properties-of B because-of-≡ path
  = λ P BholdsP → tr (_has-property P) (! path) BholdsP
  where open import Transport
subtype
  : ∀ {ℓ : Level} {A : Type ℓ}
  → (P : A → hProp ℓ)
  → Type ℓ

subtype P = ∑ (domain P) (π₁ ∘ P)
⊥-is-prop : ∀ {ℓ : Level} →  isProp (⊥ ℓ)
⊥-is-prop ()
⊤-is-prop : ∀ {ℓ : Level} →  isProp (⊤ ℓ)
⊤-is-prop _ _ = idp
𝟘-is-prop = ⊥-is-prop
𝟙-is-prop = ⊤-is-prop
isSet
  : ∀ {ℓ : Level} → Type ℓ → Type ℓ
isSet A = (x y : A) → isProp (x == y)
_is-set = isSet
hSet
  :  ∀ (ℓ : Level) → Type (lsuc ℓ)

hSet ℓ = ∑ (Type ℓ) isSet
isGroupoid
  : ∀ {ℓ : Level} → Type ℓ → Type ℓ

isGroupoid A  = (a₀ a₁ : A) → isSet (a₀ ≡ a₁)
_is-groupoid = isGroupoid
Groupoid
  : ∀ (ℓ : Level) → Type (lsuc ℓ)

Groupoid ℓ = ∑ (Type ℓ) isGroupoid
is-2-Groupoid
   : ∀ {ℓ : Level} → Type ℓ → Type ℓ

is-2-Groupoid A  = (a₀ a₁ : A) → isGroupoid (a₀ ≡ a₁)

is-2-groupoid = is-2-Groupoid
