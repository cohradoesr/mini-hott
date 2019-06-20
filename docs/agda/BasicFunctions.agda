{-# OPTIONS --without-K #-}
open import BasicTypes public
id
  : ∀ {A : Type ℓ}
  → A → A

id = λ x → x
idf
  : (A : Type ℓᵢ)
  ---------------
  → (A → A)

idf A = λ x → x
cst
  : ∀ {A : Type ℓᵢ} {B : Type ℓⱼ}
  → (b : B)
  ---------
  → (A → B)

cst b = λ _ → b
neg¬
  : Bool
  → Bool
neg¬ tt = ff
neg¬ ff = tt
_∘_
  : ∀ {A : Type ℓᵢ} {B : A → Type ℓⱼ} {C : (a : A) → (B a → Type ℓₖ)}
  → (g : {a : A} → ∏ (B a) (C a))
  → (f : ∏ A B)
  -------------------------------
  → ∏ A (λ a → C a (f a))

g ∘ f = λ x → g (f x)

infixr 80 _∘_
_:>_
  : ∀ {ℓᵢ ℓⱼ ℓₖ}
  → {A : Type ℓᵢ} {B : A → Type ℓⱼ} {C : (a : A) → (B a → Type ℓₖ)}
  → (f : Π A B)
  → (g : {a : A} → Π (B a) (C a))
  -------------------------------
  → Π A (λ a → C a (f a))

f :> g = g ∘ f

infixr 90 _:>_
_$_
  : ∀ {A : Type ℓᵢ} {B : A → Type ℓⱼ}
  → (∀ x → B x)
  -------------
  → (∀ x → B x)

f $ x = f x

infixr 0 _$_
+-map
  : ∀ {i j k l} {A : Type i} {B : Type j} {A' : Type k} {B' : Type l}
  → (A → A')
  → (B → B')
  → A + B → A' + B'

+-map f g = cases (f :> left) (g :> right)

syntax +-map f g = 〈 f ⊕ g 〉  -- Obs: Note the space after the left bracket.
parallell
  : ∀ {A : Type ℓᵢ} {B : A → Type ℓⱼ} {C : (a : A) → B a → Type ℓₖ}
  → (f : (a : A) → B a)
  → ((a : A) → C a (f a))
  -------------------------
  → (a : A) → ∑ (B a) (C a)

parallell f g a = (f a , g a)

syntax parallell f g = 〈 f × g 〉
curry
  : ∀ {A : Type ℓᵢ} {B : A → Type ℓⱼ} {C : Σ A B → Type ℓₖ}
  → ((s : ∑ A B) → C s)
  ---------------------
  → ((x : A)(y : B x) → C (x , y))

curry f x y = f (x , y)
uncurry
  : ∀ {A : Type ℓᵢ} {B : A → Type ℓⱼ} {C : (a : A) → B a → Type ℓₖ}
  → (f : (a : A) (b : B a) → C a b)
  ---------------------------------
  → (p : ∑ A B) → C (π₁ p) (π₂ p)

uncurry f (x , y) = f x y
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

∘-rassoc h g f = sym (∘-lassoc h g f)
data
  HEq {ℓ} (A : Type ℓ)
    : (B : Type ℓ)
    → (α : A == B) (a : A) (b : B)
    → Type (lsuc ℓ)
  where
  idp : ∀ {a : A} → HEq A A idp a a
_·_
  : ∀ {A : Type ℓ} {x y z : A}
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
_⁻¹ = inv
!_  = inv

infixl 60 _⁻¹ !_
module
  EquationalReasoning
  {A : Type ℓᵢ}
  where
  -- Reasoning.
  _==⟨⟩_
    : ∀ (x {y} : A)
    → x == y → x == y

  _ ==⟨⟩ p = p

  -- synonyms for _==⟨⟩
  _==⟨idp⟩_  = _==⟨⟩_
  _==⟨refl⟩_ = _==⟨⟩_
  _≡⟨⟩_      = _==⟨⟩_

  infixr 2 _==⟨⟩_ _==⟨idp⟩_ _==⟨refl⟩_ _≡⟨⟩_
  -- chain
  _==⟨_⟩_
    : (x : A) {y z : A}
    → x == y
    → y == z
    → x == z

  _ ==⟨ thm ⟩ q = thm · q

  _≡⟨_⟩_ = _==⟨_⟩_
  infixr 2 _==⟨_⟩_ _≡⟨_⟩_
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
