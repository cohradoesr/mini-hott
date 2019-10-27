{-# OPTIONS --without-K --exact-split #-}
open import TransportLemmas
module HomotopyType {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁} {P : A → Type ℓ₂} where
  homotopy
    : (f g : Π A P)
    ---------------
    → Type (ℓ₁ ⊔ ℓ₂)

  homotopy f g = ∀ (x : A) → f x == g x
  _∼_ : (f g : ((x : A) → P x)) → Type (ℓ₁ ⊔ ℓ₂)
  f ∼ g = homotopy f g
  h-refl
    : (f : Π A P)
    -------------
    → f ∼ f

  h-refl f x = idp
  h-sym
    : (f g : Π A P)
    → f ∼ g
    -------
    → g ∼ f

  h-sym _ _ e x = ! (e x)
  h-comp
    : {f g h : Π A P}
    → f ∼ g
    → g ∼ h
    -------
    → f ∼ h

  h-comp u v x = (u x) · (v x)
  _●_
    : {f g h : Π A P}
    → f ∼ g
    → g ∼ h
    -------
    → f ∼ h

  α ● β = h-comp α β
