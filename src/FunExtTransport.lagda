---
layout: page
title: "Function extensionality and Transport"
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
open import FunExtAxiom
\end{code}
</div>

## Function extensionality transport case

\begin{code}
module
  FunExtTransport {ℓ₁ ℓ₂ : Level}{X : Type ℓ₁} {A B : X → Type ℓ₂} {x y : X}
    where
\end{code}

\begin{code}
  funext-transport
    : (p : x == y) → (f : A x → B x) → (g : A y → B y)
    ------------------------------------------------------------
    → (tr (λ z₁ → (x : A z₁) → B z₁) p f == g)
    ≃ ((a : A(x)) → tr B p (f a) == g (tr A p a))

  funext-transport idp f g = eqFunExt
\end{code}

\begin{code}
  funext-transport-l
    : (p : x == y)
    → (f : A x → B x)
    → (g : A y → B y)
    → ((tr (λ z₁ → (x : A z₁) → B z₁) p f == g)
    -------------------------------------------
    → ((a : A(x)) → tr B p (f a) == g (tr A p a)))

  funext-transport-l p f g = lemap (funext-transport p _ _)
\end{code}

\begin{code}
  funext-transport-r
    : (p : x == y)
    → (f : A x → B x)
    → (g : A y → B y)
    → ((a : A(x)) → tr B p (f a) == g (tr A p a))
    -------------------------------------------
    → (tr (λ z₁ → (x : A z₁) → B z₁) p f == g)

  funext-transport-r p f g = remap (funext-transport p _ _)
\end{code}
