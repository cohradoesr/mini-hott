---
layout: page
title: "Introduction"
toc: true
agda: true
gallery: true
latex: true
references: true
linkify: true
showcitation: true
home: true
---

This is a basic overview of homotopy type theory (HoTT) formalized in `Agda` and
developed at [UiB](https://www.uib.no/). This library is just one file and it's
type-checked by `Agda 2.5.4`.  No other libraries are required, zero
dependencies. Our intention is to be practical and helpful to learning HoTT. The
majority of lemmas or functions comes with synonyms to make much easier its
adoption. Still working in progress with more reviews to come. We base this
development on others at the beginning of this project, so we encourage to see
their works as well, see the references.

## Proof relevant

![path](/assets/png-images/mini-hott.jpeg){: width="220px" align="right" }

To be consistent with homotopy type theory, we tell `Agda` to not use *Axiom K*
for type-checking by using the option `without-K`.

\begin{code}
{-# OPTIONS --without-K #-}
\end{code}

Without Axiom K, `Agda`'s `Set` is not a good name for universes in HoTT and we
rename `Set` to `Type`. Our type judgments then will include the universe level
as one explicit argument.

\begin{code}
open import Agda.Primitive using ( Level ; lsuc; lzero; _⊔_ ) public
\end{code}

Note that `l ⊔ q` is the maximum of two hierarchy levels `l` and `q` and we
use this later on to define types in full generality.

\begin{code}
Type : (ℓ : Level) → Set (lsuc ℓ)
Type ℓ = Set ℓ
\end{code}

\begin{code}
Type₀ : Type (lsuc lzero)
Type₀ = Type lzero
\end{code}

\begin{code}
record ↑ {a} ℓ (A : Type a) : Type (a ⊔ ℓ) where
  constructor Lift
  field lower : A

open ↑ public
\end{code}
