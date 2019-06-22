---
layout: page
title: "Introduction"
toc: true
agda: true
gallery: true
latex: true
references: false
linkify: true
showcitation: true
---

This is a library for Univalent Type Theory in `Agda` developed at [University
of Bergen](https://www.uib.no/). No other libraries are required to type-check
it. To ease its adoption, we have included synonyms and syntax sugar for types,
lemmas, and theorems. Regarding performance, we recommend to see the library
`HoTT-Agda`. This development was based on others in its initial stage, so
please see the references at the end.

# Installation

- Install [Agda (v2.6.0+)](http://github.com/agda/agda)

- Clone this repository [http://github.com/jonaprieto/mini-hott](http://github.com/jonaprieto/mini-hott)

  - `git clone http://github.com/jonaprieto/mini-hott`

- Install the library in `~/.agda` or use [agda-pkg](http://github.com/agda/agda-pkg) as follows:

  - `pip install agda-pkg`
  - `apkg install mini-hott`

- Use the library by including the import at the top of your source code:

    - `open import MiniHoTT`

# Code

## Proof relevancy

![path](/assets/png-images/mini-hott.jpeg){: width="150px" align="right" style="padding:5px"}

To be consistent with univalent type theory, we tell `Agda` to not use *Axiom K*
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

We use the following variables along to simplify the typing. Be aware these
variables are implicit variables hidden in the types.

\begin{code}
variable
  ℓ ℓᵢ ℓⱼ ℓₖ : Level
\end{code}
