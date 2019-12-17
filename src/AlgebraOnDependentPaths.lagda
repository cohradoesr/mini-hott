---
layout: page
title: "Algebra On Pathovers"
category: lemmas functions
toc: true
agda: true
gallery: true
latex: true
references: false
linkify: true
showcitation: true
---

<div class="hide" >
\begin{code} %latex:prop
{-# OPTIONS --without-K --exact-split --rewriting #-}
open import BasicTypes public
open import BasicFunctions public
open import AlgebraOnPaths public
open import Transport public
open import TransportLemmas public
\end{code}
</div>

## Algebra of Pathovers

Some of the following lemmas are a version
of lemmas found in `HoTT-Agda/core/lib/PathOver.agda`,
but customized for our own needs.

\begin{code}
!ᵈ
  : ∀ {ℓ₁ ℓ₂}{A : Type ℓ₁} {B : A → Type ℓ₂} {x y : A}
  → {p : x == y} {u : B x} {v : B y}
  → u == v [ B ↓ p ]
  ---------------------
  → v == u [ B ↓ (! p)]

!ᵈ {p = idp} = !_
\end{code}

\begin{code}
module _  {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁} {B : Type ℓ₂} where

  ↓-cst-in : {x y : A} {p : x == y} {u v : B}
    → u == v
    → u == v [ (λ _ → B) ↓ p ]
  ↓-cst-in {p = idp} q = q

  ↓-cst-out : {x y : A} {p : x == y} {u v : B}
    → u == v [ (λ _ → B) ↓ p ]
    → u == v
  ↓-cst-out {p = idp} q = q

module _  {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁} {B : A → Type ℓ₂} where
  _·2ᵈ_
    :  {f g h : Π A B}
    → {a a' : A} {p : a == a'} {q : f a == g a} {q' : f a' == g a'}
    → {r : g a == h a} {r' : g a' == h a'}
    → (q == q'           [ (λ a → f a == g a) ↓ p ])
    → (r == r'           [ (λ a → g a == h a) ↓ p ])
    ------------------------------------------------
    → (q · r == q' · r' [ (λ a → f a == h a) ↓ p ])

  _·2ᵈ_ {p = idp} idp idp = idp -- α · β
 \end{code}


{: .foldable until="5"}
\begin{code}
  apd-·
    : (f : ∏ A B) → {a₁ a₂ a₃ : A}
    → (α : a₁ ≡ a₂) → (β : a₂ ≡ a₃)
    -----------------------------------------------------------------
    → apd f (α · β) ≡ pathover-comp {p = α} (apd f α) (apd f β)

  apd-· C idp idp = idp
\end{code}


{: .foldable until="5"}
\begin{code}
  apd-!
    : (f : ∏ A B) → {a₁ a₂ : A}
    → (α : a₁ ≡ a₂)
    ----------------------------------------------------------------------------
    → apd f (α ⁻¹) ≡  ! (move-transport {α = α} (apd f α))

  apd-! C idp = idp
\end{code}

\begin{code}
  ·d-lunit
    : ∀ {x y : A} {p : x == y}
    → {u : B x} {v : B y}
    → (r : u == v [ B ↓ p ])
    ------------------------
    → pathover-comp {q = p} idp r == r
  ·d-lunit {p = idp} idp = idp

-- ▹idp : {x y : A} {p : x == y}
--     {u : B x} {v : B y} (q : u == v [ B ↓ p ])
--     → q ▹ idp == q
--   ▹idp {p = idp} idp = idp
\end{code}
