{-# OPTIONS --without-K --exact-split #-}
open import BasicTypes public
open import BasicFunctions public
ap
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}
  → (f : A → B) {a₁ a₂ : A}
  → a₁ == a₂
  --------------
  → f a₁ == f a₂

ap f idp = idp
cong  = ap
app-≡ = ap

syntax app-≡ f p = f [[ p ]]
infixl 40 ap
syntax ap f p = p |in-ctx f
ap₂
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁}{B : Type ℓ₂} {C : Type ℓ₃}  {a₁ a₂ : A} {b₁ b₂ : B}
  → (f : A → B → C)
  → (a₁ == a₂) → (b₁ == b₂)
  --------------------------
  → f a₁ b₁  == f a₂ b₂

ap₂ f idp idp = idp
ap-·
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂} {a b c : A}
  → (f : A → B) → (p : a == b) → (q : b == c)
  -------------------------------------------
  → ap f (p · q) == ap f p · ap f q

ap-· f idp q = refl (ap f q)
ap-inv
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}  {a b : A}
  → (f : A → B) → (p : a == b)
  ----------------------------
  → ap f (p ⁻¹) == (ap f p) ⁻¹

ap-inv f idp = idp
ap-! = ap-inv
ap-comp
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁}{B : Type ℓ₂} {C : Type ℓ₃} {a b : A}
  → (f : A → B)
  → (g : B → C)
  → (p : a == b)
  -------------------------------
  → ap g (ap f p) == ap (g ∘ f) p

ap-comp f g idp = idp
ap-id
  : ∀ {ℓ : Level} {A : Type ℓ} {a b : A}
  → (p : a == b)
  --------------
  → ap id p == p

ap-id idp = idp
ap-const
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}  {a a' : A} {b : B}
  → (p : a == a')
  -----------------------
  → ap (λ _ → b) p == idp

ap-const {b = b} idp = refl (refl b)
·-runit
  : ∀ {ℓ : Level} {A : Type ℓ}  {a a' : A}
  → (p : a == a')
  --------------
  → p == p · idp

·-runit idp = idp
·-lunit
  : ∀ {ℓ : Level} {A : Type ℓ}  {a a' : A}
  → (p : a == a')
  --------------
  → p == idp · p

·-lunit idp = idp
·-linv
  : ∀ {ℓ : Level} {A : Type ℓ}  {a a' : A}
  → (p : a == a')
  ----------------
  → ! p · p == idp

·-linv idp = idp

≡-inverse-left = ·-linv
·-rinv
  : ∀ {ℓ : Level} {A : Type ℓ}  {a a' : A}
  → (p : a == a')
  ----------------
  → p · ! p == idp

·-rinv idp = idp

≡-inverse-right  = ·-rinv
involution
  : ∀ {ℓ : Level} {A : Type ℓ}  {a a' : A}
  → (p : a == a')
  ---------------
  → ! (! p) == p

involution idp = idp
·-assoc
  : ∀ {ℓ : Level} {A : Type ℓ} {a b c d : A}
  → (p : a == b) → (q : b == c) → (r : c == d)
  --------------------------------------------
  → p · q · r == p · (q · r)

·-assoc idp q r = idp
·-cancellation
  : ∀ {ℓ : Level} {A : Type ℓ} {a : A}
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
  : ∀ {ℓ : Level} {A : Type ℓ} {a b c : A} {p : a == b} {q : b == c} {r : a == c}
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
  : ∀ {ℓ : Level} {A : Type ℓ} {a b c : A} {p : a == b} {q : b == c} {r : a == c}
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
  : ∀ {ℓ : Level} {A : Type ℓ} {a b c : A} {p : a == c} {q : a == b} {r : b == c}
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
  : ∀ {ℓ : Level} {A : Type ℓ} {a b c : A} {p : a == c} {q : a == b} {r : b == c}
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
  : ∀ {ℓ : Level} {A : Type ℓ} {a b : A}
  → (p : a == b)
  → (q : b == a)
  --------------------------
  → ! (p · q) == ! q · ! p

!-· idp q = ·-runit (! q)
