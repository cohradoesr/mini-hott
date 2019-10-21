---
layout: page
title: "Higher Inductive Type"
toc: true
agda: true
gallery: true
latex: true
references: false
linkify: true
showcitation: true
---


We can define Higher inductive types in Agda by
rewriting method, same approach as in [HoTT-Agda].
However, this is unsafe.

\begin{code}
{-# OPTIONS --without-K --exact-split --rewriting #-}
module HigherInductiveTypes where
\end{code}

\begin{code}
  open import BasicTypes
\end{code}

{: .axiom}
\begin{code}
  infix 30 _↦_
  postulate
    _↦_
      : ∀ {ℓ : Level} {A : Type ℓ}
      → A → A
      -------
      → Type ℓ

  {-# BUILTIN REWRITE _↦_ #-}
\end{code}
