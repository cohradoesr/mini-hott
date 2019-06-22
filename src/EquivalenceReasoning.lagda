---
layout: page
title: "Equivalence reasoning"
category: functions
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
{-# OPTIONS --without-K #-}
-- module _ where

open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import HomotopyLemmas

open import HalfAdjointType
open import QuasiinverseType
open import QuasiinverseLemmas
\end{code}
</div>

## Equivalence reasoning

\begin{code}
module EquivalenceReasoning where
\end{code}

\begin{code}
  _≃⟨⟩_
    : (A {B} : Type ℓ)
    → A ≃ B
    -------
    → A ≃ B

  _ ≃⟨⟩ e = e
  infixr 2 _≃⟨⟩_
\end{code}

\begin{code}
  _≃⟨by-def⟩_
    : (A {B} : Type ℓ)
    → A ≃ B
    -------
    → A ≃ B

  _ ≃⟨by-def⟩ e = e
  infixr 2 _≃⟨by-def⟩_
\end{code}

\begin{code}
  _≃⟨_⟩_
    : (A : Type ℓᵢ) {B : Type ℓⱼ}{C : Type ℓₖ}
    → A ≃ B → B ≃ C
    ---------------
    → A ≃ C

  _ ≃⟨ e₁ ⟩ e₂ = ≃-trans e₁ e₂
  infixr 2 _≃⟨_⟩_
\end{code}

\begin{code}
  _≃∎
    : (A : Type ℓ)
    → A ≃ A

  _≃∎ = λ A → idEqv {A = A}
  infix  3 _≃∎
\end{code}

\begin{code}
  begin≃_
    : {A : Type ℓᵢ}{B : Type ℓⱼ}
    → A ≃ B
    -------
    → A ≃ B

  begin≃_ e = e
  infix  1 begin≃_
\end{code}
