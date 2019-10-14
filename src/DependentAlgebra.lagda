---
layout: page
title: "Dependent Algebra"
category: lemmas functions homotopy
toc: true
agda: true
gallery: true
latex: true
references: false
linkify: true
showcitation: true
---

### When ∑ and ∏ commute


<div class="hide" >
\begin{code}
{-# OPTIONS --without-K --exact-split #-}

open import BasicTypes
open import BasicFunctions

open import EquivalenceType
open import QuasiinverseType
\end{code}
</div>

{: .foldable until="6"}
\begin{code}
sum-commute
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁}
  → (B : A → Type ℓ₂) (C : A → Type ℓ₃)
    -----------------------------------------
  → Σ (Σ A B) (C ∘ fst) ≃ Σ (Σ A C) (B ∘ fst)

sum-commute {A = A} B C = qinv-≃ there (back , there-back , back-there)
  where
  there : Σ (Σ A B) (C ∘ fst) → Σ (Σ A C) (B ∘ fst)
  there ((a , b) , c) = ((a , c ) , b)

  back : Σ (Σ A C) (B ∘ fst) → Σ (Σ A B) (C ∘ fst)
  back  ((a , c ) , b) = ((a , b) , c)

  there-back : ∀ acb → there (back acb) == acb
  there-back ((a , c) , b) = idp

  back-there : ∀ abc → back (there abc) == abc
  back-there ((a , b) , c) = idp
\end{code}

{: .foldable until="6"}
\begin{code}
prod-commute
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁}
  → (B : A → Type ℓ₂)
  → (C : {a : A} → B a → Type ℓ₃)
  -----------------------------------------------------------
  → (Σ (Π A B) (λ f → Π A (C ∘ f))) ≃ (Π A (λ x → Σ (B x) C))

prod-commute {A = A} B C = qinv-≃ there (back , there-back , back-there)
  where
  there : (Σ (Π A B) (\f → Π A (C ∘ f))) → (Π A (\x → Σ (B x) C))
  there (f , s) x = (f x , s x)

  back : (Π A (\x → Σ (B x) C)) → (Σ (Π A B) (\f → Π A (C ∘ f)))
  back  F = (\x → fst (F x)) , (\x → snd (F x))

  there-back : ∀ F → there (back F) == F
  there-back F = idp

  back-there : ∀ fs → back (there fs) == fs
  back-there fs = idp
\end{code}
