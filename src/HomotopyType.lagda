---
layout: page
title: "Homotopy"
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
\end{code}
</div>

## Homotopies

> In a type-theoretical sense, a homotopy between two
> functions is a family of equalities between their applications.

The context:
\begin{code}
module HomotopyType {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁} {P : A → Type ℓ₂} where
\end{code}

Let $$f , g : \prod\limits_{(x:A)} P(x)$$ be two sections of a
type family $$P : A \to \mathcal{U}$$. A **homotopy** from $$f$$ to $$g$$
is a dependent function of type

$$ (f \sim g) :\equiv \prod\limits_{x : A} (f(x) = g(x)). $$


### Homotopy types

{: .foldable until="5"}
\begin{code}

  homotopy
    : (f g : Π A P)
    ---------------
    → Type (ℓ₁ ⊔ ℓ₂)

  homotopy f g = ∀ (x : A) → f x == g x
\end{code}

\begin{code}
  -- Usual notation for homotopy
  _∼_ : (f g : ((x : A) → P x)) → Type (ℓ₁ ⊔ ℓ₂)
  f ∼ g = homotopy f g
\end{code}



### Homotopy is an equivalence relation


{: .foldable until="5"}
\begin{code}
  -- Homotopy is an equivalence relation
  h-refl
    : (f : Π A P)
    -------------
    → f ∼ f

  h-refl f x = idp
\end{code}

{: .foldable until="6"}
\begin{code}

  h-sym
    : (f g : Π A P)
    → f ∼ g
    -------
    → g ∼ f

  h-sym _ _ e x = ! (e x)
\end{code}

{: .foldable until="7"}
\begin{code}

  h-comp
    : {f g h : Π A P}
    → f ∼ g
    → g ∼ h
    -------
    → f ∼ h

  h-comp u v x = (u x) · (v x)
\end{code}

{: .foldable until="7"}
\begin{code}
  -- synonym for h-comp
  _●_
    : {f g h : Π A P}
    → f ∼ g
    → g ∼ h
    -------
    → f ∼ h

  α ● β = h-comp α β
\end{code}
