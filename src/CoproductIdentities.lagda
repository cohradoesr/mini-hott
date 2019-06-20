---
layout: page
title: "Sigma identities"
category: lemmas functions homotopy
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
open import BasicTypes
open import BasicFunctions
open import Transport
open import TransportLemmas
\end{code}
</div>

### Coproduct identities

{: .foldable until="2"}
\begin{code}
module
  CoproductIdentities
  where

\end{code}

\begin{code}
∑-≡
  : ∀ {A : Type ℓᵢ}
  → (B : A → Type ℓⱼ)
  → {ab ab' : ∑ A B}
  → (p : π₁ ab ≡ π₁ ab')
  → π₂ ab ≡ π₂ ab' [ B / p ]
  --------------------------
  → ab ≡ ab'
∑-≡ B idp idp = idp
\end{code}

\begin{code}
π₁-≡ : ∀ {i j} {A : Type i} (B : A → Type j)
    → {ab ab' : ∑ A B}
    → ab ≡ ab'
    → π₁ ab ≡ π₁ ab'
π₁-≡ B idp = idp
\end{code}


Our context:

\begin{code}
module Sigma {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {P : A → Type ℓⱼ} where
\end{code}

Two dependent pairs are equal if they are componentwise equal.

{: .foldable until="6"}
\begin{code}
  -- Lemma.
  Σ-componentwise
    : ∀ {v w : Σ A P}
    → v == w
    ----------------------------------------------
    → Σ (π₁ v == π₁ w) (λ p → tr P p (π₂ v) == π₂ w)

  Σ-componentwise  idp = (idp , idp)
\end{code}

{: .foldable until="6"}
\begin{code}
  -- Lemma.
  Σ-bycomponents
    : ∀ {v w : Σ A P}
    → Σ (π₁ v == π₁ w) (λ p → tr P p (π₂ v) == π₂ w)
    -----------------------------------------------
    → v == w

  Σ-bycomponents (idp , idp) = idp

  -- synonym of Σ-bycomponents
  pair= = Σ-bycomponents
\end{code}

A trivial consequence is the following identification:

{: .foldable until="6"}
\begin{code}
-- Lemma.
  lift-pair=
    : ∀ {x y : A} {u : P x}
    → (p : x == y)
    --------------------------------------------------------
    → lift {A = A}{C = P} p  u == pair= (p , refl (tr P p u))

  lift-pair= idp = idp
\end{code}

\begin{code}
-- Uniqueness principle property for products
  uppt : (x : Σ A P) → (π₁ x , π₂ x) == x
  uppt (a , b) = idp
\end{code}

{: .foldable until="7"}
\begin{code}
-- Lemma.
  Σ-ap-π₁
    : {a₁ a₂ : A} {b₁ : P a₁} {b₂ : P a₂}
    → (α : a₁ == a₂)
    → (γ : transport P α b₁ == b₂)
    ------------------------------
    → ap π₁ (pair= (α , γ)) == α

  Σ-ap-π₁ idp idp = idp

  -- synonym for this lemma
  ap-π₁-pair= = Σ-ap-π₁
\end{code}

\begin{code}
open Sigma public
\end{code}


{: .foldable until="10"}
\begin{code}
transport-fun-dependent-bezem
  : ∀ {ℓᵢ ℓⱼ} {X : Type ℓᵢ} {A : X → Type ℓⱼ}
      {B : (x : X) → (a : A x) → Type ℓⱼ} {x y : X}
  → (p : x == y)
  → (f : (a : A x) → B x a)
  → (a' : A y)
  ----------------------------------------------------------
  → (tr (λ x → (a : A x) → B x a) p f) a'
    == tr (λ w → B (π₁ w) (π₂ w))
          (pair= (p , transport-inv p )) (f (tr A (! p) a'))

transport-fun-dependent-bezem idp f a' = idp
\end{code}
