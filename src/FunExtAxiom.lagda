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
{-# OPTIONS --without-K --exact-split #-}
open import Transport
open import EquivalenceType
open import HomotopyType
\end{code}
</div>

## Function extensionality

\begin{code}
module FunExtAxiom {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁} {B : A → Type ℓ₂} {f g : (a : A) → B a} where
\end{code}

Application of an homotopy

{: .foldable until="4"}
\begin{code}
  happly
    : f == g
    ------------------------
    → ((x : A) → f x == g x)

  happly idp x = refl (f x)
\end{code}

Synonyms:
\begin{code}
  ≡-app = happly
\end{code}

{: .axiom }
\begin{code}
  postulate
    axiomFunExt : isEquiv happly
\end{code}

{: .foldable until="2" }
\begin{code}
  eqFunExt
    : (f == g) ≃ ((x : A) → f x == g x)

  eqFunExt = happly , axiomFunExt
\end{code}

From this, the usual notion of function extensionality follows.

{: .foldable until="4"}
\begin{code}
  funext
    : ((x : A) → f x == g x)
    ------------------------
    → f == g

  funext = remap eqFunExt
\end{code}

Beta and eta rules for function extensionality

{: .foldable until="4"}
\begin{code}
  funext-β
    : (h : ((x : A) → f x == g x))
    ------------------------------
    → happly (funext h) == h

  funext-β h = lrmap-inverse eqFunExt
\end{code}

{: .foldable until="4"}
\begin{code}
  funext-η
    : (p : f == g)
    ------------------------
    → funext (happly p) == p

  funext-η p = rlmap-inverse eqFunExt
\end{code}
