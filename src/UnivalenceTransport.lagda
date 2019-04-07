---
layout: page
title: "Univalence Lemmas"
permalink : /ua-lemmas/
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
open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import FunExtAxiom
open import QuasiinverseType

open import UnivalenceAxiom
\end{code}
</div>

### Transport and Univalence

\begin{code}
module UnivalenceTransport where

  transport-family-ap
    : ∀ {ℓ} {A : Type ℓ}
    → (B : A → Type ℓ)
    → {x y : A}
    → (p : x == y)
    → (u : B x)
    ---------------------------------------------------
    → transport B p u == transport (λ X → X) (ap B p) u
  transport-family-ap B idp u = idp

  transport-family-idtoeqv
    : ∀ {ℓ} {A : Type ℓ}
    → (B : A → Type ℓ)
    → {x y : A}
    → (p : x == y)
    → (u : B x)
    ---------------------------------------------------
    → transport B p u == fun≃ (idtoeqv (ap B p)) u
  transport-family-idtoeqv B idp u = idp

  transport-ua
    : ∀ {ℓ} {A : Type ℓ}
    → (B : A → Type ℓ)
    → {x y : A}
    → (p : x == y)
    → (e : B x ≃ B y)
    → ap B p == ua e
    -----------------
    → (u : B x) → transport B p u == (fun≃ e) u
  transport-ua B idp e q u =
    begin
      transport B idp u
        ==⟨ transport-family-idtoeqv B idp u ⟩
      fun≃ (idtoeqv (ap B idp)) u
        ==⟨ ap (λ r → fun≃ (idtoeqv r) u) q ⟩
      fun≃ (idtoeqv (ua e)) u
        ==⟨ ap (λ r → fun≃ r u) (ua-β e) ⟩
      fun≃ e u
    ∎


  funext-transport-ua
    : ∀ {ℓ} {A : Type ℓ}
    → (B : A → Type ℓ)
    → {x y : A}
    → (p : x == y)
    → (e : B x ≃ B y)
    → ap B p == ua e
    -----------------
    → transport B p == (fun≃ e)
  funext-transport-ua B p e x₁ = funext (transport-ua B p e x₁)

  postulate
    ua-coe
      : ∀ {ℓ} {A B : Type ℓ}
      → (α : A ≃ B)
      → (∀ x → (coe (ua α) x) == ((α ∙) x))
  -- ua-coe α x =
  --   begin
  --     (coe (ua α) x)
  --       ==⟨ idp ⟩
  --     transport (λ X → X) (ua α) x
  --       ==⟨ {!   !} ⟩
  --     {!   !}
  --       ==⟨ {!   !} ⟩
  --     {!   !}
\end{code}
