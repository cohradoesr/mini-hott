---
layout: page
title: "Homotopy Lemmas"
permalink : /homotopy-lemmas/
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
open import Transport
open import HomotopyType
\end{code}
</div>

## Composition with homotopies

{: .foldable until="8"}
\begin{code}
-- Lemma.
hl-comp
  : ∀ {ℓᵢ ℓⱼ ℓₖ} {A : Type ℓᵢ} {B : Type ℓⱼ} {C : Type ℓₖ}
  → {f g : A → B}
  → {j k : B → C}
  → f ∼ g
  → j ∼ k
  -------------------
  → (j ∘ f) ∼ (k ∘ g)

hl-comp {g = g}{j = j} f-g j-k = λ x → ap j (f-g x) · j-k (g x)
\end{code}


{: .foldable until="8"}
\begin{code}
-- Lemma.
rcomp-∼
  : ∀ {ℓᵢ ℓⱼ ℓₖ} {A : Type ℓᵢ} {B : Type ℓⱼ} {C : Type ℓₖ}
  → (f : A → B)
  → {j k : B → C}
  → j ∼ k
  -------------------
  → (j ∘ f) ∼ (k ∘ f)

rcomp-∼ f j-k = hl-comp (h-refl f) j-k
\end{code}

{: .foldable until="8"}
\begin{code}
-- Lemma.
lcomp-∼
  : ∀ {ℓᵢ ℓⱼ ℓₖ} {A : Type ℓᵢ} {B : Type ℓⱼ} {C : Type ℓₖ}
  → {f g : A → B}
  → (j : B → C)
  → f ∼ g
  -------------------
  → (j ∘ f) ∼ (j ∘ g)

lcomp-∼ j α = hl-comp α (h-refl j)
\end{code}


### Naturality

Homotopy is natural, meaning that it satisfies the following
square commutative diagram.

![path](/assets/ipe-images/h-naturality.png){: width="40%" }

{: .foldable until="7"}
\begin{code}
-- Lemma.
h-naturality
  : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {B : Type ℓⱼ}
  → {f g : A → B} → {x y : A}
  → (H : f ∼ g)
  → (p : x == y)
  ------------------------------
  → H x · ap g p == ap f p · H y

h-naturality {x = x} H idp = ! (·-runit (H x))
\end{code}


A particular case of naturality on the identity function.

{: .foldable until="6"}
\begin{code}
-- Lemma.
h-naturality-id
  : ∀ {ℓ} {A : Type ℓ} {f : A → A} → {x : A}
  → (H : f ∼ id)
  -----------------------
  → H (f x) == ap f (H x)

h-naturality-id {f = f} {x = x} H =
  begin
    H (f x)
      ==⟨ ·-runit (H (f x)) ⟩
    H (f x) · refl (f x)
      ==⟨ ap (H (f x) ·_) (! (·-rinv (H x))) ⟩
    H (f x) · ((H x) · (! (H x)))
      ==⟨ ap (H (f x) ·_) (ap (_· (! (H x))) (! ap-id (H x))) ⟩
    H (f x) · (ap id (H x) · ! (H x))
      ==⟨ ! (·-assoc (H (f x)) (ap id (H x)) (! (H x))) ⟩
    (H (f x) · ap id (H x)) · ! (H x)
      ==⟨ ·-right-to-left-r (h-naturality H (H x)) ⟩
    ap f (H x)
  ∎
\end{code}
