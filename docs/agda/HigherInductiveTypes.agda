{-# OPTIONS --without-K --exact-split --rewriting #-}
module HigherInductiveTypes where
  open import BasicTypes
  infix 30 _↦_
  postulate
    _↦_
      : ∀ {ℓ : Level} {A : Type ℓ}
      → A → A
      -------
      → Type ℓ

  {-# BUILTIN REWRITE _↦_ #-}
