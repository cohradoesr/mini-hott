{-# OPTIONS --without-K --exact-split #-}

open import BasicTypes public
open import AlgebraOnPaths public
transport
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}
  → (C : A → Type ℓ₂) {a₁ a₂ : A}
  → (p : a₁ == a₂)
  -------------------------------
  → (C a₁ → C a₂)

transport C idp = (λ x → x)
tr     = transport
tr₁    = transport
transp = transport
coe
  : ∀ {ℓ : Level} {A B : Type ℓ}
  → A == B
  ---------
  → (A → B)

coe p a = transport (λ X → X) p a
!coe
  : ∀ {ℓ : Level} {A B : Type ℓ}
  → A == B
  ---------
  → (B → A)

!coe p a = transport (λ X → X) (! p) a
PathOver
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}
  → (B : A → Type ℓ₂) {a₁ a₂ : A}
  → (b₁ : B a₁) → (α : a₁ == a₂) → (b₂ : B a₂)
  --------------------------------------------
  → Type ℓ₂

PathOver B b₁ α b₂ = tr B α b₁ == b₂
infix 30 PathOver

syntax PathOver B b₁ α b₂  = b₁ == b₂ [ B ↓ α ]
≡Over = PathOver
infix 30 ≡Over
syntax ≡Over B b α b' = b ≡ b' [ B / α ]
tr₁-≡
  : ∀ {ℓ : Level} {A : Type ℓ} {a₀ a₁ a₂ : A}
  → (α : a₁ ≡ a₂)
  → (ε : a₀ ≡ a₁)
  → (δ : a₀ ≡ a₂)
  → (ε ≡ δ [ (λ a' → a₀ ≡ a') / α ])
  ----------------------------------
  → α ≡ ! ε · δ

tr₁-≡ idp .idp idp idp = idp
tr₂
  :  ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁} {B : A → Type ℓ₂}
  → (C : (a : A) → (B a → Type ℓ₃))
  → {a₁ a₂ : A}{b₁ : B a₁}{b₂ : B a₂}
  → (p : a₁ == a₂)
  → (q : b₁ == b₂ [ B ↓ p ])
  → C a₁ b₁
  -----------------------
  → C a₂ b₂

tr₂ C idp idp = id
tr₂-commute
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁} {B : A → Type ℓ₂}
  → (C : (a : A) → (B a → Type ℓ₃))
  → (D : (a : A) → (B a → Type ℓ₃))
  → (f : ∀ a b → C a b → D a b)
  → ∀ {a a' b b'}
  → (p : a ≡ a')
  → (q : b ≡ b' [ B / p ])
  ---------------------------------------------------
  → ∀ c → tr₂ D p q (f a b c) ≡ f a' b' (tr₂ C p q c)

tr₂-commute C D f idp idp c = idp
