---
layout: page
title: "Transport"
category: lemmas functions transport
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
open import EqualityType public
open import AlgebraOnPaths public
\end{code}
</div>

## Transport

![path](/assets/ipe-images/transport-fiber-minihott.png){: width="50%" align="right" }

{: .foldable until="6" }
\begin{code}
transport
  : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ}
  → (C : A → Type ℓⱼ) {a₁ a₂ : A}
  → (p : a₁ == a₂)
  -------------------------------
  → (C a₁ → C a₂)

transport C idp = (λ x → x)
\end{code}

\begin{code}
-- synonyms
tr     = transport
transp = transport
\end{code}

Star notation for transport

{: .foldable until="5" }
\begin{code}
_✶
  : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {C : A → Type ℓⱼ} {a₁ a₂ : A}
  → (p : a₁ == a₂)
  ----------------
  → (C a₁ → C a₂)

_✶ {ℓᵢ}{ℓⱼ}{C = C} = transport {ℓᵢ = ℓᵢ} {ℓⱼ = ℓⱼ} C
\end{code}

{: .foldable until="5" }
\begin{code}
coe
  : ∀ {ℓ} {A B : Type ℓ}
  → A == B
  ---------
  → (A → B)

coe p a = transport (λ X → X) p a
\end{code}

{: .foldable until="11"}
\begin{code}
tr₂
  : {i j k : Level}
  → (A : Type i)
  → (B : A → Type j)
  → (C : (x : A) → (b : B x) → Type k)
  → ∀ {a₁ a₂ : A}{b₁ : B a₁}{b₂ : B a₂}
  → (p : a₁ == a₂)
  → (q : tr B p b₁ == b₂)
  → C a₁ b₁
  -----------------------
  → C a₂ b₂

tr₂ A B C idp idp = id
\end{code}

### Pathover

Let be `A : Type`, `a₁, a₂ : A`, `C : A → Type`, `c₁ : C a₁` and `c₂ : C a₂`.
Using the same notation from {% cite hottbook %}, one of the definitions for the
Pathover type is as the shorthand for the path between the transport along a
path `α : a₁ = a₂` of the point `c₁ : C a₁` and the point `c₂` in the fiber `C
a₂`. That is, a pathover is a term that inhabit the type `transport C α c₁ = c₂`
also denoted by `PathOver C α c₁ c₂`.

![path](/assets/ipe-images/pathover-3-minihott.png){: width="45%" align="right" }

\begin{code}
PathOver
  : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ}
  → (C : A → Type ℓⱼ) {a₁ a₂ : A}
  → (α : a₁ == a₂)
  → (c₁ : C a₁) → (c₂ : C a₂)
  ------------------------------
  → Type ℓⱼ

PathOver C α c₁ c₂ = tr C α c₁ == c₂
\end{code}

\begin{code}
infix 30 PathOver
syntax PathOver B p u v = u == v [ B ↓ p ]
\end{code}
