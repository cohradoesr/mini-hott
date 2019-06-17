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
developed at [UiB](https://www.uib.no/). No other libraries are required to
type-check this one. The majority of types, lemmas and functions come with
synonyms to make much easier its adoption. We based the initial of this
development on others, so we encourage you to check these works as well, see the
references at the end of this document.

Take in mind, the presentation of the syntax may seem not standard. The key
point is readability and maintenance. For performance and completeness, please
use another library like `HoTT-Agda`.

# Get started

- Install Agda (v2.6.0+) (and optional, may you want to install
  [`agda-pkg`](http://github.com/agda/agda-pkg) to install other packages.

- Clone this repository
  [http://github.com/jonaprieto/mini-hott](http://github.com/jonaprieto/mini-hott)
  or use `apkg install mini-hott`

- Open an issue for any bug/request/problem.

## Proof relevant

![path](/assets/png-images/mini-hott.jpeg){: width="220px" align="right" }

To be consistent with homotopy type theory, we tell `Agda` to not use *Axiom K*
for type-checking by using the option `without-K`.

\begin{code}
{-# OPTIONS --without-K #-}
\end{code}

Without Axiom K, `Agda`'s `Set` is not a good name for universes in HoTT. So, we
rename `Set` to `Type`. Our type judgments then will include the universe level
as one explicit argument.

\begin{code}
open import Agda.Primitive using ( Level ; lsuc; lzero; _⊔_ ) public
\end{code}

Note that `l ⊔ q` is the maximum of two hierarchy levels `l` and `q` and we
use this later on to define types in full generality.

\begin{code}
Type
  : (ℓ : Level)
  → Set (lsuc ℓ)

Type ℓ = Set ℓ
\end{code}

\begin{code}
Type₀
  : Type (lsuc lzero)

Type₀ = Type lzero
\end{code}

\begin{code}
record
  ↑ {a : Level} ℓ (A : Type a)
  : Type (a ⊔ ℓ)
  where
  constructor Lift
  field
    lower : A

open ↑ public
\end{code}
