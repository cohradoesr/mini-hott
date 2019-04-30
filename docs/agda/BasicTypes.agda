{-# OPTIONS --without-K #-}
open import Intro public
data ⊥ {ℓᵢ} : Type ℓᵢ where
Empty = ⊥
𝟘     = ⊥
exfalso
  : ∀ {ℓ ℓᵢ} {A : Type ℓ}
  → ⊥ {ℓᵢ}
  --------
  → A

exfalso ()
Empty-elim = exfalso
⊥-elim     = exfalso
𝟘-elim     = exfalso
¬ : ∀ {ℓ} → Type ℓ → Type ℓ
¬ A = (A → ⊥ {lzero})
record ⊤ {ℓ} : Type ℓ where
  constructor ★

{-# BUILTIN UNIT ⊤ #-}
Unit = ⊤
𝟙    = ⊤
unit : ∀ {ℓ} → ⊤ {ℓ}
unit = ★
infixr 60 _,_
record Σ {ℓᵢ ℓⱼ} (A : Type ℓᵢ)(C : A → Type ℓⱼ) : Type (ℓᵢ ⊔ ℓⱼ) where
  constructor _,_
  field
    π₁ : A
    π₂ : C π₁

open Σ public
proj₁ = π₁
proj₂ = π₂

pr₁   = π₁
pr₂   = π₂

fst   = π₁
snd   = π₂
Π
  : ∀ {ℓᵢ ℓⱼ}
  → (A : Type ℓᵢ) (P : A → Type ℓⱼ)
  --------------------------------
  → Type (ℓᵢ ⊔ ℓⱼ)

Π A P = (x : A) → P x
_×_
  : ∀ {ℓᵢ ℓⱼ}
  → (A : Type ℓᵢ) (B : Type ℓⱼ)
  ----------------------------
  → Type (ℓᵢ ⊔ ℓⱼ)

A × B = Σ A (λ _ → B)
infixr 80 _+_
data _+_ {ℓᵢ ℓⱼ} (A : Type ℓᵢ) (B : Type ℓⱼ) : Type (ℓᵢ ⊔ ℓⱼ) where
  inl : A → A + B
  inr : B → A + B

+-elim : ∀{ℓ₁ ℓ₂ ℓ₃}{A : Type ℓ₁}{B : Type ℓ₂}{C : Type ℓ₃}
  → (A → C) → (B → C)
  -------------------
  → (A + B) → C
+-elim A→C B→C (inl x) = A→C x
+-elim A→C B→C (inr x) = B→C x
-- Implication.
data _⇒_ {ℓ}(A B : Type ℓ) : Type ℓ where
  fun : (A → B) → A ⇒ B
-- Biconditional.
_⇔_ : ∀ {ℓ₁ ℓ₂} → Type ℓ₁ → Type ℓ₂ → Type (ℓ₁ ⊔ ℓ₂)
A ⇔ B = (A → B) × (B → A)
data Bool : Type₀ where
  true  : Bool
  false : Bool
𝟚  = Bool
𝟘₂ = false
𝟙₂ = true
neg¬ : Bool → Bool
neg¬ true  = false
neg¬ false = true
data ℕ : Type₀ where
  zero : ℕ
  succ : ℕ → ℕ

{-# BUILTIN NATURAL ℕ #-}

-- synonyms for natural numbers
Nat = ℕ
