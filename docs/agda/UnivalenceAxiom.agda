{-# OPTIONS --without-K --exact-split #-}
open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import FunExtAxiom
open import QuasiinverseType
open import QuasiinverseLemmas
module UnivalenceAxiom {ℓ : Level} {A B : Type ℓ} where
  idtoeqv
    : A == B
    --------
    → A ≃ B

  idtoeqv p =
    qinv-≃
      (coe p)
      ((!coe p) ,
        (coe-inv-l p , coe-inv-r p))
  ==-to-≃ = idtoeqv
  ≡-to-≃  = idtoeqv
  ite     = idtoeqv
  cast    = idtoeqv  -- Used in the Symmetry Book.
  postulate
    axiomUnivalence
      : isEquivalence ≡-to-≃
  open import HLevelTypes

  UA
    : ∀ {ℓ : Level}
    → (Type (lsuc ℓ))

  UA {ℓ = ℓ}  = (X : Type ℓ) → isContr (∑ (Type ℓ) (λ Y → (X ≃ Y)))
  eqvUnivalence
    : (A == B) ≃ (A ≃ B)

  eqvUnivalence = idtoeqv , axiomUnivalence
  ==-equiv-≃ = eqvUnivalence
  ==-≃-≃     = eqvUnivalence
  ≡-≃-≃      = eqvUnivalence
  ua
    : A ≃ B
    -------
    → A == B

  ua = remap eqvUnivalence
  ≃-to-==   = ua
  eqv-to-eq = ua
  ua-β
    : (α : A ≃ B)
    ----------------------
    → idtoeqv (ua α) == α

  ua-β eqv = lrmap-inverse eqvUnivalence
  ua-η
    : (p : A == B)
    ---------------------
    → ua (idtoeqv p) == p

  ua-η p = rlmap-inverse eqvUnivalence
