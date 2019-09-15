---
layout: page
title: "TheAxiomOfChoice"
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
open import BasicTypes

open import HLevelTypes
open import TruncationType
\end{code}
</div>

### The Axiom Of Choice

\begin{code}
module
  TheAxiomOfChoice
  where
\end{code}

Let's write in type theory, the following logic formulation of
of the axiom of choice:

$$
  (∀ (b : B) . ∃ (a : A b) . P(b,a))
  ⇒ ∃ (g : (b : B) → A b) . ∀ (b : B) . P (b, g(b)) .
$$

{: .axiom }
\begin{code}
  postulate
    Choice
      : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level }
      -- Asummption 1:
        (B : Type ℓ₁)
      → isSet B
      -- Asummption 2:
      → (A : B → Type ℓ₂)
      → ∀ (b : B) → isSet (A b)
      -- Asummption 3:
      → (P : (b : B) → (A b) → Type ℓ₃)
      → ∀ (b : B)(a : A b) → isProp (P b a)
      -----------------------------------
      → (∀ b → ∥ ∑ (A b) (λ a → P b a) ∥)
      → ∥ ∑ (∏ B A) (λ g → P b (g b)) ∥
\end{code}
