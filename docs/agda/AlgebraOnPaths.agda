{-# OPTIONS --without-K #-}
open import EqualityType public
ap
  : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {B : Type ℓⱼ}
  → (f : A → B) {a₁ a₂ : A}
  → a₁ == a₂
  --------------
  → f a₁ == f a₂

ap f idp = idp
infixl 40 ap
syntax ap f p = p |in-ctx f
ap₂
  : ∀ {ℓᵢ ℓⱼ ℓₖ} {A : Type ℓᵢ} {B : Type ℓⱼ} {C : Type ℓₖ}  {b₁ b₂ : B}
  → (f : A → B → C)
  → {a₁ a₂ : A} → (a₁ == a₂)
  → {b₁ b₂ : B} → (b₁ == b₂)
  --------------------------
  → f a₁ b₁  == f a₂ b₂

ap₂ f idp idp = idp
ap-·
  : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {B : Type ℓⱼ} {a b c : A}
  → (f : A → B) → (p : a == b) → (q : b == c)
  -------------------------------------------
  → ap f (p · q) == ap f p · ap f q

ap-· f idp q = refl (ap f q)
ap-inv
  : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {B : Type ℓⱼ} {a b : A}
  → (f : A → B) → (p : a == b)
  ----------------------------
  → ap f (p ⁻¹) == (ap f p) ⁻¹

ap-inv f idp = idp

-- synonyms
ap-! = ap-inv
ap-comp
  : ∀ {ℓᵢ ℓⱼ ℓₖ} {A : Type ℓᵢ} {B : Type ℓⱼ} {C : Type ℓₖ} {a b : A}
  → (f : A → B)
  → (g : B → C)
  → (p : a == b)
  -------------------------------
  → ap g (ap f p) == ap (g ∘ f) p

ap-comp f g idp = idp
ap-id
  : ∀ {ℓᵢ} {A : Type ℓᵢ} {a b : A}
  → (p : a == b)
  --------------
  → ap id p == p

ap-id idp = idp
ap-const
  : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {C : Type ℓⱼ} {a b : A} {c : C}
  → (p : a == b)
  -----------------------
  → ap (λ _ → c) p == idp

ap-const {c = c} idp = refl (refl c)
·-runit
  : ∀ {ℓ} {A : Type ℓ} {a b : A}
  → (p : a == b)
  --------------
  → p == p · idp

·-runit idp = idp
·-lunit
  : ∀ {ℓ} {A : Type ℓ} {a b : A}
  → (p : a == b)
  --------------
  → p == idp · p

·-lunit idp = idp
·-linv
  : ∀ {ℓ} {A : Type ℓ} {a b : A}
  → (p : a == b)
  ----------------
  → ! p · p == idp

·-linv idp = idp
·-rinv
  : ∀ {ℓ} {A : Type ℓ} {a b : A}
  → (p : a == b)
  ----------------
  → p · ! p == idp

·-rinv idp = idp
involution
  : ∀ {ℓ} {A : Type ℓ} {a b : A}
  → {p : a == b}
  ---------------
  → ! (! p) == p

involution {p = idp} = idp
·-assoc
  : ∀ {ℓ} {A : Type ℓ} {a b c d : A}
  → (p : a == b) → (q : b == c) → (r : c == d)
  --------------------------------------------
  → p · q · r == p · (q · r)

·-assoc idp q r = idp
·-cancellation
  : ∀ {ℓ} {A : Type ℓ} {a : A}
  → (p : a == a) → (q : a == a) → p · q == p
  -----------------------------------------
  → q == refl a

·-cancellation {a = a} p q α =
    begin
      q             ==⟨ ap (_· q) (! (·-linv p)) ⟩
      ! p · p · q   ==⟨ (·-assoc (! p) _ _) ⟩
      ! p · (p · q) ==⟨ (ap (! p ·_) α) ⟩
      ! p · p       ==⟨ ·-linv p ⟩
      refl a
    ∎
·-left-to-right-l
  : ∀ {ℓ} {A : Type ℓ} {a b c : A} {p : a == b} {q : b == c} {r : a == c}
  → p · q == r
  ------------------
  →     q == ! p · r

·-left-to-right-l {a = a}{b = b}{c = c} {p} {q} {r} α =
  begin
    q
      ==⟨ ·-lunit q ⟩
    refl b · q
      ==⟨ ap (_· q) (! (·-linv p)) ⟩
    (! p · p) · q
      ==⟨ ·-assoc (! p) p q ⟩
    ! p · (p · q)
      ==⟨ ap (! p ·_) α ⟩
    ! p · r
  ∎
·-left-to-right-r
  : ∀ {ℓ} {A : Type ℓ} {a b c : A} {p : a == b} {q : b == c} {r : a == c}
  → p · q == r
  -------------------
  →      p == r · ! q

·-left-to-right-r {a = a}{b = b}{c = c} {p} {q} {r} α =
  begin
    p
      ==⟨ ·-runit p ⟩
    p · refl b
      ==⟨ ap (p ·_) (! (·-rinv q)) ⟩
    p · (q · ! q)
      ==⟨ ! (·-assoc p q (! q)) ⟩
    (p · q) · ! q
      ==⟨ ap (_· ! q) α ⟩
    r · ! q
  ∎
·-right-to-left-r
  : ∀ {ℓ} {A : Type ℓ} {a b c : A} {p : a == c} {q : a == b} {r : b == c}
  →       p == q · r
  -------------------
  → p · ! r == q

·-right-to-left-r {a = a}{b = b}{c = c} {p} {q} {r} α =
  begin
    p · ! r
      ==⟨ ap (_· ! r) α ⟩
    (q · r) · ! r
      ==⟨ ·-assoc q r (! r) ⟩
    q · (r · ! r)
      ==⟨ ap (q ·_) (·-rinv r) ⟩
    q · refl b
      ==⟨ ! (·-runit q) ⟩
    q
    ∎
·-right-to-left-l
  : ∀ {ℓ} {A : Type ℓ} {a b c : A} {p : a == c} {q : a == b} {r : b == c}
  →       p == q · r
  ------------------
  → ! q · p == r

·-right-to-left-l {a = a}{b = b}{c = c} {p} {q} {r} α =
  begin
    ! q · p
      ==⟨ ap (! q ·_) α ⟩
    ! q · (q · r)
      ==⟨ ! (·-assoc (! q) q r) ⟩
    ! q · q · r
      ==⟨ ap (_· r) (·-linv q) ⟩
    refl b · r
      ==⟨ ! (·-lunit r) ⟩
    r
  ∎
!-·
  : ∀ {ℓ} {A : Type ℓ} {a b : A}
  → (p : a == b)
  → (q : b == a)
  --------------------------
  → ! (p · q) == ! q · ! p

!-· idp q = ·-runit (! q)
