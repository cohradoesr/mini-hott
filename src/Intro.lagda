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

![path](/assets/png-images/mini-hott.jpeg){: width="150px" align="right" style="padding:5px"}

This is a library for Univalent Type Theory in
[Agda](http://github.com/agda/agda) developed at [University of
Bergen](https://www.uib.no/) in the Programming Theory Research Group of the
department of informatics.

No other libraries are required to use this Agda library. To ease its adoption,
we have included synonyms and syntax sugar for types, lemmas, and theorems.
Naming things and remember them has always been a hassle. We think all the
synonyms included alleviate this issue. Regarding performance, we would
recommend you another option, maybe `HoTT-Agda` library. As with any other work,
please see the references at the end, which they might contain better
explanation of our exposition.

# Code

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

## Style

Definitions and theorems are typed with unicode characters, we believe they
improve significantly the readability. We usually present lemmas and theorems as
rule inferences as in the following example.

```
termName
  :  {...} {t1 : type1}
  → (t2 : type2)
  → ...
  ---------------------
  → ... (t1 t2) → ...
```

On the website, we show the type for each term and the term definition is
collapsed. However, you can expand them by clicking on the code boxes (this
requires Javascript).

```
termName = definition
  where
  helper1 : ...
  helper2 = def...
```

Infix precedence:

```
infix X termName
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

Since `Agda v2.6.0`, it is possible to use *global* variables
to simplify the typing. These kind of variables are implicit and
included in every single type definition that comes below unless
other are stated.

\begin{code}
variable
  ℓ ℓᵢ ℓⱼ ℓₖ : Level
\end{code}
