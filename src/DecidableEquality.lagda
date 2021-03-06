---
layout: page
title: "Decidable Equality"
category: lemmas functions homotopy
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
open import ProductIdentities
open import EquivalenceType
open import HomotopyType
\end{code}
</div>


## Decidable equality

A type has decidable equality if any two of its
elements are equal or different. This would be a particular
instance of the Law of Excluded Middle that holds even if we do not
assume Excluded Middle.

\begin{code}
module DecidableEquality where
\end{code}

\begin{code}
  decEq
    : ∀ {ℓ : Level} → (A : Type ℓ) → Type ℓ

  decEq A = (a b : A) → (a == b) + ¬ (a == b)
\end{code}

and a more convenient name for this:

\begin{code}
  _is-decidable
    : ∀ {ℓ : Level} → (A : Type ℓ) → Type ℓ
  A is-decidable = decEq A
\end{code}

The product of types with decidable equality is a type with
decidable equality.

{: .foldable until="5" }
\begin{code}
  decEqProd
    : ∀ {ℓ : Level} {A B : Type ℓ}
    → decEq A → decEq B
    -------------------
    → decEq (A × B)

  decEqProd da db (a1 , b1) (a2 , b2)
   with (da a1 a2) | (db b1 b2)
  ... | inl aeq | inl beq = inl (prodByComponents (aeq , beq))
  ... | inl _   | inr bnq = inr λ b → bnq (ap π₂ b)
  ... | inr anq | _       = inr λ b → anq (ap π₁ b)
\end{code}

This surely can be extend to other types.
