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
definitions and results of [Univalent Type Theory (also known as Homotopy Type
Theory)](http://homotopytypetheory.org/). The library is working in progress,
maintained by [Jonathan Prieto-Cubides](mailto:jonathan.cubides@uib.no) with support
by the Programming Theory
Research Group (PUT) at [University of Bergen](https://www.uib.no/).
We constantly make changes and add new stuff by means of discussions with [Marc
Bezem](https://cas.oslo.no/fellows/marc-bezem-article2086-828.html) and [Håkon
Robbestad Gylterud](https://hakon.gylterud.net).

{: .only-website }
Let us know if you are using the library, and maybe want to see some particular lemma
or function, or any fix. Feel free to open an [issue on Github](https://github.com/jonaprieto/mini-hott/issues).

## Installation

- Install [Agda (v2.6.0+)](http://github.com/agda/agda).

- Install Mini-HoTT library (using [agda-pkg](http://github.com/agda/agda-pkg):

  - `apkg install mini-hott`

- Include the following `import` command in your source code.

  - `open import MiniHoTT`

For development, just clone [this repository](http://github.com/jonaprieto/mini-hott) with the following command.

  - `git clone http://github.com/jonaprieto/mini-hott`
  - `apkg install --editable .`

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
in the following example. We are explicit about level universes.

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
for type-checking by using the option `without-K` on the top of the files.

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
