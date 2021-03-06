---
layout: page
title: "Coproduct identities"
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
open import BasicTypes
open import BasicFunctions
open import Transport
open import TransportLemmas
\end{code}
</div>

### Coproduct identities

<div class="hide" >
\begin{code}
module
  CoproductIdentities
  where
\end{code}
</div>

{: .foldable until="7"}
\begin{code}
∑-≡
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁} → (B : A → Type ℓ₂)
  → {ab ab' : ∑ A B}
  → (p : π₁ ab ≡ π₁ ab')
  → π₂ ab ≡ π₂ ab' [ B / p ]
  --------------------------
  → ab ≡ ab'

∑-≡ B idp idp = idp
\end{code}


{: .foldable until="6"}
\begin{code}
π₁-≡
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁} → (B : A → Type ℓ₂)
  → {ab ab' : ∑ A B}
  → ab ≡ ab'
  ----------------
  → π₁ ab ≡ π₁ ab'

π₁-≡ B idp = idp
\end{code}


{: .foldable until="6"}
\begin{code}
π₂-≡
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁} → (B : A → Type ℓ₂)
  → {ab ab' : ∑ A B}
  → (p : ab ≡ ab')
  ---------------------------------------
  → (π₂ ab) ≡ (π₂ ab') [ B / (π₁-≡ B p) ]

π₂-≡ B idp = idp
\end{code}

{: .foldable until="7"}
\begin{code}
∑-map
  :  ∀ {ℓ₁ ℓ₂ ℓ₃ ℓ₄ : Level} {A : Type ℓ₁} {B : A → Type ℓ₂}
  → {A' : Type ℓ₃} {B' : A' → Type ℓ₄}
  → (f : A → A')
  → ((a : A) → B a → B' (f a))
  ----------------------------
  → ∑ A B → ∑ A' B'

∑-map f g p = (f (π₁ p) , g (π₁ p) (π₂ p))
\end{code}

{: .foldable until="11"}
\begin{code}
∑-map-compose
  : ∀ {i₀ j₀ i₁ j₁ i₂ j₂}
  → {A₀ : Type i₀} {B₀ : A₀ → Type j₀}
  → {A₁ : Type i₁} {B₁ : A₁ → Type j₁}
  → {A₂ : Type i₂} {B₂ : A₂ → Type j₂}
  → (f₀ : A₀ → A₁) → (f₁ : (a : A₀) → B₀ a → B₁ (f₀ a))
  → (g₀ : A₁ → A₂) → (g₁ : (a : A₁) → B₁ a → B₂ (g₀ a))
  → (x : ∑ A₀ B₀)
  -------------------------------------------------------
  → ∑-map (g₀ ∘ f₀) (λ a b → g₁ (f₀ a) (f₁ a b)) x
  ≡ (∑-map {B' = B₂} g₀ g₁ (∑-map {B' = B₁} f₀ f₁ x))

∑-map-compose _ _ _ _ (a , b) = idp
\end{code}

{: .foldable until="5"}
\begin{code}
∑-lift
  :  ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁} {B : A → Type ℓ₂} {C : A → Type ℓ₂}
  → (∀ a → B a → C a)
  --------------------
  → ∑ A B → ∑ A C

∑-lift f = ∑-map id f
\end{code}

Some of the following identities are a customized version of the lemmas above.

\begin{code}
module Sigma {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {P : A → Type ℓⱼ} where
\end{code}

Two dependent pairs are equal if they are componentwise equal.

{: .foldable until="5"}
\begin{code}
  Σ-componentwise
    : ∀ {v w : Σ A P}
    → v == w
    ----------------------------------------------
    → Σ (π₁ v == π₁ w) (λ p → tr P p (π₂ v) == π₂ w)

  Σ-componentwise  idp = (idp , idp)
\end{code}

{: .foldable until="5"}
\begin{code}
  Σ-bycomponents
    : ∀ {v w : Σ A P}
    → Σ (π₁ v == π₁ w) (λ p → (π₂ v) == (π₂ w) [ P ↓ p ] )
    -----------------------------------------------
    → v == w

  Σ-bycomponents (idp , idp) = idp
\end{code}

Synonym of Σ-bycomponents:

\begin{code}
  pair= = Σ-bycomponents
\end{code}

A trivial consequence is the following identification:

{: .foldable until="5"}
\begin{code}
  lift-pair=
    : ∀ {x y : A} {u : P x}
    → (p : x == y)
    --------------------------------------------------------
    → lift {A = A}{C = P} p  u == pair= (p , refl (tr P p u))

  lift-pair= idp = idp
\end{code}

Uniqueness principle property for products

{: .foldable until="1"}
\begin{code}
  uppt : (x : Σ A P) → (π₁ x , π₂ x) == x

  uppt (a , b) = idp
\end{code}

{: .foldable until="6"}
\begin{code}
  Σ-ap-π₁
    : ∀ {a₁ a₂ : A} {b₁ : P a₁} {b₂ : P a₂}
    → (α : a₁ == a₂)
    → (γ : b₁ == b₂ [ P ↓ α ])
    ------------------------------
    → ap π₁ (pair= (α , γ)) == α

  Σ-ap-π₁ idp idp = idp
\end{code}

\begin{code}
  ap-π₁-pair= = Σ-ap-π₁
\end{code}

\begin{code}
open Sigma public
\end{code}

{: .foldable until="10"}
\begin{code}
transport-fun-dependent-bezem
  : ∀ {ℓᵢ ℓⱼ} {X : Type ℓᵢ} {A : X → Type ℓⱼ}
      {B : (x : X) → (a : A x) → Type ℓⱼ} {x y : X}
  → (p : x == y)
  → (f : (a : A x) → B x a)
  → (a' : A y)
  ----------------------------------------------------------
  → (tr (λ x → (a : A x) → B x a) p f) a'
    == tr (λ w → B (π₁ w) (π₂ w))
          (pair= (p , transport-inv p )) (f (tr A (! p) a'))

transport-fun-dependent-bezem idp f a' = idp
\end{code}
