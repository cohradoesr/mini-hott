---
layout: page
title: "Function extensionality"
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
open import Transport
open import EquivalenceType
open import HomotopyType
\end{code}
</div>

## Function extensionality

\begin{code}

module FunExtAxiom {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}
  {B : A → Type ℓ₂} {f g : (a : A) → B a} where
\end{code}

\begin{code}
  -- Application of an homotopy
  happly
    : f == g
    ------------------------
    → ((x : A) → f x == g x)

  happly idp x = refl (f x)

  -- synonyms:
  ≡-app = happly
\end{code}

\begin{code}
  postulate
    axiomFunExt : isEquiv happly
\end{code}

\begin{code}
  eqFunExt
    : (f == g) ≃ ((x : A) → f x == g x)

  eqFunExt = happly , axiomFunExt
\end{code}

\begin{code}
  -- From this, the usual notion of function extensionality follows.
  funext
    : ((x : A) → f x == g x)
    ------------------------
    → f == g

  funext = remap eqFunExt
\end{code}

\begin{code}
  -- Beta and eta rules for function extensionality
  funext-β
    : (h : ((x : A) → f x == g x))
    ------------------------------
    → happly (funext h) == h

  funext-β h = lrmap-inverse eqFunExt
\end{code}

\begin{code}
  funext-η
    : (p : f == g)
    ------------------------
    → funext (happly p) == p

  funext-η p = rlmap-inverse eqFunExt
\end{code}
