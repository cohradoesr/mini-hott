{-# OPTIONS --without-K #-}
open import BasicTypes

open import HLevelTypes
open import TruncationType
module
  TheAxiomOfChoice
  where
  postulate
    Choice
      :
      -- Asummption 1: 
        (B : Type ℓᵢ)
      → isSet B
      -- Asummption 2: 
      → (A : B → Type ℓⱼ)
      → ∀ (b : B) → isSet (A b)
      -- Asummption 3:
      → (P : (b : B) → (A b) → Type ℓₖ)
      → ∀ (b : B)(a : A b) → isProp (P b a)
      -----------------------------------
      → (∀ b → ∥ ∑ (A b) (λ a → P b a) ∥)
      → ∥ ∑ (∏ B A) (λ g → P b (g b)) ∥
