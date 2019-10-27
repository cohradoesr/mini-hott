{-# OPTIONS --without-K --exact-split #-}
module _ where
open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import FunExtAxiom

open import EquivalenceType
open import QuasiinverseType
open import QuasiinverseLemmas
open import UnivalenceAxiom
open import UnivalenceTransport
open import HLevelLemmas

module UnivalenceIdEquiv where
  ua-id
    : ∀ {ℓ : Level} {A : Type ℓ}
    --------------------
    → ua idEqv ≡ refl A

  ua-id {A = A} =
    begin
      ua idEqv
        ≡⟨ ap ua (sameEqv (refl id)) ⟩
      ua (idtoeqv (refl A))
        ≡⟨ ua-η (refl A) ⟩
      refl A
    ∎
