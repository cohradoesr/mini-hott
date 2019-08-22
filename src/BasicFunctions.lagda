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
{-# OPTIONS --without-K #-}
open import BasicTypes public
\end{code}
</div>

## Basic functions

### Identity functions

The identity function with implicit type.

\begin{code}
id
  : {A : Type ℓ}
  ----------------
  → A → A

id = λ x → x

identity = id
\end{code}

The identity function on a type `A` is `idf A`.

\begin{code}
idf
  : (A : Type ℓᵢ)
  ---------------
  → (A → A)

idf A = λ x → x
\end{code}


### Constant functions

Constant function at some point `b` is `cst b`

\begin{code}
cst
  : {A : Type ℓᵢ} {B : Type ℓⱼ}
  → (b : B)
  ---------
  → (A → B)

cst b = λ _ → b

constant = cst
\end{code}

### Logical negation

\begin{code}
neg¬
  : Bool
  → Bool

neg¬ tt = ff
neg¬ ff = tt
\end{code}

### Composition

A more sophisticated composition function that can handle dependent functions.

{: .foldable until="6" }
\begin{code}
_∘_
  : {A : Type ℓᵢ} {B : A → Type ℓⱼ} {C : (a : A) → (B a → Type ℓₖ)}
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
  : {A : Type ℓᵢ} {B : A → Type ℓⱼ} {C : (a : A) → (B a → Type ℓₖ)}
  → (f : Π A B)
  → (g : {a : A} → Π (B a) (C a))
  -------------------------------
  → Π A (λ a → C a (f a))

f :> g = g ∘ f

infixr 90 _:>_
\end{code}

#### Associativity of composition

- Left associativity

{: .foldable until="5" }
\begin{code}
∘-lassoc
  : {A B C D : Type ℓ}
  → (h : C → D) → (g : B → C) → (f : A → B)
  -----------------------------------------
  → (h ∘ (g ∘ f)) == ((h ∘ g) ∘ f)

∘-lassoc h g f = idp {a = (λ x → h (g (f x)))}
\end{code}

- Right associativity

{: .foldable until="5" }
\begin{code}
∘-rassoc
  : {A B C D : Type ℓ}
  → (h : C → D) → (g : B → C) → (f : A → B)
  -----------------------------------------
  → ((h ∘ g) ∘ f) == (h ∘ (g ∘ f))

∘-rassoc h g f = sym (∘-lassoc h g f)
\end{code}


### Application

\begin{code}
_$_
  : {A : Type ℓᵢ} {B : A → Type ℓⱼ}
  → (∀ x → B x)
  -------------
  → (∀ x → B x)

f $ x = f x

infixr 0 _$_
\end{code}

### Coproduct manipulation

Functions handy to manipulate coproducts:

\begin{code}
+-map
  : ∀ {i j k l} {A : Type i} {B : Type j} {A' : Type k} {B' : Type l}
  → (A → A')
  → (B → B')
  → A + B → A' + B'

+-map f g = cases (f :> left) (g :> right)

syntax +-map f g = 〈 f ⊕ g 〉
\end{code}


\begin{code}
parallell
  : {A : Type ℓᵢ} {B : A → Type ℓⱼ} {C : (a : A) → B a → Type ℓₖ}
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
  : {A : Type ℓᵢ} {B : A → Type ℓⱼ} {C : Σ A B → Type ℓₖ}
  → ((s : ∑ A B) → C s)
  -------------------------------
  → ((x : A)(y : B x) → C (x , y))

curry f x y = f (x , y)
\end{code}

### Uncurryfication

\begin{code}
unCurry
  : {A : Type ℓᵢ}{B : A → Type ℓⱼ}{C : Type ℓₖ}
  → (D : (a : A) → B a → C)
  ------------------------
  → (p : ∑ A B) → C

unCurry D p = D (proj₁ p) (proj₂ p)
\end{code}

\begin{code}
uncurry
  : {A : Type ℓᵢ} {B : A → Type ℓⱼ} {C : (a : A) → B a → Type ℓₖ}
  → (f : (a : A) (b : B a) → C a b)
  ---------------------------------
  → (p : ∑ A B) → C (π₁ p) (π₂ p)

uncurry f (x , y) = f x y
\end{code}

### Heterogeneous equality

\begin{code}
data
  HEq (A : Type ℓ)
    : (B : Type ℓ)
    → (α : A == B) (a : A) (b : B)
    → Type (lsuc ℓ)
  where
  idp : {a : A} → HEq A A idp a a
\end{code}

### Path functions

#### Composition of paths

{: .foldable until="6" }
\begin{code}
_·_
  : {A : Type ℓ} {x y z : A}
  → (p : x == y)
  → (q : y == z)
  --------------
  → x == z

_·_ idp q = q

infixl 50 _·_
\end{code}

![path]({{ site.baseurl }}/assets/ipe-images/path-concatenation.png){: width="60%" align="right" }

#### Inverse of paths

\begin{code}
inv
  : {A : Type ℓ} {a b : A}
  → a == b
  --------
  → b == a

inv idp = idp
\end{code}

Synonyms for inverse path
\begin{code}
_⁻¹ = inv
!_  = inv

infixl 60 _⁻¹ !_
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
  EquationalReasoning {A : Type ℓ}
  where
\end{code}

Definitional equals:

{: .foldable until="4" }
\begin{code}
  _==⟨⟩_
    : ∀ (x {y} : A)
    -----------------
    → x == y → x == y

  _ ==⟨⟩ p = p
\end{code}

Synonyms:

\begin{code}
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
