---
layout: page
title: "Connectedness"
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
{-# OPTIONS --without-K --exact-split #-}
open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import FunExtAxiom
open import HLevelTypes

open import SetTruncationType
\end{code}
</div>

## Connectedness

### 0-connected type

\begin{code}
{-
_is-0-connected
  : ∀ {ℓ : Level}
  → (A : Type ℓ)
  → Type ℓ

A is-0-connected = isContr (∥ A ∥₀)
-}
\end{code}
