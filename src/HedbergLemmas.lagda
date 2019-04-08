---
layout: page
title: "Hedberg Lemmas"
toc: true
agda: true
gallery: true
latex: true
references: true
linkify: true
showcitation: true
home: true
---


<div class="hide" >
\begin{code}
{-# OPTIONS --without-K #-}
open import TransportLemmas
open import EquivalenceType
open import HLevelTypes
open import RelationType
open import FunExtAxiom
open import FunExtTransport
\end{code}
</div>

\begin{code}
module HedbergLemmas {ℓ} where

  module HedbergLemmas2 (A : Type ℓ) where

    -- A set is a type satisfiying axiom K.
    axiomKisSet : ((a : A) → (p : a == a) → p == refl a) → isSet A
    axiomKisSet k x _ p idp = k x p

    -- Lemma: a reflexive relation on X implying the identity proves
    -- that X is a set.
    reflRelIsSet :  (r : Rel A) →
      ((x y : A) → R {{r}} x y → x == y) →
      (ρ : (a : A) → R {{r}} a a) →
      isSet A
    reflRelIsSet r f ρ x .x p idp = lemma p
      where
        lemma2 : {a : A} (p : a == a) → (o : R {{r}} a a) →
          transport (λ x → a == x) p (f a a o) == f a a (transport (R {{r}} a) p o)
        lemma2 {a} p = funext-transport-l p (f a a) (f a a) (apd (f a) p)

        lemma3 : {a : A} (p : a == a) →
          (f a a (ρ a)) · p == (f a a (ρ a))
        lemma3 {a} p = inv (transport-concat-r p _) · lemma2 p (ρ a) ·
                       ap (f a a) (Rprop {{r}} a a _ (ρ a))

        lemma : {a : A} (p : a == a) → p == refl a
        lemma {a} p = ·-cancellation ((f a a (ρ a))) p (lemma3 p)

    -- Lemma: if a type is decidable, then ¬¬A is actually A.
    lemDoubleNeg : (A + ¬ A) → (¬ (¬ A) → A)
    lemDoubleNeg (inl x) _ = x
    lemDoubleNeg (inr f) n = exfalso (n f)

  open HedbergLemmas2 public

  -- Hedberg's theorem. A type with decidable equality is a set.
  hedberg : {A : Type ℓ} → ((a b : A) → (a == b) + ¬ (a == b)) → isSet A
  hedberg {A} f = reflRelIsSet A
                (record { R = λ a b → ¬ (¬ (a == b)) ; Rprop = isPropNeg })
                doubleNegEq (λ a z → z (refl a))
    where
      doubleNegEq : (a b : A) → ¬ (¬ (a == b)) → (a == b)
      doubleNegEq a b = lemDoubleNeg (a == b) (f a b)

      isPropNeg : (a b : A) → isProp (¬ (¬ (a == b)))
      isPropNeg a b x y = funext λ u → exfalso (x u)
\end{code}
