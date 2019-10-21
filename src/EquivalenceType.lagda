---
layout: page
title: "Equivalence Type"
toc: true
agda: true
gallery: true
latex: true
references: false
linkify: true
showcitation: true
---


## Equivalences

There are three definitions to say a function is an equivalence. All these
definitions are required to be mere propositions and to hold the
bi-implication of begin *quasi-inverse*. We show this clearly in what follows.
Nevertheless, we want to get the following fact:


{: .hide}
\begin{code}
{-# OPTIONS --without-K --exact-split #-}
open import BasicTypes
open import HLevelTypes
open import FibreType

open import Transport
open import HomotopyType

module EquivalenceType where
\end{code}

$$ \mathsf{isContr}(f) \cong \mathsf{ishae}(f) \cong \mathsf{biinv}(f). $$


### Contractible maps

A map is *contractible* if the fiber in any point is contractible, that is, each
element has a unique preimagen.

\begin{code}
isContrMap
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}
  → (f : A → B)
  → Type (ℓ₁ ⊔ ℓ₂)

isContrMap {B = B} f = (b : B) → isContr (fib f b)
\end{code}

Synomyns:
\begin{code}
map-contractible = isContrMap
_is-contr-map    = isContrMap
\end{code}

There exists an equivalence between two types if there exists a
contractible function between them.

\begin{code}
isEquiv
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}
  → (f : A → B)
  → Type (ℓ₁ ⊔ ℓ₂)

isEquiv f = isContrMap f
\end{code}

Synomyms:

\begin{code}
isEquivalence   = isEquiv
_is-equivalence = isEquiv
_is-equiv       = isEquiv
\end{code}

### Equivalence Type

\begin{code}
_≃_
  : ∀ {ℓ₁ ℓ₂ : Level} (A : Type ℓ₁)(B : Type ℓ₂)
  → Type (ℓ₁ ⊔ ℓ₂)

A ≃ B = Σ (A → B) isEquiv
\end{code}

\begin{code}
module EquivalenceMaps {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}  where
\end{code}

{: .foldable until="4" }
\begin{code}
  lemap
    : A ≃ B
    -------
    → (A → B)

  lemap = π₁
\end{code}

Synonyms:

\begin{code}
  ≃-to-→ = lemap
  fun≃   = lemap
  _∙     = lemap
  _∙→    = lemap
  apply  = lemap

  infixl 70 _∙ _∙→
\end{code}

{: .foldable until="4"}
\begin{code}
  remap
    : A ≃ B
    ---------
    → (B → A)

  remap (f , contrf) b = π₁ (π₁ (contrf b))
\end{code}

\begin{code}
  ≃-to-←  = remap
  invfun≃ = remap
  _∙←     = remap
  rapply  = remap

  infixl 70 _∙←
\end{code}

The maps of an equivalence are inverses in particular

{: .foldable until="4" }
\begin{code}
  lrmap-inverse
    : (e : A ≃ B) → {b : B}
    -----------------------
    → (e ∙→) ((e ∙←) b) == b

  lrmap-inverse (f , eqf) {b} = fib-eq (π₁ (eqf b))
\end{code}

\begin{code}
  ∙→∘∙← = lrmap-inverse
\end{code}

{: .foldable until="4" }
\begin{code}
  rlmap-inverse
    : (e : A ≃ B) → {a : A}
    ------------------------
    → (e ∙←) ((e ∙→) a) == a

  rlmap-inverse (f , eqf) {a} = ap π₁ ((π₂ (eqf (f a))) fib-image)
\end{code}
\begin{code}
  ∙←∘∙→ = rlmap-inverse
\end{code}

{: .foldable until="4" }
\begin{code}
  lrmap-inverse-h
    : (e : A ≃ B)
    ------------------------
    → ((e ∙→) ∘ (e ∙←)) ∼ id

  lrmap-inverse-h e = λ x → lrmap-inverse e {x}
\end{code}

\begin{code}
  ∙→∘∙←-h = lrmap-inverse-h
\end{code}

{: .foldable until="4" }
\begin{code}
  rlmap-inverse-h
    : (e : A ≃ B)
    ------------------------
    → ((e ∙←) ∘ (e ∙→)) ∼ id

  rlmap-inverse-h e = λ x → rlmap-inverse e {x}
\end{code}

\begin{code}
  ∙←∘∙→-h = rlmap-inverse-h
\end{code}

\begin{code}
open EquivalenceMaps public
\end{code}
