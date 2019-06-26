{-# OPTIONS --without-K #-}
open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import FunExtAxiom
open import HLevelTypes
open import MonoidType
module
  GroupType
    where
  Group
    : ∀ {ℓ} → Type (lsuc ℓ)

  Group
    = ∑ (Monoid) (λ {(monoid G e _<>_ GisSet lunit runit assoc)
      → ∑ (G → G) (λ inverse →
        ∏ G (λ x →
          -- properties:
          (   (x <> inverse x) == e)
          × ( (inverse x <> x) == e ))
          )})
