---
layout: page
title: "Fiberwise"
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
open import BasicTypes
open import Transport
open import FibreType
\end{code}
</div>


\begin{code}
fibre-transport
  : {A : Type ℓᵢ} {B : Type ℓⱼ}
  → (f : A → B)
  → {b b' : B} → (h : b == b')
  ------------------------------------------------
  → ∀ a e → (a , e) == (a , (e · h)) [ (fibre f) ↓ h ]

fibre-transport f idp a idp = idp
\end{code}
