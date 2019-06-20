---
layout: page
title: "Equivalence Type"
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
open import HLevelTypes
open import FiberType

open import Transport
open import HomotopyType

\end{code}
</div>

\begin{code}
module EquivalenceType where

\end{code}

## Contractible maps

A map is *contractible* if the fiber in any point is contractible, that is, each
element has a unique preimagen.

\begin{code}
-- Def.
  isContrMap
    : ∀ {A : Type ℓᵢ} {B : Type ℓⱼ}
    → (f : A → B)
    → Type (ℓᵢ ⊔ ℓⱼ)

  isContrMap {B = B} f = (b : B) → isContr (fib f b)
\end{code}

There exists an equivalence between two types if there exists a
contractible function between them.
\begin{code}
  module DefinitionOfEquivalence  {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {B : Type ℓⱼ} where
\end{code}

\begin{code}
    isEquiv : (f : A → B) → Type (ℓᵢ ⊔ ℓⱼ)
    isEquiv = isContrMap
  open DefinitionOfEquivalence public
\end{code}

\begin{code}
  -- Equivalence of types.
  _≃_ : ∀ {ℓᵢ ℓⱼ}  (A : Type ℓᵢ) (B : Type ℓⱼ) → Type (ℓᵢ ⊔ ℓⱼ)
  A ≃ B = Σ (A → B) isEquiv
\end{code}

\begin{code}
  module EquivalenceMaps {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {B : Type ℓⱼ} where

    -- Maps of an equivalence
    lemap : A ≃ B → (A → B)
    lemap = π₁

    ≃-to-→ = lemap
    fun≃   = lemap


    infixl 70 _∙
    _∙ = lemap

    infixl 70 _∙→
    _∙→ = lemap

    remap : A ≃ B → (B → A)
    remap (f , contrf) b = π₁ (π₁ (contrf b))

    ≃-to-← = remap
    invfun≃ = remap

    infixl 70 _∙←
    _∙← = remap
\end{code}

\begin{code}
    -- The maps of an equivalence are inverses in particular
    lrmap-inverse
      : (e : A ≃ B) → {b : B}
      -----------------------
      → (e ∙→) ((e ∙←) b) == b
    lrmap-inverse (f , eqf) {b} = fib-eq (π₁ (eqf b))

    ∙→∘∙← = lrmap-inverse
\end{code}

\begin{code}
    -- Lem.
    rlmap-inverse
      : (e : A ≃ B) → {a : A}
      ------------------------
      → (e ∙←) ((e ∙→) a) == a

    rlmap-inverse (f , eqf) {a} = ap π₁ ((π₂ (eqf (f a))) fib-image)

    ∙←∘∙→ = rlmap-inverse
\end{code}

\begin{code}
    -- Lem.
    lrmap-inverse-h
      : (e : A ≃ B)
      ------------------------------
      → ((e ∙→) ∘ (e ∙←)) ∼ id
    lrmap-inverse-h e = λ x → lrmap-inverse e {x}

    ∙→∘∙←-h = lrmap-inverse-h
\end{code}

\begin{code}
    -- Lem.
    rlmap-inverse-h
      : (e : A ≃ B)
      ------------------------
      → ((e ∙←) ∘ (e ∙→)) ∼ id

    rlmap-inverse-h e = λ x → rlmap-inverse e {x}

    ∙←∘∙→-h = rlmap-inverse-h

  open EquivalenceMaps public
\end{code}
