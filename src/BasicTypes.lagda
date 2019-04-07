---
layout: page
title: "Basic Types"
permalink : /basic-types/
category: types
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
open import Intro public
\end{code}
</div>

### Empty type

A datatype without *constructors* is the *empty type*. This represents  the *falsehood*.

\begin{code}
data ⊥ {ℓᵢ} : Type ℓᵢ where
\end{code}

Synonyms of ⊥:
\begin{code}
Empty = ⊥
𝟘     = ⊥
\end{code}

Its *eliminator* principle also called *Ex falso quodlibet*:

\begin{code}
exfalso
  : ∀ {ℓ ℓᵢ} {A : Type ℓ}
  → ⊥ {ℓᵢ}
  --------
  → A

exfalso ()
\end{code}

Synonyms of `exfalso` rule:

\begin{code}
Empty-elim = exfalso
⊥-elim     = exfalso
𝟘-elim     = exfalso
\end{code}

The negation function:
\begin{code}
¬ : ∀ {ℓ} → Type ℓ → Type ℓ
¬ A = (A → ⊥ {lzero})
\end{code}

### Unit type

The *unit type* is defined as a record to get also the $η$-rule
definitionally. This type has no elimination rule.

\begin{code}
record ⊤ {ℓ} : Type ℓ where
  constructor ★

{-# BUILTIN UNIT ⊤ #-}
\end{code}

Synonyms for the Unit type:
\begin{code}
Unit = ⊤
𝟙    = ⊤
\end{code}

Synonyms for the data constructor:
\begin{code}
unit : ∀ {ℓ} → ⊤ {ℓ}
unit = ★
\end{code}

### Σ-type

We define Sigma types as a particular case of records in [`Agda`.](https://tinyurl.com/agda-records)

\begin{code}
infixr 60 _,_
record Σ {ℓᵢ ℓⱼ} (A : Type ℓᵢ)(C : A → Type ℓⱼ) : Type (ℓᵢ ⊔ ℓⱼ) where
  constructor _,_
  field
    π₁ : A
    π₂ : C π₁

open Σ public
\end{code}

Synonyms for its data constructors:

\begin{code}
proj₁ = π₁
proj₂ = π₂

pr₁   = π₁
pr₂   = π₂

fst   = π₁
snd   = π₂
\end{code}

### Π-types

Shorter notation for Π-types.

\begin{code}
Π
  : ∀ {ℓᵢ ℓⱼ}
  → (A : Type ℓᵢ) (P : A → Type ℓⱼ)
  --------------------------------
  → Type (ℓᵢ ⊔ ℓⱼ)

Π A P = (x : A) → P x
\end{code}

### Product type

Product type as a particular case of the Sigma type.

\begin{code}
_×_
  : ∀ {ℓᵢ ℓⱼ}
  → (A : Type ℓᵢ) (B : Type ℓⱼ)
  ----------------------------
  → Type (ℓᵢ ⊔ ℓⱼ)

A × B = Σ A (λ _ → B)
\end{code}

### Coproduct type

Sum types as inductive types

\begin{code}
infixr 80 _+_
data _+_ {ℓᵢ ℓⱼ} (A : Type ℓᵢ) (B : Type ℓⱼ) : Type (ℓᵢ ⊔ ℓⱼ) where
  inl : A → A + B
  inr : B → A + B
\end{code}

### Implication type

\begin{code}
-- Implication.
data _⇒_ {ℓ}(A B : Type ℓ) : Type ℓ where
  fun : (A → B) → A ⇒ B
\end{code}

### Biconditional type

\begin{code}
-- Biconditional.
_⇔_ : ∀ {ℓ₁ ℓ₂} → Type ℓ₁ → Type ℓ₂ → Type (ℓ₁ ⊔ ℓ₂)
A ⇔ B = (A → B) × (B → A)
\end{code}

### Boolean type

Boolean type, two constants true and false

\begin{code}
data Bool : Type₀ where
  true  : Bool
  false : Bool
\end{code}

Synonyms:
\begin{code}
𝟚  = Bool
𝟘₂ = false
𝟙₂ = true
\end{code}

We find many times writing the negation function, then let's
make it available:

\begin{code}
neg¬ : Bool → Bool
neg¬ true  = false
neg¬ false = true
\end{code}

*Booleans can be also defined using the Coproduct.*

### Natural numbers type

Natural numbers are the initial algebra for a constant and a
successor function. The `BUILTIN` declaration allows us to use
natural numbers in Arabic notation.

\begin{code}
data ℕ : Type₀ where
  zero : ℕ
  succ : ℕ → ℕ

{-# BUILTIN NATURAL ℕ #-}

-- synonyms for natural numbers
Nat = ℕ
\end{code}
