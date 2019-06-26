---
layout: page
title: "Group Type"
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
open import HLevelTypes
open import MonoidType
\end{code}
</div>

### Groups

\begin{code}
module
  GroupType
    where
\end{code}

A group is a monoid with something else, which is, the property of having an
inverse of the operation. Thus, exists the function $\mathsf{inverse} : G → G}$
such that:

$$∀ (x : G) → \mathsf{inverse}(x) <> x ≡ e\text {  and  }x <>
\mathsf{inverse}(x)  ≡ e,$$

where $G$ is the group, $e$ the unit and $<>$ the operation from the underlined
monoid. This is the following type for groups:


\begin{code}
  Group
    : ∀ {ℓ} → Type (lsuc ℓ)

  Group
    = ∑ (Monoid) (λ {(monoid G e _<>_ GisSet lunit runit assoc)
      → ∑ (G → G) (λ inverse →
        ∏ G (λ x →
          -- properties:
          (   (x <> inverse x) == e)
          × ( (inverse x <> x) == e ))
          )})
\end{code}
