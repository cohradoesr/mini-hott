---
layout: page
title: "H-Levels Lemmas"
category: types lemmas
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
module _ where

open import TransportLemmas
open import EquivalenceType

open import ProductIdentities
open import CoproductIdentities

open import HomotopyType
open import HomotopyLemmas

open import HalfAdjointType
open import QuasiinverseType
open import QuasiinverseLemmas

open import FunExtAxiom
open import UnivalenceAxiom
open import HLevelTypes
\end{code}
</div>

## HLevel Lemmas

The following lemmas are not exactly in some coherent order.
We are planning to fix that issue.

### Proposition and Set lemmas

\begin{code}
module HLevelLemmas where
\end{code}

For any type, $$A : \Type$$,

{: .equation }
  $$ \isContr{A} ⇒ \isProp{A} ⇒ \isSet{A} ⇒ \mathsf{isGroupoid}{A}.$$

Contractible types are Propositions:
{: .foldable until="5"}
\begin{code}
  contrIsProp
    : {A : Type ℓ}
    → isContr A
    -----------
    → isProp A

  contrIsProp (a , p) x y = ! (p x) · p y

  -- Synonyms
  isContr→isProp = contrIsProp
\end{code}

To be contractible is itself a proposition.

\begin{code}
  contractible-from-inhabited-prop
    : {A : Type ℓ}
    → A
    → isProp A
    ----------------
    → Contractible A

  contractible-from-inhabited-prop a p = (a , p a )
\end{code}

Propositions are Sets:

{: .foldable until="5"}
\begin{code}
  propIsSet
    : ∀ {A : Type ℓ}
    → isProp A
    ----------
    → isSet A

  propIsSet {A = A} f a _ p q = lemma p · inv (lemma q)
    where
      triang : {y z : A} {p : y == z} → (f a y) · p == f a z
      triang {y}{p = idp} = inv (·-runit (f a y))

      lemma : {y z : A} (p : y == z) → p == ! (f a y) · (f a z)
      lemma {y = y}{w} p =
        begin
          p                       ==⟨ ap (_· p) (inv (·-linv (f a y))) ⟩
          ! (f a y) · f a y · p   ==⟨ ·-assoc (! (f a y)) (f a y) p ⟩
          ! (f a y) · (f a y · p) ==⟨ ap (! (f a y) ·_) triang ⟩
          ! (f a y) · (f a w)
        ∎
\end{code}

Synonyms:
\begin{code}
  prop-is-set  = propIsSet
  prop→set     = propIsSet
  isProp-isSet = propIsSet
  Prop-is-Set  = propIsSet
\end{code}


Propositions are Sets:
{: .foldable until="5"}
\begin{code}
  Set-is-Groupoid
    : {A : Type ℓ}
    → isSet A
    ----------
    → isGroupoid A

  Set-is-Groupoid {A} A-is-set = λ x y → prop-is-set (A-is-set x y)
\end{code}

Examples of propositions:

\begin{code}
  ⊥-is-prop
    : isProp {lzero} ⊥
  ⊥-is-prop x ()

  𝟙-is-prop
    : ∀ {ℓ} → isProp (𝟙 {ℓ})
  𝟙-is-prop unit .unit = idp

\end{code}

{: .foldable until="7"}
\begin{code}
  is-prop-A+B
    : {A : Type ℓᵢ}{B : Type ℓⱼ}
    → isProp A
    → isProp B
    → ¬ (A × B)
    ----------------
    → isProp (A + B)

  is-prop-A+B ispropA ispropB ¬A×B (inl x) (inl x₁) = ap inl (ispropA x x₁)
  is-prop-A+B ispropA ispropB ¬A×B (inl x) (inr x₁) = ⊥-elim (¬A×B ( x , x₁))
  is-prop-A+B ispropA ispropB ¬A×B (inr x) (inl x₁) = ⊥-elim (¬A×B (x₁ , x))
  is-prop-A+B ispropA ispropB ¬A×B (inr x) (inr x₁) = ap inr (ispropB x x₁)
