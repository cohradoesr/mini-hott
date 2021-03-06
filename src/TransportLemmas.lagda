---
layout: page
title: "Lemmas about transport "
category: lemmas functions transport
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

open import Transport public
\end{code}
</div>

## Transport Lemmas

{: .foldable until="6" }
\begin{code}
lift
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁} {a₁ a₂ : A} {C : A → Type ℓ₂}
  → (α : a₁ == a₂)
  → (u : C a₁)
  -----------------------------
  → (a₁ , u) == (a₂ , tr C α u)

lift {a₁ = a₁} idp u = refl (a₁ , u)
\end{code}

{: .foldable until="6" }
\begin{code}
transport-const
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁} {a₁  a₂ : A} {B : Type ℓ₂}
  → (p : a₁ == a₂)
  → (b : B)
  -----------------------
  → tr (λ _ → B) p b == b

transport-const idp b = refl b
\end{code}

{: .foldable until="7" }
\begin{code}
transport²
  : ∀ {ℓ₁ ℓ₂ : Level}{A : Type ℓ₁}{P : A → Type ℓ₂}
  → {x y : A} {p q : x ≡ y}
  → (r : p ≡ q)
  → (u : P x)
  --------------------------------
  → (tr P p u) ≡ (tr P q u)

transport² idp u = idp
\end{code}


