---
layout: page
title: "Basic Functions"
category: functions
toc: true
agda: true
gallery: true
latex: true
references: false
linkify: true
showcitation: true
---

<div class="hide" >
\begin{code}
{-# OPTIONS --without-K --exact-split #-}
open import BasicTypes public
\end{code}
</div>

## Basic functions

### Path functions

#### Composition of paths

{: .foldable until="6" }
\begin{code}
_·_
  : ∀ {ℓ : Level} {A : Type ℓ}  {x y z : A}
  → (p : x == y)
  → (q : y == z)
  --------------
  → x == z

_·_ idp q = q

infixl 50 _·_
\end{code}

![path]({{ site.baseurl }}/assets/images/path-concatenation.png){: width="40%" align="right" }

#### Inverse of paths

\begin{code}
_⁻¹
  : ∀ {ℓ : Level} {A : Type ℓ}  {a b : A}
  → a == b
  --------
  → b == a

idp ⁻¹ = idp
\end{code}

Synonyms for inverse path
\begin{code}
inv = _⁻¹
!_  = inv

infixl 60 _⁻¹ !_
\end{code}


### Identity functions

The identity function with implicit type.

\begin{code}
id
  : ∀ {ℓ : Level} {A : Type ℓ}
  ----------------
  → A → A

id = λ x → x

identity = id
\end{code}

The identity function on a type `A` is `idf A`.

\begin{code}
id-on
  : ∀ {ℓ : Level} (A : Type ℓ)
  ---------------
  → (A → A)

id-on A = λ x → x
\end{code}


### Constant functions

Constant function at some point `b` is `cst b`

\begin{code}
constant-function
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}
  → (b : B)
  ---------
  → (A → B)

constant-function b = λ _ → b
\end{code}

### Reasoning with negation

\begin{code}
¬¬ ¬¬¬
  : ∀ {ℓ : Level}
  → Type ℓ
  → Type ℓ

¬¬ A  = ¬(¬ A)
¬¬¬ A = ¬(¬¬ A)
\end{code}

\begin{code}
neg¬
  : Bool
  → Bool

neg¬ tt = ff
\end{code}

\begin{code}
contrapositive
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level}{A : Type ℓ₁}{B : Type ℓ₂}
  → (A → B)
  → ((B → ⊥ ℓ₃) → (A → ⊥ ℓ₃))

contrapositive f v a = v (f a)
\end{code}

### Composition

A more sophisticated composition function that can handle dependent functions.

{: .foldable until="6" }
\begin{code}
_∘_
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁} {B : A → Type ℓ₂} {C : (a : A) → (B a → Type ℓ₃)}
  → (g : {a : A} → ∏ (B a) (C a))
  → (f : ∏ A B)
  -------------------------------
  → ∏ A (λ a → C a (f a))

g ∘ f = λ x → g (f x)

infixr 80 _∘_
\end{code}

Synonym for composition (diagrammatic version)

{: .foldable until="6" }
\begin{code}
_:>_
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁} {B : A → Type ℓ₂} {C : (a : A) → (B a → Type ℓ₃)}
  → (f : Π A B)
  → (g : {a : A} → Π (B a) (C a))
  -------------------------------
  → Π A (λ a → C a (f a))

f :> g = g ∘ f

infixr 90 _:>_
\end{code}

\begin{code}
domain
  : ∀ {ℓ₁ ℓ₂ : Level}{A : Type ℓ₁}{B : Type ℓ₂}
  → (A → B)
  → Type ℓ₁

domain {A = A} _ = A
\end{code}


\begin{code}
codomain
  : ∀ {ℓ₁ ℓ₂ : Level}{A : Type ℓ₁}{B : Type ℓ₂}
  → (A → B)
  → Type ℓ₂

codomain {B = B} _ = B
\end{code}


\begin{code}
type-of
  : ∀ {ℓ : Level}{X : Type ℓ}
  → X → Type ℓ

type-of {X = X} _ = X
\end{code}

\begin{code}
level-of
  : ∀ {ℓ : Level}
  → (A : Type ℓ)
  → Level

