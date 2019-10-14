---
layout: page
title: "Sigma identities"
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
open import BasicTypes
open import BasicFunctions
open import Transport
\end{code}
</div>

### Product identities

<div class="hide" >
\begin{code}
module
  ProductIdentities
  where
\end{code}
</div>


{: .foldable until="6"}
\begin{code}

prodComponentwise
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂} {x y : A × B}
  → (x == y)
  ---------------------------------
  → (π₁ x == π₁ y) × (π₂ x == π₂ y)

prodComponentwise {x = x} idp = refl (π₁ x) , refl (π₂ x)
\end{code}

{: .foldable until="6"}
\begin{code}

prodByComponents
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂} {x y : A × B}
  → (π₁ x == π₁ y) × (π₂ x == π₂ y)
  ---------------------------------
  → (x == y)

prodByComponents {x = a , b} (idp , idp) = refl (a , b)
\end{code}

{: .foldable until="6"}
\begin{code}

prodCompInverse
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂} {x y : A × B}
  → (b : (π₁ x == π₁ y) × (π₂ x == π₂ y))
  ---------------------------------------------
  → prodComponentwise (prodByComponents b) == b

prodCompInverse {x = x} (idp , idp) = refl (refl (π₁ x) , refl (π₂ x))
\end{code}

{: .foldable until="6"}
\begin{code}

prodByCompInverse
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}  {x y : A × B}
  → (b : x == y)
  ---------------------------------------------
  → prodByComponents (prodComponentwise b) == b

prodByCompInverse {x = x} idp = refl (refl x)
\end{code}

\begin{code}
×-≡
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}
  → {ab ab' : A × B}
  → (p : π₁ ab ≡ π₁ ab') → (π₂ ab) ≡ π₂ ab'
  → ab ≡ ab'

×-≡ idp idp = idp
\end{code}
