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
open import QuasiinverseLemmas
\end{code}
</div>

## Voevodsky's Univalence Axiom

Voevodsky's Univalence axiom is postulated. It induces an equality between any
two equivalent types. Some $β$ and $η$ rules are provided.

\begin{code}
module UnivalenceAxiom {ℓ : Level} {A B : Type ℓ} where
\end{code}

{: .foldable until="4"}
\begin{code}
  idtoeqv
    : A == B
    --------
    → A ≃ B

  idtoeqv p =
    qinv-≃
      (coe p)
      ((!coe p) ,
        (coe-inv-l p , coe-inv-r p))
\end{code}

Synonyms:

\begin{code}
  ==-to-≃ = idtoeqv
  ≡-to-≃  = idtoeqv
  ite     = idtoeqv
  cast    = idtoeqv  -- Used in the Symmetry Book.
\end{code}

The **Univalence axiom** induces an equivalence between equalities
and equivalences.

Univalence Axiom.

{: .axiom }
\begin{code}
  postulate
    axiomUnivalence
      : isEquivalence ≡-to-≃
\end{code}

In Slide 20 from an [Escardo's talk](https://www.newton.ac.uk/files/seminar/20170711100011001-1442677.pdf), base on what we saw, we give
the following no standard definition of Univalence axiom (without transport).

{: .axiom }
\begin{code}
  open import HLevelTypes

  UA
    : ∀ {ℓ : Level}
    → (Type (lsuc ℓ))

  UA {ℓ = ℓ}  = (X : Type ℓ) → isContr (∑ (Type ℓ) (λ Y → (X ≃ Y)))
\end{code}

About this Univalence axiom version:

  - ∑ (Type ℓ) (λ Y → X ≃ Y) is inhabited, but we don't know if it's contractible
  unless, we demand (assume) to be propositional. Then, in such a case,
  we use the theorem (isProp P ≃ (P → isContr P)). To be more precise, we know it's contractible, in fact, the center of contractibility, is indeed (X, id-≃ X : X ≃ X).

  - Univalence is a generalized extensionality axiom for intensional MLTT theory.
  - The type UA is a proposition.
  - UA is consistent with MLTT.
  - Theorem of MLTT+UA: $P(X)$ and $X≃Y$ imply $P(Y)$ for any $P : \mathsf{Type} → \mathsf{Type}$.
  - Theorem of spartan MLTT with two universes. The univalence axiom formulated
with crude isomorphism rather than equivalence is false!.

{: .foldable until="2" }
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

{: .foldable until="4" }
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

{: .foldable until="4"}
\begin{code}
  ua-β
    : (α : A ≃ B)
    ----------------------
    → idtoeqv (ua α) == α

  ua-β eqv = lrmap-inverse eqvUnivalence
\end{code}

{: .foldable until="4"}
\begin{code}
  ua-η
    : (p : A == B)
    ---------------------
    → ua (idtoeqv p) == p

  ua-η p = rlmap-inverse eqvUnivalence
\end{code}
