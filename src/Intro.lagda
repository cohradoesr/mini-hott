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

Mini-HoTT is a basic [Agda](http://github.com/agda/agda) library that contains
a few definitions and results of [Univalent Type Theory (also known as
HoTT-UF)](http://homotopytypetheory.org/). It is a working in progress,
currently maintained by Jonathan Prieto-Cubides, and supported by the
Programming Theory Research Group (PUT) at [University of
Bergen](https://www.uib.no/).

## Quick start

The main requeriment is [Agda](http://github.com/agda/agda). No other
libraries are required to load this one. To ease its adoption, we have
included synonyms and syntax sugar for types, lemmas, and theorems. The
website is intended to be the main documentation, and for now, it presents on
one page the main source code, however, many files are imported to generate
the current page. We have also include some ilustrations that might help your
understanding. Regarding the library performance, we recommend to check out
other options. For example, [HoTT-Agda](https://hott.github.io/HoTT-Agda/) is
a bigger and tested Agda library for HoTT, you might want to check. Other
libraries and resources can be found in [References] section.

### Installation

- Install [Agda (v2.6.0+)](http://github.com/agda/agda)

- Clone this repository [http://github.com/jonaprieto/mini-hott](http://github.com/jonaprieto/mini-hott) with:

  - `git clone http://github.com/jonaprieto/mini-hott`

- Update your Agda libraries file (`~/.agda`). You can also use [agda-pkg](http://github.com/agda/agda-pkg) for that as well.

  - `pip install agda-pkg`
  - `apkg install mini-hott` (not indexed at the moment until it's more stable)

- Once everything is set for Agda, just include the following import in your source code:

    - `open import MiniHoTT`

<div class="only-website">

### Code conventions

Definitions and theorems are typed with unicode characters, this, to improve
the readability. We usually present lemmas and theorems as rule inferences as
in the following example. We are explicit about level universes and then, you
will find them in each definition, unless for definitions in a module.

```
termName
  :  ∀ {ℓ₁ ℓ₂.. : Level} {A : Type ℓ₁}   -- Implicit assumptions
  → (B : A → Type ℓ₂)                    -- Explicit assumptions
  → ...                                  -- More explicit essumptions
  ---------------------
  → ...                                  -- Conclusion
```

On the website some term definitions are hidden, however, you can expand them by clicking on the code boxes (on the top-right icon) -- this requires Javascript--.

```
termName = definition
  where
  helper1 : ...
  helper2 = def...
```

</div>

### Proof relevancy

To be consistent with Univalent Type Theory, we tell `Agda` to not use *Axiom K*
for type-checking by using the option `without-K`.

\begin{code}
{-# OPTIONS --without-K #-}
\end{code}

In addition, without Axiom K, `Agda`'s `Set` is not a good name for universes in HoTT. So, we
rename `Set` to `Type`. Our type judgments then will include the universe level
as one explicit argument. Also, we want to have judgemental equailities for each usage of (=) so
we use the following option.

\begin{code}
{-# OPTIONS --exact-split #-}
\end{code}

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

A type and lifted types of it are *equivalent* types.
