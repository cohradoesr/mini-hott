{-# OPTIONS --without-K #-}
open import EqualityType
open import FiberType
open import ContractibleType
open import Transport
open import HomotopyType
module EquivalenceType where

  module DefinitionOfEquivalence  {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {B : Type ℓⱼ} where
    isEquiv : (f : A → B) → Type (ℓᵢ ⊔ ℓⱼ)
    isEquiv = isContrMap
  open DefinitionOfEquivalence public
  -- Equivalence of types.
  _≃_ : ∀ {ℓᵢ ℓⱼ}  (A : Type ℓᵢ) (B : Type ℓⱼ) → Type (ℓᵢ ⊔ ℓⱼ)
  A ≃ B = Σ (A → B) isEquiv
  module EquivalenceMaps {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {B : Type ℓⱼ} where

    -- Maps of an equivalence
    lemap : A ≃ B → (A → B)
    lemap = π₁

    ≃-to-→ = lemap
    fun≃   = lemap


    infixl 70 _∙
    _∙ = lemap

    infixl 70 _∙→
    _∙→ = lemap

    remap : A ≃ B → (B → A)
    remap (f , contrf) b = π₁ (π₁ (contrf b))

    ≃-to-← = remap
    invfun≃ = remap

    infixl 70 _∙←
    _∙← = remap
    -- The maps of an equivalence are inverses in particular
    lrmap-inverse
      : (e : A ≃ B) → {b : B}
      -----------------------
      → (e ∙→) ((e ∙←) b) == b
    lrmap-inverse (f , eqf) {b} = fib-eq (π₁ (eqf b))

    ∙→∘∙← = lrmap-inverse
    -- Lem.
    rlmap-inverse
      : (e : A ≃ B) → {a : A}
      ------------------------
      → (e ∙←) ((e ∙→) a) == a

    rlmap-inverse (f , eqf) {a} = ap π₁ ((π₂ (eqf (f a))) fib-image)

    ∙←∘∙→ = rlmap-inverse
    -- Lem.
    lrmap-inverse-h
      : (e : A ≃ B)
      ------------------------------
      → ((e ∙→) ∘ (e ∙←)) ∼ id
    lrmap-inverse-h e = λ x → lrmap-inverse e {x}

    ∙→∘∙←-h = lrmap-inverse-h
    -- Lem.
    rlmap-inverse-h
      : (e : A ≃ B)
      ------------------------
      → ((e ∙←) ∘ (e ∙→)) ∼ id

    rlmap-inverse-h e = λ x → rlmap-inverse e {x}

    ∙←∘∙→-h = rlmap-inverse-h

  open EquivalenceMaps public
