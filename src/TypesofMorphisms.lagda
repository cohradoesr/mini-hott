---
layout: page
title: "Types of Morphisms"
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
open import DecidableEquality
open import NaturalType
open import HLevelTypes
open import HLevelLemmas
open import HedbergLemmas
open import TruncationType
open import FibreType
open import CoproductIdentities
\end{code}
</div>

## Types of Morphisms

\begin{code}
module TypesofMorphisms where
\end{code}

### Surjections

\begin{code}
  isSurjection
    : {A : Type ℓᵢ}{B : Type ℓⱼ}
    → (f : A → B)
    → Type (ℓᵢ ⊔ ℓⱼ)

  isSurjection {B = B} f = (b : B) → ∥ fib f b ∥

  isSurjective = isSurjection
  isOnto       = isSurjection
\end{code}

Do not confuse with the traditional logic notation
for surjective functions which says $f$ is surjective if
$∀ (b : B) ∃ (a : A) . f a ≡ b$. This is stronger than merely
know exists an $(a : A)$ as it was stated above with `∥ fib f b ∥`.

Therefore, we define the concept of *split-surjection*:

\begin{code}
  isSplitSurjection
    : {A : Type ℓᵢ} {B : Type ℓⱼ}
    → (f : A → B)
    → Type (ℓᵢ ⊔ ℓⱼ)

  isSplitSurjection {B = B} f = (b  : B) → fib f b
\end{code}

Which is equivalent to say $f$ is a **retraction**:

\begin{code}
  isRetraction
    : {A : Type ℓᵢ} {B : Type ℓⱼ}
    → (f : A → B)
    → Type (ℓᵢ ⊔ ℓⱼ)

  isRetraction {A = A}{B} f =
    ∑ (B → A) (λ g → (b : B) → f (g b) ≡ b)
\end{code}

### Embeddings

\begin{code}
  isEmbedding
    : {A : Type ℓᵢ}{B : Type ℓⱼ}
    → (f : A → B)
    ---------------
    → Type (ℓᵢ ⊔ ℓⱼ)

  isEmbedding {A = A} f =
    ∀ {x y : A} → isEquiv (ap f {x}{y})
\end{code}

### Injections

TODO: Should I demand for injective functions have their domains and codomains as sets?

\begin{code}
  isInjective
    : {A : Type ℓᵢ}{B : Type ℓⱼ}
    → (f : A → B)
    → Type (ℓᵢ ⊔ ℓⱼ)

  isInjective {A = A} f = ∀ {x y} → f x ≡ f y → x ≡ y
\end{code}

{: .foldable until="6" }
\begin{code}
  isInjectiveIsProp
    : {A : Type ℓᵢ}{B : Type ℓⱼ}
    → (iA : isSet A)
    → (f : A → B)
    ------------------------
    → isProp (isInjective f)
    
  isInjectiveIsProp {A = A}{B} iA f i1 i2 =
    aux i1 i2
    where
      private
        aux : isProp (∀ {x y} → (f x ≡ f y → x ≡ y))
        aux = pi-is-prop-implicit
               (λ x → pi-is-prop-implicit (λ y →
                 pi-is-prop (λ p → iA x y)
               ))
\end{code}

\begin{code}
  isSurjectionIsProp
    : {A : Type ℓᵢ}{B : Type ℓⱼ}
    → (f : A → B)
    → isProp (isSurjection f)
  isSurjectionIsProp f = pi-is-prop (λ b → truncated-is-prop {A = fib f b})
\end{code}

If the function $f : A → B$ is a surjection, we are able to get
a function $g : B → A$ by the recursion principle of truncation.

