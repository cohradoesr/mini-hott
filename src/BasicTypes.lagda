---
layout: page
title: "Basic Types"
category: types
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
open import Intro public
\end{code}
</div>

# Type theory

## Basic types

### Empty type

A datatype without *constructors* is the *empty type*. This represents  the *falsehood*.

\begin{code}
data
  𝟘 (ℓ : Level) : Type ℓ
  where
  -- Nothing
\end{code}

Synonyms of ⊥:

\begin{code}
⊥     = 𝟘
Empty = 𝟘
\end{code}

Its *eliminator* principle also called *Ex falso quodlibet*:

\begin{code}
exfalso
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₂}
  → ⊥ ℓ₁
  --------
  → A

exfalso ()
\end{code}

Synonyms of `exfalso` rule:

\begin{code}
Empty-elim = exfalso
⊥-elim     = exfalso
𝟘-elim     = exfalso
\end{code}

The negation symbol is a shortcut of an implication for the falsehood.

\begin{code}
¬ : ∀ {ℓ : Level} → Type ℓ → Type ℓ
¬ {ℓ} A = (A → ⊥ ℓ)
\end{code}

### Unit type

The *unit type* is defined as a record to get also the $η$-rule
definitionally. This type has no elimination rule.

\begin{code}
record
  𝟙 (ℓ : Level)
    : Type ℓ
  where
  constructor unit
\end{code}

Synonyms for the Unit type:
\begin{code}
Unit = 𝟙
⊤    = 𝟙
\end{code}

Synonyms for the data constructor:
\begin{code}
pattern ★ = unit
pattern ∗ = unit
\end{code}


### ∑-types

The dependent product is called Sigma types. It's the the type for pairs where
the second term in the pair may depend on the first term.

\begin{code}
record
  ∑ {ℓ₁ ℓ₂ : Level} (A : Type ℓ₁)(B : A → Type ℓ₂)
   : Type (ℓ₁ ⊔ ℓ₂)
  where
  constructor _,_
  field
    π₁ : A
    π₂ : B π₁

infixr 60 _,_
open ∑ public

{-# BUILTIN SIGMA ∑ #-}
\end{code}

Symbol synonym:

\begin{code}
Σ = ∑ -- \Sigma and \sum

syntax ∑ A (λ a → B) = ∑[ a ∶ A ] B

Σ-syntax′ : ∀ {ℓ₁ ℓ₂} {A : Type ℓ₁} → (A → Type ℓ₂) → Type (ℓ₁ ⊔ ℓ₂)
Σ-syntax′ = Σ _
syntax Σ-syntax′ (λ x → B) = Σ[ x ] B
\end{code}

Constructor synonyms:

\begin{code}
proj₁ = π₁
proj₂ = π₂

pr₁   = π₁
pr₂   = π₂

fst   = π₁
snd   = π₂

#     =  π₁
\end{code}

### Π-types

\begin{code}
Π
  : ∀ {ℓ₁ ℓ₂ : Level} (A : Type ℓ₁)(B : A → Type ℓ₂)
  --------------------------------------------------
  → Type (ℓ₁ ⊔ ℓ₂)

Π A B = (x : A) → B x
\end{code}

Synonyms
\begin{code}
∏ = Π   -- \prod vs \Pi
syntax Π A (λ a → B) = Π[ a ∶ A ] B

Π-syntax′ : ∀ {ℓ₁ ℓ₂} {A : Type ℓ₁} → (A → Type ℓ₂) → Type (ℓ₁ ⊔ ℓ₂)
Π-syntax′ = Π _
syntax Π-syntax′ (λ x → B) = Π[ x ] B
\end{code}

### Products

Product type as a particular case of the Sigma type.

\begin{code}
_×_
  : ∀ {ℓ₁ ℓ₂ : Level} (A : Type ℓ₁)(B : Type ℓ₂)
  ----------------------------------------------
  → Type (ℓ₁ ⊔ ℓ₂)

A × B = ∑ A (λ _ → B)

infixl  39 _×_
\end{code}

### Coproducts

Sum types as inductive types

\begin{code}
data
  _+_ {ℓ₁ ℓ₂ : Level} (A : Type ℓ₁)(B : Type ℓ₂)
    : Type (ℓ₁ ⊔ ℓ₂)
  where
  inl : A → A + B
  inr : B → A + B

infixr 31 _+_
\end{code}

The elimination principle:

\begin{code}
+-elim
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁}{B : Type ℓ₂} {C : Type ℓ₃}
  → (A → C) → (B → C)
  -------------------
  → (A + B) → C

