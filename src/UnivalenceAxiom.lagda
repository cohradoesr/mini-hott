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

Synonyms:

\begin{code}
  ==-to-≃ = idtoeqv
  ≡-to-≃  = idtoeqv
\end{code}

The **Univalence axiom** induces an equivalence between equalities
and equivalences.

Univalence Axiom.

\begin{code}
  postulate
    axiomUnivalence : isEquivalence ≡-to-≃
\end{code}
\
In Slide 20 from an [Escardo's talk](https://www.newton.ac.uk/files/seminar/20170711100011001-1442677.pdf), I saw
the following no standard definition of Univalence axiom.

\begin{code}
  UA
    : ∀ {ℓ}
    → (Type (lsuc ℓ))
    
  UA {ℓ = ℓ}  =
    (X : Type ℓ)
    → isSet ( ∑ (Type ℓ) (λ Y → (X ≃ Y) ))
    where open import  HLevelTypes
\end{code}

Notes:

  - Univalence is a generalized extensionality axiom for intensional MLTT theory.
  - The type UA is a proposition.
  - UA is consistent with MLTT.
  - Theorem of MLTT+UA: $P(X)$ and $X≃Y$ imply $P(Y)$ for any $P : \mathsf{Type} → \mathsf{Type}$.
  - Theorem of spartan MLTT with two universes. The univalence axiom formulated
with crude isomorphism rather than equivalence is false!.

{: .foldable until="3" }
\begin{code}
  eqvUnivalence
    : (A == B) ≃ (A ≃ B)

  eqvUnivalence = idtoeqv , axiomUnivalence
\end{code}

Synonyms:
\begin{code}
  ==-equiv-≃ = eqvUnivalence
  ==-≃-≃     = eqvUnivalence
  ≡-≃-≃      = eqvUnivalence
\end{code}

Introduction rule for equalities:

\begin{code}
  ua
    : A ≃ B
    -------
    → A == B
  ua = remap eqvUnivalence
\end{code}

Synonyms:

\begin{code}
  ≃-to-==   = ua
  eqv-to-eq = ua
\end{code}

Computation rules

{: .foldable until="5"}
\begin{code}
  ua-β
    : (α : A ≃ B)
    ----------------------
    → idtoeqv (ua α) == α

  ua-β eqv = lrmap-inverse eqvUnivalence
\end{code}

{: .foldable until="5"}
\begin{code}
  ua-η
    : (p : A == B)
    ---------------------
    → ua (idtoeqv p) == p

  ua-η p = rlmap-inverse eqvUnivalence
\end{code}
