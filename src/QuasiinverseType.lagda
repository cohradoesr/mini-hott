---
layout: page
title: "Quasiinverse Type"
category: homotopy
toc: true
agda: true
gallery: true
latex: true
references: false
linkify: true
showcitation: true
---

### Quasiinverses

Two functions are quasi-inverses if we can construct a function providing
`(g ∘ f) x = x` and `(f ∘ g) y = y` for any given `x` and `y`.

<div class="hide" >
\begin{code}
{-# OPTIONS --without-K #-}
open import TransportLemmas
open import EquivalenceType

open import HomotopyType
open import HomotopyLemmas


open import HalfAdjointType
\end{code}
</div>

\begin{code}
module QuasiinverseType {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂} where
\end{code}

\begin{code}
  qinv
    : (A → B)
    → Type (ℓ₁ ⊔ ℓ₂)

  qinv f = Σ (B → A) (λ g → ((f ∘ g) ∼ id) × ((g ∘ f) ∼ id))

  quasiinverse = qinv
\end{code}

\begin{code}
  linv
    : (A → B)
    → Type (ℓ₁ ⊔ ℓ₂)

  linv f = Σ (B → A) (λ g → (g ∘ f) ∼ idf A)

  left-inverse = linv
\end{code}

\begin{code}
  rinv
    : (A → B)
    → Type (ℓ₁ ⊔ ℓ₂)

  rinv f = Σ (B → A) (λ g → (f ∘ g) ∼ idf B)

  right-inverse = rinv
\end{code}

Biinverse is another equivalent notion of the right equivalence for HoTT.
\begin{code}
  biinv : (A → B) → Type (ℓ₁ ⊔ ℓ₂)
  biinv f = linv f × rinv f

  biinverse  = biinv
  bi-inverse = biinv
\end{code}

A desire consequence (qinv → biinv):


\begin{code}
  qinv-biinv : (f : A → B) → qinv f → biinv f
  qinv-biinv f (g , (u1 , u2)) = (g , u2) , (g , u1)

  biinv-qinv : (f : A → B) → biinv f → qinv f
  biinv-qinv f ((h , α) , (g , β)) = g , (β , δ)
    where
      γ1 : g ∼ ((h ∘ f) ∘ g)
      γ1 = rcomp-∼ g (h-sym (h ∘ f) id α)

      γ2 : ((h ∘ f) ∘ g) ∼ (h ∘ (f ∘ g))
      γ2 x = idp

      γ : g ∼ h
      γ = γ1 ● (γ2 ● (lcomp-∼ h β))

      δ : (g ∘ f) ∼ id
      δ = (rcomp-∼ f γ) ● α

  equiv-biinv : (f : A → B) → isContrMap f → biinv f
  equiv-biinv f contrf =
    (remap eq , rlmap-inverse-h eq) , (remap eq , lrmap-inverse-h eq)
    where
      eq : A ≃ B
      eq = f , contrf

  -- Quasiinverses are halfadjoint equivalences.
  qinv-ishae : {f : A → B} → qinv f → ishae f
  qinv-ishae {f} (g , (ε , η)) = record {
      g = g ;
      η = η ;
      ε = λ b → inv (ε (f (g b))) · ap f (η (g b)) · ε b ;
      τ = τ
    }
    where
      aux-lemma : (a : A) → ap f (η (g (f a))) · ε (f a) == ε (f (g (f a))) · ap f (η a)
      aux-lemma a =
        begin
          ap f (η ((g ∘ f) a)) · ε (f a)
            ==⟨ ap (λ u → ap f u · ε (f a)) (h-naturality-id η) ⟩
          ap f (ap (g ∘ f) (η a)) · ε (f a)
            ==⟨ ap (_· ε (f a)) (ap-comp (g ∘ f) f (η a)) ⟩
          ap (f ∘ (g ∘ f)) (η a) · ε (f a)
            ==⟨ inv (h-naturality (λ x → ε (f x)) (η a)) ⟩
          ε (f (g (f a))) · ap f (η a)
        ∎

      τ : (a : A) → ap f (η a) == (inv (ε (f (g (f a)))) · ap f (η (g (f a))) · ε (f a))
      τ a =
        begin
          ap f (η a)
            ==⟨ ap (_· ap f (η a)) (inv (·-linv (ε (f (g (f a)))))) ⟩
          inv (ε (f (g (f a)))) · ε (f (g (f a))) · ap f (η a)
            ==⟨ ·-assoc (inv (ε (f (g (f a))))) _ (ap f (η a)) ⟩
          inv (ε (f (g (f a)))) · (ε (f (g (f a))) · ap f (η a))
            ==⟨ ap (inv (ε (f (g (f a)))) ·_) (inv (aux-lemma a)) ⟩
          inv (ε (f (g (f a)))) · (ap f (η (g (f a))) · ε (f a))
            ==⟨ inv (·-assoc (inv (ε (f (g (f a))))) _ (ε (f a))) ⟩
          inv (ε (f (g (f a)))) · ap f (η (g (f a))) · ε (f a)
        ∎
\end{code}


Quasiinverses create equivalences.

{: .foldable until="5"}
\begin{code}
  qinv-≃
    : (f : A → B)
    → qinv f
    -------------
    → A ≃ B

  qinv-≃ f = ishae-≃ ∘ qinv-ishae
\end{code}

{: .foldable until="4" }
\begin{code}
  ≃-qinv
    : A ≃ B
    ----------------
    → Σ (A → B) qinv

  ≃-qinv eq =
    lemap eq , (remap eq , (lrmap-inverse-h eq , rlmap-inverse-h eq))
\end{code}


Half-adjoint equivalences are quasiinverses.

{: .foldable until="5" }
\begin{code}
  ishae-qinv
    : {f : A → B}
    → ishae f
    ---------
    → qinv f

  ishae-qinv {f} (hae g η ε τ) = g , (ε , η)
\end{code}

{: .foldable until="4"}
\begin{code}
  ≃-ishae
    : (e : A ≃ B)
    --------------
    → ishae (e ∙→)

  ≃-ishae e = qinv-ishae (π₂ (≃-qinv e))
\end{code}
