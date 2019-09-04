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
{-# OPTIONS --without-K #-}
open import Intro public
\end{code}
</div>

# Type theory

## Types

### Empty type

A datatype without *constructors* is the *empty type*. This represents  the *falsehood*.

\begin{code}
data
  ⊥ {ℓᵢ}
    : Type ℓᵢ
  where
  -- Nothing
\end{code}

Synonyms of ⊥:

\begin{code}
Empty = ⊥
𝟘     = ⊥
\end{code}

Its *eliminator* principle also called *Ex falso quodlibet*:

\begin{code}
exfalso
  : ∀ {A : Type ℓ}
  → ⊥ {ℓᵢ}
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
¬ : Type ℓ → Type ℓ
¬ A = (A → ⊥ {lzero})
\end{code}

### Unit type

The *unit type* is defined as a record to get also the $η$-rule
definitionally. This type has no elimination rule.

\begin{code}
record ⊤ : Type ℓ where
  constructor ★

{-# BUILTIN UNIT ⊤ #-}
\end{code}

Synonyms for the Unit type:
\begin{code}
Unit = ⊤
𝟙    = ⊤
\end{code}

Synonyms for the data constructor:
\begin{code}
pattern unit = ★
pattern ∗    = ★
\end{code}


### ∑-types

The dependent product is called Sigma types. It's the the type for pairs where
the second term in the pair may depend on the first term.

\begin{code}
record
  ∑ {ℓᵢ}{ℓⱼ} (A : Type ℓᵢ)(B : A → Type ℓⱼ)
   : Type (ℓᵢ ⊔ ℓⱼ)
  where
  constructor _,_
  field
    π₁ : A
    π₂ : B π₁

infixr 60 _,_
open ∑ public
\end{code}

Symbol synonym:

\begin{code}
Σ = ∑  -- \Sigma and \sum
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
  : (A : Type ℓᵢ) (P : A → Type ℓⱼ)
  --------------------------------
  → Type (ℓᵢ ⊔ ℓⱼ)

Π A P = (x : A) → P x
\end{code}

Synonyms
\begin{code}
∏ = Π   -- \prod vs \Pi
\end{code}

### Products

Product type as a particular case of the Sigma type.

\begin{code}
_×_
  : (A : Type ℓᵢ) (B : Type ℓⱼ)
  ----------------------------
  → Type (ℓᵢ ⊔ ℓⱼ)

A × B = ∑ A (λ _ → B)

infixl  39 _×_
\end{code}

### Coproducts

Sum types as inductive types

\begin{code}
data
  _+_ (A : Type ℓᵢ) (B : Type ℓⱼ)
    : Type (ℓᵢ ⊔ ℓⱼ)
  where
  inl : A → A + B
  inr : B → A + B

infixr 31 _+_
\end{code}

Constructors synonyms:

\begin{code}
-- pattern left  = inl  -- TODO: This is not working as I expected
-- pattern right = inr
\end{code}

The elimination principle:

\begin{code}
+-elim
  : {A : Type ℓᵢ}{B : Type ℓⱼ}{C : Type ℓₖ}
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
  _⇒_ (A B : Type ℓ)
    : Type ℓ
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
data
  Bool
    : Type₀
  where
  true  : Bool
  false : Bool
\end{code}

Synonyms:

\begin{code}
𝟚  = Bool
\end{code}

Constructors synonyms:
\begin{code}
pattern 𝟘₂ = false
pattern 𝟙₂ = true

pattern ff = false
pattern tt = true
\end{code}

### Natural numbers

\begin{code}
data
  ℕ
    : Type₀
  where
  zero : ℕ
  succ : ℕ → ℕ
\end{code}

Synonyms for natural numbers

\begin{code}
Nat = ℕ

pattern zr = zero 
pattern sc = succ 

{-# BUILTIN NATURAL ℕ #-}
\end{code}

### Finite sets

A finite set can be define in so many ways.
We opt to use a ∑-type which we believe is clear enough to say what they are.
A finite set of $n : \mathsf{N}$, $\mathsf{Fin}_{n}$, is the collection of
numbers less ($<$) than the number $n$. This notion is the following type family.

\begin{code}
mutual
  Fin : ℕ → Type₀
  Fin n = Σ ℕ (λ m → m < n)
\end{code}

Where the ordering relation is defined as follows.

\begin{code}
  _<_ : ℕ → ℕ → Type₀
  zero   < zero   = ⊥
  zero   < succ b = ⊤
  succ _ < zero   = ⊥
  succ a < succ b = a < b
\end{code}

and we can state the relation $\geq$ as as shortcut for...

\begin{code}
  _>_ : ℕ → ℕ → Type₀
  a > b = b < a
\end{code}

Even though, there are other approaches to define finite sets,
(in the standard-library in Agda, they have defined inductively
fin sets as with natural numbers.)

\begin{code}
⟦_⟧ : ℕ → Type₀
⟦ zero ⟧   = 𝟘
⟦ succ n ⟧ = 𝟙 + ⟦ n ⟧

\end{code}

In math books, we denote by the finite set of $n$ as $[n]$, we
mimic this notation as follows:

Synomym:
\begin{code}
Fin₂ = ⟦_⟧
\end{code}

Without going further, it's natural to define two essential functions:
successor, and predecessor.

Succesor function on (finite) natural numbers are well-defined when
we consider sets with at least one element.

$$ ⟦ n ⟧ :≡ 𝟙 + ((((𝟙 + (𝟙 + ⋯ + (𝟙 + 𝟙)))))) $$ 

- $1 :≡ inl unit$

- $n :≡ inr (inr ...)$

\begin{code}
⟦⟧-succ
  : ∀ {n : ℕ}
  → ⟦ n ⟧ → ⟦ succ n ⟧
  
⟦⟧-succ {succ n} (inl x) = inr (inl unit)
⟦⟧-succ {succ n} (inr x) = inr (⟦⟧-succ x)
\end{code}

\begin{code}
⟦⟧-pred
  : ∀ (n : ℕ)
  → ⟦ n ⟧ →  ⟦ n ⟧ -- clarify why in succ?,

⟦⟧-pred (succ n) (inl x) = inl x
⟦⟧-pred (succ n) (inr x) = inr (⟦⟧-pred n x) 
\end{code}


### Equalities

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
  _==_ {A : Type ℓᵢ} (a : A)
    : A → Type ℓᵢ
  where
  idp : a == a
\end{code}

\begin{code}
-- synonyms for the identity type
Eq   = _==_
Id   = _==_
Path = _==_
_⇝_  = _==_   -- '\r~'
_≡_  = _==_   -- '\equiv' (may be not good idea...)

infix 30 _==_ _⇝_ _≡_

{-# BUILTIN EQUALITY _==_  #-}
\end{code}

\begin{code}
refl
  : ∀ {A : Type ℓᵢ}
  → (a : A)
  -----------------
  → a == a

refl {ℓᵢ}{A} a = idp
\end{code}

Symmetry property for the identity types.

\begin{code}
sym
  : ∀ {A : Type ℓ}{x y : A}
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
  : ∀ {A : Type ℓᵢ} {a : A}
  → (B : (a' : A) (p : a == a') → Type ℓⱼ)
  → (d : B a idp)
  ----------------------------------------
  → {a' : A} (p : a == a') → B a' p

J {a = a} B d idp = d
\end{code}

{: .foldable until="6" }
\begin{code}
J'
  : ∀ {A : Type ℓᵢ} {a : A}
  → (B : (a' : A) (p : a' == a) → Type ℓⱼ)
  → (d : B a idp)
  ----------------------------------------
  → {a' : A} (p : a' == a) → B a' p

J' {a = a} B d idp = d
\end{code}


### Decidable type


\begin{code}
data Dec (P : Type₀) : Type₀ where
  yes : ( p :   P) → Dec P
  no  : (¬p : ¬ P) → Dec P

⌊_⌋ : {P : Type₀} → Dec P → Bool
⌊ yes _ ⌋ = true
⌊ no  _ ⌋ = false

REL : Type₀ → Type₀ → Type₁
REL A B = A → B → Type₀

Decidable : {A : Type₀} {B : Type₀} → REL A B → Type₀
Decidable _∼_ = ∀ x y → Dec (x ∼ y)
\end{code}
