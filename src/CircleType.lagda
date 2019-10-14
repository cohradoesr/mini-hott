---
layout: page
title: "Circle Type"
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
\end{code}
</div>

### Circles

The circle type is constructed by postulating a type with
a single element (base) and a nontrivial path (loop).

\begin{code}
module CircleType where
\end{code}

\begin{code}
  private
    data !S¹ : Type₀ where
      !base : !S¹

  S¹ : Type₀
  S¹ = !S¹

  base : S¹
  base = !base

  postulate
    loop : base == base
\end{code}

Recursion principle on points
{: .foldable until="6" }
\begin{code}
  S¹-rec
    : ∀ {ℓ : Level} (A : Type ℓ)
    → (a : A)
    → (p : a == a)
    --------------
    → (S¹ → A)

  S¹-rec A a p !base = a
\end{code}

Recursion principle on paths
{: .foldable until="7" }
\begin{code}
  postulate
    S¹-βrec
      : ∀ {ℓ : Level} (A : Type ℓ)
      → (a : A)
      → (p : a == a)
      ------------------------------
      → ap (S¹-rec A a p) loop == p
\end{code}

Induction principle on points
{: .foldable until="6" }
\begin{code}
  S¹-ind
    : ∀ {ℓ : Level}(P : S¹ → Type ℓ)
    → (x : P base)
    → (x == x [ P ↓ loop ])
    --------------------------
    → ((t : S¹) → P t)

  S¹-ind P x p !base = x
\end{code}

Induction principle on paths
{: .foldable until="7" }
\begin{code}
  postulate
    S¹-βind
      : ∀ {ℓ : Level} (P : S¹ → Type ℓ)
      → (x : P base)
      → (p : x == x [ P ↓ loop ])
      -------------------------------
      → apd (S¹-ind P x p) loop == p
\end{code}
