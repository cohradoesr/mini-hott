---
layout: page
title: "Group Type"
permalink : /group-type/
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
open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import FunExtAxiom
open import HLevelTypes
\end{code}
</div>

\begin{code}
module GroupType where
  record GroupStructure {ℓ} (M : Type ℓ) : Type ℓ where
    constructor group-structure
    field
      -- A group is a monoid
      _*_   : M → M → M
      e     : M

      lunit : ∀ x → (e * x) == x
      runit : ∀ x → (x * e) == x
      assoc : ∀ x y z → (x * (y * z)) == ((x * y) * z)

      -- With inverses
      ginv : M → M
      glinv : ∀ g → (g * ginv g) == e
      grinv : ∀ g → (ginv g * g) == e

  record Group {ℓ} : Type (lsuc ℓ) where
    constructor group
    field
      M : Type ℓ
      str : GroupStructure M
  open Group {{...}} public
\end{code}