level-of {ℓ} A = ℓ
\end{code}

#### Associativity of composition

- Left associativity

{: .foldable until="5" }
\begin{code}
∘-lassoc
  : ∀ {ℓ : Level} {A B C D : Type ℓ}
  → (h : C → D) → (g : B → C) → (f : A → B)
  -----------------------------------------
  → (h ∘ (g ∘ f)) == ((h ∘ g) ∘ f)

∘-lassoc h g f = idp {a = (λ x → h (g (f x)))}
\end{code}

- Right associativity

{: .foldable until="5" }
\begin{code}
∘-rassoc
  : ∀ {ℓ : Level} {A B C D : Type ℓ}
  → (h : C → D) → (g : B → C) → (f : A → B)
  -----------------------------------------
  → ((h ∘ g) ∘ f) == (h ∘ (g ∘ f))

∘-rassoc h g f = sym (∘-lassoc h g f)
\end{code}

When using diagramatic composition we use the equivalent lemmas to the above ones:

- Left associativity of (:>)

{: .foldable until="5" }
\begin{code}
:>-lassoc
  : ∀ {ℓ : Level} {A B C D : Type ℓ}
  → (f : A → B) → (g : B → C) → (h : C → D)
  -----------------------------------------
  → (f :> (g :> h)) == ((f :> g) :> h)

:>-lassoc f g h = idp
\end{code}

- Right associativity of (:>)

{: .foldable until="5" }
\begin{code}
:>-rassoc
  : ∀ {ℓ : Level} {A B C D : Type ℓ}
  → (f : A → B) → (g : B → C) → (h : C → D)
  -----------------------------------------
  → ((f :> g) :>  h) == (f :> (g :> h))

:>-rassoc f g h = sym (:>-lassoc f g h)
\end{code}

### Application

\begin{code}
_←_ : ∀ {ℓ₁ ℓ₂ : Level} (A : Type ℓ₁) (B : Type ℓ₂) → Type (ℓ₁ ⊔ ℓ₂)
B ← A = A → B
\end{code}

\begin{code}
_$_
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : A → Type ℓ₂}
  → (∀ (x : A) → B x)
  -------------
  → (∀ (x : A) → B x)

f $ x = f x

infixr 0 _$_
\end{code}

### Natural number operations

\begin{code}
plus : ℕ → ℕ → ℕ
plus zero     y = y
plus (succ x) y = succ (plus x y)
\end{code}

\begin{code}
infixl 60 _+ₙ_
_+ₙ_ : ℕ → ℕ → ℕ
_+ₙ_ = plus
\end{code}

\begin{code}
max : ℕ → ℕ → ℕ
max 0        n = n
max (succ n) 0 = succ n
max (succ n) (succ m) = succ (max n m)
\end{code}

\begin{code}
min : ℕ → ℕ → ℕ
min 0        n = 0
min (succ n) 0 = 0
min (succ n) (succ m) = succ (min n m)
\end{code}

Now, we prove some lemmas about natural number addition are the following.
Notice in the proofs, the extensive usage of rewriting, because at this
point we have not showed that the equality type is a congruent relation.

{: .foldable until="4"}
\begin{code}
plus-lunit
  :  (n : ℕ)
  ----------------
  → zero +ₙ n == n

plus-lunit n = refl n
\end{code}

{: .foldable until="4"}
\begin{code}
plus-runit
  : (n : ℕ)
  ----------------
  → n +ₙ zero == n

plus-runit zero     = refl zero
plus-runit (succ n) rewrite (plus-runit n) = idp
\end{code}

{: .foldable until="4"}
\begin{code}
plus-succ
  :  (n m : ℕ)
  ----------------------------------
  → succ (n +ₙ m) == (n +ₙ (succ m))

plus-succ zero     m = refl (succ m)
plus-succ (succ n) m rewrite (plus-succ n m) = idp
\end{code}

