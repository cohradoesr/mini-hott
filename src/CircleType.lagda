---
layout: page
title: "Circle Type"
permalink : /circle-type/
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
open import HLevelTypes
\end{code}
</div>

The circle type is constructed by postulating a type with
a single element (base) and a nontrivial path (loop).

\begin{code}
module CircleType where

  private
    data !S¹ : Type₀ where
      !base : !S¹

  S¹ : Type₀
  S¹ = !S¹

  base : S¹
  base = !base

  -- Nontrivial path on the circle.
  postulate
    loop : base == base

  -- Recursion principle on points
  S¹-rec : ∀ {ℓ}
         → (A : Type ℓ)
         → (a : A)
         → (p : a == a)
         --------------
         → (S¹ → A)
  S¹-rec A a p !base = a

  -- Recursion principle on paths
  postulate
    S¹-βrec : ∀ {ℓ} (A : Type ℓ)
            → (a : A)
            → (p : a == a)
            ------------------------------
            → ap (S¹-rec A a p) loop == p

  -- Induction principle on points
  S¹-ind : ∀ {ℓ} (P : S¹ → Type ℓ)
         → (x : P base)
         → (x == x [ P ↓ loop ])
         --------------------------
         → ((t : S¹) → P t)
  S¹-ind P x p !base = x

  -- Induction principle on paths
  postulate
    S¹-βind : ∀ {ℓ} (P : S¹ → Type ℓ)
            → (x : P base)
            → (p : x == x [ P ↓ loop ])
            -------------------------------
            → apd (S¹-ind P x p) loop == p

\end{code}
