{-# OPTIONS --without-K #-}
open import BasicTypes
open import BasicFunctions
open import Transport
module
  ProductIdentities
  where
-- Lemma.
prodComponentwise
  : {A : Type ℓᵢ}{B : Type ℓⱼ}{x y : A × B}
  → (x == y)
  ---------------------------------
  → (π₁ x == π₁ y) × (π₂ x == π₂ y)

prodComponentwise {x = x} idp = refl (π₁ x) , refl (π₂ x)
-- Lemma.
prodByComponents
  : {A : Type ℓᵢ}{B : Type ℓⱼ} {x y : A × B}
  → (π₁ x == π₁ y) × (π₂ x == π₂ y)
  ---------------------------------
  → (x == y)

prodByComponents {x = a , b} (idp , idp) = refl (a , b)
-- Lemma.
prodCompInverse
  : {A : Type ℓᵢ}{B : Type ℓⱼ} {x y : A × B}
  → (b : (π₁ x == π₁ y) × (π₂ x == π₂ y))
  ---------------------------------------------
  → prodComponentwise (prodByComponents b) == b

prodCompInverse {x = x} (idp , idp) = refl (refl (π₁ x) , refl (π₂ x))
-- Lemma.
prodByCompInverse
  : {A : Type ℓᵢ}{B : Type ℓⱼ} {x y : A × B}
  → (b : x == y)
  ---------------------------------------------
  → prodByComponents (prodComponentwise b) == b

prodByCompInverse {x = x} idp = refl (refl x)
×-≡
  : {A : Type ℓᵢ}{B : Type ℓⱼ}
  → {ab ab' : A × B}
  → (p : π₁ ab ≡ π₁ ab') → (π₂ ab) ≡ π₂ ab'
  → ab ≡ ab'

×-≡ idp idp = idp
