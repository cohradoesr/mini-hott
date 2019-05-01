---
layout: page
title: "Contractible Type"
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
open import EqualityType
open import FiberType
\end{code}
</div>


\begin{code}
module ContractibleType where
\end{code}

A *contractible* type is a type such that **every**
element is equal to a point, the *center* of contraction.

\begin{code}
  -- Def.
  isContr
    : ∀ {ℓ}
    → (A : Type ℓ)
    --------------
    → Type ℓ

  isContr A = Σ A (λ a → ((x : A) → a == x))

\end{code}

If a type is contractible, any of its points is a center of contraction:

\begin{code}
  -- Lemma.
  allAreCenter
    : ∀ {ℓ} {A : Type ℓ}
    → (c₁ : A) → (f : (x : A) → c₁ == x)
    → (∀ (c₂ : A) → (∀ (x : A) → c₂ == x))
  allAreCenter c₁ f c₂ x = ! (f c₂) · (f x)

\end{code}

## Contractible maps.

A map is *contractible* if the fiber in any point is contractible, that is, each
element has a unique preimagen.

\begin{code}
  -- Def.
  isContrMap
    : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {B : Type ℓⱼ}
    → (f : A → B)
    → Type (ℓᵢ ⊔ ℓⱼ)

  isContrMap {B = B} f = (b : B) → isContr (fib f b)
\end{code}
