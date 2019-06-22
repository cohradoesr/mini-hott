---
layout: page
title: "Relation Type"
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
open import TransportLemmas
open import EquivalenceType
open import HLevelTypes
\end{code}
</div>

### Relation

\begin{code}
module RelationType where

  record Rel {ℓ} (A : Type ℓ) : Type (lsuc ℓ) where
    field
      R     : A → A → Type ℓ
      Rprop : (a b : A) → isProp (R a b)
  open Rel {{...}} public
\end{code}
