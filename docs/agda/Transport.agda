{-# OPTIONS --without-K #-}
open import EqualityType public
open import AlgebraOnPaths public
transport
  : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ}
  → (C : A → Type ℓⱼ) {a₁ a₂ : A}
  → (p : a₁ == a₂)
  -------------------------------
  → (C a₁ → C a₂)

transport C idp = (λ x → x)
-- synonyms
tr     = transport
transp = transport
_✶
  : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {C : A → Type ℓⱼ} {a₁ a₂ : A}
  → (p : a₁ == a₂)
  ----------------
  → (C a₁ → C a₂)

_✶ {ℓᵢ}{ℓⱼ}{C = C} = transport {ℓᵢ = ℓᵢ} {ℓⱼ = ℓⱼ} C
coe
  : ∀ {ℓ} {A B : Type ℓ}
  → A == B
  ---------
  → (A → B)

coe p a = transport (λ X → X) p a
tr₂
  : {i j k : Level}
  → (A : Type i)
  → (B : A → Type j)
  → (C : (x : A) → (b : B x) → Type k)
  → ∀ {a₁ a₂ : A}{b₁ : B a₁}{b₂ : B a₂}
  → (p : a₁ == a₂)
  → (q : tr B p b₁ == b₂)
  → C a₁ b₁
  -----------------------
  → C a₂ b₂

tr₂ A B C idp idp = id
PathOver
  : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ}
  → (C : A → Type ℓⱼ) {a₁ a₂ : A}
  → (α : a₁ == a₂)
  → (c₁ : C a₁) → (c₂ : C a₂)
  ------------------------------
  → Type ℓⱼ

PathOver C α c₁ c₂ = tr C α c₁ == c₂
infix 30 PathOver
syntax PathOver B p u v = u == v [ B ↓ p ]
