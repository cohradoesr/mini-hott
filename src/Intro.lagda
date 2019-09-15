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

![path]({{ site.baseurl }}/assets/png-images/mini-hott.jpeg){: width="150px" align="right" style="padding:5px"}

Mini-HoTT is a basic library for Homotopy Type Theory in
[Agda](http://github.com/agda/agda) developed at [University of
Bergen](https://www.uib.no/) in the Programming Theory Research Group.

No other libraries are required to use this Agda library. To ease its adoption,
we have included synonyms and syntax sugar for types, lemmas, and theorems.
Regarding performance, we would recommend to check out another option like the
`HoTT-Agda` library.  We encourage to check the references at the end of this
documment, which might contain better explanation of our exposition.

# Quick start

## Installation

- Install [Agda (v2.6.0+)](http://github.com/agda/agda)

- Clone this repository [http://github.com/jonaprieto/mini-hott](http://github.com/jonaprieto/mini-hott) with:

  - `git clone http://github.com/jonaprieto/mini-hott`

- Or install the library in `~/.agda` or even better, use [agda-pkg](http://github.com/agda/agda-pkg)
as follows:

  - `pip install agda-pkg`
  - `apkg install mini-hott` (not indexed at the moment until it's more stable)

- Use the library by including the following import at the top of your source code:

    - `open import MiniHoTT`

## Code style

Definitions and theorems are typed with unicode characters, this to improve
significantly the readability. We usually present lemmas and theorems as rule
inferences as in the following example. Level universes are now included in each
definition, this apparently improves the time for type-checking.

```
termName
  :  ∀ {ℓ₁ ℓ₂.. : Level} {A : Type ℓ₁}   -- Implicit Assumptions
  → (B : A → Type ℓ₂)                    -- Explicit Assumptions
  → ...                                  -- Explicit Assumptions
  ---------------------
  → ...                                  -- Conclusion
```

On the website, we show the type for each term but some term definitions are
hidden. However, you can expand them by clicking on the code boxes --this
requires Javascript--.

```
termName = definition
  where
  helper1 : ...
  helper2 = def...
```

## Proof relevancy

To be consistent with Univalent Type Theory, we tell `Agda` to not use *Axiom K*
for type-checking by using the option `without-K`.

\begin{code}
{-# OPTIONS --without-K #-}
\end{code}

In addition, without Axiom K, `Agda`'s `Set` is not a good name for universes in HoTT. So, we
rename `Set` to `Type`. Our type judgments then will include the universe level
as one explicit argument.

\begin{code}
open import Agda.Primitive
  using ( Level ; lsuc; lzero; _⊔_ ) public
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
Type₁
  : Type (lsuc (lsuc lzero))

Type₁ = Type (lsuc lzero)
\end{code}

The following type is to lift a type to a higher universe.

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
