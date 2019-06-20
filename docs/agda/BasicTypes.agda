{-# OPTIONS --without-K #-}
open import Intro public
data
  ⊥ {ℓᵢ}
    : Type ℓᵢ
  where
  -- Nothing
Empty = ⊥
𝟘     = ⊥
exfalso
  : ∀ {A : Type ℓ}
  → ⊥ {ℓᵢ}
  --------
  → A

exfalso ()
Empty-elim = exfalso
⊥-elim     = exfalso
𝟘-elim     = exfalso
¬ : Type ℓ → Type ℓ
¬ A = (A → ⊥ {lzero})
record ⊤ : Type ℓ where
  constructor ★

{-# BUILTIN UNIT ⊤ #-}
Unit = ⊤
𝟙    = ⊤
pattern unit = ★
pattern ∗    = ★
record
  ∑ (A : Type ℓᵢ)(B : A → Type ℓⱼ)
   : Type (ℓᵢ ⊔ ℓⱼ)
  where
  constructor _,_
  field
    π₁ : A
    π₂ : B π₁

infixr 60 _,_
open ∑ public
Σ = ∑  -- \Sigma and \sum
proj₁ = π₁
proj₂ = π₂

pr₁   = π₁
pr₂   = π₂

fst   = π₁
snd   = π₂

#     =  π₁
Π
  : (A : Type ℓᵢ) (P : A → Type ℓⱼ)
  --------------------------------
  → Type (ℓᵢ ⊔ ℓⱼ)

Π A P = (x : A) → P x
∏ = Π   -- \prod vs \Pi
_×_
  : (A : Type ℓᵢ) (B : Type ℓⱼ)
  ----------------------------
  → Type (ℓᵢ ⊔ ℓⱼ)

A × B = ∑ A (λ _ → B)

infixl  39 _×_
data
  _+_ (A : Type ℓᵢ) (B : Type ℓⱼ)
    : Type (ℓᵢ ⊔ ℓⱼ)
  where
  inl : A → A + B
  inr : B → A + B

infixr 31 _+_
pattern left  = inl
pattern right = inr
+-elim
  : {A : Type ℓᵢ}{B : Type ℓⱼ}{C : Type ℓₖ}
  → (A → C) → (B → C)
  -------------------
  → (A + B) → C
+-elim A→C B→C (inl x) = A→C x
+-elim A→C B→C (inr x) = B→C x
cases = +-elim

syntax cases f g = ⟨ f + g ⟩
data
  _⇒_ (A B : Type ℓ)
    : Type ℓ
  where
  fun : (A → B) → A ⇒ B
_⇔_
  : ∀ {ℓ₁ ℓ₂}
  → Type ℓ₁ → Type ℓ₂
  -------------------
  → Type (ℓ₁ ⊔ ℓ₂)

A ⇔ B = (A → B) × (B → A)
_↔_ = _⇔_

infix 30 _↔_ _⇔_
data
  Bool
    : Type₀
  where
  true  : Bool
  false : Bool
𝟚  = Bool
pattern 𝟘₂ = false
pattern 𝟙₂ = true

pattern ff = false
pattern tt = true
data
  ℕ
    : Type₀
  where
  zero : ℕ
  succ : ℕ → ℕ
Nat = ℕ

pattern z  = zero
pattern sc = succ

{-# BUILTIN NATURAL ℕ #-}
data
  _==_ {A : Type ℓᵢ} (a : A)
    : A → Type ℓᵢ
  where
  idp : a == a
-- synonyms for the identity type
Eq   = _==_
Id   = _==_
Path = _==_
_⇝_  = _==_   -- '\r~'
_≡_  = _==_   -- '\equiv'

infix 30 _==_ _⇝_ _≡_

{-# BUILTIN EQUALITY _==_  #-}
refl
  : ∀ {A : Type ℓᵢ}
  → (a : A)
  -----------------
  → a == a

refl {ℓᵢ}{A} a = idp
sym
  : ∀ {A : Type ℓ}{x y : A}
  → x == y
  --------
  → y == x

sym idp = idp

syntax sym p = − p
J
  : ∀ {A : Type ℓᵢ} {a : A}
  → (B : (a' : A) (p : a == a') → Type ℓⱼ)
  → (d : B a idp)
  ----------------------------------------
  → {a' : A} (p : a == a') → B a' p

J {a = a} B d idp = d
J'
  : ∀ {A : Type ℓᵢ} {a : A}
  → (B : (a' : A) (p : a' == a) → Type ℓⱼ)
  → (d : B a idp)
  ----------------------------------------
  → {a' : A} (p : a' == a) → B a' p

J' {a = a} B d idp = d
