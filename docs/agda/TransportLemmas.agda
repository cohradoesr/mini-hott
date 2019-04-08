{-# OPTIONS --without-K #-}
open import Transport public
lift
  : ∀ {ℓᵢ} {A : Type ℓᵢ} {a₁ a₂ : A} {ℓⱼ} {C : A → Type ℓⱼ}
  → (u : C a₁)
  → (α : a₁ == a₂)
  -----------------------------
  → (a₁ , u) == (a₂ , tr C α u)

lift {a₁ = a₁} u idp = refl (a₁ , u)
transport-const
  : ∀ {ℓᵢ} {A : Type ℓᵢ} {a₁  a₂ : A} {ℓⱼ} {B : Type ℓⱼ}
  → (p : a₁ == a₂)
  → (b : B)
  -----------------------
  → tr (λ _ → B) p b == b

transport-const idp b = refl b
transport-inv-l
  : ∀ {ℓ₁ ℓ₂} {A : Type ℓ₁} {P : A → Type ℓ₂}  {a a' : A}
  → (p : a == a')
  → (b : P a')
  --------------------------------------------
  → tr P p (tr P (! p) b) == b

transport-inv-l idp b = idp
transport-inv-r
  : ∀ {ℓ₁ ℓ₂} {A : Type ℓ₁} {P : A → Type ℓ₂}  {a a' : A}
  → {p : a == a'}
  → {b : P a}
  --------------------------------------------
  → tr P (! p) (tr P p b) == b

transport-inv-r {p = idp} {b} = idp
transport-concat-r
  : ∀ {ℓᵢ} {A : Type ℓᵢ} {a : A} {x y : A}
  → (p : x == y)
  → (q : a == x)
  ---------------------------------
  →  tr (λ x → a == x) p q == q · p

transport-concat-r idp q = ·-runit q
transport-concat-l
  : ∀ {ℓᵢ} {A : Type ℓᵢ} {a : A} {x y : A}
  → (p : x == y)
  → (q : x == a)
  ----------------------------------
  → tr (λ x → x == a) p q == ! p · q

transport-concat-l idp q = idp
transport-concat
  : ∀ {ℓᵢ} {A : Type ℓᵢ} {x y : A}
  → (p : x == y)
  → (q : x == x)
  ---------------------------------------
  → tr (λ x → x == x) p q == ! p · q · p

transport-concat idp q = ·-runit q
transport-eq-fun
  : ∀ {ℓᵢ} {A : Type ℓᵢ} {ℓⱼ} {B : Type ℓⱼ}
  → (f g : A → B) {x y : A}
  → (p : x == y)
  → (q : f x == g x)
  --------------------------------------------------------
  → tr (λ z → f z == g z) p q == ! (ap f p) · q · (ap g p)

transport-eq-fun f g idp q = ·-runit q
transport-comp
  : ∀ {ℓᵢ} {A : Type ℓᵢ}{ℓⱼ} {a b c : A} {P : A → Type ℓⱼ}
  → (p : a == b)
  → (q : b == c)
  ---------------------------------------
  → ((tr P q) ∘ (tr P p)) == tr P (p · q)

transport-comp {P = P} idp q = refl (transport P q)
transport-comp-h
  : ∀ {ℓᵢ} {A : Type ℓᵢ} {ℓⱼ} {a b c : A} {P : A → Type ℓⱼ}
  → (p : a == b)
  → (q : b == c)
  → (x : P a)
  -------------------------------------------
  → ((tr P q) ∘ (tr P p)) x == tr P (p · q) x

transport-comp-h {P = P} idp q x = refl (transport P q x)
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
coe-inv-l
  : ∀ {ℓ} {A B : Type ℓ}
  → (p : A == B)
  → (b : B)
  --------------------------------------------
  → tr (λ v → v) p (tr (λ v → v) (! p) b) == b

coe-inv-l idp b = idp
coe-inv-r
  : ∀ {ℓ} {A B : Type ℓ}
  → (p : A == B)
  → (a : A)
  ---------------------------------------------
  → tr (λ v → v) (! p) (tr (λ v → v) p a) == a

coe-inv-r idp b = idp
transport-family
  : ∀ {ℓᵢ ℓⱼ ℓₖ} {A : Type ℓᵢ} {B : Type ℓⱼ} {P : B → Type ℓₖ}
  → {f : A → B} → {x y : A}
  → (p : x == y)
  → (u : P (f x))
  -----------------------------------
  → tr (P ∘ f) p u == tr P (ap f p) u

transport-family idp u = idp
transport-family-id
  : ∀ {ℓᵢ ℓₖ} {A : Type ℓᵢ} {P : A → Type ℓₖ} → {x y : A}
  → (p : x == y)
  → (u : P x)
  ----------------------------------------------
  → transport (λ a → P a) p u == transport P p u

transport-family-id idp u = idp
transport-fun
  : ∀ {ℓᵢ ℓⱼ ℓₖ} {X : Type ℓᵢ} {x y : X}
  → {A : X → Type ℓⱼ} {B : X → Type ℓₖ}
  → (p : x == y)
  → (f : A x → B x)
  -----------------------------------------------------------------
  → tr (λ x → (A x → B x)) p f == (λ x → tr B p (f (tr A (! p) x)))

transport-fun idp f = idp
-- synonyms
back-and-forth = transport-fun
transport-fun-h
  : ∀ {ℓᵢ ℓⱼ ℓₖ} {X : Type ℓᵢ} {A : X → Type ℓⱼ} {B : X → Type ℓₖ}
  → {x y : X}
  → (p : x == y) → (f : A x → B x)
  → (b : A y)
  --------------------------------------------------------------
  → (tr (λ x → (A x → B x)) p f) b == tr B p (f (tr A (! p) b))

transport-fun-h idp f b = idp
-- synonyms
back-and-forth-h = transport-fun-h
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
-- synonyms
dependent-back-and-forth-h = transport-fun-dependent-h
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
-- synonyms
dependent-back-and-forth = transport-fun-dependent
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
module Sigma {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {P : A → Type ℓⱼ} where
  -- Lemma.
  Σ-componentwise
    : ∀ {v w : Σ A P}
    → v == w
    ----------------------------------------------
    → Σ (π₁ v == π₁ w) (λ p → (p ✶) (π₂ v) == π₂ w)

  Σ-componentwise  idp = (idp , idp)
  -- Lemma.
  Σ-bycomponents
    : ∀ {v w : Σ A P}
    → Σ (π₁ v == π₁ w) (λ p → (p ✶) (π₂ v) == π₂ w)
    -----------------------------------------------
    → v == w

  Σ-bycomponents (idp , idp) = idp

  -- synonym of Σ-bycomponents
  pair= = Σ-bycomponents
-- Lemma.
  lift-pair=
    : ∀ {x y : A} {u : P x}
    → (p : x == y)
    --------------------------------------------------------
    → lift {A = A}{C = P} u p == pair= (p , refl (tr P p u))

  lift-pair= idp = idp
-- Uniqueness principle property for products
  uppt : (x : Σ A P) → (π₁ x , π₂ x) == x
  uppt (a , b) = idp
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
open Sigma public
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
module CartesianProduct {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {B : Type ℓⱼ} where
  -- Lemma.
  prodComponentwise
    : {x y : A × B}
    → (x == y)
    ---------------------------------
    → (π₁ x == π₁ y) × (π₂ x == π₂ y)

  prodComponentwise {x = x} idp = refl (π₁ x) , refl (π₂ x)
  -- Lemma.
  prodByComponents
    : {x y : A × B}
    → (π₁ x == π₁ y) × (π₂ x == π₂ y)
    ---------------------------------
    → (x == y)

  prodByComponents {x = a , b} (idp , idp) = refl (a , b)
  -- Lemma.
  prodCompInverse
    : {x y : A × B}
    → (b : (π₁ x == π₁ y) × (π₂ x == π₂ y))
    ---------------------------------------------
    → prodComponentwise (prodByComponents b) == b

  prodCompInverse {x} (idp , idp) = refl (refl (π₁ x) , refl (π₂ x))
  -- Lemma.
  prodByCompInverse
    : {x y : A × B}
    → (b : x == y)
    ---------------------------------------------
    → prodByComponents (prodComponentwise b) == b

  prodByCompInverse {x = x} idp = refl (refl x)
open CartesianProduct public
apd
  : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ}  {P : A → Type ℓⱼ} {a b : A}
  → (f : (a : A) → P a) → (p : a == b)
  ------------------------------------
  → transport P p (f a) == f b

apd f idp = idp
