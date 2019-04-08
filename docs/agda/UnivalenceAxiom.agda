{-# OPTIONS --without-K #-}
open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import FunExtAxiom
open import QuasiinverseType
module UnivalenceAxiom {ℓ} {A B : Type ℓ} where
  -- Fun.
  idtoeqv
    : A == B
    --------
    → A ≃ B

  idtoeqv p = qinv-≃
    (transport (λ X → X) p)
    (transport (λ X → X) (inv p) , (coe-inv-l p , coe-inv-r p))
  -- Synonyms:
  ==-to-≃ = idtoeqv
  -- Axiom.
  postulate
    axiomUnivalence : isEquiv idtoeqv
  -- Lema.
  eqvUnivalence
    : (A == B) ≃ (A ≃ B)

  eqvUnivalence = idtoeqv , axiomUnivalence

  -- Synonyms
  ==-equiv-≃ = eqvUnivalence
  ==-≃-≃     = eqvUnivalence
  -- Fun.
  ua : A ≃ B → A == B
  ua = remap eqvUnivalence

  -- Synonyms
  ≃-to-== = ua
  -- Beta rule.
  ua-β
    : (α : A ≃ B)
    ----------------------
    → idtoeqv (ua α) == α

  ua-β eqv = lrmap-inverse eqvUnivalence
  -- Eta rule.
  ua-η
    : (p : A == B)
    ---------------------
    → ua (idtoeqv p) == p

  ua-η p = rlmap-inverse eqvUnivalence
