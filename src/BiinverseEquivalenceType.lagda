---
layout: page
title: "Biinverse Equivalence Type"
category: homotopy
toc: true
agda: true
gallery: true
latex: true
references: false
linkify: true
showcitation: true
---

### Biinverses

Two functions are quasi-inverses if we can construct a function providing
`(g ∘ f) x = x` and `(f ∘ g) y = y` for any given `x` and `y`.

<div class="hide" >
\begin{code}
{-# OPTIONS --without-K #-}
open import TransportLemmas
\end{code}
</div>

\begin{code}
module
  BiinverseEquivalenceType {A : Type ℓᵢ} {B : Type ℓⱼ}
   where
\end{code}

\begin{code}
  record
    Equivalence {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {B : Type ℓⱼ} (f : A → B)
    : Type (ℓᵢ ⊔  ℓⱼ)
    where
    constructor equivalence
    field
      left-inverse   : B → A
      right-inverse  : B → A
      left-identity  : ∀ a →  left-inverse (f a) ≡ a
      right-identity : ∀ b → f (right-inverse b) ≡ b

  infix 10 _≃2_
\end{code}

\begin{code}
  record
    _≃2_ {ℓᵢ}{ℓⱼ} (A : Type ℓᵢ) (B : Type ℓⱼ)
    : Type (ℓᵢ ⊔ ℓⱼ)
    where
    constructor eq
    field
      apply-eq : A → B
      biinverse : Equivalence apply-eq
\end{code}

\begin{code}
  ide
    : ∀ {ℓᵢ} {A : Type ℓᵢ}
    → A ≃2 A

  ide = eq id (equivalence id id (λ a → idp) (λ a → idp))
\end{code}

\begin{code}
  ≃2-from-≡
    : {A : Type ℓᵢ}
    → (F : A → Type ℓⱼ)
    → (a b : A)
    → a ≡ b → F a ≃2 F b

  ≃2-from-≡ F a b p = tr₁ (_≃2_ _ ∘ F) p ide
\end{code}
