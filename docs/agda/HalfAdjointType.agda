{-# OPTIONS --without-K #-}
open import Transport
open import TransportLemmas

open import ProductIdentities
open import CoproductIdentities

open import EquivalenceType

open import HomotopyType
open import HomotopyLemmas

open import FiberType
open import ContractibleType
module HalfAdjointType {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {B : Type ℓⱼ} where

  -- Half adjoint equivalence.
  record ishae (f : A → B) : Type (ℓᵢ ⊔ ℓⱼ) where
    constructor hae
    field
      g : B → A
      η : (g ∘ f) ∼ id
      ε : (f ∘ g) ∼ id
      τ : (a : A) → ap f (η a) == ε (f a)

  -- Half adjoint equivalences give contractible fibers.
  ishae-contr : (f : A → B) → ishae f → isContrMap f
  ishae-contr f (hae g η ε τ) y = ((g y) , (ε y)) , contra
    where
      lemma : (c c' : fib f y) → Σ (π₁ c == π₁ c') (λ γ → (ap f γ) · π₂ c' == π₂ c) → c == c'
      lemma c c' (p , q) = Σ-bycomponents (p , lemma2)
        where
          lemma2 : transport (λ z → f z == y) p (π₂ c) == π₂ c'
          lemma2 =
            begin
              transport (λ z → f z == y) p (π₂ c)
                ==⟨ transport-eq-fun-l f p (π₂ c) ⟩
              inv (ap f p) · (π₂ c)
                ==⟨ ap (inv (ap f p) ·_) (inv q) ⟩
              inv (ap f p) · ((ap f p) · (π₂ c'))
                ==⟨ inv (·-assoc (inv (ap f p)) (ap f p) (π₂ c')) ⟩
              inv (ap f p) · (ap f p) · (π₂ c')
                ==⟨ ap (_· (π₂ c')) (·-linv (ap f p)) ⟩
              π₂ c'
            ∎

      contra : (x : fib f y) → (g y , ε y) == x
      contra (x , p) = lemma (g y , ε y) (x , p) (γ , lemma3)
        where
          γ : g y == x
          γ = inv (ap g p) · η x

          lemma3 : (ap f γ · p) == ε y
          lemma3 =
            begin
              ap f γ · p
                ==⟨ ap (_· p) (ap-· f (inv (ap g p)) (η x)) ⟩
              ap f (inv (ap g p)) · ap f (η x) · p
                ==⟨ ·-assoc (ap f (inv (ap g p))) _ p ⟩
              ap f (inv (ap g p)) · (ap f (η x) · p)
                ==⟨ ap (_· (ap f (η x) · p)) (ap-inv f (ap g p)) ⟩
              inv (ap f (ap g p)) · (ap f (η x) · p)
                ==⟨ ap (λ u → inv (ap f (ap g p)) · (u · p)) (τ x) ⟩
              inv (ap f (ap g p)) · (ε (f x) · p)
                ==⟨ ap (λ u → inv (ap f (ap g p)) · (ε (f x) · u)) (inv (ap-id p)) ⟩
              inv (ap f (ap g p)) · (ε (f x) · ap id p)
                ==⟨ ap (inv (ap f (ap g p)) ·_) (h-naturality ε p) ⟩
              inv (ap f (ap g p)) · (ap (f ∘ g) p · ε y)
                ==⟨ ap (λ u → inv u · (ap (f ∘ g) p · ε y)) (ap-comp g f p) ⟩
              inv (ap (f ∘ g) p) · (ap (f ∘ g) p · ε y)
                ==⟨ inv (·-assoc (inv (ap (f ∘ g) p)) _ (ε y)) ⟩
              (inv (ap (f ∘ g) p) · ap (f ∘ g) p) · ε y
                ==⟨ ap (_· ε y) (·-linv (ap (λ z → f (g z)) p)) ⟩
              ε y
            ∎

  -- Half-adjointness implies equivalence.
  ishae-≃ : {f : A → B} → ishae f → A ≃ B
  ishae-≃ ishaef = _ , (ishae-contr _ ishaef)
