---
layout: page
title: "Lemmas about transport "
permalink : /transport-lemmas/
category: lemmas functions transport
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
open import Transport public
\end{code}
</div>


Some lemmas on the transport operation

{: .foldable until="6" }
\begin{code}
lift
  : ∀ {ℓᵢ} {A : Type ℓᵢ} {a₁ a₂ : A} {ℓⱼ} {C : A → Type ℓⱼ}
  → (u : C a₁)
  → (α : a₁ == a₂)
  -----------------------------
  → (a₁ , u) == (a₂ , tr C α u)

lift {a₁ = a₁} u idp = refl (a₁ , u)
\end{code}

{: .foldable until="6" }
\begin{code}
transport-const
  : ∀ {ℓᵢ} {A : Type ℓᵢ} {a₁  a₂ : A} {ℓⱼ} {B : Type ℓⱼ}
  → (p : a₁ == a₂)
  → (b : B)
  -----------------------
  → tr (λ _ → B) p b == b

transport-const idp b = refl b
\end{code}

{: .foldable until="6" }
\begin{code}
transport-inv-l
  : ∀ {ℓ₁ ℓ₂} {A : Type ℓ₁} {P : A → Type ℓ₂}  {a a' : A}
  → (p : a == a')
  → (b : P a')
  --------------------------------------------
  → tr P p (tr P (! p) b) == b

transport-inv-l idp b = idp
\end{code}

{: .foldable until="6" }
\begin{code}
transport-inv-r
  : ∀ {ℓ₁ ℓ₂} {A : Type ℓ₁} {P : A → Type ℓ₂}  {a a' : A}
  → {p : a == a'}
  → {b : P a}
  --------------------------------------------
  → tr P (! p) (tr P p b) == b

transport-inv-r {p = idp} {b} = idp
\end{code}

{: .foldable until="6" }
\begin{code}
transport-concat-r
  : ∀ {ℓᵢ} {A : Type ℓᵢ} {a : A} {x y : A}
  → (p : x == y)
  → (q : a == x)
  ---------------------------------
  →  tr (λ x → a == x) p q == q · p

transport-concat-r idp q = ·-runit q
\end{code}

{: .foldable until="6" }
\begin{code}
transport-concat-l
  : ∀ {ℓᵢ} {A : Type ℓᵢ} {a : A} {x y : A}
  → (p : x == y)
  → (q : x == a)
  ----------------------------------
  → tr (λ x → x == a) p q == ! p · q

transport-concat-l idp q = idp
\end{code}

{: .foldable until="6" }
\begin{code}
transport-concat
  : ∀ {ℓᵢ} {A : Type ℓᵢ} {x y : A}
  → (p : x == y)
  → (q : x == x)
  ---------------------------------------
  → tr (λ x → x == x) p q == ! p · q · p

transport-concat idp q = ·-runit q
\end{code}

{: .foldable until="7" }
\begin{code}
transport-eq-fun
  : ∀ {ℓᵢ} {A : Type ℓᵢ} {ℓⱼ} {B : Type ℓⱼ}
  → (f g : A → B) {x y : A}
  → (p : x == y)
  → (q : f x == g x)
  --------------------------------------------------------
  → tr (λ z → f z == g z) p q == ! (ap f p) · q · (ap g p)

transport-eq-fun f g idp q = ·-runit q
\end{code}

{: .foldable until="6" }
\begin{code}
transport-comp
  : ∀ {ℓᵢ} {A : Type ℓᵢ}{ℓⱼ} {a b c : A} {P : A → Type ℓⱼ}
  → (p : a == b)
  → (q : b == c)
  ---------------------------------------
  → ((tr P q) ∘ (tr P p)) == tr P (p · q)

transport-comp {P = P} idp q = refl (transport P q)
\end{code}

{: .foldable until="7" }
\begin{code}
transport-comp-h
  : ∀ {ℓᵢ} {A : Type ℓᵢ} {ℓⱼ} {a b c : A} {P : A → Type ℓⱼ}
  → (p : a == b)
  → (q : b == c)
  → (x : P a)
  -------------------------------------------
  → ((tr P q) ∘ (tr P p)) x == tr P (p · q) x

transport-comp-h {P = P} idp q x = refl (transport P q x)
\end{code}

{: .foldable until="6" }
\begin{code}
transport-eq-fun-l
  : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {B : Type ℓⱼ} {b : B} (f : A → B) {x y : A}
  → (p : x == y)
  → (q : f x == b)
  -------------------------------------------
  → tr (λ z → f z == b) p q == ! (ap f p) · q

transport-eq-fun-l {b = b} f p q =
  begin
    transport (λ z → f z == b) p q   ==⟨ transport-eq-fun f (λ _ → b) p q ⟩
    ! (ap f p) · q · ap (λ _ → b) p  ==⟨ ap (! (ap f p) · q ·_) (ap-const p) ⟩
    ! (ap f p) · q · idp             ==⟨ ! (·-runit _) ⟩
    ! (ap f p) · q
  ∎
\end{code}

{: .foldable until="7" }
\begin{code}
transport-eq-fun-r
  : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {B : Type ℓⱼ} {b : B}
  → (g : A → B) {x y : A}
  → (p : x == y)
  → (q : b == g x)
  -----------------------------------------
  → tr (λ z → b == g z) p q == q · (ap g p)

transport-eq-fun-r {b = b} g p q =
  begin
    transport (λ z → b == g z) p q    ==⟨ transport-eq-fun (λ _ → b) g p q ⟩
    ! (ap (λ _ → b) p) · q · ap g p   ==⟨ ·-assoc (! (ap (λ _ → b) p)) q (ap g p) ⟩
    ! (ap (λ _ → b) p) · (q · ap g p) ==⟨ ap (λ u → ! u · (q · ap g p)) (ap-const p) ⟩
    (q · ap g p)
  ∎
\end{code}

{: .foldable until="6" }
\begin{code}
transport-inv
  : ∀ {ℓᵢ ℓⱼ} {X : Type ℓᵢ}{A : X → Type ℓⱼ}{x y : X}
  → (p : x == y)
  → {a : A y}
  --------------------------------------
  → tr (λ v → A v) p (tr A (! p) a) == a

transport-inv {A = A}  idp {a = a} =
  begin
    tr (λ v → A v) idp (tr A (! idp) a)
      ==⟨ idp ⟩
    tr A (! idp · idp) a
      ==⟨⟩
    tr A idp a
      ==⟨ idp ⟩
    a
  ∎
\end{code}

{: .foldable until="6" }
\begin{code}
coe-inv-l
  : ∀ {ℓ} {A B : Type ℓ}
  → (p : A == B)
  → (b : B)
  --------------------------------------------
  → tr (λ v → v) p (tr (λ v → v) (! p) b) == b

coe-inv-l idp b = idp
\end{code}

{: .foldable until="6" }
\begin{code}
coe-inv-r
  : ∀ {ℓ} {A B : Type ℓ}
  → (p : A == B)
  → (a : A)
  ---------------------------------------------
  → tr (λ v → v) (! p) (tr (λ v → v) p a) == a

coe-inv-r idp b = idp
\end{code}

{: .foldable until="7" }
\begin{code}
transport-family
  : ∀ {ℓᵢ ℓⱼ ℓₖ} {A : Type ℓᵢ} {B : Type ℓⱼ} {P : B → Type ℓₖ}
  → {f : A → B} → {x y : A}
  → (p : x == y)
  → (u : P (f x))
  -----------------------------------
  → tr (P ∘ f) p u == tr P (ap f p) u

transport-family idp u = idp
\end{code}

{: .foldable until="6" }
\begin{code}
transport-family-id
  : ∀ {ℓᵢ ℓₖ} {A : Type ℓᵢ} {P : A → Type ℓₖ} → {x y : A}
  → (p : x == y)
  → (u : P x)
  ----------------------------------------------
  → transport (λ a → P a) p u == transport P p u

transport-family-id idp u = idp
\end{code}

{: .foldable until="7" }
\begin{code}
transport-fun
  : ∀ {ℓᵢ ℓⱼ ℓₖ} {X : Type ℓᵢ} {x y : X}
  → {A : X → Type ℓⱼ} {B : X → Type ℓₖ}
  → (p : x == y)
  → (f : A x → B x)
  -----------------------------------------------------------------
  → tr (λ x → (A x → B x)) p f == (λ x → tr B p (f (tr A (! p) x)))

transport-fun idp f = idp
\end{code}

\begin{code}
-- synonyms
back-and-forth = transport-fun
\end{code}

![path](/assets/ipe-images/transport-fun.png){: width="100%" }

{: .foldable until="7" }
\begin{code}
transport-fun-h
  : ∀ {ℓᵢ ℓⱼ ℓₖ} {X : Type ℓᵢ} {A : X → Type ℓⱼ} {B : X → Type ℓₖ}
  → {x y : X}
  → (p : x == y) → (f : A x → B x)
  → (b : A y)
  --------------------------------------------------------------
  → (tr (λ x → (A x → B x)) p f) b == tr B p (f (tr A (! p) b))

transport-fun-h idp f b = idp
\end{code}

\begin{code}
-- synonyms
back-and-forth-h = transport-fun-h
\end{code}

Now, when we transport dependent functions this is what we got:

![path](/assets/ipe-images/transport-fun-dependent.png){: width="100%" }

{: .foldable until="9" }
\begin{code}
transport-fun-dependent-h
  : ∀ {ℓᵢ ℓⱼ ℓₖ} {X : Type ℓᵢ} {A : X → Type ℓⱼ}
  → {B : (x : X) → (a : A x) → Type ℓₖ} {x y : X}
  → (p : x == y)
  → (f : (a : A x) → B x a)
  ---------------------------------------------------------------------
  → (a' : A y)
  → (tr (λ x → (a : A x) → B x a) p f) a'
    == tr (λ w → B (π₁ w) (π₂ w)) (! lift a' (! p)) (f (tr A (! p) a'))

transport-fun-dependent-h idp f a' = idp
\end{code}

\begin{code}
-- synonyms
dependent-back-and-forth-h = transport-fun-dependent-h
\end{code}

{: .foldable until="9" }
\begin{code}
transport-fun-dependent
  : ∀ {ℓᵢ ℓⱼ ℓₖ} {X : Type ℓᵢ} {A : X → Type ℓⱼ}
  → {B : (x : X) → (a : A x) → Type ℓₖ} {x y : X}
  → (p : x == y)
  → (f : (a : A x) → B x a)
  ---------------------------------------------------------------------
  → (tr (λ x → (a : A x) → B x a) p f)
    == λ (a' : A y)
      → tr (λ w → B (π₁ w) (π₂ w)) (! lift a' (! p)) (f (tr A (! p) a'))

transport-fun-dependent idp f = idp
\end{code}

\begin{code}
-- synonyms
dependent-back-and-forth = transport-fun-dependent
\end{code}

Action on PathOvers, this was suggested by Fredrik Nordvall:

{: .foldable until="9"}
\begin{code}
apOver
  : {A A' : Type₀} {C : A → Type₀} {C' : A' → Type₀}  -- types
  → {a a' : A} {b : C a} {b' : C a'}                  -- points
  → (f : A → A')
  → (g : {x : A} → C x → C' (f x))
  → (p : a == a')
  → b == b' [ C ↓ p ]
  --------------------------------
  → g b == g b' [ C' ↓ ap f p ]

apOver f g idp q = ap g q
\end{code}

## Basic type lemmas

### Sigma type

Our context:

\begin{code}
module Sigma {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {P : A → Type ℓⱼ} where
\end{code}

Two dependent pairs are equal if they are componentwise equal.

{: .foldable until="6"}
\begin{code}
  -- Lemma.
  Σ-componentwise
    : ∀ {v w : Σ A P}
    → v == w
    ----------------------------------------------
    → Σ (π₁ v == π₁ w) (λ p → (p ✶) (π₂ v) == π₂ w)

  Σ-componentwise  idp = (idp , idp)
\end{code}

{: .foldable until="6"}
\begin{code}
  -- Lemma.
  Σ-bycomponents
    : ∀ {v w : Σ A P}
    → Σ (π₁ v == π₁ w) (λ p → (p ✶) (π₂ v) == π₂ w)
    -----------------------------------------------
    → v == w

  Σ-bycomponents (idp , idp) = idp

  -- synonym of Σ-bycomponents
  pair= = Σ-bycomponents
\end{code}

A trivial consequence is the following identification:

{: .foldable until="6"}
\begin{code}
-- Lemma.
  lift-pair=
    : ∀ {x y : A} {u : P x}
    → (p : x == y)
    --------------------------------------------------------
    → lift {A = A}{C = P} u p == pair= (p , refl (tr P p u))

  lift-pair= idp = idp
\end{code}

\begin{code}
-- Uniqueness principle property for products
  uppt : (x : Σ A P) → (π₁ x , π₂ x) == x
  uppt (a , b) = idp
\end{code}

{: .foldable until="7"}
\begin{code}
-- Lemma.
  Σ-ap-π₁
    : {a₁ a₂ : A} {b₁ : P a₁} {b₂ : P a₂}
    → (α : a₁ == a₂)
    → (γ : transport P α b₁ == b₂)
    ------------------------------
    → ap π₁ (pair= (α , γ)) == α

  Σ-ap-π₁ idp idp = idp

  -- synonym for this lemma
  ap-π₁-pair= = Σ-ap-π₁
\end{code}

\begin{code}
open Sigma public
\end{code}

{: .foldable until="10"}
\begin{code}
transport-fun-dependent-bezem
  : ∀ {ℓᵢ ℓⱼ} {X : Type ℓᵢ} {A : X → Type ℓⱼ}
      {B : (x : X) → (a : A x) → Type ℓⱼ} {x y : X}
  → (p : x == y)
  → (f : (a : A x) → B x a)
  → (a' : A y)
  ----------------------------------------------------------
  → (tr (λ x → (a : A x) → B x a) p f) a'
    == tr (λ w → B (π₁ w) (π₂ w))
          (pair= (p , transport-inv p )) (f (tr A (! p) a'))

transport-fun-dependent-bezem idp f a' = idp
\end{code}


### Cartesian product

\begin{code}
module CartesianProduct {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {B : Type ℓⱼ} where
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

## Action on dependent paths

{: .foldable until="5"}
\begin{code}
apd
  : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ}  {P : A → Type ℓⱼ} {a b : A}
  → (f : (a : A) → P a) → (p : a == b)
  ------------------------------------
  → transport P p (f a) == f b

apd f idp = idp
\end{code}
