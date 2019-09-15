
---
layout: page
title: "Transport"
category: lemmas functions transport
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
open import BasicTypes public
open import AlgebraOnPaths public
\end{code}
</div>

## Transport

![path]({{ site.baseurl }}/assets/ipe-images/transport-fiber-minihott.png){: width="50%" align="right" }

{: .foldable until="6" }
\begin{code}
transport
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}
  → (C : A → Type ℓ₂) {a₁ a₂ : A}
  → (p : a₁ == a₂)
  -------------------------------
  → (C a₁ → C a₂)

transport C idp = (λ x → x)
\end{code}

\begin{code}
-- synonyms
tr     = transport
tr₁    = transport
transp = transport
\end{code}

### Coercion

{: .foldable until="5" }
\begin{code}
coe
  : ∀ {ℓ : Level} {A B : Type ℓ}
  → A == B
  ---------
  → (A → B)

coe p a = transport (λ X → X) p a
\end{code}

and its inverse:

{: .foldable until="5" }
\begin{code}
!coe
  : ∀ {ℓ : Level} {A B : Type ℓ}
  → A == B
  ---------
  → (B → A)

!coe p a = transport (λ X → X) (! p) a
\end{code}


### Pathovers

Let be `A : Type`, `a₁, a₂ : A`, `C : A → Type`, `c₁ : C a₁` and `c₂ : C a₂`.
Using the same notation from {% cite hottbook %}, one of the definitions for the
Pathover type is as the shorthand for the path between the transport along a
path `α : a₁ = a₂` of the point `c₁ : C a₁` and the point `c₂` in the fiber `C
a₂`. That is, a pathover is a term that inhabit the type `transport C α c₁ = c₂`
also denoted by `PathOver C c₁ α c₂`.

![path]({{ site.baseurl }}/assets/ipe-images/pathover-3.png){: width="45%" align="right" }

\begin{code}
PathOver
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}
  → (B : A → Type ℓ₂) {a₁ a₂ : A}
  → (b₁ : B a₁) → (α : a₁ == a₂) → (b₂ : B a₂)
  --------------------------------------------
  → Type ℓ₂

PathOver B b₁ α b₂ = tr B α b₁ == b₂
\end{code}

\begin{code}
infix 30 PathOver

syntax PathOver B b₁ α b₂  = b₁ == b₂ [ B ↓ α ]
\end{code}

Another notation:

\begin{code}
≡Over = PathOver
\end{code}

\begin{code}
infix 30 ≡Over
syntax ≡Over B b α b' = b ≡ b' [ B / α ]
\end{code}

Transport and composition:

\begin{code}
tr₁-≡
  : ∀ {ℓ : Level} {A : Type ℓ} {a₀ a₁ a₂ : A}
  → (α : a₁ ≡ a₂)
  → (ε : a₀ ≡ a₁)
  → (δ : a₀ ≡ a₂)
  → (ε ≡ δ [ (λ a' → a₀ ≡ a') / α ])
  ----------------------------------
  → α ≡ ! ε · δ

tr₁-≡ idp .idp idp idp = idp
\end{code}


### Transport along pathovers

{: .foldable until="9"}
\begin{code}
tr₂
  :  ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁} {B : A → Type ℓ₂}
  → (C : (a : A) → (B a → Type ℓ₃))
  → {a₁ a₂ : A}{b₁ : B a₁}{b₂ : B a₂}
  → (p : a₁ == a₂)
  → (q : b₁ == b₂ [ B ↓ p ])
  → C a₁ b₁
  -----------------------
  → C a₂ b₂

tr₂ C idp idp = id
\end{code}

\begin{code}
-- Gylterud's tr₂-commute
tr₂-commute
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁} {B : A → Type ℓ₂}
  → (C : (a : A) → (B a → Type ℓ₃))
  → (D : (a : A) → (B a → Type ℓ₃))
  → (f : ∀ a b → C a b → D a b)
  → ∀ {a a' b b'}
  → (p : a ≡ a')
  → (q : b ≡ b' [ B / p ])
  → ∀ c → tr₂ D p q (f a b c) ≡ f a' b' (tr₂ C p q c)

tr₂-commute C D f idp idp c = idp
\end{code}
