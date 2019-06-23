{-# OPTIONS --without-K #-}
open import TransportLemmas
module HomotopyType {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {P : A → Type ℓⱼ} where
  
  homotopy
    : (f g : Π A P)
    ---------------
    → Type (ℓᵢ ⊔ ℓⱼ)

  homotopy f g = ∀ (x : A) → f x == g x
  -- Usual notation for homotopy
  _∼_ : (f g : ((x : A) → P x)) → Type (ℓᵢ ⊔ ℓⱼ)
  f ∼ g = homotopy f g
  -- Homotopy is an equivalence relation
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
  -- synonym for h-comp
  _●_
    : {f g h : Π A P}
    → f ∼ g
    → g ∼ h
    -------
    → f ∼ h

  α ● β = h-comp α β
