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
  Group : ∀ {ℓ} → Type (lsuc ℓ)
  Group
    = ∑ (Monoid) (λ {(monoid G e _<>_ GisSet lunit runit assoc)
      → ∑ (G → G) (λ iOp → -- A group has inverses
        ∏ G (λ x →
          -- properties:
          ( (x <> iOp x) == e)
          × ( (iOp x <> x) == e ))
          )})
