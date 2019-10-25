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

Mini-HoTT is an [Agda](http://github.com/agda/agda) library that contains
definitions and results of [Univalent Type Theory (also known as
HoTT-UF)](http://homotopytypetheory.org/). The library is working in progress,
currently, maintained by [Jonathan
Prieto-Cubides](mailto:jonathan.cubides@uib.no) with contributions of [Håkon
Robbestad Gylterud](https://hakon.gylterud.net) and [Marc
Bezem](https://cas.oslo.no/fellows/marc-bezem-article2086-828.html). This
development is supported by the Programming Theory Research Group (PUT) at
[University of Bergen](https://www.uib.no/).

## Installation

- Install [Agda (v2.6.0+)](http://github.com/agda/agda).

- Clone [this repository](http://github.com/jonaprieto/mini-hott) with the following command.

  - `git clone http://github.com/jonaprieto/mini-hott`

- Update your Agda libraries file manually (`~/.agda`) or use [agda-pkg](http://github.com/agda/agda-pkg).

- Include the following `import` command in your source code.

    - `open import MiniHoTT`

<div class="only-website">

## Quick start

This documentation is generated automatically from the repository sub-folder
`src/` that contains all the literate Agda files of MiniHoTT. However, some
definitions and theorems are hidden in this view since they are not ready to
use, but we encourage the curious reader to check out all the files. To use
MiniHoTT, the only requirement is to have installed
[Agda](http://github.com/agda/agda) and a text editor (we recommend Emacs or
Atom with Agda support) on your computer.

Regarding the library performance, we recommend to check out
other options. For example, [HoTT-Agda](https://hott.github.io/HoTT-Agda/) is
a bigger and tested Agda library for HoTT, you might want to check. Other
libraries and resources can be found in References section.

### Code conventions

Definitions and theorems are typed with Unicode characters, this, to improve
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

On the website some term definitions are hidden, however, you can expand them
by clicking on the code boxes (on the top-right icon) -- this requires
Javascript--.

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
as one explicit argument. Also, we want to have judgmental equalities for each usage of (=) so
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
