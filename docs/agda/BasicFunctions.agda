{-# OPTIONS --without-K #-}
open import BasicTypes public
id
  : ∀ {ℓ} {A : Type ℓ}
  → A → A

id = λ x → x
idf
  : ∀ {ℓᵢ}
  → (A : Type ℓᵢ)
  ---------------
  → (A → A)

idf A = λ x → x
cst
  : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {B : Type ℓⱼ}
  → (b : B)
  ---------
  → (A → B)

cst b = λ _ → b
_∘_
  : ∀ {ℓᵢ ℓⱼ ℓₖ}
  → {A : Type ℓᵢ} {B : A → Type ℓⱼ} {C : (a : A) → (B a → Type ℓₖ)}
  → (g : {a : A} → Π (B a) (C a))
  → (f : Π A B)
  -------------------------------
  → Π A (λ a → C a (f a))

g ∘ f = λ x → g (f x)
infixr 80 _∘_
_//_
  : ∀ {ℓᵢ ℓⱼ ℓₖ}
  → {A : Type ℓᵢ} {B : A → Type ℓⱼ} {C : (a : A) → (B a → Type ℓₖ)}
  → (f : Π A B)
  → (g : {a : A} → Π (B a) (C a))
  -------------------------------
  → Π A (λ a → C a (f a))

f // g = g ∘ f


-- _;_ = _//_

infixr 0 _$_
_$_
  : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {B : A → Type ℓⱼ}
  → (∀ x → B x)
  -------------
  → (∀ x → B x)

f $ x = f x
curry
  : ∀ {i j k} {A : Type i} {B : A → Type j} {C : Σ A B → Type k}
  → (∀ s → C s)
  ---------------------
  → (∀ x y → C (x , y))

curry f x y = f (x , y)
uncurry
  : ∀ {i j k} {A : Type i} {B : A → Type j} {C : ∀ x → B x → Type k}
  → (∀ x y → C x y)
  -------------------------
  → (∀ s → C (π₁ s) (π₂ s))

uncurry f (x , y) = f x y
⟨⟩
  : ∀ {i} {A : Type i} {{a : A}} → A

⟨⟩ {{a}} = a
