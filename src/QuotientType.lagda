---
layout: page
title: "Quotient Type"
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
open import QuasiinverseType
open import DecidableEquality
open import NaturalType
open import HLevelTypes
open import HLevelLemmas
open import HedbergLemmas
\end{code}
</div>

\begin{code}
module QuotientType where

  record QRel {ℓ : Level} (A : Type ℓ) : Type (lsuc ℓ) where
    field
      R     : A → A → Type ℓ
      Aset  : isSet A
      Rprop : (a b : A) → isProp (R a b)

  open QRel {{...}} public

  private
    data _!/_ {ℓ : Level} (A : Type ℓ)  (r : QRel A)
      : Type (lsuc ℓ)
      where
      ![_] : A → (A !/ r)

  _/_
    : {ℓ : Level} (A : Type ℓ)  (r : QRel A)
    → Type (lsuc ℓ)

  A / r = (A !/ r)

  [_]
    : ∀ {ℓ : Level} {A : Type ℓ}
    → A → {r : QRel A}
    ---------
    → (A / r)

  [ a ] = ![ a ]

  -- Equalities induced by the relation
  postulate
    Req
      : ∀ {ℓ : Level} {A : Type ℓ}  {r : QRel A}
      → {a b : A}
      → R {{r}} a b
      --------------------
      → [ a ] {r} == [ b ]

  -- The quotient of a set is again a set
  postulate
    Rtrunc
      : ∀ {ℓ : Level} {A : Type ℓ}  {r : QRel A}
      ---------------
      → isSet (A / r)
\end{code}

Recursion principle

{: .foldable until="6" }
\begin{code}
  QRel-rec
    : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}  {r : QRel A} {B : Type ℓ₂}
    → (f : A → B)
    → ((x y : A) → R {{r}} x y → f x == f y)
    ---------------------------------------
    → A / r → B

  QRel-rec f p ![ x ] = f x
\end{code}

Induction principle
{: .foldable until="6" }
\begin{code}
  QRel-ind
    : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁} {r : QRel A} {B : A / r → Type ℓ₂}
    → (f : ((a : A) → B [ a ]))
    → ((x y : A) → (o : R {{r}} x y) → (transport B (Req o) (f x)) == f y)
    -------------------
    → (z : A / r) → B z

  QRel-ind f p ![ x ] = f x
\end{code}


Recursion in two arguments

{: .foldable until="6" }
\begin{code}
  QRel-rec-bi
    : ∀ {ℓ₁ ℓ₂ : Level}{A : Type ℓ₁} {r : QRel A} {B : Type ℓ₂}
    → (f : A → A → B)
    → ((x y z t : A) → R {{r}} x y → R {{r}} z t → f x z == f y t)
    -------------------
    → A / r → A / r → B

  QRel-rec-bi f p ![ x ] ![ y ] = f x y
\end{code}

{: .foldable until="5" }
\begin{code}
  Qrel-prod
    : ∀ {ℓ : Level}{A : Type ℓ}
    → (r : QRel A)
    --------------
    → QRel (A × A)

  Qrel-prod r =
    record { R = λ { (a , b) (c , d) → (R {{r}} a c) × (R {{r}} b d) }
           ; Aset = isSet-prod (Aset {{r}}) (Aset {{r}})
           ; Rprop = λ { (x , y) (q , w) → isProp-prod (Rprop {{r}} x q) (Rprop {{r}} y w)} }
\end{code}
