---
layout: page
title: "Truncation Type"
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
open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import FunExtAxiom
open import QuasiinverseType
open import DecidableEquality
open import NaturalType
open import HLevelTypes
open import HLevelLemmas
open import HedbergLemmas
\end{code}
</div>

### Propositional truncation

Propositional truncation (or reflection) is the universal
solution to the problem of mapping $X$ to a proposition $P$:

```
X  → ∥ X ∥
 ↘    ⇣ (!∃ h)
    ↘ P 
```

Notes:

 - It's possible to extend MLTT to get truncations for all types.
 (Such as resizing + funext, or higher inductive types.)

For a different way of formalising trucation see:
[agd-premises](https://hub.darcs.net/gylterud/agda-premises/browse/Premises/Truncation.agda).

\begin{code}
module
  TruncationType
  where
\end{code}

\begin{code}
  private
    data
      !∥_∥ {ℓ} (A : Type ℓ)
        : Type ℓ
        where
        !∣_∣ : A → !∥ A ∥
\end{code}

\begin{code}
  ∥_∥
    :  (A : Type ℓ)
    → Type ℓ

  ∥ A ∥ = !∥ A ∥

  prop-trunc = ∥_∥ 
\end{code}

\begin{code}
  ∣_∣
    : {X : Type ℓ}
    → X
    → ∥ X ∥

  ∣ x ∣ = !∣ x ∣

  ∥∥-intro = ∣_∣ 
\end{code}

Any two elements of the truncated type are equal

\begin{code}
  postulate
    trunc
      : {A : Type ℓ}
      → isProp ∥ A ∥
\end{code}

Recursion principle
\begin{code}
  trunc-rec
    : {A : Type ℓᵢ} {P : Type ℓⱼ}
    → isProp P
    → (A → P)
    ---------
    → ∥ A ∥ → P

  trunc-rec _ f !∣ x ∣ = f x

  trunc-elim = trunc-rec
  ∥∥-rec     = trunc-rec
\end{code}

There exists the possibility to charactherize, propositional truncation
using an impredicative approach, which means, our definition will lay on
a larger universe as follows on the right-hand side.

$$ ∥ X ∥ ⇔ ∏ (P : \mathsf{Type} ), \mathsf{isProp}(P) → (X → P) → P$$

Remarks:

- rhs is a propositon assuming funext
- this equation tells us an important relation (a pattern) between
the type (in this case, prop-trunc) and its elimination principle (trunc-rec)
- *Impredicative* means in this context: "it is defined in terms of quantification over a family which the thing we are defining is a member of." (Gylterud).


#### Truncation Lemmas

\begin{code}
  truncated-is-prop
    : {A : Type ℓ}
    → isProp (∥ A ∥)
  truncated-is-prop = trunc

  ∥∥-is-a-prop = truncated-is-prop
\end{code}

\begin{code}
  prop-≃-truncated
    : { A : Type ℓ}
    → isProp A
    → ∥ A ∥ ≃ A

  prop-≃-truncated pA = lemma333 trunc pA (trunc-rec pA id) ∣_∣

  trunc-≃ = prop-≃-truncated 
\end{code}  

A relation between double implication and the truncation of a type:

\begin{code}
  postulate
   trunc-⇔-¬¬
     : ∀ {ℓ} {X : Type ℓ}
     → ∥ X ∥ ⇔ (¬ (¬ X))
\end{code}
