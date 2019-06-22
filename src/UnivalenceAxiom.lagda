---
layout: page
title: "Axiom of Univalence"
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
{-# OPTIONS --without-K #-}
open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import FunExtAxiom
open import QuasiinverseType
\end{code}
</div>

## Voevodsky's Univalence Axiom

Voevodsky's Univalence axiom is postulated. It induces an equality between any
two equivalent types. Some $β$ and $η$ rules are provided.

\begin{code}
module UnivalenceAxiom {ℓ} {A B : Type ℓ} where
\end{code}

{: .foldable until="5"}
\begin{code}
  -- Fun.
  idtoeqv
    : A == B
    --------
    → A ≃ B

  idtoeqv p = qinv-≃
    (transport (λ X → X) p)
    (transport (λ X → X) (inv p) , (coe-inv-l p , coe-inv-r p))
\end{code}
\begin{code}
  -- Synonyms:
  ==-to-≃ = idtoeqv
\end{code}

The **Univalence axiom** induces an equivalence between equalities
and equivalences.

\begin{code}
  -- Axiom.
  postulate
    axiomUnivalence : isEquiv idtoeqv
\end{code}

{: .foldable until="3" }
\begin{code}
  -- Lema.
  eqvUnivalence
    : (A == B) ≃ (A ≃ B)

  eqvUnivalence = idtoeqv , axiomUnivalence

  -- Synonyms
  ==-equiv-≃ = eqvUnivalence
  ==-≃-≃     = eqvUnivalence
\end{code}

Introduction rule for equalities:

\begin{code}
  -- Fun.
  ua : A ≃ B → A == B
  ua = remap eqvUnivalence

  -- Synonyms
  ≃-to-== = ua
\end{code}




Computation rules

{: .foldable until="5"}
\begin{code}
  -- Beta rule.
  ua-β
    : (α : A ≃ B)
    ----------------------
    → idtoeqv (ua α) == α

  ua-β eqv = lrmap-inverse eqvUnivalence
\end{code}

{: .foldable until="5"}
\begin{code}
  -- Eta rule.
  ua-η
    : (p : A == B)
    ---------------------
    → ua (idtoeqv p) == p

  ua-η p = rlmap-inverse eqvUnivalence
\end{code}