+-elim A→C B→C (inl x) = A→C x
+-elim A→C B→C (inr x) = B→C x
\end{code}

Synonyms:

\begin{code}
cases = +-elim

syntax cases f g = ⟨ f + g ⟩
\end{code}

### Implications

\begin{code}
data
  _⇒_ {ℓ₁ ℓ₂ : Level} (A : Type ℓ₁)(B : Type ℓ₂)
    : Type (ℓ₁ ⊔ ℓ₂)
  where
  fun : (A → B) → A ⇒ B
\end{code}

### Bi-implications

\begin{code}
_⇔_
  : ∀ {ℓ₁ ℓ₂}
  → Type ℓ₁ → Type ℓ₂
  -------------------
  → Type (ℓ₁ ⊔ ℓ₂)

A ⇔ B = (A → B) × (B → A)
\end{code}

Synonyms:

\begin{code}
_↔_ = _⇔_

infix 30 _↔_ _⇔_
\end{code}

### Booleans

\begin{code}
module _  where
  data
    𝟚 (ℓ : Level) : Type (lsuc ℓ)
    where
    𝟘₂ : 𝟚 ℓ
    𝟙₂ : 𝟚 ℓ
\end{code}

Synonyms:

\begin{code}
Bool = 𝟚 lzero
\end{code}

Constructors synonyms:
\begin{code}
false : 𝟚 lzero
false = 𝟘₂

true : 𝟚 lzero
true  = 𝟙₂

ff = false
tt = true
\end{code}

### Natural numbers

\begin{code}
data
  ℕ : Type lzero
  where
  zero : ℕ
  succ : ℕ → ℕ
\end{code}

Synonyms for natural numbers

