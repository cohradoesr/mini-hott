---
layout: page
title: "Univalence Lemma for id Equivalence"
category: lemmas functions homotopy
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
{-# OPTIONS --without-K --exact-split #-}
module _ where
open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import FunExtAxiom

open import EquivalenceType
open import QuasiinverseType
open import QuasiinverseLemmas
open import UnivalenceAxiom
open import UnivalenceTransport
open import HLevelLemmas
\end{code}
</div>

#### Univalence Lemma for id Equivalence

\begin{code}
module UnivalenceIdEquiv where
\end{code}

The identity equivalence creates the trivial path.

{: .foldable until="4" }
\begin{code}
  ua-id
    : ∀ {ℓ : Level} {A : Type ℓ}
    --------------------
    → ua idEqv ≡ refl A

  ua-id {A = A} =
    begin
      ua idEqv
        ≡⟨ ap ua (sameEqv (refl id)) ⟩
      ua (idtoeqv (refl A))
        ≡⟨ ua-η (refl A) ⟩
      refl A
    ∎
\end{code}
