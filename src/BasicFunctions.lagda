---
layout: page
title: "Basic Functions"
category: functions
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
open import BasicTypes public
\end{code}
</div>

### Identity function

The identity function with implicit type.
\begin{code}
id
  : ∀ {ℓ} {A : Type ℓ}
  → A → A

id = λ x → x
\end{code}

The identity function on a type `A` is `idf A`.

\begin{code}
idf
  : ∀ {ℓᵢ}
  → (A : Type ℓᵢ)
  ---------------
  → (A → A)

idf A = λ x → x
\end{code}

### Constant function

Constant function at some point `b` is `cst b`

\begin{code}
cst
  : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {B : Type ℓⱼ}
  → (b : B)
  ---------
  → (A → B)

cst b = λ _ → b
\end{code}

### Composition

A more sophisticated composition function that can handle dependent functions.

{: .foldable until="7" }
\begin{code}
_∘_
  : ∀ {ℓᵢ ℓⱼ ℓₖ}
  → {A : Type ℓᵢ} {B : A → Type ℓⱼ} {C : (a : A) → (B a → Type ℓₖ)}
  → (g : {a : A} → Π (B a) (C a))
  → (f : Π A B)
  -------------------------------
  → Π A (λ a → C a (f a))

g ∘ f = λ x → g (f x)
infixr 80 _∘_
\end{code}

Synonym for composition (diagrammatic version)

\begin{code}
_//_
  : ∀ {ℓᵢ ℓⱼ ℓₖ}
  → {A : Type ℓᵢ} {B : A → Type ℓⱼ} {C : (a : A) → (B a → Type ℓₖ)}
  → (f : Π A B)
  → (g : {a : A} → Π (B a) (C a))
  -------------------------------
  → Π A (λ a → C a (f a))

f // g = g ∘ f


-- _;_ = _//_

\end{code}

### Application

\begin{code}
infixr 0 _$_
_$_
  : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {B : A → Type ℓⱼ}
  → (∀ x → B x)
  -------------
  → (∀ x → B x)

f $ x = f x
\end{code}

### Curryfication

\begin{code}
curry
  : ∀ {i j k} {A : Type i} {B : A → Type j} {C : Σ A B → Type k}
  → (∀ s → C s)
  ---------------------
  → (∀ x y → C (x , y))

curry f x y = f (x , y)
\end{code}

### Uncurryfication

\begin{code}
uncurry
  : ∀ {i j k} {A : Type i} {B : A → Type j} {C : ∀ x → B x → Type k}
  → (∀ x y → C x y)
  -------------------------
  → (∀ s → C (π₁ s) (π₂ s))

uncurry f (x , y) = f x y
\end{code}

### Instance search

\begin{code}
⟨⟩
  : ∀ {i} {A : Type i} {{a : A}} → A

⟨⟩ {{a}} = a
\end{code}
