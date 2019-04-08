---
layout: page
title: "Algebra On Paths"
category: lemmas functions
toc: true
agda: true
gallery: true
latex: true
references: true
linkify: true
showcitation: true
home: true
---

<div class="hide" >
\begin{code}
{-# OPTIONS --without-K #-}
open import EqualityType public
\end{code}
</div>

## Actions on paths

Functions are functors to equalities.  In other words, functions
preserve equalities.

{: .foldable until="6" }
\begin{code}
ap
  : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {B : Type ℓⱼ}
  → (f : A → B) {a₁ a₂ : A}
  → a₁ == a₂
  --------------
  → f a₁ == f a₂

ap f idp = idp
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
  lemma : a == b
  lemma = _
```
{% endraw %}
used in an equational reasoning like:
{% raw %}
```agda
  t : a == e
  t = f a =⟨ ap f lemma ⟩
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

{: .foldable until="7" }
\begin{code}
ap₂
  : ∀ {ℓᵢ ℓⱼ ℓₖ} {A : Type ℓᵢ} {B : Type ℓⱼ} {C : Type ℓₖ}  {b₁ b₂ : B}
  → (f : A → B → C)
  → {a₁ a₂ : A} → (a₁ == a₂)
  → {b₁ b₂ : B} → (b₁ == b₂)
  --------------------------
  → f a₁ b₁  == f a₂ b₂

ap₂ f idp idp = idp
\end{code}

### Lemmas

{: .foldable until="5" }
\begin{code}
ap-·
  : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {B : Type ℓⱼ} {a b c : A}
  → (f : A → B) → (p : a == b) → (q : b == c)
  -------------------------------------------
  → ap f (p · q) == ap f p · ap f q

ap-· f idp q = refl (ap f q)
\end{code}

{: .foldable until="5" }
\begin{code}
ap-inv
  : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {B : Type ℓⱼ} {a b : A}
  → (f : A → B) → (p : a == b)
  ----------------------------
  → ap f (p ⁻¹) == (ap f p) ⁻¹

ap-inv f idp = idp

-- synonyms
ap-! = ap-inv
\end{code}

{: .foldable until="7" }
\begin{code}
ap-comp
  : ∀ {ℓᵢ ℓⱼ ℓₖ} {A : Type ℓᵢ} {B : Type ℓⱼ} {C : Type ℓₖ} {a b : A}
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
  : ∀ {ℓᵢ} {A : Type ℓᵢ} {a b : A}
  → (p : a == b)
  --------------
  → ap id p == p

ap-id idp = idp
\end{code}

{: .foldable until="5" }
\begin{code}
ap-const
  : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {C : Type ℓⱼ} {a b : A} {c : C}
  → (p : a == b)
  -----------------------
  → ap (λ _ → c) p == idp

ap-const {c = c} idp = refl (refl c)
\end{code}

## Properties on the groupoid

Some properties on the groupoid structure of equalities

{: .foldable until="5" }
\begin{code}
·-runit
  : ∀ {ℓ} {A : Type ℓ} {a b : A}
  → (p : a == b)
  --------------
  → p == p · idp

·-runit idp = idp
\end{code}

{: .foldable until="5" }
\begin{code}
·-lunit
  : ∀ {ℓ} {A : Type ℓ} {a b : A}
  → (p : a == b)
  --------------
  → p == idp · p

·-lunit idp = idp
\end{code}

{: .foldable until="5" }
\begin{code}
·-linv
  : ∀ {ℓ} {A : Type ℓ} {a b : A}
  → (p : a == b)
  ----------------
  → ! p · p == idp

·-linv idp = idp
\end{code}

{: .foldable until="5" }
\begin{code}
·-rinv
  : ∀ {ℓ} {A : Type ℓ} {a b : A}
  → (p : a == b)
  ----------------
  → p · ! p == idp

·-rinv idp = idp
\end{code}

{: .foldable until="5" }
\begin{code}
involution
  : ∀ {ℓ} {A : Type ℓ} {a b : A}
  → {p : a == b}
  ---------------
  → ! (! p) == p

involution {p = idp} = idp
\end{code}

{: .foldable until="5" }
\begin{code}
·-assoc
  : ∀ {ℓ} {A : Type ℓ} {a b c d : A}
  → (p : a == b) → (q : b == c) → (r : c == d)
  --------------------------------------------
  → p · q · r == p · (q · r)

·-assoc idp q r = idp
\end{code}

{: .foldable until="6" }
\begin{code}
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
\end{code}

Moving a term from one side to the other is a common task,
so let's define some handy functions for that.

{: .foldable until="5" }
\begin{code}
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
\end{code}

{: .foldable until="5" }
\begin{code}
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
\end{code}

{: .foldable until="5" }
\begin{code}
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
\end{code}

{: .foldable until="5" }
\begin{code}
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
\end{code}

Finally, when we invert a path composition this is what we got.

{: .foldable until="6" }
\begin{code}
!-·
  : ∀ {ℓ} {A : Type ℓ} {a b : A}
  → (p : a == b)
  → (q : b == a)
  --------------------------
  → ! (p · q) == ! q · ! p

!-· idp q = ·-runit (! q)
\end{code}