{: .foldable until="8" }
\begin{code}
  fromSurjection
    : {A : Type ℓᵢ} {B : Type ℓⱼ}
    → (f : A → B)
    → isSet B
    → isSurjection f
    → isInjective f
    --------------------------------
    → (b : B) → ∑ A (λ a → f a == b)

  fromSurjection {A = A}{B} f iB f-is-onto f-is-injective b
    = trunc-rec (aux b) id (f-is-onto b)
    where
    private
      aux
        : (b : B)
        → isProp (fib f b)

      aux .(f x) (x , idp) (x' , p2) =
        ∑-≡
          (λ y → f y == f x)
          (f-is-injective (! p2))
          (iB (f x') (f x)
              (tr (λ z₁ → f z₁ == f x) (f-is-injective (! p2)) idp) p2)
\end{code}

### Bijections

\begin{code}
  isBijection
    : {A : Type ℓᵢ}{B : Type ℓⱼ}
    → (f : A → B)
    → isSet A
    → isSet B
    ---------------
    → Type (ℓᵢ ⊔ ℓⱼ)

  isBijection f iA iB = isInjective f × isSurjection f
\end{code}

{: .foldable until="8" }
\begin{code}
  Bijection
    : {A : Type ℓᵢ}{B : Type ℓⱼ}
    → {iA : isSet A}
    → {iB : isSet B}
    → (f : A → B)
    → isBijection f iA iB
    ----------------------
    → A ≃ B

  Bijection {A = A}{B} {iA}{iB} f (f-is-injective , f-is-onto)
    = qinv-≃ f (g , (H₁ , H₂))
    where
    aux : (b : B) → ∑ A (λ a → f a ≡ b)
    aux = fromSurjection f iB f-is-onto f-is-injective

    g : B → A
    g = π₁ ∘ aux

    H₁ : (b : B) → f (g b) == b
    H₁ b = π₂ (aux b)

    H₂ : (a : A) → g (f a) == a
    H₂ a = f-is-injective (H₁ (f a))
\end{code}

{: .foldable until="6" }
\begin{code}
  ≃-to-bijection
    : {A : Type ℓᵢ}{B : Type ℓⱼ}
    → (iA : isSet A)
    → (iB : isSet B)
    -----------------------------------------
    → (e : A ≃ B) → (isBijection (e ∙→) iA iB)

  ≃-to-bijection iA iB e =
    (λ {x y} p  → ! (∙←∘∙→ e) · (ap (e ∙←) p)  · (∙←∘∙→ e) )  -- is injective
    , λ b → ∣ (e ∙←) b , ∙→∘∙← e ∣                            -- is surjective
    where open import EquivalenceType
 \end{code}

Bijection and being equivalent are equivalent notions:

{: .foldable until="6" }
\begin{code}
  bij-≃-≃
    : {A : Type ℓᵢ} {B : Type ℓⱼ}
    → (iA : isSet A) (iB : isSet B)
    → (f : A → B)
    ----------------------------------
    → isBijection f iA iB  ≃ isEquiv f
    
  bij-≃-≃ {A = A}{B} iA iB f =
    qinv-≃
      (λ bij → π₂ (Bijection {iA = iA}{iB} f bij))
      ((λ isEquivf → ≃-to-bijection iA iB (f , isEquivf))
      , h1 , h2)
    where
      h1 : (λ x → π₂ (Bijection {iA = iA}{iB} f (≃-to-bijection iA iB (f , x)))) ∼ id
      h1 e = isContrMapIsProp f _ e

      h2 : (λ x → ≃-to-bijection iA iB (f , π₂ (Bijection {iA = iA}{iB} f x))) ∼ id
      h2 bij = ×-is-prop (isInjectiveIsProp iA f) (isSurjectionIsProp f) _ bij

  open import QuasiinverseLemmas
\end{code}

{: .foldable until="6"}
\begin{code}
  bijIsProp
    : {A : Type ℓᵢ} {B : Type ℓⱼ}
    → (iA : isSet A)(iB : isSet B)
    → (f : A → B)
    ------------------------------
    → isProp (isBijection f iA iB)

  bijIsProp iA iB f  = isProp-≃ (≃-sym (bij-≃-≃ iA iB f)) (isEquivIsProp f)
  bijection-is-prop = bijIsProp
\end{code}

For some reasons, we might need to have the inverse, the actual function, of a bijection.
One way I see now is to recover such a function from the equivalence, using `remap`. Let's see this:

\begin{code}
  inverse-of-bijection
    : {A : Type ℓᵢ}{B : Type ℓᵢ}
    → {iA : isSet A}{iB : isSet B}
    → (f : A → B)
    → isBijection f iA iB
    ------------------------------
    → B → A
  inverse-of-bijection {iA = iA}{iB} f isBij = remap (Bijection {iA = iA}{iB}f isBij)

  inv-of-bij = inverse-of-bijection
\end{code}

