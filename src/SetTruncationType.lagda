---
layout: page
title: "Set Truncation Type"
toc: true
agda: true
gallery: true
latex: true
references: false
linkify: true
showcitation: true
---

<div class="hide" >
\begin{code}
{-# OPTIONS --without-K --exact-split --rewriting  #-}

open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import FunExtAxiom
open import QuasiinverseType
open import DecidableEquality
open import NaturalType
open import HLevelTypes
open import HLevelLemmas
open import HedbergLemmas
open import Rewriting
\end{code}
</div>

### Set truncations

\begin{code}
module SetTruncationType where

  module _ {ℓ : Level} (A : Type ℓ) where
    postulate
      ∥_∥₀ : Type ℓ → Type ℓ
      ∣_∣₀ :  A → ∥ A ∥₀
      ∥∥₀-set : ∥ A ∥₀ is-set
\end{code}

 Recursion principle

 {: .foldable until="6" }
\begin{code}
    module
      Rec
        {ℓ : Level} {B : Type ℓ}
        (f : A → B)
        (B-is-set : B is-set)
      where
      postulate
        ∥∥₀-rec : ∥ A ∥₀ → B
        ∥∥₀-rec-points : (x : A) → (∥∥₀-rec (∣ x ∣₀)) ↦ f x
        {-# REWRITE ∥∥₀-rec-points #-}

        -- ∥∥₀-rec-set
        --   : (x y : A)
        --   → (p q : ∣ x ∣₀ ≡ ∣ y ∣₀)
        --   → (r : p ≡ q)
        --   -- → {!!} ↦ B-is-set ()
        -- -- {-# REWRITE ∥∥₀-rec-set #-}


  --   : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{P : Type ℓ₂}
  --   → isSet P
  --   → (A → P)
  --   ------------
  --   → ∥ A ∥₀ → P

  -- strunc-rec _ f !∣ x ∣₀ = f x
\end{code}

Induction principle

{: .foldable until="6" }
\begin{code}
  -- strunc-ind
  --   : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁} {B : ∥ A ∥₀ → Type ℓ₂}
  --   → ((a : ∥ A ∥₀) → isSet (B a))
  --   → (g : (a : A) → B ∣ a ∣₀)
  --   ------------------------------
  --   → (a : ∥ A ∥₀) → B a

  -- strunc-ind _ g !∣ x ∣₀ = g x
\end{code}


### Groupoid truncations
