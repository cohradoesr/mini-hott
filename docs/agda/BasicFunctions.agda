{-# OPTIONS --without-K --exact-split #-}
open import BasicTypes public
_·_
  : ∀ {ℓ : Level} {A : Type ℓ}  {x y z : A}
  → (p : x == y)
  → (q : y == z)
  --------------
  → x == z

_·_ idp q = q

infixl 50 _·_
_⁻¹
  : ∀ {ℓ : Level} {A : Type ℓ}  {a b : A}
  → a == b
  --------
  → b == a

idp ⁻¹ = idp
inv = _⁻¹
!_  = inv

infixl 60 _⁻¹ !_
id
  : ∀ {ℓ : Level} {A : Type ℓ}
  ----------------
  → A → A

id = λ x → x

identity = id
id-on
  : ∀ {ℓ : Level} (A : Type ℓ)
  ---------------
  → (A → A)

id-on A = λ x → x
constant-function
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}
  → (b : B)
  ---------
  → (A → B)

constant-function b = λ _ → b
¬¬ ¬¬¬
  : ∀ {ℓ : Level}
  → Type ℓ
  → Type ℓ

¬¬ A  = ¬(¬ A)
¬¬¬ A = ¬(¬¬ A)
contrapositive
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level}{A : Type ℓ₁}{B : Type ℓ₂}
  → (A → B)
  → ((B → ⊥ ℓ₃) → (A → ⊥ ℓ₃))

contrapositive f v a = v (f a)
neg¬
  : Bool
  → Bool

neg¬ tt = ff
_∘_
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁} {B : A → Type ℓ₂} {C : (a : A) → (B a → Type ℓ₃)}
  → (g : {a : A} → ∏ (B a) (C a))
  → (f : ∏ A B)
  -------------------------------
  → ∏ A (λ a → C a (f a))

g ∘ f = λ x → g (f x)

infixr 80 _∘_
_:>_
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁} {B : A → Type ℓ₂} {C : (a : A) → (B a → Type ℓ₃)}
  → (f : Π A B)
  → (g : {a : A} → Π (B a) (C a))
  -------------------------------
  → Π A (λ a → C a (f a))

f :> g = g ∘ f

infixr 90 _:>_
domain
  : ∀ {ℓ₁ ℓ₂ : Level}{A : Type ℓ₁}{B : Type ℓ₂}
  → (A → B)
  → Type ℓ₁

domain {A = A} _ = A
codomain
  : ∀ {ℓ₁ ℓ₂ : Level}{A : Type ℓ₁}{B : Type ℓ₂}
  → (A → B)
  → Type ℓ₂

codomain {B = B} _ = B
type-of
  : ∀ {ℓ : Level}{X : Type ℓ}
  → X → Type ℓ

type-of {X = X} _ = X
level-of
  : ∀ {ℓ : Level}
  → (A : Type ℓ)
  → Level

level-of {ℓ} A = ℓ
∘-lassoc
  : ∀ {ℓ : Level} {A B C D : Type ℓ}
  → (h : C → D) → (g : B → C) → (f : A → B)
  -----------------------------------------
  → (h ∘ (g ∘ f)) == ((h ∘ g) ∘ f)

∘-lassoc h g f = idp {a = (λ x → h (g (f x)))}
∘-rassoc
  : ∀ {ℓ : Level} {A B C D : Type ℓ}
  → (h : C → D) → (g : B → C) → (f : A → B)
  -----------------------------------------
  → ((h ∘ g) ∘ f) == (h ∘ (g ∘ f))

∘-rassoc h g f = sym (∘-lassoc h g f)
_←_ : ∀ {ℓ₁ ℓ₂ : Level} (A : Type ℓ₁) (B : Type ℓ₂) → Type (ℓ₁ ⊔ ℓ₂)
B ← A = A → B
_$_
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : A → Type ℓ₂}
  → (∀ (x : A) → B x)
  -------------
  → (∀ (x : A) → B x)

f $ x = f x

infixr 0 _$_
plus : ℕ → ℕ → ℕ
plus zero     y = y
plus (succ x) y = succ (plus x y)
infixl 60 _+ₙ_
_+ₙ_ : ℕ → ℕ → ℕ
_+ₙ_ = plus
max : ℕ → ℕ → ℕ
max 0        n = n
max (succ n) 0 = succ n
max (succ n) (succ m) = succ (max n m)
min : ℕ → ℕ → ℕ
min 0        n = 0
min (succ n) 0 = 0
min (succ n) (succ m) = succ (min n m)
plus-lunit
  :  (n : ℕ)
  ----------------
  → zero +ₙ n == n

plus-lunit n = refl n
plus-runit
  : (n : ℕ)
  ----------------
  → n +ₙ zero == n

plus-runit zero     = refl zero
plus-runit (succ n) rewrite (plus-runit n) = idp
plus-succ
  :  (n m : ℕ)
  ----------------------------------
  → succ (n +ₙ m) == (n +ₙ (succ m))

plus-succ zero     m = refl (succ m)
plus-succ (succ n) m rewrite (plus-succ n m) = idp
plus-succ-rs
  : (n m o p : ℕ)
  →        n +ₙ m == o +ₙ p
  --------------------------------
  → n +ₙ (succ m) == o +ₙ (succ p)

