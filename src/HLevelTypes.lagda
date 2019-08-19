---
layout: page
title: "H-Levels Types"
category: types
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
module _ where

open import BasicTypes
open import BasicFunctions
\end{code}
</div>


## Hlevel types

Higher levels of the homotopical structure:

- Contractible types ($-2$)
- Propositions ($-1$)
- Sets ($0$)
- Groupoids ($1$)

### Contractible types

A *contractible* type is a type such that **every**
element is equal to a point, the *center* of contraction.

\begin{code}

isContr
  : (A : Type ℓ)
  --------------
  → Type ℓ

isContr A = Σ A (λ a → ((x : A) → a == x))
\end{code}

Synonym:

\begin{code}
Contractible = isContr
is-singleton = isContr
isSingleton  = isContr
\end{code}

If a type is contractible, any of its points is a center of contraction:

\begin{code}
allAreCenter
  : ∀ {ℓ} {A : Type ℓ}
  → (c₁ : A) → (f : (x : A) → c₁ == x)
  → (∀ (c₂ : A) → (∀ (x : A) → c₂ == x))

allAreCenter c₁ f c₂ x = sym (f c₂) · (f x)
\end{code}

### Propositions

A type is a *mere proposition* if any two inhabitants of the type are equal.

\begin{code}
isProp
  : ∀ {ℓ} (A : Type ℓ) → Type ℓ

isProp A = ((x y : A) → x == y)
\end{code}

Synonyms:

\begin{code}
is-subsingleton = isProp
isSubsingleton  = isProp
is-prop         = isProp
\end{code}

Let's stop a bit. So, these propositios, also named "mere" propositions
tell us: in a  proposition, its elements are connected with each other.
Subsinglenton (which is, subset of a singlenton (a unit point set)) is
empty or it has the element. Propositions can be seen as equivalent to 𝟘 or 𝟙.

  - Contractible types ≃ 𝟙
  - Propositions ≃ (𝟘 if it's not inhabited or 𝟙 if it's inhabited)

Therefore, we will find a theorem later that says "if A is a proposition,
and it's inhabited then it's contractible", and it makes sense perfectly.

\begin{code}
hProp
  : ∀ {ℓ} → Type (lsuc ℓ)

hProp {ℓ} = ∑ (Type ℓ) isProp
\end{code}

We prove now that the basic type (⊥, ⊤) are indeed (mere) propositions:

\begin{code}
⊥-is-prop : ∀ {ℓ} →  isProp (⊥ {ℓ})
⊥-is-prop ()
\end{code}

\begin{code}
⊤-is-prop : ∀ {ℓ} →  isProp (⊤ {ℓ})
⊤-is-prop _ _ = idp
\end{code}

Synonyms:

\begin{code}
𝟘-is-prop = ⊥-is-prop
𝟙-is-prop = ⊤-is-prop
\end{code}

### Sets

A type is a *set& by definition if any two equalities on the type are equal Sets
are types without any higher *dimensional structure*,  all parallel paths are
homotopic and the homotopy is given by a continuous function on the two paths.

\begin{code}
isSet
  : Type ℓ → Type ℓ
isSet A = (x y : A) → isProp (x == y)
\end{code}

Synonyms:

\begin{code}
is-set = isSet
\end{code}

The type of sets

\begin{code}
hSet
  : Type (lsuc ℓ)

hSet {ℓ} = ∑ (Type ℓ) isSet
\end{code}

### Groupoids

\begin{code}
isGroupoid
  : Type ℓ → Type ℓ

isGroupoid A  = (a₀ a₁ : A) → isSet (a₀ ≡ a₁)
\end{code}

Synonyms:

\begin{code}
is-groupoid = isGroupoid
\end{code}

\begin{code}
Groupoid
  : Type (lsuc ℓ)
Groupoid {ℓ} = ∑ (Type ℓ) isGroupoid
\end{code}
