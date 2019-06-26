{-# OPTIONS --without-K #-}
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
open import TruncationType
open import FibreType
open import CoproductIdentities
module TypesofMorphisms where
  isSurjection
    : {A : Type ℓᵢ}{B : Type ℓⱼ}
    → (f : A → B)
    → Type (ℓᵢ ⊔ ℓⱼ)

  isSurjection {B = B} f = (b : B) → ∥ fib f b ∥

  isSurjective = isSurjection
  isOnto       = isSurjection
  isSplitSurjection
    : {A : Type ℓᵢ} {B : Type ℓⱼ}
    → (f : A → B)
    → Type (ℓᵢ ⊔ ℓⱼ)

  isSplitSurjection {B = B} f = (b  : B) → fib f b
  isRetraction
    : {A : Type ℓᵢ} {B : Type ℓⱼ}
    → (f : A → B)
    → Type (ℓᵢ ⊔ ℓⱼ)

  isRetraction {A = A}{B} f =
    ∑ (B → A) (λ g → (b : B) → f (g b) ≡ b)
  isEmbedding
    : {A : Type ℓᵢ}{B : Type ℓⱼ}
    → (f : A → B)
    ---------------
    → Type (ℓᵢ ⊔ ℓⱼ)

  isEmbedding {A = A} f =
    ∀ {x y : A} → isEquiv (ap f {x}{y})
  isInjective
    : {A : Type ℓᵢ}{B : Type ℓⱼ}
    → (f : A → B)
    → Type (ℓᵢ ⊔ ℓⱼ)

  isInjective f = ∀ {x y} → f x ≡ f y → x ≡ y
  fromSurjection
    : {A : Type ℓᵢ} {B : Type ℓⱼ}
    → (f : A → B)
    → isSet B
    → isSurjection f
    → isInjective f
    ----------------
    → (b : B) → ∑ A (λ a → f a == b)

  fromSurjection {A = A}{B} f iB f-is-onto f-is-injective b
    = trunc-rec (aux b) id (f-is-onto b)
    where
    aux
      : (b : B)
      → isProp (fib f b)

    aux .(f x) (x , idp) (x' , p2) =
      ∑-≡
        (λ y → f y == f x)
        (f-is-injective (! p2))
        (iB (f x') (f x)
            (tr (λ z₁ → f z₁ == f x) (f-is-injective (! p2)) idp) p2)
  isBijection
    : {A : Type ℓᵢ}{B : Type ℓⱼ}
    → (f : A → B)
    → isSet A
    → isSet B
    ---------------
    → Type (ℓᵢ ⊔ ℓⱼ)

  isBijection f iA iB = isInjective f × isSurjection f
  Bijection
      : {A : Type ℓᵢ}{B : Type ℓⱼ}
      → (f : A → B)
      → {A-is-set : isSet A}
      → {B-is-set : isSet B}
      → isBijection f A-is-set B-is-set
      ---------------------------------
      → A ≃ B

  Bijection {A = A}{B} f {iA}{iB} (f-is-injective , f-is-onto)
    = qinv-≃ f (g , (H₁ , H₂))
    where
    aux : (b : B) → ∑ A (λ a → f a ≡ b)
    aux = fromSurjection f iB f-is-onto f-is-injective

    g : B → A
    g = π₁ ∘ aux

    H₁ : (b : B) → f (g b) == b
    H₁ b = π₂ (aux b)

    H₂ : (a : A) → g (f a) == a
    H₂ a = f-is-injective (H₁ (f a))