\end{code}

Propositions are propositions. This time, please notice
the strong use of function extensionality, used twice here.

{: .foldable until="5"}
\begin{code}
  propIsProp
    : {A : Type ℓ}
    -- (funext : Function-Extensionality)
    -------------------------------------
    → isProp (isProp A)

  propIsProp {_}{A} =
    λ x y → funext (λ a →
              funext (λ b
                → propIsSet x a b (x a b) (y a b)))
\end{code}

\begin{code}
  prop-is-prop-always = propIsProp
  prop-is-prop        = propIsProp
  prop→prop           = propIsProp
  isProp-isProp       = propIsProp
  is-prop-is-prop     = propIsProp
\end{code}

The dependent function type to proposition types is itself a
proposition.

{: .foldable until="6"}
\begin{code}
  isProp-pi
    : {A : Type ℓᵢ} {B : A → Type ℓⱼ}
    -- (funext : Function-Extensionality)
    → ((a : A) → isProp (B a))
    --------------------------
    → isProp ((a : A) → B a)

  isProp-pi props f g = funext λ a → props a (f a) (g a)
\end{code}

\begin{code}
  pi-is-prop = isProp-pi
  Π-isProp   = isProp-pi
  piIsProp   = isProp-pi
\end{code}

Propositional extensionality, here stated as `prop-ext`,
is a consequence of univalence axiom.

{: .foldable until="8"}
\begin{code}
  prop-ext
    : {A B : Type ℓ}
    -- (ua : Univalence Axiom)
    → isProp A
    → isProp B
    → (A ⇔ B)
    -----------
    → A == B

  prop-ext propA propB (f , g) =
    ua (qinv-≃ f (g , (λ x → propB _ _) , (λ x → propA _ _)))
\end{code}

Synomyms:

\begin{code}
  props-⇔-to-== = prop-ext
  ispropA-B     = prop-ext
  propositional-extensionality = prop-ext
\end{code}

{: .foldable until="4"}
\begin{code}
  setIsProp
    : {A : Type ℓ}
    -----------------
    → isProp (isSet A)

  setIsProp {ℓ} {A} p₁ p₂ =
    funext (λ x →
      funext (λ y →
        funext (λ p →
          funext (λ q → propIsSet (p₂ x y) p q (p₁ x y p q) (p₂ x y p q)))))
\end{code}
\begin{code}
  set-is-prop = setIsProp
  set→prop    = setIsProp
\end{code}

The product of propositions is itself a proposition.

{: .foldable until="6"}
\begin{code}
  isProp-prod
    : {A : Type ℓᵢ} {B : Type ℓⱼ}
    → isProp A
    → isProp B
    ---------------------
    → isProp (A × B)

  isProp-prod p q x y = prodByComponents ((p _ _) , (q _ _))
\end{code}

\begin{code}
  ×-is-prop      = isProp-prod
  ispropA×B      = isProp-prod
  ×-isProp       = isProp-prod
  prop×prop→prop = isProp-prod
\end{code}

{: .foldable until="5" }
\begin{code}
  isSet-prod
    : {A : Type ℓᵢ} → {B : Type ℓⱼ}
    → isSet A → isSet B
    -------------------
    → isSet (A × B)

  isSet-prod sa sb (a , b) (c , d) p q = begin
     p
      ==⟨ inv (prodByCompInverse p) ⟩
     prodByComponents (prodComponentwise p)
      ==⟨ ap prodByComponents (prodByComponents (sa a c _ _ , sb b d _ _)) ⟩
     prodByComponents (prodComponentwise q)
      ==⟨ prodByCompInverse q ⟩
     q
    ∎
\end{code}
Synomys:

\begin{code}
  ×-is-set      = isSet-prod
  isSetA×B      = isSet-prod
  ×-isSet       = isSet-prod
  set×set→set   = isSet-prod
