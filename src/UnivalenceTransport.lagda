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
{-# OPTIONS --without-K --exact-split #-}
open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import FunExtAxiom
open import QuasiinverseType
open import QuasiinverseLemmas


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
    : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}
    → (B : A → Type ℓ₂)
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
    : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}
    → (B : A → Type ℓ₂)
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
    : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}
    → (B : A → Type ℓ₂)
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
    : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}
    → (B : A → Type ℓ₂)
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
  coe-ua
    : ∀ {ℓ : Level} {A B : Type ℓ}
    → (α : A ≃ B)
    -------------------------------------
    → (∀ x → (coe (ua α) x) == ((α ∙) x))

  coe-ua α = happly (ap (lemap) (ua-β α))
\end{code}

{: .foldable until="6" }
\begin{code}
  coe-ua-·
    : ∀ {ℓ : Level} {A B C : Type ℓ}
    → (α : A ≃ B)
    → (β : B ≃ C)
    --------------------------------------------------
    → coe (ua α · ua β) ≡ ((coe (ua α)) :> coe (ua β))

  coe-ua-· α β =
    begin
      coe (ua α · ua β)
       ≡⟨⟩
      tr (λ X → X) (ua α · ua β)
       ≡⟨ ! (transport-comp (ua α) (ua β)) ⟩
      (tr (λ X → X) (ua α)) :> (tr (λ X → X) (ua β))
        ≡⟨ idp ⟩
     ((coe (ua α)) :> coe (ua β))
    ∎
\end{code}

In addition, we can state a similar result with `idtoequiv`:

{: .foldable until="6"}
\begin{code}
  idtoequiv-ua-·
    : ∀ {ℓ : Level} {A B C : Type ℓ}
    → (α : A ≃ B)
    → (β : B ≃ C)
    ---------------------------------------------------
    → ite (ua α · ua β) ≡ ((ite (ua α)) :>≃ (ite (ua β)))

  idtoequiv-ua-· α β = sameEqv (coe-ua-· α β)
    where open import HLevelLemmas

  ite-ua-· = idtoequiv-ua-·
\end{code}

{: .foldable until="6"}
\begin{code}
  postulate
   :>≃-ite-ua
    : ∀ {ℓ : Level} {A B C : Type ℓ}
    → (α : A ≃ B)    → (β : B ≃ C)
    ------------------------------
    → (α :>≃ β) ≡ ite (ua α · ua β)

  {- lemma α β =
        begin
          (α :>≃ β)
            ≡⟨ ap₂ (λ x y → x :>≃ y) (! (ua-β α)) (! (ua-β β)) ⟩
          (ite (ua α)) :>≃ (ite (ua β))
            ≡⟨ ! (ite-ua-· α β) ⟩
          ite (ua α · ua β)
  -}
\end{code}
