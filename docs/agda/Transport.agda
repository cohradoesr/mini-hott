{-# OPTIONS --without-K #-}
open import BasicTypes public
open import AlgebraOnPaths public
transport
  : ∀ {A : Type ℓᵢ}
  → (C : A → Type ℓⱼ) {a₁ a₂ : A}
  → (p : a₁ == a₂)
  -------------------------------
  → (C a₁ → C a₂)

transport C idp = (λ x → x)
-- synonyms
tr     = transport
tr₁    = transport
transp = transport
coe
  : ∀ {A B : Type ℓ}
  → A == B
  ---------
  → (A → B)

coe p a = transport (λ X → X) p a
PathOver
  : {A : Type ℓᵢ}
  → (B : A → Type ℓⱼ) {a₁ a₂ : A}
  → (b₁ : B a₁) → (α : a₁ == a₂) → (b₂ : B a₂)
  --------------------------------------------
  → Type ℓⱼ

PathOver B b₁ α b₂ = tr B α b₁ == b₂
infix 30 PathOver

syntax PathOver B b₁ α b₂  = b₁ == b₂ [ B ↓ α ]
≡Over = PathOver
infix 30 ≡Over
syntax ≡Over B b α b' = b ≡ b' [ B / α ]
tr₁-≡
  : {A : Type ℓ} {a₀ a₁ a₂ : A}
  → (α : a₁ ≡ a₂)
  → (ε : a₀ ≡ a₁)
  → (δ : a₀ ≡ a₂)
  → (ε ≡ δ [ (λ a' → a₀ ≡ a') / α ])
  ----------------------------------
  → α ≡ ! ε · δ

tr₁-≡ idp .idp idp idp = idp
tr₂
  : {A : Type ℓᵢ} {B : A → Type ℓⱼ}
  → (C : (x : A) → (b : B x) → Type ℓₖ)
  → {a₁ a₂ : A}{b₁ : B a₁}{b₂ : B a₂}
  → (p : a₁ == a₂)
  → (q : b₁ == b₂ [ B ↓ p ])
  → C a₁ b₁
  -----------------------
  → C a₂ b₂

tr₂ C idp idp = id
-- Gylterud's tr₂-commute 
tr₂-commute
  : {A : Type ℓᵢ} {B : A → Type ℓⱼ}
  → (C : (a : A) → (B a) → Type ℓₖ)
  → (D : (a : A) → (B a) → Type ℓ)
  → (f : ∀ a b → C a b → D a b)
  → ∀ {a a' b b'}
  → (p : a ≡ a')
  → (q : b ≡ b' [ B / p ])
  → ∀ c → tr₂ D p q (f a b c) ≡ f a' b' (tr₂ C p q c)

tr₂-commute C D f idp idp c = idp