\end{code}

\begin{code}
  Prop-/-≡
    : {A : Type ℓᵢ}
    → (P : A → hProp {ℓᵢ})
    → ∀ {a₀ a₁} p₀ p₁ {α : a₀ ≡ a₁}
    ------------------------------
    → p₀ ≡ p₁ [ (# ∘ P) / α ]

  Prop-/-≡ P {a₀} p₀ p₁ {α = idp} = proj₂ (P a₀) p₀ p₁
\end{code}

H-levels actually are preserved by products, coproducts, pi-types and sigma-types.


\begin{code}
  postulate
    +-of-sets-is-set
      : {A : Type ℓᵢ}{B : Type ℓⱼ}
      → isSet A
      → isSet B
      ---------------
      → isSet (A + B)
  {-
      The idea here is to have an iso between:
      A + B ≃ ∑ 𝟚 P where P : (tt ↦ A, ff ↦ B)

        f : A + B → ∑ 𝟚 P
           (left a) ↦ (t , A)
  -}

  -- +-of-sets-is-set {ℓᵢ} {ℓⱼ} {A} {B} issetA issetB x y p q = {!!}
  --   where
  --   f : (A + B) → Type (ℓᵢ ⊔ ℓⱼ)
  --   f (inl a) = ↑ ℓⱼ  A
  --   f (inr b) = ↑ ℓᵢ B
  --
  --   aux
  --     : (a : A + B) → f a
  --   aux (inl a) = Lift a
  --   aux (inr b) = Lift b
  --
  --   aux2 : (A + B) → {!!}
  --   aux2 w
  --     with aux w
  --   ... | e = {!e!}
\end{code}

{: .foldable until="6" }
\begin{code}
  postulate -- Ex. 3.3
    isSet-Σ
      : {A : Type ℓᵢ} → {B : A → Type ℓⱼ}
      → isSet A → ((a : A) →  isSet (B a))
      -------------------
      → isSet (Σ A B)

  sigma-is-set = isSet-Σ
  -- isSet-Σ sa sb (a , b) (c , d) p q = {!   !}
\end{code}

\begin{code}
  postulate
   is-set-equiv-to-set
    : {A B : Type  ℓᵢ}
    → A ≃ B
    → isSet A
    ---------
    → isSet B
\end{code}

\begin{code}
  id-contractible-from-set
    : {A : Type ℓ}
    → isSet A
    → {a a' : A}
    → a ≡ a' → isContr (a ≡ a')

  id-contractible-from-set iA {a}{.a} idp
    = idp , λ q → iA a a idp q
  -- This is quite obvious from the hset definition.
  -- But it's nice to spell it out fully.
\end{code}

\begin{code}
  postulate
   ≡-is-set-from-sets
    : {A B : Type ℓᵢ}
    → isSet A
    → isSet B
    → A ≡ B

 --  ≡-is-set-from-sets iA iB = {!!}
\end{code}

Lemma 3.11.3: For any type A, `isContr A` is a mere proposition.

{: .foldable until="4"}
\begin{code}
  isContrIsProp
    : {A : Type ℓ}
    --------------------
    → isProp (isContr A)

  isContrIsProp {_} {A} (a , p) (b , q) =
    Σ-bycomponents (inv (q a) , isProp-pi (AisSet b) _ q)
      where
        AisSet : isSet A
        AisSet = propIsSet (contrIsProp (a , p))

  BookLemma3113 = isContrIsProp
\end{code}

Lemma 3.3.3 (HoTT-Book):
\begin{code}
  lemma333
    : {A : Type ℓᵢ}{B : Type ℓⱼ}
    → isProp A
    → isProp B
    → (A → B)
    → (B → A)
    ----------
    → A ≃ B

  lemma333 iA iB f g = qinv-≃ f (g , gf , fg)
    where
    private
      fg : (f :> g) ∼ id
      fg a = iA ((f :> g) a) a

      gf : (g :> f) ∼ id
      gf b = iB ((g :> f) b) b

  BookLemma333 = lemma333
\end{code}

Lemma 3.3.2 (HoTT-Book):
\begin{code}
  prop-inhabited-≃𝟙
    : {A : Type ℓ}
    → isProp A
    → (a : A)
    ---------
    → A ≃ (𝟙 {ℓ})
  prop-inhabited-≃𝟙 iA a =
    lemma333 iA 𝟙-is-prop (λ _ → unit) (λ _ → a)

  BookLemma332 = prop-inhabited-≃𝟙
\end{code}

From Exercise 3.5 (HoTT-Book):
\begin{code}
  isProp-≃-isContr
    : {A : Type ℓ}
    → isProp A ≃ (A → isContr A)

  isProp-≃-isContr {A = A} =
    lemma333 isProp-isProp (pi-is-prop (λ a → isContrIsProp)) go back
    where
      private
        go : isProp A → (A → isContr A)
        go iA a = a , λ a' → iA a a'

        back : (A → isContr A) → isProp A
        back f = λ a a' → (! π₂ (f a) a) · (π₂ (f a) a')
\end{code}

Equivalence of two types is a proposition
Moreover, equivalences preserve propositions.

Contractible maps are propositions:

\begin{code}
  isContrMapIsProp
    : {A : Type ℓᵢ} {B : Type ℓⱼ}
    → (f : A → B)
    -------------
    → isProp (isContrMap f)

  isContrMapIsProp f = pi-is-prop (λ a → isContrIsProp)
\end{code}

\begin{code}
  isEquivIsProp
    : {A : Type ℓᵢ}{B : Type ℓⱼ}
    → (f : A → B)
    → isProp (isEquiv f)

  isEquivIsProp = isContrMapIsProp
\end{code}

Equality of same-morphism equivalences
{: .foldable until="6"}
\begin{code}
  sameEqv
    : {A : Type ℓᵢ}{B : Type ℓⱼ}
    → {α β : A ≃ B}
    → π₁ α == π₁ β
    →    α == β

  sameEqv {α = (f , σ)} {(g , τ)} p = Σ-bycomponents (p , (isEquivIsProp g _ τ))
\end{code}

{: .foldable until="6"}
\begin{code}
  equiv-iff-hprop
    : {A B : Type  ℓᵢ}
    → isProp A
    → isProp B
    -----------------
    → isProp (A ≃ B)

  equiv-iff-hprop {A = A}{B} iA iB ef eg
    = sameEqv f≡g
    where
    private
      f≡g : (π₁ ef) ≡ (π₁ eg)
      f≡g = pi-is-prop (λ _ → iB) (π₁ ef) (π₁ eg)
\end{code}


{: .foldable until="6"}
\begin{code}
  propEqvIsprop
    : {A B : Type  ℓᵢ}
    → isProp A
    → isProp B
    -----------------
    → isProp (A == B)

  propEqvIsprop iA iB p q =
    begin
      p
        ≡⟨ ! (ua-η p) ⟩
      ua (idtoeqv p)
        ≡⟨ ap ua (equiv-iff-hprop iA iB (idtoeqv p) (idtoeqv q)) ⟩
      ua (idtoeqv q)
        ≡⟨ ua-η q ⟩
      q
     ∎
\end{code}


Equivalences preserve propositions

{: .foldable until="6"}
\begin{code}
  isProp-≃
    : {A : Type ℓᵢ}{B : Type ℓⱼ}
    → (A ≃ B)
    → isProp A
    ----------
    → isProp B

  isProp-≃ eq prop x y =
    begin
      x                       ==⟨ inv (lrmap-inverse eq) ⟩
      lemap eq ((remap eq) x) ==⟨ ap (λ u → lemap eq u) (prop _ _) ⟩
      lemap eq ((remap eq) y) ==⟨ lrmap-inverse eq ⟩
      y
    ∎
\end{code}

{: .foldable until="5"}
\begin{code}
  ≃-trans-inv
    : ∀ {ℓ} {A B : Type ℓ}
    → (α : A ≃ B)
    -----------------------------
    → ≃-trans α (≃-flip α) == A≃A

  ≃-trans-inv α = sameEqv (
    begin
      π₁ (≃-trans α (≃-sym α)) ==⟨ refl _ ⟩
      π₁ (≃-sym α) ∘ π₁ α     ==⟨ funext (rlmap-inverse-h α) ⟩
      id
    ∎)
\end{code}

The following lemma is telling us, something we should probably knew already:
Equivalence of propositions is the same logical equivalence.

{: .foldable until="6"}
\begin{code}
  twoprops-to-equiv-≃-⇔
    : {A : Type ℓᵢ} {B : Type ℓⱼ}
    → isProp A
    → isProp B
    -------------------
    → (A ≃ B) ≃ (A ⇔ B)

  twoprops-to-equiv-≃-⇔ {A = A} {B} ispropA ispropB  = qinv-≃ f (g , H₁ , H₂)
   where
    f : (A ≃ B) → (A ⇔ B)
    f e = e ∙→ , e ∙←

    g : (A ⇔ B) → (A ≃ B)
    g (h→ , h←) = qinv-≃ h→ (h← , (λ b → ispropB (h→ (h← b)) b) , (λ a → ispropA (h← (h→ a)) a))

    H₁ : f ∘ g ∼ id
    H₁ (h→ , h←) = idp

    H₂ : g ∘ f ∼ id
    H₂ e =
      begin
        g (e ∙→ , e ∙←)
          ==⟨⟩
        e ∙→ , _
          ==⟨ Σ-bycomponents (idp , isEquivIsProp (e ∙→) _ _) ⟩
        e
      ∎
\end{code}

FIXME : Put this somewhere else

{: .foldable until="6"}
\begin{code}
  ∑-prop
    : {A : Type ℓᵢ}{B : A → Type ℓⱼ}
    → isProp A
    → ((a : A) → isProp (B a))
    ------------------------
    → isProp (∑ A B)

  ∑-prop {B = B} iA λ-iB u v
    = pair= (α , β)
    where
      α : π₁ u ≡ π₁ v
      α = iA (π₁ u) (π₁ v)

      β : (π₂ u) ≡ (π₂ v) [ B / α ]
      β = λ-iB (π₁ v) (tr B α (π₂ u)) (π₂ v)
\end{code}

\begin{code}
  postulate
   ∏-set
    : {A : Type ℓᵢ}{B : A → Type ℓⱼ}
    → (iA : isSet A)
    → ((a : A) → isSet (B a))
    → isSet (∏ A B)
\end{code}

The following was a custom version useful to deal with functions
with implicit parameters.

{: .foldable until="5" }
\begin{code}
  pi-is-prop-implicit
     : {A : Type ℓᵢ}{B : A → Type ℓⱼ}
     → ((a : A) → isProp (B a))
     --------------------------
     → isProp ({a : A} → B a)

  pi-is-prop-implicit {A = A} {B} f = isProp-≃ explicit-≃-implicit (pi-is-prop f)
    where
     explicit-≃-implicit
       : ((a : A) → B a) ≃ ({a : A} → B a)
     explicit-≃-implicit = qinv-≃ go ((λ x x₁ → x) , (λ x → idp) , (λ x → idp))
       where
         go : ((a : A) → B a) → ({a : A} → B a)
         go f {a} = f a
\end{code}


\begin{code}
open HLevelLemmas public
\end{code}

\begin{code}
postulate
 univalent-lem
  : ∀ {ℓ} {P : Type ℓ}
  → isProp P
  ------------
  → P + (¬ P)
\end{code}

\begin{code}
 univalent-double-implication
   : ∀ {ℓ} {P : Type ℓ}
   → isProp P
   -----------
   → (¬ (¬ P)) → P
\end{code}