\begin{code}
Nat = ℕ
{-# BUILTIN NATURAL ℕ #-}
\end{code}

An order relation will use in the following type constructor.

\begin{code}
module ℕ-ordering (ℓ : Level) where
  _<_ : ℕ → ℕ → Type ℓ
  zero   < zero   = ⊥ _
  zero   < succ b = ⊤ _
  succ _ < zero   = ⊥ _
  succ a < succ b = a < b
\end{code}

and we can state the relation $\geq$ as as shortcut for...

\begin{code}
  _>_ : ℕ → ℕ → Type ℓ
  a > b = b < a
\end{code}

### Finite sets

A finite set can be defined in so many ways.
We opt to use a ∑-type which we believe is clear enough to say what they are.
A finite set of $n : \mathsf{N}$, $\mathsf{Fin}_{n}$, is the collection of
numbers less ($<$) than the number $n$. This notion is the following type family.

\begin{code}
Fin : ∀ {ℓ : Level} → ℕ → Type ℓ
Fin {ℓ} n = Σ ℕ (λ m → m < n)
  where open ℕ-ordering ℓ

syntax Fin n = ⟦ n ⟧

bound-of : ∀ {ℓ : Level} {n : ℕ} → Fin {ℓ} n → ℕ
bound-of {n = n} _ = n
\end{code}

Another definition for finite sets we use is the following.
(in the standard-library in Agda, they have defined inductively
fin sets as with natural numbers.)

\begin{code}
module _ {ℓ : Level}  where

  ⟦_⟧₂ : ℕ → Type ℓ
  ⟦_⟧₂ zero      = 𝟘 _
  ⟦_⟧₂ (succ n)  = 𝟙 ℓ + ⟦ n ⟧₂
\end{code}


Without going further, it's natural to define two essential functions:
successor, and predecessor.

Succesor function on (finite) natural numbers are well-defined when
we consider sets with at least one element.

$$ ⟦ n ⟧₂ :≡ 𝟙 + ((((𝟙 + (𝟙 + ⋯ + (𝟙 + 𝟙)))))) $$

- $1 :≡ \mathsf{inl}(\mathsf{unit})$

- $n :≡ \mathsf{inr}(\mathsf{inr}\, ...)$

\begin{code}
  ⟦⟧₂-succ
    : {n : ℕ}
    → ⟦ n ⟧₂ → ⟦ succ n ⟧₂

  ⟦⟧₂-succ {succ n} (inl x) = inr (inl unit)
  ⟦⟧₂-succ {succ n} (inr x) = inr (⟦⟧₂-succ x)
\end{code}

\begin{code}
  ⟦⟧₂-pred
    : ∀ (n : ℕ)
    → ⟦ n ⟧₂ → ⟦ n ⟧₂

  ⟦⟧₂-pred (succ n) (inl x) = inl x
  ⟦⟧₂-pred (succ n) (inr x) = inr (⟦⟧₂-pred n x)
\end{code}


### Equalities

![higherstructuretype]({{ site.baseurl }}/assets/images/higher-order-structure.png){: width="50%" align="right" }

In HoTT, we have a different interpretation of type theory in which the
set-theoretical notion of *sets* for *types* is replaced by the topological
notion of *spaces*.

The (homogeneous) equality type also called identity type is considered a primary type
(included in the theory by default). To form this type, we fix a type `A` and a
term `a : A`, to have the identity type `a == a`, also denoted by `Id(a,a)` or
`a⇝a`. We only have one constructor of these types called `idp` or sometimes
`refl`. To use identity types, we have below the J-eliminator.

\begin{code}
data
  _==_ {ℓ : Level}{A : Type ℓ} (a : A)
    : A → Type ℓ
  where
  idp : a == a
\end{code}

Synonyms for the identity type:

\begin{code}
Eq   = _==_
Id   = _==_
Path = _==_
_⇝_  = _==_   -- type this '\r~'
_≡_  = _==_
\end{code}

\begin{code}
infix 30 _==_ _⇝_ _≡_
{-# BUILTIN EQUALITY _==_  #-}
\end{code}

\begin{code}
refl
  : ∀ {ℓ : Level} {A : Type ℓ}
  → (a : A)
  ---------
  → a == a

refl  a = idp
\end{code}

Symmetry property for the identity types.

\begin{code}
sym
  : ∀ {ℓ : Level} {A : Type ℓ} {x y : A}
  → x == y
  --------
  → y == x

sym idp = idp

syntax sym p = − p
\end{code}

To work with identity types, we have its induction principle as the
J-eliminator.

*Paulin-Mohring J rule*

{: .foldable until="6" }
\begin{code}
J
  : ∀ {ℓ : Level} {A : Type ℓ}  {a : A} {ℓ₂ : Level}
  → (B : (a' : A) (p : a == a') → Type ℓ₂)
  → (d : B a idp)
  ----------------------------------------
  → {a' : A} (p : a == a') → B a' p

J {a = a} B d idp = d
\end{code}

{: .foldable until="6" }
\begin{code}
J'
  : ∀ {ℓ : Level} {A : Type ℓ}  {a : A} {ℓ₂ : Level}
  → (B : (a' : A) (p : a' == a) → Type ℓ₂)
  → (d : B a idp)
  ----------------------------------------
  → {a' : A} (p : a' == a) → B a' p

J' {a = a} B d idp = d
\end{code}


### Decidable type

\begin{code}
data
  Dec {ℓ : Level}(P : Type ℓ)
    : Type ℓ
  where
  yes : ( p : P) → Dec P
  no  : (¬p : P → ⊥ ℓ) → Dec P
\end{code}
\begin{code}
⌊_⌋ : ∀ {ℓ : Level}{P : Type ℓ} → Dec P → 𝟚 ℓ
⌊ yes _ ⌋ = 𝟙₂
⌊ no  _ ⌋ = 𝟘₂
\end{code}

\begin{code}
REL
  : ∀ {ℓ : Level}
  → Type ℓ → Type ℓ
  ----------------
  → Type (lsuc ℓ)

REL {ℓ} A B = A → B → Type ℓ
\end{code}
\begin{code}
Decidable
  : ∀ {ℓ : Level} {A B : Type ℓ}
  → REL A B
  → Type _

Decidable _∼_ = ∀ x y → Dec (x ∼ y)
\end{code}


### Heterogeneous equality

\begin{code}
data
  ≡≡ {ℓ : Level} (A : Type ℓ)
    : (B : Type ℓ)
    → (α : A == B) (a : A) (b : B)
    → Type (lsuc ℓ)
  where
  idp : {a : A} → ≡≡ A A idp a a
\end{code}