{: .foldable until="6" }
\begin{code}
transport-inv-l
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{P : A → Type ℓ₂} {a a' : A}
  → (p : a == a')
  → (b : P a')
  ----------------------------
  → tr P p (tr P (! p) b) == b

transport-inv-l idp b = idp
\end{code}

{: .foldable until="6" }
\begin{code}
transport-inv-r
  :  ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{P : A → Type ℓ₂}  {a a' : A}
  → (p : a == a')
  → (b : P a)
  --------------------------------------------
  → tr P (! p) (tr P p b) == b

transport-inv-r idp _ = idp
\end{code}

Synonyms:

\begin{code}
tr-inverse = transport-inv-r
\end{code}


{: .foldable until="6" }
\begin{code}
transport-concat-r
  : ∀ {ℓ : Level} {A : Type ℓ} {a : A} {x y : A}
  → (p : x == y)
  → (q : a == x)
  ---------------------------------
  → tr (λ x → a == x) p q == q · p

transport-concat-r idp q = ·-runit q
\end{code}


{: .foldable until="6" }
\begin{code}
transport-concat-l
  : ∀ {ℓ : Level} {A : Type ℓ} {a : A} {x y : A}
  → (p : x == y)
  → (q : x == a)
  ----------------------------------
  → tr (λ x → x == a) p q == (! p) · q

transport-concat-l idp q = idp
\end{code}

{: .foldable until="8" }
\begin{code}
move-transport
  : ∀ {ℓ₁ ℓ₂ : Level}{A : Type ℓ₁}{B : A → Type ℓ₂}
  → {a₁ a₂ : A}
  → {α : a₁ ≡ a₂}
  → {b₁ : B a₁}{b₂ : B a₂}
  → (tr B α b₁ ≡ b₂)
  ----------------------
  → (b₁ ≡ tr B (! α) b₂)

move-transport {α = idp} idp = idp
\end{code}


\begin{code}
transport-concat
  : ∀ {ℓ : Level} {A : Type ℓ} {x y : A}
  → (p : x == y)
  → (q : x == x)
  ---------------------------------------
  → tr (λ x → x == x) p q == (! p · q) · p

transport-concat idp q = ·-runit q
\end{code}

{: .foldable until="7" }
\begin{code}
transport-eq-fun
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}
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
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁} {a b c : A} {P : A → Type ℓ₂}
  → (p : a == b)
  → (q : b == c)
  ---------------------------------------
  → ((tr P q) ∘ (tr P p)) == tr P (p · q)

transport-comp {P = P} idp q = refl (transport P q)
\end{code}

{: .foldable until="7" }
\begin{code}
transport-comp-h
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁} {a b c : A} {P : A → Type ℓ₂}
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
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}  {b : B}
  → (f : A → B) {x y : A}
  → (p :   x == y)           → (q : f x == b)
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
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂} {b : B}
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
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{P : A → Type ℓ₂} {a a' : A}
  → (p : a == a')
  → {a : P a'}
  --------------------------------------
  → tr (λ x → P x) p (tr P (! p) a) == a

transport-inv {P = P}  idp {a = a} =
  begin
    tr (λ v → P v) idp (tr P (! idp) a)
      ==⟨ idp ⟩
    tr P (! idp · idp) a
      ==⟨⟩
    tr P idp a
      ==⟨ idp ⟩
    a
  ∎
\end{code}

{: .foldable until="6" }
\begin{code}
coe-inv-l
  : ∀ {ℓ : Level} {A B : Type ℓ}
  → (p : A == B)
  → (b : B)
  --------------------------------------------
  → tr (λ v → v) p (tr (λ v → v) (! p) b) == b

coe-inv-l idp b = idp
\end{code}

{: .foldable until="6" }
\begin{code}
coe-inv-r
  : ∀ {ℓ : Level} {A B : Type ℓ}
  → (p : A == B)
  → (a : A)
  ---------------------------------------------
  → tr (λ v → v) (! p) (tr (λ v → v) p a) == a

coe-inv-r idp b = idp
\end{code}

{: .foldable until="7" }
\begin{code}
transport-family
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁} {B : Type ℓ₂} {P : B → Type ℓ₃}
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
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{P : A → Type ℓ₂}  → {x y : A}
  → (p : x == y)
  → (u : P x)
  ----------------------------------------------
  → transport (λ a → P a) p u == transport P p u

transport-family-id idp u = idp
\end{code}

{: .foldable until="8" }
\begin{code}
transport-fun-coe
  : ∀ {ℓ : Level} {A B : Type ℓ}
  → (α : A ≡ B)
  → (f : A → A)
  → (g : B → B)
  →     f == g [ (λ X → (X → X)) ↓ α ]
  -------------------------------------
  →  f :> coe α == (coe α) :> g

transport-fun-coe idp _ _ idp = idp
\end{code}

![path]({{ site.baseurl }}/assets/images/transport-fun.png){: width="80%" align="center" }

{: .foldable until="8" }
\begin{code}
transport-fun
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {X : Type ℓ₁} {x y : X}
  → {A : X → Type ℓ₂} {B : X → Type ℓ₃}
  → (p : x ≡ y)
  → (f : A x → B x)
  ------------------------------------------
  → f ≡  ((λ a → tr B p (f (tr A (! p) a))))
      [ (λ x → A x → B x) / p ]

transport-fun idp f = idp

\end{code}

\begin{code}
back-and-forth = transport-fun
\end{code}

{: .foldable until="8" }
\begin{code}
transport-fun-h
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {X : Type ℓ₁}
  → {A : X → Type ℓ₂} {B : X → Type ℓ₃}
  → {x y : X}
  → (p : x == y) → (f : A x → B x)
  → (b : A y)
  ---------------------------------
  → (tr (λ x → (A x → B x)) p f) b
  == tr B p (f (tr A (! p) b))

transport-fun-h idp f b = idp
\end{code}

Synonyms:
\begin{code}
back-and-forth-h = transport-fun-h
\end{code}

Now, when we transport dependent functions this is what we got:

![path]({{ site.baseurl }}/assets/images/transport-fun-dependent.png){: width="100%" align="center" }

{: .foldable until="9" }
\begin{code}
transport-fun-dependent-h
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level}{X : Type ℓ₁} {A : X → Type ℓ₂}
  → {B : (x : X) → (a : A x) → Type ℓ₃} {x y : X}
  → (p : x == y)
  → (f : (a : A x) → B x a)
  ---------------------------------------------------------------------
  → (a' : A y)
  → (tr (λ x → (a : A x) → B x a) p f) a'
    == tr (λ w → B (π₁ w) (π₂ w)) (! lift (! p) a' ) (f (tr A (! p) a'))

transport-fun-dependent-h idp f a' = idp
\end{code}

Synonyms:
\begin{code}
dependent-back-and-forth-h = transport-fun-dependent-h
\end{code}

{: .foldable until="9" }
\begin{code}
transport-fun-dependent
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level}{X : Type ℓ₁} {A : X → Type ℓ₂}
  → {B : (x : X) → (a : A x) → Type ℓ₃} {x y : X}
  → (p : x == y)
  → (f : (a : A x) → B x a)
  ---------------------------------------------------------------------
  → (tr (λ x → (a : A x) → B x a) p f)
    == λ (a' : A y)
      → tr (λ w → B (π₁ w) (π₂ w)) (! lift (! p) a' ) (f (tr A (! p) a'))

