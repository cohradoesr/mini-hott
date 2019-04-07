---
layout: page
title: "Quotient Type"
permalink : /quotient-type/
toc: true
agda: true
gallery: true
latex: true
references: true
linkify: true
showcitation: true
home: true
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

  record QRel {ℓ} (A : Type ℓ) : Type (lsuc ℓ) where
    field
      R : A → A → Type ℓ
      Aset : isSet A
      Rprop : (a b : A) → isProp (R a b)
  open QRel {{...}} public

  private
    -- Higher inductive type
    data _!/_ {ℓ} (A : Type ℓ) (r : QRel A) : Type (lsuc ℓ) where
      ![_] : A → (A !/ r)

  _/_ : ∀ {ℓ} (A : Type ℓ) (r : QRel A) → Type (lsuc ℓ)
  A / r = (A !/ r)

  [_] : ∀ {ℓ} {A : Type ℓ} → A → {r : QRel A} → (A / r)
  [ a ] = ![ a ]

  -- Equalities induced by the relation
  postulate
    Req
      : ∀ {ℓ} {A : Type ℓ} {r : QRel A}
      → {a b : A}
      → R {{r}} a b
      --------------------
      → [ a ] {r} == [ b ]

  -- The quotient of a set is again a set
  postulate
    Rtrunc
      : ∀ {ℓ} {A : Type ℓ} {r : QRel A}
      ---------------
      → isSet (A / r)

  -- Recursion principle
  QRel-rec : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {r : QRel A} {B : Type ℓⱼ}
            → (f : A → B) → ((x y : A) → R {{r}} x y → f x == f y) → A / r → B
  QRel-rec f p ![ x ] = f x

  -- Induction principle
  QRel-ind : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {r : QRel A} {B : A / r → Type ℓⱼ}
            → (f : ((a : A) → B [ a ]))
            → ((x y : A) → (o : R {{r}} x y) → (transport B (Req o) (f x)) == f y)
            → (z : A / r) → B z
  QRel-ind f p ![ x ] = f x

  -- Recursion in two arguments
  QRel-rec-bi : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {r : QRel A} {B : Type ℓⱼ}
              → (f : A → A → B) → ((x y z t : A) → R {{r}} x y → R {{r}} z t → f x z == f y t)
              → A / r → A / r → B
  QRel-rec-bi f p ![ x ] ![ y ] = f x y


  Qrel-prod : ∀ {ℓᵢ}{A : Type ℓᵢ} (r : QRel A) → QRel (A × A)
  Qrel-prod r = record { R = λ { (a , b) (c , d) → (R {{r}} a c) × (R {{r}} b d) }
                       ; Aset = isSet-prod (Aset {{r}}) (Aset {{r}})
                       ; Rprop = λ { (x , y) (z , w) → isProp-prod (Rprop {{r}} x z) (Rprop {{r}} y w)} }
\end{code}
