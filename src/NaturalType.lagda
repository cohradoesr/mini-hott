---
layout: page
title: "Natural number Type"
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

open import TransportLemmas
open import EquivalenceType

open import ProductIdentities
open import CoproductIdentities

open import HomotopyType
open import FunExtAxiom
open import QuasiinverseType
open import DecidableEquality
open import HLevelTypes
open import HedbergLemmas
open import MonoidType

module NaturalType where
\end{code}
</div>

{: .hide }
\begin{code}
  private
    code : ℕ → ℕ → Type₀
    code 0        0        = ⊤ lzero
    code 0        (succ m) = ⊥ lzero
    code (succ n) 0        = ⊥ lzero
    code (succ n) (succ m) = code n m

  crefl : (n : ℕ) → code n n
  crefl zero     = ★
  crefl (succ n) = crefl n

  private
    encode : (n m : ℕ) → (n == m) → code n m
    encode n m p = transport (code n) p (crefl n)

    decode : (n m : ℕ) → code n m → n == m
    decode zero zero c = refl zero
    decode zero (succ m) ()
    decode (succ n) zero ()
    decode (succ n) (succ m) c = ap succ (decode n m c)
\end{code}

{: .foldable until="3"}
\begin{code}
  zero-not-succ
    : (n : ℕ)
    → ¬ (succ n == zero)

  zero-not-succ n = encode (succ n) 0
\end{code}

The successor function is injective.

{: .foldable until="4"}
\begin{code}
  succ-inj
    : {n m : ℕ}
    → (succ n ≡ succ m)
    → n ≡ m

  succ-inj {n} {m} p = decode n m (encode (succ n) (succ m) p)
\end{code}

{: .foldable until="4"}
\begin{code}
  +-inj
    : (k : ℕ) {n m : ℕ}
    → (k +ₙ n == k +ₙ m)
    → n == m

  +-inj zero   p = p
  +-inj (succ k) p = +-inj k (succ-inj p)
\end{code}

{: .foldable until="2"}
\begin{code}
  nat-decEq
    : decEq ℕ

  nat-decEq zero zero = inl (refl zero)
  nat-decEq zero (succ m) = inr (λ ())
  nat-decEq (succ n) zero = inr (λ ())
  nat-decEq (succ n) (succ m) with (nat-decEq n m)
  nat-decEq (succ n) (succ m) | inl p = inl (ap succ p)
  nat-decEq (succ n) (succ m) | inr f = inr λ p → f (succ-inj p)
\end{code}

{: .foldable until="3"}
\begin{code}
  natIsDec
    : (n m : ℕ)
    → (n ≡ m) + (¬ (n ≡ m))

  natIsDec zero zero     = inl idp
  natIsDec zero (succ m) = inr (λ ())
  natIsDec (succ n) zero = inr (λ ())
  natIsDec (succ n) (succ m) with natIsDec n m
  ... | inl p  = inl (ap succ p)
  ... | inr ¬p = inr λ sn=sm → ¬p (succ-inj sn=sm)
\end{code}

{: .foldable until="3"}
\begin{code}
  nat-is-set : isSet ℕ
  nat-is-set = hedberg natIsDec
\end{code}

{: .foldable until="3"}
\begin{code}
  ℕ-is-set : isSet ℕ
  ℕ-is-set = nat-is-set
  nat-isSet = nat-is-set
\end{code}

\begin{code}
  ℕ-plus-monoid : Monoid
  ℕ-plus-monoid = record
    { M = ℕ
    ; M-is-set = nat-isSet
    ; _⊕_     = plus
    ; e = zero
    ; l-unit = plus-lunit
    ; r-unit = plus-runit
    ; assoc = plus-assoc
    }
\end{code}

{: .foldable until="3"}
\begin{code}
  _<ₙ_ : ℕ → ℕ → Type₀
  n <ₙ m = Σ ℕ (λ k → n +ₙ succ k == m)
\end{code}

{: .foldable until="3"}
\begin{code}
  <-isProp
    : (n m : ℕ)
    → isProp (n <ₙ m)

  <-isProp n m (k1 , p1) (k2 , p2) =
    Σ-bycomponents (succ-inj (+-inj n (p1 · inv p2)) , nat-isSet _ _ _ _)
\end{code}

{: .hide }
\begin{code}
  module _ {ℓ : Level} where
\end{code}

{: .hide }
\begin{code}
    open ℕ-ordering ℓ
    succ-<-inj
      : ∀ {n m : ℕ}
      → succ n < succ m
      → n < m
    succ-<-inj {0} {succ m} ∗ = ∗
    succ-<-inj {succ n} {succ m} p = succ-<-inj {n}{m} p
\end{code}

\begin{code}
    _≤ₙ_ : ℕ → ℕ → Type ℓ
    0     ≤ₙ 0     = ⊤ ℓ
    0     ≤ₙ succ b = ⊤ ℓ
    succ a ≤ₙ 0     = ⊥ ℓ
    succ a ≤ₙ succ b = a ≤ₙ b
\end{code}

We can express the property of being the minimum of some given predicate
as follows (See the symmetry book).

\begin{code}
  _is-the-minimum-of_
    : ∀ {ℓ : Level}
    → (n : ℕ )
    → (P : ℕ → hProp ℓ)
    → Type ℓ
  n is-the-minimum-of P = π₁ (P n) × ((m : ℕ) → π₁ (P m) → n <ₙ (m +ₙ 1))
    -- where open ℕ-< {level-of (π₁ (P n))}
\end{code}


\begin{code}
  _is-the-maximum-of_
    : {ℓ : Level}
    → (n : ℕ )
    → (P : ℕ → hProp ℓ)
    → Type ℓ

  n is-the-maximum-of P = π₁ (P n) × ((m : ℕ) → π₁ (P m) →  (m +ₙ 1) <ₙ n )
\end{code}

Move this somewhere else:

\begin{code}(m +ₙ 1)
  Max
    : ∀ {ℓ : Level}
    → (P : ℕ → hProp ℓ)
    → Type ℓ

  Max P = ∑ ℕ (λ a → a is-the-maximum-of P)
\end{code}