transport-fun-dependent idp f = idp
\end{code}

Synonyms:
\begin{code}
dependent-back-and-forth = transport-fun-dependent
\end{code}

When using pathovers, we may need one of these identities:

{: .foldable until="9"}
\begin{code}
apOver
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level}{A A' : Type ℓ₁} {C : A → Type ℓ₂} {C' : A' → Type ℓ₃}
  → {a a' : A} {b : C a} {b' : C a'}
  → (f : A → A')
  → (g : {x : A} → C x → C' (f x))
  → (p : a == a')
  →      b == b' [ C ↓ p ]
  --------------------------------
  →    g b == g b' [ C' ↓ ap f p ]

apOver f g idp q = ap g q
\end{code}


## Action on dependent paths

{: .foldable until="6"}
\begin{code}
apd
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{P : A → Type ℓ₂}  {a a' : A}
  → (f : ∏ A P)
  → (p : a ≡ a')
  --------------------------
  → (f a) ≡ (f a') [ P / p ]

apd f idp = idp
\end{code}

Synonyms:

\begin{code}
fibre-app-≡ = apd
\end{code}

{: .foldable until="7" }
\begin{code}
apd²
  : ∀ {ℓ₁ ℓ₂ : Level}{A : Type ℓ₁}{P : A → Type ℓ₂}
  → (f : ∏ A P)
  → {x y : A} {p q : x ≡ y}
  → (r : p ≡ q)
  ---------------------------
  → apd f p  ≡ apd f q [ (λ x≡y → (f x) ≡ (f y) [ P / x≡y ]) / r ]

apd² f idp = idp
\end{code}

\begin{code}
ap2d
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁}{B : A → Type ℓ₂}  {C : Type ℓ₃}
  → (F : ∀ a → B a → C)
  → {a a' : A} {b : B a} {b' : B a'}
  → (p : a == a')
  → (q : b == b' [ B ↓ p ])
  -------------------------
  →  F a b == F a' b'

ap2d F idp idp = idp
\end{code}

{: .foldable until="6"}
\begin{code}
ap-idp
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}
  → (f : A → B)
  → {a a' : A} → (p : a ≡ a')
  ------------------------------------------
  → ap f p == idp [ (λ a → f a ≡ f a') ↓ p ]

ap-idp f idp = idp
\end{code}

{: .foldable until="6" }
\begin{code}
ap-idp'
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}
  → (f g : A → B) → (σ : ∀ a → f a ≡ g a)
  → {a a' : A}    → (p : a' ≡ a)
  --------------------------------------------------------------
  → (! (σ a') · ap f p) · (σ a) == idp [ (\a' → g a' ≡ g a) ↓ p ]

ap-idp' f g σ {a = a} idp =
  begin
    σ a ⁻¹ · idp · σ a
      ≡⟨ ap (\p → p · σ a) (! (·-runit (σ a ⁻¹))) ⟩
     σ a ⁻¹ · σ a
      ≡⟨ ·-linv (σ a) ⟩
    idp
    ∎
\end{code}