plus-succ-rs zr m zr p α rewrite α = idp
plus-succ-rs zr m (succ o) p α rewrite α | plus-succ o p = idp
plus-succ-rs (succ n) m zr p α rewrite α | ! (plus-succ n m) | α = idp
plus-succ-rs (succ n) m (succ o) p α rewrite ! α | ! (plus-succ n m) | plus-succ o p | α = idp
-- other solution, just : ! (plus-succ n m) · ap succ α · (plus-succ o p)
plus-comm
  : (n m : ℕ)
  -----------------
  → n +ₙ m == m +ₙ n

plus-comm zero     m = inv (plus-runit m)
plus-comm (succ n) m rewrite (plus-comm n m)  = plus-succ m n
plus-assoc
  : (n m p : ℕ)
  ---------------------------------
  → n +ₙ (m +ₙ p) == (n +ₙ m) +ₙ p

plus-assoc zero     m p = refl (m +ₙ p)
plus-assoc (succ n) m p  rewrite (plus-assoc n m p) = idp
+-map
  : ∀ {i j k l : Level} {A : Type i} {B : Type j} {A' : Type k} {B' : Type l}
  → (A → A')
  → (B → B')
  → A + B → A' + B'

+-map f g = cases (f :> inl) (g :> inr)

syntax +-map f g = 〈 f ⊕ g 〉
parallell
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁} {B : A → Type ℓ₂} {C : (a : A) → (B a → Type ℓ₃)}
  → (f : (a : A) → B a)
  → ((a : A) → C a (f a))
  -------------------------
  → (a : A) → ∑ (B a) (C a)

parallell f g a = (f a , g a)
syntax parallell f g = 〈 f × g 〉
curry
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁}{B : A → Type ℓ₂}  {C : Σ A B → Type ℓ₃}
  → ((s : ∑ A B) → C s)
  -------------------------------
  → ((x : A)(y : B x) → C (x , y))

curry f x y = f (x , y)
unCurry
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁}{B : A → Type ℓ₂} {C : Type ℓ₃}
  → (D : (a : A) → B a → C)
  ------------------------
  → (p : ∑ A B) → C

unCurry D p = D (proj₁ p) (proj₂ p)
uncurry
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁} {B : A → Type ℓ₂} {C : (a : A) → (B a → Type ℓ₃)}
  → (f : (a : A) (b : B a) → C a b)
  ---------------------------------
  → (p : ∑ A B) → C (π₁ p) (π₂ p)

uncurry f (x , y) = f x y
infixl 50 _^_
_^_
  : ∀ {ℓ : Level}{A : Type ℓ}
  → (f : A → A) → (n : ℕ)
  → (A → A)

f ^ zr = id
f ^ succ n = λ x → f ((f ^ n) x)
app-comm
  : ∀ {ℓ : Level}{A : Type ℓ}
  → (f : A → A) → (n : ℕ)
  → (x : A)
  ---------------------------------
  → (f ((f ^ n) x) ≡ ((f ^ n) (f x)))

app-comm f zr x = idp
app-comm f (succ n) x rewrite app-comm f n x = idp
app-comm₂
  : ∀ {ℓ : Level}{A : Type ℓ}
  → (f : A → A)
  → (n k : ℕ)
  → (x : A)
  ------------------------------------------
  → ((f ^ (n +ₙ k)) x) ≡ (f ^ n) ((f ^ k) x)

app-comm₂ f zr zr x = idp
app-comm₂ f zr (succ k) x = idp
app-comm₂ f (succ n) zr x rewrite plus-runit n  = idp
app-comm₂ f (succ n) (succ k) x rewrite app-comm₂ f n (succ k) x = idp
inr-is-injective
  : ∀ {ℓ₁ ℓ₂ : Level}{A : Type ℓ₁}{B : Type ℓ₂} {b₁ b₂ : B}
  → inr {A = A}{B} b₁ ≡ inr b₂
  ----------------------------
  → b₁ ≡ b₂

inr-is-injective idp = idp
inl-is-injective
  : ∀ {ℓ₁ ℓ₂ : Level}{A : Type ℓ₁}{B : Type ℓ₂} {a₁ a₂ : A}
  → inl {A = A}{B} a₁ ≡ inl a₂
  ----------------------------
  → a₁ ≡ a₂

inl-is-injective idp = idp
module
  EquationalReasoning {ℓ : Level} {A : Type ℓ}
  where
  _==⟨⟩_
    : ∀ (x {y} : A)
    -----------------
    → x == y → x == y

  _ ==⟨⟩ p = p

  _==⟨idp⟩_  = _==⟨⟩_
  _==⟨refl⟩_ = _==⟨⟩_
  _≡⟨⟩_      = _==⟨⟩_

  infixr 2 _==⟨⟩_ _==⟨idp⟩_ _==⟨refl⟩_ _≡⟨⟩_
  _==⟨_⟩_
    : (x : A) {y z : A}
    → x == y
    → y == z
    --------
    → x == z

  _ ==⟨ thm ⟩ q = thm · q
  _≡⟨_⟩_ = _==⟨_⟩_

  infixr 2 _==⟨_⟩_ _≡⟨_⟩_
  _∎
    : (x : A)
    → x == x

  _∎ = λ x → idp

  infix 3 _∎
  begin_
    : {x y : A}
    → x == y
    → x == y

  begin_ p = p

  infix 1 begin_
open EquationalReasoning public