{: .foldable until="5"}
\begin{code}
plus-succ-rs
  : (n m o p : ℕ)
  →        n +ₙ m == o +ₙ p
  --------------------------------
  → n +ₙ (succ m) == o +ₙ (succ p)

plus-succ-rs 0 m 0 p α rewrite α = idp
plus-succ-rs 0 m (succ o) p α rewrite α | plus-succ o p = idp
plus-succ-rs (succ n) m 0 p α rewrite α | ! (plus-succ n m) | α = idp
plus-succ-rs (succ n) m (succ o) p α rewrite ! α | ! (plus-succ n m) | plus-succ o p | α = idp
-- other solution, just : ! (plus-succ n m) · ap succ α · (plus-succ o p)
\end{code}

Commutativity

{: .foldable until="4" }
\begin{code}
plus-comm
  : (n m : ℕ)
  -----------------
  → n +ₙ m == m +ₙ n

plus-comm zero     m = inv (plus-runit m)
plus-comm (succ n) m rewrite (plus-comm n m)  = plus-succ m n
\end{code}

Associativity
{: .foldable until="4" }
\begin{code}
plus-assoc
  : (n m p : ℕ)
  ---------------------------------
  → n +ₙ (m +ₙ p) == (n +ₙ m) +ₙ p

plus-assoc zero     m p = refl (m +ₙ p)
plus-assoc (succ n) m p  rewrite (plus-assoc n m p) = idp
\end{code}


### Coproduct manipulation

Functions handy to manipulate coproducts:

\begin{code}
+-map
  : ∀ {i j k l : Level} {A : Type i} {B : Type j} {A' : Type k} {B' : Type l}
  → (A → A')
  → (B → B')
  → A + B → A' + B'

+-map f g = cases (f :> inl) (g :> inr)

syntax +-map f g = 〈 f ⊕ g 〉
\end{code}


\begin{code}
parallell
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁} {B : A → Type ℓ₂} {C : (a : A) → (B a → Type ℓ₃)}
  → (f : (a : A) → B a)
  → ((a : A) → C a (f a))
  -------------------------
  → (a : A) → ∑ (B a) (C a)

parallell f g a = (f a , g a)
\end{code}

\begin{code}
syntax parallell f g = 〈 f × g 〉
\end{code}


### Curryfication

\begin{code}
curry
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁}{B : A → Type ℓ₂}  {C : Σ A B → Type ℓ₃}
  → ((s : ∑ A B) → C s)
  -------------------------------
  → ((x : A)(y : B x) → C (x , y))

curry f x y = f (x , y)
\end{code}

### Uncurryfication

\begin{code}
unCurry
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁}{B : A → Type ℓ₂} {C : Type ℓ₃}
  → (D : (a : A) → B a → C)
  ------------------------
  → (p : ∑ A B) → C

unCurry D p = D (proj₁ p) (proj₂ p)
\end{code}

\begin{code}
uncurry
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁} {B : A → Type ℓ₂} {C : (a : A) → (B a → Type ℓ₃)}
  → (f : (a : A) (b : B a) → C a b)
  ---------------------------------
  → (p : ∑ A B) → C (π₁ p) (π₂ p)

uncurry f (x , y) = f x y
\end{code}

### Finite iteration of a function

For any endo-function in $A$, $f: A \to A$, the following function
iterates $n$ times $f$

$$ f^{n+1}(x) = f (f^{n} (x))$$

\begin{code}
infixl 50 _^_
_^_
  : ∀ {ℓ : Level}{A : Type ℓ}
  → (f : A → A) → (n : ℕ)
  → (A → A)

f ^ 0 = id
f ^ succ n = λ x → f ((f ^ n) x)
\end{code}

{: .foldable until="6" }
\begin{code}
app-comm
  : ∀ {ℓ : Level}{A : Type ℓ}
  → (f : A → A) → (n : ℕ)
  → (x : A)
  ---------------------------------
  → (f ((f ^ n) x) ≡ ((f ^ n) (f x)))

app-comm f 0 x = idp
app-comm f (succ n) x rewrite app-comm f n x = idp
\end{code}

