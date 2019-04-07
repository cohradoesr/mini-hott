---
layout: page
title: "Fiber Type"
permalink : /fiber-type/
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
\end{code}
</div>

\begin{code}
module FiberType {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {B : Type ℓⱼ}  where
\end{code}


The *fiber* type of a map over a point is given by a Sigma type.

\begin{code}
  -- Fiber
  fib
    : (f : A → B)
    → (b : B)
    ---------------
    → Type (ℓᵢ ⊔ ℓⱼ)

  fib f b = Σ A (λ a → f a == b)
\end{code}

A function applied over the fiber returns the original point

\begin{code}
  -- Lemma.
  fib-eq
    : ∀ {f : A → B} {b : B}
    → (h : fib f b)
    ---------------
    → f (π₁ h) == b

  fib-eq (a , α) = α
\end{code}

Each point is on the fiber of its image.

{: .foldable until="4"}
\begin{code}
  -- Lemma.
  fib-image
    :  ∀ {f : A → B} → {a : A}
    → fib f (f a)

  fib-image {f} {a} = a , refl (f a)
\end{code}
