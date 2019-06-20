---
layout: page
title: "Sigma identities"
category: lemmas functions homotopy
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
open import BasicFunctions
open import Transport
\end{code}
</div>

### Product identities

{: .foldable until="2"}
\begin{code}
module
  ProductIdentities
  where

\end{code}


\begin{code}
module CartesianProduct {A : Type ℓᵢ} {B : Type ℓⱼ} where
\end{code}

{: .foldable until="6"}
\begin{code}
  -- Lemma.
  prodComponentwise
    : {x y : A × B}
    → (x == y)
    ---------------------------------
    → (π₁ x == π₁ y) × (π₂ x == π₂ y)

  prodComponentwise {x = x} idp = refl (π₁ x) , refl (π₂ x)
\end{code}

{: .foldable until="6"}
\begin{code}
  -- Lemma.
  prodByComponents
    : {x y : A × B}
    → (π₁ x == π₁ y) × (π₂ x == π₂ y)
    ---------------------------------
    → (x == y)

  prodByComponents {x = a , b} (idp , idp) = refl (a , b)
\end{code}

{: .foldable until="6"}
\begin{code}
  -- Lemma.
  prodCompInverse
    : {x y : A × B}
    → (b : (π₁ x == π₁ y) × (π₂ x == π₂ y))
    ---------------------------------------------
    → prodComponentwise (prodByComponents b) == b

  prodCompInverse {x} (idp , idp) = refl (refl (π₁ x) , refl (π₂ x))
\end{code}

{: .foldable until="6"}
\begin{code}
  -- Lemma.
  prodByCompInverse
    : {x y : A × B}
    → (b : x == y)
    ---------------------------------------------
    → prodByComponents (prodComponentwise b) == b

  prodByCompInverse {x = x} idp = refl (refl x)
\end{code}

\begin{code}
open CartesianProduct public
\end{code}

\begin{code}
×-≡ : ∀ {i j} {A : Type i} {B : Type j}
    → {ab ab' : A × B}
    → (p : π₁ ab ≡ π₁ ab') → (π₂ ab) ≡ π₂ ab'
    → ab ≡ ab'
×-≡ idp idp = idp
\end{code}