{: .foldable until="7" }
\begin{code}
app-comm₂
  : ∀ {ℓ : Level}{A : Type ℓ}
  → (f : A → A)
  → (n k : ℕ)
  → (x : A)
  ------------------------------------------
  → ((f ^ (n +ₙ k)) x) ≡ (f ^ n) ((f ^ k) x)

app-comm₂ f 0 0 x = idp
app-comm₂ f 0 (succ k) x = idp
app-comm₂ f (succ n) 0 x rewrite plus-runit n  = idp
app-comm₂ f (succ n) (succ k) x rewrite app-comm₂ f n (succ k) x = idp
\end{code}


{: .foldable until="7" }
\begin{code}
postulate
  app-comm₃
    : ∀ {ℓ : Level}{A : Type ℓ}
    → (f : A → A)
    → (k n : ℕ)
    → (x : A)
    ------------------------------------------
    → (f ^ k) ((f ^ n) x) ≡ (f ^ n) ((f ^ k) x)

-- app-comm₃ f 0 0 x = idp
-- app-comm₃ f 0 (succ k) x = idp
-- app-comm₃ f (succ n) 0 x rewrite plus-runit n  = idp
-- app-comm₃ f (succ n) (succ k) x rewrite app-comm₃ f n (succ k) x = {!idp!}
\end{code}

### Coproducts functions

{: .foldable until="5"}
\begin{code}
inr-is-injective
  : ∀ {ℓ₁ ℓ₂ : Level}{A : Type ℓ₁}{B : Type ℓ₂} {b₁ b₂ : B}
  → inr {A = A}{B} b₁ ≡ inr b₂
  ----------------------------
  → b₁ ≡ b₂

inr-is-injective idp = idp
\end{code}

{: .foldable until="5"}
\begin{code}
inl-is-injective
  : ∀ {ℓ₁ ℓ₂ : Level}{A : Type ℓ₁}{B : Type ℓ₂} {a₁ a₂ : A}
  → inl {A = A}{B} a₁ ≡ inl a₂
  ----------------------------
  → a₁ ≡ a₂

inl-is-injective idp = idp
\end{code}


### Equational reasoning

Equational reasoning is a way to write readable chains of equalities like
in the following proof.

{% raw %}
```agda
  t : a ≡ e
  t =
    begin
      a ≡⟨ p ⟩
      b ≡⟨ q ⟩
      c ≡⟨ r ⟩
      d ≡⟨ s ⟩
      e
    ∎
```
{% endraw %}

where `p` is a path from `a` to `b`, `q` is a path from `b` to `c`, and so on.

\begin{code}
module
  EquationalReasoning {ℓ : Level} {A : Type ℓ}
  where
\end{code}

Definitional equalness.

{: .foldable until="4" }
\begin{code}
  _==⟨⟩_
    : ∀ (x {y} : A)
    -----------------
    → x == y → x == y

  _ ==⟨⟩ p = p

  _==⟨idp⟩_  = _==⟨⟩_
  _==⟨refl⟩_ = _==⟨⟩_
  _≡⟨⟩_      = _==⟨⟩_

  infixr 2 _==⟨⟩_ _==⟨idp⟩_ _==⟨refl⟩_ _≡⟨⟩_
\end{code}

Chain:

{: .foldable until="6" }
\begin{code}
  _==⟨_⟩_
    : (x : A) {y z : A}
    → x == y
    → y == z
    --------
    → x == z

  _ ==⟨ thm ⟩ q = thm · q
\end{code}

Synomyms:
\begin{code}
  _≡⟨_⟩_ = _==⟨_⟩_

  infixr 2 _==⟨_⟩_ _≡⟨_⟩_
\end{code}

Q.E.D:
\begin{code}
  _∎
    : (x : A)
    → x == x

  _∎ = λ x → idp

  infix 3 _∎
\end{code}

The begining of a proof:

\begin{code}
  begin_
    : {x y : A}
    → x == y
    → x == y

  begin_ p = p

  infix 1 begin_
\end{code}

\begin{code}
open EquationalReasoning public
\end{code}
