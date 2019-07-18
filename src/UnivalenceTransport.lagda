---
layout: page
title: "Univalence Lemmas"
category: lemmas functions homotopy
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
open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import FunExtAxiom
open import QuasiinverseType

open import UnivalenceAxiom
\end{code}
</div>

## Transport and Univalence

\begin{code}
module UnivalenceTransport where
\end{code}

{: .foldable until="8" }
\begin{code}
  transport-family-ap
    : {A : Type ℓ}
    → (B : A → Type ℓ)
    → {x y : A}
    → (p : x == y)
    → (u : B x)
    ---------------------------------------------------
    → transport B p u == transport (λ X → X) (ap B p) u

  transport-family-ap B idp u = idp
\end{code}

{: .foldable until="8" }
\begin{code}
  transport-family-idtoeqv
    : {A : Type ℓ}
    → (B : A → Type ℓ)
    → {x y : A}
    → (p : x == y)
    → (u : B x)
    ----------------------------------------------
    → transport B p u == fun≃ (idtoeqv (ap B p)) u

  transport-family-idtoeqv B idp u = idp
\end{code}

{: .foldable until="9" }
\begin{code}
  transport-ua
    : {A : Type ℓ}
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
\end{code}

{: .foldable until="9" }
\begin{code}
  funext-transport-ua
    : {A : Type ℓ}
    → (B : A → Type ℓ)
    → {x y : A}
    → (p : x == y)
    → (e : B x ≃ B y)
    → ap B p == ua e
    -----------------
    → transport B p == (fun≃ e)

  funext-transport-ua B p e x₁ = funext (transport-ua B p e x₁)
\end{code}

{: .foldable until="5" }
\begin{code}
  ua-coe
    : {A B : Type ℓ}
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
