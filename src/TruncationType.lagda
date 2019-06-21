---
layout: page
title: "Truncation Type"
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

open import HomotopyType
open import FunExtAxiom
open import QuasiinverseType
open import DecidableEquality
open import NaturalType
open import HLevelTypes
open import HLevelLemmas
open import HedbergLemmas
\end{code}
</div>


### Propositional truncation

See at the moment:
https://hub.darcs.net/gylterud/agda-premises/browse/Premises/Truncation.agda


\begin{code}
module
  TruncationType
  where
\end{code}

\begin{code}
  private
    -- Higher inductive type, defined with equalities between any two
    -- members.
    data
      !∥_∥ {ℓ} (A : Type ℓ)
        : Type ℓ
        where
        !∣_∣ : A → !∥ A ∥
\end{code}

\begin{code}
  ∥_∥
    :  (A : Type ℓ)
    → Type ℓ

  ∥ A ∥ = !∥ A ∥
\end{code}

\begin{code}
  ∣_∣ : ∀ {ℓ} {X : Type ℓ} → X → ∥ X ∥
  ∣ x ∣ = !∣ x ∣
\end{code}

Any two elements of the truncated type are equal
\begin{code}
  postulate
    trunc : ∀ {ℓ} {A : Type ℓ} → isProp ∥ A ∥
\end{code}

Recursion principle
\begin{code}
  trunc-rec : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {P : Type ℓⱼ}
            → isProp P
            → (A → P)
            ---------
            → ∥ A ∥ → P
  trunc-rec _ f !∣ x ∣ = f x
\end{code}
