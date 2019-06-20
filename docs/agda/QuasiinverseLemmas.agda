{-# OPTIONS --without-K #-}
open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import HomotopyLemmas


open import QuasiinverseType
module QuasiinverseLemmas where
  -- Composition of quasiinverses
  qinv-comp
    : ∀ {ℓ₁ ℓ₂ ℓ₃} {A : Type ℓ₁}{B : Type ℓ₂}{C : Type ℓ₃}
    → Σ (A → B) qinv
    → Σ (B → C) qinv
    ----------------
    → Σ (A → C) qinv

  qinv-comp (f , (if , (εf , ηf))) (g , (ig , (εg , ηg))) = (g ∘ f) , ((if ∘ ig) ,
     ( (λ x → ap g (εf (ig x)) · εg x)
     ,  λ x → ap if (ηg (f x)) · ηf x))
  -- Lemma.
  qinv-inv
    : ∀ {ℓ₁ ℓ₂} {A : Type ℓ₁}{B : Type ℓ₂}
    → Σ (A → B) qinv
    ----------------
    → Σ (B → A) qinv

  qinv-inv (f , (g , (ε , η))) = g , (f , (η , ε))
  idEqv
    : ∀ {ℓ} {A : Type ℓ}
    -------
    → A ≃ A

  idEqv = id , λ a → (a , refl a) , λ { (_ , idp) → refl (a , refl a) }

  -- Synonyms
  ≃-refl = idEqv
  A≃A    = idEqv
  -- Lemma.
  ≃-trans
    : ∀ {ℓ₁ ℓ₂ ℓ₃} {A : Type ℓ₁}{B : Type ℓ₂}{C : Type ℓ₃}
    → A ≃ B
    → B ≃ C
    -------
    → A ≃ C

  ≃-trans {A = A} {C = C} eq-f eq-g = qinv-≃ (π₁ qcomp) (π₂ qcomp)
   where
     qcomp : Σ (A → C) qinv
     qcomp = qinv-comp (≃-qinv eq-f) (≃-qinv eq-g)

  -- Synonyms
  compEqv = ≃-trans
  ≃-sym
    : ∀ {ℓ₁ ℓ₂} {A : Type ℓ₁}{B : Type ℓ₂}
    → A ≃ B
    -------
    → B ≃ A

  ≃-sym {ℓ}{_} {A} {B} eq-f = qinv-≃ (π₁ qcinv) (π₂ qcinv)
   where
     qcinv : Σ (B → A) qinv
     qcinv = qinv-inv (≃-qinv eq-f)

  -- Synonyms
  invEqv = ≃-sym
  ≃-flip = ≃-sym
