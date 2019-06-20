---
layout: page
title: "Lemmas about transport "
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
  : ∀ {A : Type ℓᵢ} {a₁ a₂ : A} {C : A → Type ℓⱼ}
  → (α : a₁ == a₂)
  → (u : C a₁)
  -----------------------------
  → (a₁ , u) == (a₂ , tr C α u)

lift {a₁ = a₁} idp u = refl (a₁ , u)
\end{code}

\begin{code}
transport-const
  : ∀ {A : Type ℓᵢ} {a₁  a₂ : A} {B : Type ℓⱼ}
  → (p : a₁ == a₂)
  → (b : B)
  -----------------------
  → tr (λ _ → B) p b == b

transport-const idp b = refl b
\end{code}

\begin{code}
transport-inv-l
  : ∀ {A : Type ℓᵢ} {P : A → Type ℓⱼ}  {a a' : A}
  → (p : a == a')
  → (b : P a')
  --------------------------------------------
  → tr P p (tr P (! p) b) == b

transport-inv-l idp b = idp
\end{code}

\begin{code}
transport-inv-r
  : ∀ {A : Type ℓᵢ} {P : A → Type ℓⱼ}  {a a' : A}
  → (p : a == a')
  → (b : P a)
  --------------------------------------------
  → tr P (! p) (tr P p b) == b

transport-inv-r idp _ = idp

-- synonyms
tr-inverse = transport-inv-r
\end{code}

\begin{code}
transport-concat-r
  : ∀ {A : Type ℓᵢ} {a : A} {x y : A}
  → (p : x == y)
  → (q : a == x)
  ---------------------------------
  → tr (λ x → a == x) p q == q · p

transport-concat-r idp q = ·-runit q
\end{code}

{: .foldable until="6" }
\begin{code}
transport-concat-l
  : ∀ {A : Type ℓᵢ} {a : A} {x y : A}
  → (p : x == y)
  → (q : x == a)
  ----------------------------------
  → tr (λ x → x == a) p q == ! p · q

transport-concat-l idp q = idp
\end{code}

{: .foldable until="6" }
\begin{code}
transport-concat
  : ∀ {A : Type ℓᵢ} {x y : A}
  → (p : x == y)
  → (q : x == x)
  ---------------------------------------
  → tr (λ x → x == x) p q == ! p · q · p

transport-concat idp q = ·-runit q
\end{code}

{: .foldable until="7" }
\begin{code}
transport-eq-fun
  : ∀ {A : Type ℓᵢ} {B : Type ℓⱼ}
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
  : ∀ {A : Type ℓᵢ} {a b c : A} {P : A → Type ℓⱼ}
  → (p : a == b)
  → (q : b == c)
  ---------------------------------------
  → ((tr P q) ∘ (tr P p)) == tr P (p · q)

transport-comp {P = P} idp q = refl (transport P q)
\end{code}

{: .foldable until="7" }
\begin{code}
transport-comp-h
  : ∀ {A : Type ℓᵢ} {a b c : A} {P : A → Type ℓⱼ}
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
  : ∀ {A : Type ℓᵢ} {B : Type ℓⱼ} {b : B} (f : A → B) {x y : A}
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
  : ∀ {A : Type ℓᵢ} {B : Type ℓⱼ} {b : B}
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
  : ∀ {X : Type ℓᵢ}{A : X → Type ℓⱼ}{x y : X}
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
  : ∀ {A B : Type ℓ}
  → (p : A == B)
  → (b : B)
  --------------------------------------------
  → tr (λ v → v) p (tr (λ v → v) (! p) b) == b

coe-inv-l idp b = idp
\end{code}

{: .foldable until="6" }
\begin{code}
coe-inv-r
  : ∀ {A B : Type ℓ}
  → (p : A == B)
  → (a : A)
  ---------------------------------------------
  → tr (λ v → v) (! p) (tr (λ v → v) p a) == a

coe-inv-r idp b = idp
\end{code}

{: .foldable until="7" }
\begin{code}
transport-family
  : ∀ {A : Type ℓᵢ} {B : Type ℓⱼ} {P : B → Type ℓₖ}
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
  : ∀ {A : Type ℓᵢ} {P : A → Type ℓₖ} → {x y : A}
  → (p : x == y)
  → (u : P x)
  ----------------------------------------------
  → transport (λ a → P a) p u == transport P p u

transport-family-id idp u = idp
\end{code}

{: .foldable until="7" }
\begin{code}
transport-fun
  : ∀ {X : Type ℓᵢ} {x y : X}
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
  : ∀ {X : Type ℓᵢ} {A : X → Type ℓⱼ} {B : X → Type ℓₖ}
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
  : ∀ {X : Type ℓᵢ} {A : X → Type ℓⱼ}
  → {B : (x : X) → (a : A x) → Type ℓₖ} {x y : X}
  → (p : x == y)
  → (f : (a : A x) → B x a)
  ---------------------------------------------------------------------
  → (a' : A y)
  → (tr (λ x → (a : A x) → B x a) p f) a'
    == tr (λ w → B (π₁ w) (π₂ w)) (! lift (! p) a' ) (f (tr A (! p) a'))

transport-fun-dependent-h idp f a' = idp
\end{code}

\begin{code}
-- synonyms
dependent-back-and-forth-h = transport-fun-dependent-h
\end{code}

{: .foldable until="9" }
\begin{code}
transport-fun-dependent
  : ∀ {X : Type ℓᵢ} {A : X → Type ℓⱼ}
  → {B : (x : X) → (a : A x) → Type ℓₖ} {x y : X}
  → (p : x == y)
  → (f : (a : A x) → B x a)
  ---------------------------------------------------------------------
  → (tr (λ x → (a : A x) → B x a) p f)
    == λ (a' : A y)
      → tr (λ w → B (π₁ w) (π₂ w)) (! lift (! p) a' ) (f (tr A (! p) a'))

transport-fun-dependent idp f = idp
\end{code}

\begin{code}
-- synonyms
dependent-back-and-forth = transport-fun-dependent
\end{code}

When using pathovers, we may need one of these identities:

\begin{code}
fibre-app-≡
  : ∀ {A : Type ℓᵢ} {B : A → Type ℓⱼ}
  → (f : (a : A) → B a)
  → {a₁ a₂ : A}  → (α : a₁ == a₂)
  -------------------------------
  → f a₁ ≡ f a₂ [ B / α ]

fibre-app-≡ f idp = idp
\end{code}


{: .foldable until="9"}
\begin{code}
apOver
  : ∀ {A A' : Type ℓᵢ} {C : A → Type ℓⱼ} {C' : A' → Type ℓₖ}  -- types
  → {a a' : A} {b : C a} {b' : C a'}                         -- points
  → (f : A → A')
  → (g : {x : A} → C x → C' (f x))
  → (p : a == a')
  →      b == b' [ C ↓ p ]
  --------------------------------
  →    g b == g b' [ C' ↓ ap f p ]

apOver f g idp q = ap g q
\end{code}


## Action on dependent paths

{: .foldable until="5"}
\begin{code}
apd
  : ∀ {A : Type ℓᵢ}  {P : A → Type ℓⱼ} {a b : A}
  → (f : (a : A) → P a) → (p : a == b)
  ------------------------------------
  → transport P p (f a) == f b

apd f idp = idp
\end{code}
