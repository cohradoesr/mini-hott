---
layout: page
title: "Fiber Type"
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
open import BasicTypes
\end{code}
</div>

## Fibre type

\begin{code}
module
  FibreType {A : Type ℓᵢ} {B : Type ℓⱼ}
    where
\end{code}

\begin{code}
  fibre
    : (f : A → B)
    → (b : B)
    ---------------
    → Type (ℓᵢ ⊔ ℓⱼ)

  fibre f b = Σ A (λ a → f a == b)
\end{code}

Synomyms and syntax sugar:

\begin{code}
  fib   = fibre
  fiber = fibre
  
  syntax fibre f b = f // b
\end{code}

A function applied over the fiber returns the original point

\begin{code}
  fib-eq
    : ∀ {f : A → B} {b : B}
    → (h : fib f b)
    ------------------
    → f (proj₁ h) == b

  fib-eq (a , α) = α
\end{code}

Each point is on the fiber of its image.

{: .foldable until="4"}
\begin{code}
  fib-image
    :  ∀ {f : A → B} → {a : A}
    → fib f (f a)

  fib-image {f} {a} = a , refl (f a)
\end{code}
