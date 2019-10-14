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
{-# OPTIONS --without-K --exact-split #-}
open import TransportLemmas
\end{code}
</div>

\begin{code}
module
  BiinverseEquivalenceType {ℓ₁ ℓ₂ : Level}{A : Type ℓ₁} {B : Type ℓ₂}
   where
\end{code}

\begin{code}
  record
    Equivalence {ℓ₁ ℓ₂} {A : Type ℓ₁} {B : Type ℓ₂} (f : A → B)
    : Type (ℓ₁ ⊔  ℓ₂)
    where
    constructor equivalence
    field
      left-inverse   : B → A
      right-inverse  : B → A
      left-identity  : ∀ a →  left-inverse (f a) ≡ a
      right-identity : ∀ b → f (right-inverse b) ≡ b

  infix 10 _≃_
\end{code}

Synonym:
\begin{code}
  biinv
    : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁} {B : Type ℓ₂}
    → (f : A → B)
    → Type (ℓ₁ ⊔  ℓ₂)
  biinv f = Equivalence f
\end{code}

\begin{code}
  isequiv
    : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁} {B : Type ℓ₂}
    → (f : A → B)
    → Type (ℓ₁ ⊔  ℓ₂)
  isequiv f = Equivalence f
\end{code}

\begin{code}
  record
    _≃_ {ℓ₁}{ℓ₂} (A : Type ℓ₁) (B : Type ℓ₂)
    : Type (ℓ₁ ⊔ ℓ₂)
    where
    constructor eq
    field
      apply-eq : A → B
      biinverse : Equivalence apply-eq
\end{code}

\begin{code}
  ide
    : ∀ {ℓ₁} {A : Type ℓ₁}
    → A ≃ A

  ide = eq id (equivalence id id (λ a → idp) (λ a → idp))
\end{code}

\begin{code}
  ≃-from-≡
    : {A : Type ℓ₁}
    → (F : A → Type ℓ₂)
    → (a b : A)
    → a ≡ b → F a ≃ F b

  ≃-from-≡ F a b p = tr₁ (_≃_ _ ∘ F) p ide
\end{code}
