---
layout: page
title: "Relation Type"
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
\end{code}
</div>

### Monoids

\begin{code}
module
  MonoidType
    where
\end{code}

\begin{code}
  record
    Monoid
      : Type (lsuc ℓ)
      where
    constructor monoid
    field
      G    : Type ℓ     -- Carrier set
      e    : G          -- Unit element (at least one element, this one)
      _<>_ : G → G → G  -- Operation

      -- property
      GisSet : isSet G  -- the carrier is a hSet

      -- Axioms of a monoid
      lunit : (x : G) → (e <> x) == x
      runit : (x : G) → (x <> e) == x
      assoc : (x y z : G) → (x <> (y <> z)) == ((x <> y) <> z)
\end{code}

\begin{code}
  open Monoid public
\end{code}
