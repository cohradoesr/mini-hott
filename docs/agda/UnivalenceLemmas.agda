{-# OPTIONS --without-K #-}
module _ where
open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import FunExtAxiom

open import EquivalenceType
open import QuasiinverseType
open import QuasiinverseLemmas
open import UnivalenceAxiom

open import HLevelLemmas
module UnivalenceLemmas {ℓ} where
  ua-id : {A : Type ℓ} → ua idEqv == refl A
  ua-id {A} =
    begin
      ua idEqv              ==⟨ ap ua (sameEqv (refl id)) ⟩
      ua (idtoeqv (refl A)) ==⟨ ua-η (refl A) ⟩
      refl A
    ∎

    -- The composition of equivalences is preserved into composition
    -- of equalities.
  postulate
    ua-comp
      : {A B C : Type ℓ}
      → (α : A ≃ B)
      → (β : B ≃ C)
      ---------------------------------
      → ua (≃-trans α β) == ua α · ua β

    -- ua-comp α β =
    --   begin
    --     ua (≃-trans α β)                               ==⟨ ap (λ x → ua (≃-trans x β)) (inv (ua-β α)) ⟩
    --     ua (≃-trans (idtoeqv (ua α)) β)                ==⟨ ap (λ x → ua (≃-trans (idtoeqv (ua α)) x))
    --                                                        (inv (ua-β β)) ⟩
    --     ua (≃-trans (idtoeqv (ua α)) (idtoeqv (ua β))) ==⟨ ap ua lemma ⟩
    --     ua (idtoeqv (ua α · ua β))                     ==⟨ ua-η (ua α · ua β) ⟩
    --     ua α · ua β
    --   ∎
    --   where
    --     lemma : ≃-trans (idtoeqv (ua α)) (idtoeqv (ua β)) == idtoeqv (ua α · ua β)
    --     lemma = sameEqv (
    --       begin
    --         π₁ (idtoeqv (ua β)) ∘ π₁ (idtoeqv (ua α))                 ==⟨ refl _ ⟩
    --         (transport (λ x → x) (ua β)) ∘ (transport (λ x → x) (ua α)) ==⟨ transport-comp (ua α) (ua β) ⟩
    --         transport (λ x → x) (ua α · ua β)                           ==⟨ refl _ ⟩
    --         π₁ (idtoeqv (ua α · ua β))
    --       ∎)
  ua-inv-r
    : {A B : Type ℓ}
    → (α : A ≃ B)
    → ua α · ua (≃-sym α) == refl A
  ua-inv-r α =
    begin
      ua α · ua (≃-sym α)      ==⟨ inv (ua-comp α (≃-sym α)) ⟩
      ua (≃-trans α (≃-sym α)) ==⟨ ap ua (≃-trans-inv α) ⟩
      ua idEqv                  ==⟨ ua-id ⟩
      refl _
    ∎
  postulate
    ua-inv : {A B : Type ℓ} → (α : A ≃ B) → ua (≃-sym α) == inv (ua α)
    -- ua-inv α =
    --   begin
    --     ua (≃-sym α)                       ==⟨ ap (_· ua (≃-sym α)) (inv (·-linv (ua α))) ⟩
    --     inv (ua α) · ua α · ua (≃-sym α)   ==⟨ ·-assoc (inv (ua α)) _ _ ⟩
    --     inv (ua α) · (ua α · ua (≃-sym α)) ==⟨ ap (inv (ua α) ·_) (ua-inv-r α) ⟩
    --     inv (ua α) · refl _                 ==⟨ inv (·-runit (inv ((ua α)))) ⟩
    --     inv (ua α)
    --   ∎
