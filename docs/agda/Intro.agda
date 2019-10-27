{-# OPTIONS --without-K #-}
{-# OPTIONS --exact-split #-}
open import Agda.Primitive
  using ( Level ; lsuc; lzero; _⊔_ ) public
Type
  : (ℓ : Level)
  → Set (lsuc ℓ)

Type ℓ = Set ℓ
Type₀
  : Type (lsuc lzero)

Type₀ = Type lzero
Type₁
  : Type (lsuc (lsuc lzero))

Type₁ = Type (lsuc lzero)
record
  ↑ {a : Level} ℓ (A : Type a)
    : Type (a ⊔ ℓ)
  where
  constructor Lift
  field
    lower : A

open ↑ public
