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
{-# OPTIONS --without-K --exact-split  --rewriting #-}
open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import FunExtAxiom
open import HLevelTypes
\end{code}
</div>

### Circles

![circle]({{ site.baseurl }}/assets/images/circle.png){: width="50%" align="right" }

The circle type is constructed by postulating a type with
a single element (base) and a nontrivial path (loop).

\begin{code}
module CircleType {ℓ : Level} where
  open import Rewriting
\end{code}

\begin{code}
  postulate
    S¹ : Type ℓ
    base : S¹
    loop : base ≡ base
\end{code}

Recursion principle on points

\begin{code}
  postulate
    S¹-rec
      : ∀ {ℓ : Level}
      → (A : Type ℓ)
      → (a : A)
      → (p : a ≡ a)
      --------------
      → (S¹ → A)
\end{code}

Recursion principle on paths

\begin{code}
  postulate
    S¹-βrec-base
      : ∀ {ℓ : Level}
      → (A : Type ℓ)
      → (a : A)
      → (p : a ≡ a)
      ------------------------------
      → S¹-rec A a p base ↦ a

  {-# REWRITE S¹-βrec-base #-}
\end{code}

\begin{code}
  postulate
    S¹-βrec-loop
      : ∀ {ℓ : Level}
      → (A : Type ℓ)
      → (a : A)
      → (p : a ≡ a)
      ------------------------------
      → ap (S¹-rec A a p) loop ↦ p

  {-# REWRITE S¹-βrec-loop #-}
\end{code}

Induction principle on points

\begin{code}
  postulate
    S¹-ind
      : ∀ {ℓ : Level}
      → {P : S¹ → Type ℓ}
      → (x : P base)
      → (x == x [ P ↓ loop ])
      -----------------------
      → ((t : S¹) → P t)
\end{code}

\begin{code}
  postulate
    S¹-βind-base
      : ∀ {ℓ : Level}
      → {P : S¹ → Type ℓ}
      → (x : P base)
      → (p : x == x [ P ↓ loop ])
      ---------------------------
      → S¹-ind x p base ↦ x

  {-# REWRITE S¹-βind-base #-}
\end{code}

Induction principle on paths

\begin{code}
  postulate
    S¹-βind-loop
      :  ∀ {ℓ : Level}
      → {P : S¹ → Type ℓ}
      → (x : P base)
      → (p : x == x [ P ↓ loop ])
      → apd (S¹-ind x p) loop ↦ p

  {-# REWRITE S¹-βind-loop #-}
\end{code}

\begin{code}
  this-proofs-rewriting
      :  ∀ {ℓ : Level}
      → {P : S¹ → Type ℓ}
      → (x : P base)
      → (p : x == x [ P ↓ loop ])
      → apd (S¹-ind x p) loop ≡ p

  this-proofs-rewriting _ _ = idp
\end{code}
