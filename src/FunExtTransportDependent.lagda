---
layout: page
title: "Function extensionality and transporting dependent functions "
permalink : /funext-transport-dependent/
category: lemmas functions homotopy transport
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
module _ where
open import Transport
open import TransportLemmas
open import EquivalenceType
open import FunExtAxiom
open import FunExtTransport
open import QuasiinverseLemmas
\end{code}
</div>

\begin{code}
module FunExtTransportDependent
  {ℓᵢ ℓⱼ} {X : Type ℓᵢ} {A : X → Type ℓⱼ}{B : (x : X) → A x → Type ℓⱼ}{x y : X}
  where

  -- Lemma 2.9.7
  funext-transport-dfun
    : (p : x == y)
    → (f : (a : A x) → B x a)
    → (g : (a : A y) → B y a)
    ----------------------------------------------------------------------------
    → ((p ✶) f == g)
      ≃ ((a : A x) → tr (λ w → B (π₁ w) (π₂ w)) (pair= (p , refl (tr A p a))) (f a) == g ((p ✶) a))

  funext-transport-dfun idp f g = eqFunExt

  funext-transport-dfun-l
    : (p : x == y) → (f : (a : A x) → B x a) → (g : (a : A y) → B y a)
    → ((p ✶) f == g)
    ---------------------------------------------------------------------------
    → ((a : A x) → tr (λ w → B (π₁ w) (π₂ w)) (pair= (p , refl (tr A p a))) (f a) == g ((p ✶) a))

  funext-transport-dfun-l p f g = lemap (funext-transport-dfun p _ _)

  funext-transport-dfun-r
    : (p : x == y)
    → (f : (a : A x) → B x a)
    → (g : (a : A y) → B y a)
    → ((a : A x) → tr (λ w → B (π₁ w) (π₂ w)) (pair= (p , refl (tr A p a))) (f a) == g ((p ✶) a))
    --------------------------------------------------------------------------
    → ((p ✶) f == g)

  funext-transport-dfun-r p f g = remap (funext-transport-dfun p _ _)
\end{code}

\begin{code}
funext-transport-dfun-bezem
  : ∀ {ℓᵢ ℓⱼ}{X : Type ℓᵢ}{A : X → Type ℓⱼ}{B : (x : X) → A x → Type ℓⱼ} {x y : X}
  → (p : x == y)
  → (f : (a : A x) → B x a)
  → (g : (a : A y) → B y a)
  → (a : A y)
  ------------------------------------------------------------------------------------
  → (tr (λ x → (a : A x) → B x a) p f) a == g a
  ≃  tr (λ w → B (π₁ w) (π₂ w)) (pair= (p , transport-inv p)) (f (((! p) ✶) a)) == g a

funext-transport-dfun-bezem idp f g a = idEqv
\end{code}

\begin{code}
funext-transport-dfun-bezem-l
  : ∀ {ℓᵢ ℓⱼ}{X : Type ℓᵢ}{A : X → Type ℓⱼ}{B : (x : X) → A x → Type ℓⱼ} {x y : X}
  → (p : x == y)
  → (f : (a : A x) → B x a)
  → (g : (a : A y) → B y a)
  → (a : A y)
  → (tr (λ x → (a : A x) → B x a) p f) a == g a
  ------------------------------------------------------------------------------------
  →  tr (λ w → B (π₁ w) (π₂ w)) (pair= (p , transport-inv p)) (f (((! p) ✶) a)) == g a

funext-transport-dfun-bezem-l p f g a x₁ = lemap (funext-transport-dfun-bezem p f g a) x₁
\end{code}

\begin{code}
funext-transport-dfun-bezem-r
  : ∀ {ℓᵢ ℓⱼ}{X : Type ℓᵢ}{A : X → Type ℓⱼ}{B : (x : X) → A x → Type ℓⱼ} {x y : X}
  → (p : x == y)
  → (f : (a : A x) → B x a)
  → (g : (a : A y) → B y a)
  → (a : A y)
  →  tr (λ w → B (π₁ w) (π₂ w)) (pair= (p , transport-inv p)) (f (((! p) ✶) a)) == g a
  ------------------------------------------------------------------------------------
  → (tr (λ x → (a : A x) → B x a) p f) a == g a

funext-transport-dfun-bezem-r p f g a x₁ = remap (funext-transport-dfun-bezem p f g a) x₁
\end{code}
