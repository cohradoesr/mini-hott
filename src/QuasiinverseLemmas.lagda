---
layout: page
title: "Quasiinverse Type"
category: homotopy
toc: true
agda: true
gallery: true
latex: true
references: true
linkify: true
showcitation: true
home: true
---

Two functions are quasi-inverses if we can construct a function providing
`(g ∘ f) x = x` and `(f ∘ g) y = y` for any given `x` and `y`.

<div class="hide" >
\begin{code}
{-# OPTIONS --without-K #-}
open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import HomotopyLemmas


open import QuasiinverseType
\end{code}
</div>

## Equivalence composition

\begin{code}
module QuasiinverseLemmas where
\end{code}

The equivalence types are indeed equivalence

{: .foldable until="7" }
\begin{code}
  -- Composition of quasiinverses
  qinv-comp
    : ∀ {ℓ₁ ℓ₂ ℓ₃} {A : Type ℓ₁}{B : Type ℓ₂}{C : Type ℓ₃}
    → Σ (A → B) qinv
    → Σ (B → C) qinv
    ----------------
    → Σ (A → C) qinv

  qinv-comp (f , (if , (εf , ηf))) (g , (ig , (εg , ηg))) = (g ∘ f) , ((if ∘ ig) ,
     ( (λ x → ap g (εf (ig x)) · εg x)
     ,  λ x → ap if (ηg (f x)) · ηf x))
\end{code}

{: .foldable until="6" }
\begin{code}
  -- Lemma.
  qinv-inv
    : ∀ {ℓ₁ ℓ₂} {A : Type ℓ₁}{B : Type ℓ₂}
    → Σ (A → B) qinv
    ----------------
    → Σ (B → A) qinv

  qinv-inv (f , (g , (ε , η))) = g , (f , (η , ε))
\end{code}

Equivalence types are equivalence relations.

{: .foldable until="4" }
\begin{code}
  idEqv
    : ∀ {ℓ} {A : Type ℓ}
    -------
    → A ≃ A

  idEqv = id , λ a → (a , refl a) , λ { (_ , idp) → refl (a , refl a) }

  -- Synonyms
  ≃-refl = idEqv
  A≃A    = idEqv
\end{code}

{: .foldable until="7"}
\begin{code}
  -- Lemma.
  ≃-trans
    : ∀ {ℓ₁ ℓ₂ ℓ₃} {A : Type ℓ₁}{B : Type ℓ₂}{C : Type ℓ₃}
    → A ≃ B
    → B ≃ C
    -------
    → A ≃ C

  ≃-trans {A = A} {C = C} eq-f eq-g = qinv-≃ (π₁ qcomp) (π₂ qcomp)
   where
     qcomp : Σ (A → C) qinv
     qcomp = qinv-comp (≃-qinv eq-f) (≃-qinv eq-g)

  -- Synonyms
  compEqv = ≃-trans
\end{code}

{: .foldable until="5"}
\begin{code}
  ≃-sym
    : ∀ {ℓ₁ ℓ₂} {A : Type ℓ₁}{B : Type ℓ₂}
    → A ≃ B
    -------
    → B ≃ A

  ≃-sym {ℓ}{_} {A} {B} eq-f = qinv-≃ (π₁ qcinv) (π₂ qcinv)
   where
     qcinv : Σ (B → A) qinv
     qcinv = qinv-inv (≃-qinv eq-f)

  -- Synonyms
  invEqv = ≃-sym
  ≃-flip = ≃-sym
\end{code}
