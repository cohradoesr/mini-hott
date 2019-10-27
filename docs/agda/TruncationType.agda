{-# OPTIONS --without-K --exact-split --rewriting #-}
open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import FunExtAxiom
open import QuasiinverseType
open import DecidableEquality
open import NaturalType
open import HLevelTypes
open import HLevelLemmas
open import HedbergLemmas
module
  TruncationType
  where
  private
    data
      !∥_∥ {ℓ} (A : Type ℓ)
        : Type ℓ
        where
        !∣_∣ : A → !∥ A ∥
  ∥_∥
    : ∀ {ℓ : Level} (A : Type ℓ)
    → Type ℓ

  ∥ A ∥ = !∥ A ∥

  prop-trunc = ∥_∥
  ∣_∣
    : ∀ {ℓ : Level} {X : Type ℓ}
    ------------
    → X → ∥ X ∥

  ∣ x ∣ = !∣ x ∣
  ∥∥-intro = ∣_∣
  postulate
    trunc
      : ∀ {ℓ : Level} {A : Type ℓ}
      → isProp ∥ A ∥
  trunc-rec
    :  ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{P : Type ℓ₂}
    → isProp P
    → (A → P)
    -----------
    → ∥ A ∥ → P

  trunc-rec _ f !∣ x ∣ = f x
  trunc-elim = trunc-rec
  ∥∥-rec     = trunc-rec
  truncated-is-prop
    : ∀ {ℓ : Level} {A : Type ℓ}
    → isProp (∥ A ∥)

  truncated-is-prop = trunc
  ∥∥-is-prop    = truncated-is-prop
  trunc-is-prop = truncated-is-prop
  trunc-≃-prop
    : ∀ {ℓ : Level} {A : Type ℓ}
    → A is-prop
    -----------
    → ∥ A ∥ ≃ A

  trunc-≃-prop pA = lemma333 trunc pA (trunc-rec pA id) ∣_∣
  postulate
   trunc-⇔-¬¬
     : ∀ {ℓ} {X : Type ℓ}
     → ∥ X ∥ ⇔ (¬ (¬ X))
  _∨_
    : ∀ {ℓ₁ ℓ₂ : Level}
    → (p : hProp ℓ₁) (q : hProp ℓ₂)
    → Type (ℓ₁ ⊔ ℓ₂)
  (P , _) ∨ (Q , _) = ∥ P + Q ∥

  infix 2 _∨_
  _∧_
    : ∀ {ℓ₁ ℓ₂ : Level}
    → (p : hProp ℓ₁) (q : hProp ℓ₂)
    → Type (ℓ₁ ⊔ ℓ₂)

  (P , _) ∧ (Q , _) = P × Q

  infix  2 _∧_
  ∃[_]_
    : ∀ {ℓ : Level}
    → (T : Type ℓ) → (P : T → hProp ℓ)
    → Type ℓ

  ∃[ T ] P = ∥ ∑ T (λ x → π₁ (P x)) ∥
  _is-non-empty
    : ∀ {ℓ : Level}
    → (A : Type ℓ)
    → Type ℓ
  A is-non-empty = ∥ A ∥

  infixl 100 _is-non-empty
  is-non-empty-is-prop
    : ∀ {ℓ : Level}{A : Type ℓ}
    → isProp (A is-non-empty)

  is-non-empty-is-prop = ∥∥-is-prop
  connected-component
    : ∀ {ℓ : Level} {A : Type ℓ}
    → (a : A)
    → Type ℓ

  connected-component {A = A} a = ∑ A (λ x → ∥ a ≡ x ∥ )
  _is-in-the-same-component-of_
    : ∀ {ℓ : Level}{A : Type ℓ}
    → (x y : A) → Type ℓ

  x is-in-the-same-component-of y = ∥ x ≡ y ∥

  infix 100 _is-in-the-same-component-of_
  _is-connected
    : ∀ {ℓ : Level} (A : Type ℓ)
    → Type ℓ

  A is-connected =
      (A is-non-empty)
    × ((x y : A) → (x is-in-the-same-component-of y))
  is-connected-is-prop
    : ∀ {ℓ : Level} {A : Type ℓ}
    ---------------------------
    → isProp (A is-connected)

  is-connected-is-prop =
    ×-is-prop
      is-non-empty-is-prop
      (pi-is-prop (λ x → pi-is-prop λ y → trunc-is-prop))
