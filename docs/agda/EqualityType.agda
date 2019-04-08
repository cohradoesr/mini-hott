{-# OPTIONS --without-K #-}
open import BasicTypes     public
open import BasicFunctions public
data _==_ {ℓᵢ} {A : Type ℓᵢ} (a : A) : A → Type ℓᵢ where
  idp : a == a

infix 30 _==_
{-# BUILTIN EQUALITY _==_ #-}

-- synonyms for identity type
Path = _==_
refl
  : ∀ {ℓᵢ} {A : Type ℓᵢ}
  → (a : A)
  ---------
  → a == a

refl {ℓᵢ}{A} a = idp {ℓᵢ = ℓᵢ}{A = A}
sym : ∀ {ℓ}{A : Type ℓ}{x y : A} → x == y → y == x
sym idp = idp
J
  : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {a : A}
  → (B : (a' : A) (p : a == a') → Type ℓⱼ)
  → (d : B a idp)
  ----------------------------------------
  → {a' : A} (p : a == a') → B a' p

J {a = a} B d idp = d
J'
  : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {a : A}
  → (B : (a' : A) (p : a' == a) → Type ℓⱼ)
  → (d : B a idp)
  ----------------------------------------
  → {a' : A} (p : a' == a) → B a' p

J' {a = a} B d idp = d
_·_
  : ∀ {ℓ} {A : Type ℓ} {x y z : A}
  → (p : x == y)
  → (q : y == z)
  --------------
  → x == z

_·_ idp q = q

infixl 50 _·_
inv
  : ∀ {ℓ} {A : Type ℓ} {a b : A}
  → a == b
  --------
  → b == a

inv idp = idp

-- synonyms for inverse path
infixl 60 _⁻¹
_⁻¹ = inv

infixr 60 !_
!_  = inv
∘-lassoc
  : ∀ {ℓ} {A B C D : Type ℓ}
  → (h : C → D) → (g : B → C) → (f : A → B)
  -----------------------------------------
  → (h ∘ (g ∘ f)) == ((h ∘ g) ∘ f)

∘-lassoc h g f = idp {a = (λ x → h (g (f x)))}
∘-rassoc
  : ∀ {ℓ} {A B C D : Type ℓ}
  → (h : C → D) → (g : B → C) → (f : A → B)
  -----------------------------------------
  → ((h ∘ g) ∘ f) == (h ∘ (g ∘ f))

∘-rassoc h g f = (∘-lassoc h g f) ⁻¹
data HEq {ℓ} (A : Type ℓ)
           : (B : Type ℓ)
           → (α : A == B) (a : A) (b : B)
           → Type (lsuc ℓ) where
  idp : ∀ {a : A} → HEq A A idp a a
module EquationalReasoning {ℓᵢ} {A : Type ℓᵢ} where
  -- Reasoning.
  _==⟨⟩_
    : ∀ (x {y} : A)
    → x == y → x == y

  _ ==⟨⟩ p = p

  -- synonyms for _==⟨⟩
  _==⟨idp⟩_  = _==⟨⟩_
  _==⟨refl⟩_ = _==⟨⟩_

  infixr 2 _==⟨⟩_
  -- chain
  _==⟨_⟩_
    : (x : A) {y z : A}
    → x == y
    → y == z
    → x == z

  _ ==⟨ thm ⟩ q = thm · q

  infixr 2 _==⟨_⟩_
  -- Q.E.D
  infix 3 _∎
  _∎
    : (x : A)
    → x == x

  _∎ = λ x → idp
  -- Begin
  infix 1 begin_
  begin_
    : {x y : A}
    → x == y
    → x == y

  begin_ p = p
open EquationalReasoning public
