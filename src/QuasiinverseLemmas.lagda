---
layout: page
title: "Quasiinverse Lemmas"
category: homotopy
toc: true
agda: true
gallery: true
latex: true
references: false
linkify: true
showcitation: true
---

### Quasiinverse Lemmas

Two functions are quasi-inverses if we can construct a function providing
`(g ∘ f) x = x` and `(f ∘ g) y = y` for any given `x` and `y`.

<div class="hide" >
\begin{code}
{-# OPTIONS --without-K --exact-split #-}
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

{: .foldable until="6" }
\begin{code}
  qinv-comp
    : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁}{B : Type ℓ₂}{C : Type ℓ₃}
    → Σ (A → B) qinv
    → Σ (B → C) qinv
    ----------------
    → Σ (A → C) qinv

  qinv-comp (f , (if , (εf , ηf))) (g , (ig , (εg , ηg))) = (g ∘ f) , ((if ∘ ig) ,
     ( (λ x → ap g (εf (ig x)) · εg x)
     ,  λ x → ap if (ηg (f x)) · ηf x))
\end{code}

{: .foldable until="5" }
\begin{code}
  qinv-inv
    : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}
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
\end{code}

Synonyms
\begin{code}
  ≃-refl = idEqv
  A≃A    = idEqv
\end{code}

{: .foldable until="6"}
\begin{code}
  _:>≃_
    : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁}{B : Type ℓ₂}{C : Type ℓ₃}
    → A ≃ B
    → B ≃ C
    -------
    → A ≃ C

  _:>≃_ {A = A} {C = C} eq-f eq-g = qinv-≃ (π₁ qcomp) (π₂ qcomp)
   where
     qcomp : Σ (A → C) qinv
     qcomp = qinv-comp (≃-qinv eq-f) (≃-qinv eq-g)
\end{code}

Synonyms
\begin{code}
  compEqv = _:>≃_
  ≃-trans = _:>≃_
\end{code}

{: .foldable until="5"}
\begin{code}
  ≃-sym
    : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}
    → A ≃ B
    -------
    → B ≃ A

  ≃-sym {ℓ}{_} {A} {B} eq-f = qinv-≃ (π₁ qcinv) (π₂ qcinv)
   where
     qcinv : Σ (B → A) qinv
     qcinv = qinv-inv (≃-qinv eq-f)
\end{code}

Synonyms
\begin{code}
  invEqv = ≃-sym
  ≃-flip = ≃-sym
\end{code}
