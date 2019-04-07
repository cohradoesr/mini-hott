---
layout: page
title: "Identity type"
permalink : /identity-type/
category: types
toc: true
agda: true
gallery: true
latex: true
references: true
linkify: true
showcitation: true
home: true
---

In HoTT, we have a different interpretation of type theory in which the
set-theoretical notion of *sets* for *types* is replaced by the topological
notion of *spaces*. A type judgment like `x : A` means that the point `x`‌‌ is
*in* the topological space `A`‌‌. Furthermore, we include the *Identity type* as
a primary type. The inhabitants of these identity types will not be longer
interpreted as *proofs of equalities* but as *paths* in a Path space, an
Identity type.

<div class="hide" >
\begin{code}
{-# OPTIONS --without-K #-}
open import BasicTypes     public
open import BasicFunctions public
\end{code}
</div>

### Homogeneous equality

The Identity type is defined as an inductive type. Its induction principle is
the J-eliminator.

\begin{code}
data _==_ {ℓᵢ} {A : Type ℓᵢ} (a : A) : A → Type ℓᵢ where
  idp : a == a

infix 30 _==_
{-# BUILTIN EQUALITY _==_ #-}

-- synonyms for identity type
Path = _==_
\end{code}

\begin{code}
refl
  : ∀ {ℓᵢ} {A : Type ℓᵢ}
  → (a : A)
  ---------
  → a == a

refl {ℓᵢ}{A} a = idp {ℓᵢ = ℓᵢ}{A = A}
\end{code}


Symmetry property

\begin{code}
sym : ∀ {ℓ}{A : Type ℓ}{x y : A} → x == y → y == x
sym idp = idp
\end{code}

#### J eliminator

The elimination principle for the identity type is the path induction. It allows
us to define an outgoing function from the identity type to a dependent type ‌‌
as we see in the `J` definition below.

*Paulin-Mohring J rule*

{: .foldable until="6" }
\begin{code}
J
  : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {a : A}
  → (B : (a' : A) (p : a == a') → Type ℓⱼ)
  → (d : B a idp)
  ----------------------------------------
  → {a' : A} (p : a == a') → B a' p

J {a = a} B d idp = d
\end{code}

{: .foldable until="6" }
\begin{code}
J'
  : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {a : A}
  → (B : (a' : A) (p : a' == a) → Type ℓⱼ)
  → (d : B a idp)
  ----------------------------------------
  → {a' : A} (p : a' == a) → B a' p

J' {a = a} B d idp = d
\end{code}

#### Composition of paths

{: .foldable until="6" }
\begin{code}
_·_
  : ∀ {ℓ} {A : Type ℓ} {x y z : A}
  → (p : x == y)
  → (q : y == z)
  --------------
  → x == z

_·_ idp q = q

infixl 50 _·_
\end{code}

![path](/assets/ipe-images/path-concatenation.png){: width="60%" align="right" }

#### Inverse of paths

\begin{code}
inv
  : ∀ {ℓ} {A : Type ℓ} {a b : A}
  → a == b
  --------
  → b == a

inv idp = idp

-- synonyms for inverse path
infixl 60 _⁻¹
_⁻¹ = inv

infixr 60 !_
!_  = inv
\end{code}

#### Associativity of composition

- Left associativity

{: .foldable until="5" }
\begin{code}
∘-lassoc
  : ∀ {ℓ} {A B C D : Type ℓ}
  → (h : C → D) → (g : B → C) → (f : A → B)
  -----------------------------------------
  → (h ∘ (g ∘ f)) == ((h ∘ g) ∘ f)

∘-lassoc h g f = idp {a = (λ x → h (g (f x)))}
\end{code}

- Right associativity

{: .foldable until="5" }
\begin{code}
∘-rassoc
  : ∀ {ℓ} {A B C D : Type ℓ}
  → (h : C → D) → (g : B → C) → (f : A → B)
  -----------------------------------------
  → ((h ∘ g) ∘ f) == (h ∘ (g ∘ f))

∘-rassoc h g f = (∘-lassoc h g f) ⁻¹
\end{code}

### Heterogeneous equality

\begin{code}
data HEq {ℓ} (A : Type ℓ)
           : (B : Type ℓ)
           → (α : A == B) (a : A) (b : B)
           → Type (lsuc ℓ) where
  idp : ∀ {a : A} → HEq A A idp a a
\end{code}

## Equational reasoning

Equational reasoning is a way to write readable chains of equalities.

{% raw %}
```agda
  t : a == e
  t = a =⟨ p ⟩
      b =⟨ q ⟩
      c =⟨ r ⟩
      d =⟨ s ⟩
      e ∎
```
{% endraw %}

where `p` is a path from `a` to `b`, `q` is a path from `b` to `c`, and so on.

\begin{code}
module EquationalReasoning {ℓᵢ} {A : Type ℓᵢ} where
\end{code}

Definitional equals:

\begin{code}
  -- Reasoning.
  _==⟨⟩_
    : ∀ (x {y} : A)
    → x == y → x == y

  _ ==⟨⟩ p = p

  -- synonyms for _==⟨⟩
  _==⟨idp⟩_  = _==⟨⟩_
  _==⟨refl⟩_ = _==⟨⟩_

  infixr 2 _==⟨⟩_
\end{code}

\begin{code}
  -- chain
  _==⟨_⟩_
    : (x : A) {y z : A}
    → x == y
    → y == z
    → x == z

  _ ==⟨ thm ⟩ q = thm · q

  infixr 2 _==⟨_⟩_
\end{code}

\begin{code}
  -- Q.E.D
  infix 3 _∎
  _∎
    : (x : A)
    → x == x

  _∎ = λ x → idp
\end{code}

\begin{code}
  -- Begin
  infix 1 begin_
  begin_
    : {x y : A}
    → x == y
    → x == y

  begin_ p = p
\end{code}

\begin{code}
open EquationalReasoning public
\end{code}
