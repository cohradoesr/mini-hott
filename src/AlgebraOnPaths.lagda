---
layout: page
title: "Algebra On Paths"
category: lemmas functions
toc: true
agda: true
gallery: true
latex: true
references: false
linkify: true
showcitation: true
---

<div class="hide" >
\begin{code} %latex:prop
{-# OPTIONS --without-K --exact-split #-}
open import BasicTypes public
open import BasicFunctions public
\end{code}
</div>

## Algebra of paths

{: .foldable until="6" }
\begin{code}
ap
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}
  → (f : A → B) {a₁ a₂ : A}
  → a₁ == a₂
  --------------
  → f a₁ == f a₂

ap f idp = idp
\end{code}

Synonyms:

\begin{code}
cong  = ap
app-≡ = ap

syntax app-≡ f p = f [[ p ]]
\end{code}

Now, we can define a convenient syntax sugar for `ap` in
equational reasoning.

\begin{code}
infixl 40 ap
syntax ap f p = p |in-ctx f
\end{code}

Let's suppose we have a lemma:
{% raw %}
```agda
  lemma : a ≡ b
  lemma = _
```
{% endraw %}
used in an equational reasoning like:
{% raw %}
```agda
  t : a ≡ e
  t = f a ≡⟨ ap f lemma ⟩
      f b
      ∎
```
{% endraw %}

Then, we can now put the lemma in front:
{% raw %}
```agda
  t : a == e
  t = f a =⟨ lemma |in-ctx f ⟩
      f b
      ∎
```
{% endraw %}

Lastly, we can also define actions on two paths:

{: .foldable until="6" }
\begin{code}
ap₂
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁}{B : Type ℓ₂} {C : Type ℓ₃}  {a₁ a₂ : A} {b₁ b₂ : B}
  → (f : A → B → C)
  → (a₁ == a₂) → (b₁ == b₂)
  --------------------------
  → f a₁ b₁  == f a₂ b₂

ap₂ f idp idp = idp
\end{code}

{: .foldable until="5" }
\begin{code}
ap-·
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂} {a b c : A}
  → (f : A → B) → (p : a == b) → (q : b == c)
  -------------------------------------------
  → ap f (p · q) == ap f p · ap f q

ap-· f idp q = refl (ap f q)
\end{code}

{: .foldable until="5" }
\begin{code}
ap-inv
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}  {a b : A}
  → (f : A → B) → (p : a == b)
  ----------------------------
  → ap f (p ⁻¹) == (ap f p) ⁻¹

ap-inv f idp = idp
\end{code}

Synonyms:
\begin{code}
ap-! = ap-inv
\end{code}

{: .foldable until="7" }
\begin{code}
ap-comp
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁}{B : Type ℓ₂} {C : Type ℓ₃} {a b : A}
  → (f : A → B)
  → (g : B → C)
  → (p : a == b)
  -------------------------------
  → ap g (ap f p) == ap (g ∘ f) p

ap-comp f g idp = idp
\end{code}

{: .foldable until="5" }
\begin{code}
ap-id
  : ∀ {ℓ : Level} {A : Type ℓ} {a b : A}
  → (p : a == b)
  --------------
  → ap id p == p

ap-id idp = idp
\end{code}

{: .foldable until="5" }
\begin{code}
ap-const
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}  {a a' : A} {b : B}
  → (p : a == a')
  -----------------------
  → ap (λ _ → b) p == idp

ap-const {b = b} idp = refl (refl b)
\end{code}

## Properties on the groupoid

Some properties on the groupoid structure of equalities

{: .foldable until="5" }
\begin{code}
·-runit
  : ∀ {ℓ : Level} {A : Type ℓ}  {a a' : A}
  → (p : a == a')
  --------------
  → p == p · idp

·-runit idp = idp
\end{code}

{: .foldable until="5" }
\begin{code}
·-lunit
  : ∀ {ℓ : Level} {A : Type ℓ}  {a a' : A}
  → (p : a == a')
  --------------
  → p == idp · p

·-lunit idp = idp
\end{code}

{: .foldable until="5" }
\begin{code}
·-linv
  : ∀ {ℓ : Level} {A : Type ℓ}  {a a' : A}
  → (p : a == a')
  ----------------
  → ! p · p == idp

·-linv idp = idp

≡-inverse-left = ·-linv
\end{code}

{: .foldable until="5" }
\begin{code}
·-rinv
  : ∀ {ℓ : Level} {A : Type ℓ}  {a a' : A}
  → (p : a == a')
  ----------------
  → p · ! p == idp

·-rinv idp = idp

≡-inverse-right  = ·-rinv
\end{code}

{: .foldable until="5" }
\begin{code}
involution
  : ∀ {ℓ : Level} {A : Type ℓ}  {a a' : A}
  → (p : a == a')
  ---------------
  → ! (! p) == p

involution idp = idp
\end{code}

{: .foldable until="5" }
\begin{code}
·-assoc
  : ∀ {ℓ : Level} {A : Type ℓ} {a b c d : A}
  → (p : a == b) → (q : b == c) → (r : c == d)
  --------------------------------------------
  → p · q · r == p · (q · r)

·-assoc idp q r = idp
\end{code}

{: .foldable until="5" }
\begin{code}
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
\end{code}

Moving a term from one side to the other is a common task,
so let's define some handy functions for that.

{: .foldable until="5" }
\begin{code}
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
\end{code}

{: .foldable until="5" }
\begin{code}
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
\end{code}

{: .foldable until="5" }
\begin{code}
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
\end{code}

{: .foldable until="5" }
\begin{code}
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
\end{code}

Finally, when we invert a path composition this is what we got.

{: .foldable until="6" }
\begin{code}
!-·
  : ∀ {ℓ : Level} {A : Type ℓ} {a b : A}
  → (p : a == b)
  → (q : b == a)
  --------------------------
  → ! (p · q) == ! q · ! p

!-· idp q = ·-runit (! q)
\end{code}
