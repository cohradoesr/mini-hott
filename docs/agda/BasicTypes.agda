{-# OPTIONS --without-K --exact-split #-}
open import Intro public
data
  𝟘 (ℓ : Level) : Type ℓ
  where
  -- Nothing
⊥     = 𝟘
Empty = 𝟘
exfalso
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₂}
  → ⊥ ℓ₁
  --------
  → A

exfalso ()
Empty-elim = exfalso
⊥-elim     = exfalso
𝟘-elim     = exfalso
¬ : ∀ {ℓ : Level} → Type ℓ → Type ℓ
¬ {ℓ} A = (A → ⊥ ℓ)
record
  𝟙 (ℓ : Level)
    : Type ℓ
  where
  constructor unit
Unit = 𝟙
⊤    = 𝟙
pattern ★ = unit
pattern ∗ = unit
record
  ∑ {ℓ₁ ℓ₂ : Level} (A : Type ℓ₁)(B : A → Type ℓ₂)
   : Type (ℓ₁ ⊔ ℓ₂)
  where
  constructor _,_
  field
    π₁ : A
    π₂ : B π₁

infixr 60 _,_
open ∑ public
Σ = ∑ -- \Sigma and \sum
proj₁ = π₁
proj₂ = π₂

pr₁   = π₁
pr₂   = π₂

fst   = π₁
snd   = π₂

#     =  π₁
Π
  : ∀ {ℓ₁ ℓ₂ : Level} (A : Type ℓ₁)(B : A → Type ℓ₂)
  --------------------------------------------------
  → Type (ℓ₁ ⊔ ℓ₂)

Π A B = (x : A) → B x
∏ = Π   -- \prod vs \Pi
_×_
  : ∀ {ℓ₁ ℓ₂ : Level} (A : Type ℓ₁)(B : Type ℓ₂)
  ----------------------------------------------
  → Type (ℓ₁ ⊔ ℓ₂)

A × B = ∑ A (λ _ → B)

infixl  39 _×_
data
  _+_ {ℓ₁ ℓ₂ : Level} (A : Type ℓ₁)(B : Type ℓ₂)
    : Type (ℓ₁ ⊔ ℓ₂)
  where
  inl : A → A + B
  inr : B → A + B

infixr 31 _+_
+-elim
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁}{B : Type ℓ₂} {C : Type ℓ₃}
  → (A → C) → (B → C)
  -------------------
  → (A + B) → C

+-elim A→C B→C (inl x) = A→C x
+-elim A→C B→C (inr x) = B→C x
cases = +-elim

syntax cases f g = ⟨ f + g ⟩
data
  _⇒_ {ℓ₁ ℓ₂ : Level} (A : Type ℓ₁)(B : Type ℓ₂)
    : Type (ℓ₁ ⊔ ℓ₂)
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
module _  where
  data
    𝟚 (ℓ : Level) : Type (lsuc ℓ)
    where
    𝟘₂ : 𝟚 ℓ
    𝟙₂ : 𝟚 ℓ
Bool = 𝟚 lzero
false : 𝟚 lzero
false = 𝟘₂

true : 𝟚 lzero
true  = 𝟙₂

ff = false
tt = true
data
  ℕ : Type lzero
  where
  zero : ℕ
  succ : ℕ → ℕ
Nat = ℕ

pattern zr = zero
pattern sc = succ

{-# BUILTIN NATURAL ℕ #-}
module _ {ℓ : Level} where
  _<_ :  ℕ → ℕ → Type ℓ
  zero   < zero   = ⊥ ℓ
  zero   < succ b = ⊤ ℓ
  succ _ < zero   = ⊥ ℓ
  succ a < succ b = a < b
  _>_ : ℕ → ℕ → Type ℓ
  a > b = b < a
module Fin (ℓ : Level) where
  mutual
    Fin : ℕ → Type ℓ
    Fin n = Σ (ℕ) (λ m → m < n)
module Fin2 (ℓ : Level) where
  ⟦_⟧ : ℕ → Type ℓ
  ⟦_⟧ zero      = 𝟘 ℓ
  ⟦_⟧ (succ n)  = 𝟙 ℓ + ⟦ n ⟧
  Fin₂ = ⟦_⟧
  ⟦⟧-succ
    : {n : ℕ}
    → ⟦ n ⟧ → ⟦ succ n ⟧

  ⟦⟧-succ {succ n} (inl x) = inr (inl unit)
  ⟦⟧-succ {succ n} (inr x) = inr (⟦⟧-succ x)
  ⟦⟧-pred
    : ∀ (n : ℕ)
    → ⟦ n ⟧ → ⟦ n ⟧

  ⟦⟧-pred (succ n) (inl x) = inl x
  ⟦⟧-pred (succ n) (inr x) = inr (⟦⟧-pred n x)
data
  _==_ {ℓ : Level}{A : Type ℓ} (a : A)
    : A → Type ℓ
  where
  idp : a == a
Eq   = _==_
Id   = _==_
Path = _==_
_⇝_  = _==_   -- type this '\r~'
_≡_  = _==_
infix 30 _==_ _⇝_ _≡_
{-# BUILTIN EQUALITY _==_  #-}
refl
  : ∀ {ℓ : Level} {A : Type ℓ}
  → (a : A)
  ---------
  → a == a

refl  a = idp
sym
  : ∀ {ℓ : Level} {A : Type ℓ} {x y : A}
  → x == y
  --------
  → y == x

sym idp = idp

syntax sym p = − p
J
  : ∀ {ℓ : Level} {A : Type ℓ}  {a : A} {ℓ₂ : Level}
  → (B : (a' : A) (p : a == a') → Type ℓ₂)
  → (d : B a idp)
  ----------------------------------------
  → {a' : A} (p : a == a') → B a' p

J {a = a} B d idp = d
J'
  : ∀ {ℓ : Level} {A : Type ℓ}  {a : A} {ℓ₂ : Level}
  → (B : (a' : A) (p : a' == a) → Type ℓ₂)
  → (d : B a idp)
  ----------------------------------------
  → {a' : A} (p : a' == a) → B a' p

J' {a = a} B d idp = d
data
  Dec {ℓ : Level}(P : Type ℓ)
    : Type ℓ
  where
  yes : ( p : P) → Dec P
  no  : (¬p : P → ⊥ ℓ) → Dec P
⌊_⌋ : ∀ {ℓ : Level}{P : Type ℓ} → Dec P → 𝟚 ℓ
⌊ yes _ ⌋ = 𝟙₂
⌊ no  _ ⌋ = 𝟘₂
REL
  : ∀ {ℓ : Level}
  → Type ℓ → Type ℓ
  ----------------
  → Type (lsuc ℓ)

REL {ℓ} A B = A → B → Type ℓ
Decidable
  : ∀ {ℓ : Level} {A B : Type ℓ}
  → REL A B
  → Type ℓ

Decidable _∼_ = ∀ x y → Dec (x ∼ y)
data
  HEq {ℓ : Level} (A : Type ℓ)
    : (B : Type ℓ)
    → (α : A == B) (a : A) (b : B)
    → Type (lsuc ℓ)
  where
  idp : {a : A} → HEq A A idp a a
