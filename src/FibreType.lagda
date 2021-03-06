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
{-# OPTIONS --without-K --exact-split #-}
open import BasicTypes
\end{code}
</div>

## Fibre type

{: .hide}
\begin{code}
module
  FibreType {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}
    where
\end{code}

\begin{code}
  fibre
    : (f : A → B)
    → (b : B)
    ---------------
    → Type (ℓ₁ ⊔ ℓ₂)

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

{: .foldable until="3"}
\begin{code}
  fib-image
    :  ∀ {f : A → B} → {a : A}
    → fib f (f a)

  fib-image {f} {a} = a , refl (f a)
\end{code}
