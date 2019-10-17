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
{-# OPTIONS --without-K --exact-split #-}
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
We are planning to fix that. For now, we are only adding lemmas
as soon as we need them.

\begin{code}
module HLevelLemmas where
\end{code}

For any type, $$A : \Type$$,

$$ \isContr{A} ⇒ \isProp{A} ⇒ \isSet{A} ⇒ \mathsf{isGroupoid}{A}.$$

Contractible types are Propositions:

{: .foldable until="5" }
\begin{code}
  contrIsProp
    : ∀ {ℓ : Level} {A : Type ℓ}
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
    : ∀ {ℓ : Level} {A : Type ℓ}
    → A
    → isProp A
    ----------------
    → Contractible A

  contractible-from-inhabited-prop a p = (a , p a )
\end{code}

\begin{code}
  ∑-contr
    : ∀ {ℓ : Level}{A : Type ℓ}
    → (x : A)
    → isContr (∑ A (λ a → a ≡ x ))

  ∑-contr x = (x , refl x) , λ {(a , idp) → pair= (idp , idp) }
\end{code}

Propositions are Sets:

{: .foldable until="5" }
\begin{code}
  propIsSet
    : ∀ {ℓ : Level} {A : Type ℓ}
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
{: .foldable until="5" }
\begin{code}
  Set-is-Groupoid
    : ∀ {ℓ : Level} {A : Type ℓ}
    → isSet A
    --------------
    → isGroupoid A

  Set-is-Groupoid {A} A-is-set = λ x y → prop-is-set (A-is-set x y)
\end{code}


{: .foldable until="5" }
\begin{code}
  is-prop-A+B
    : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}
    → isProp A → isProp B → ¬ (A × B)
    ---------------------------------
    → isProp (A + B)

  is-prop-A+B ispropA ispropB ¬A×B (inl x) (inl x₁) = ap inl (ispropA x x₁)
  is-prop-A+B ispropA ispropB ¬A×B (inl x) (inr x₁) = ⊥-elim (¬A×B (x , x₁))
  is-prop-A+B ispropA ispropB ¬A×B (inr x) (inl x₁) =  ⊥-elim (¬A×B (x₁ , x))
  is-prop-A+B ispropA ispropB ¬A×B (inr x) (inr x₁) = ap inr (ispropB x x₁)
\end{code}

Propositions are propositions. This time, please notice
the strong use of function extensionality, used twice here.

{: .foldable until="5" }
\begin{code}
  propIsProp
    : ∀ {ℓ : Level} {A : Type ℓ}
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

{: .foldable until="6" }
\begin{code}
  isProp-pi
    : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : A → Type ℓ₂}
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

{: .foldable until="8" }
\begin{code}
  prop-ext
    : ∀ {ℓ : Level} {A B : Type ℓ}
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

{: .foldable until="4" }
\begin{code}
  setIsProp
    : ∀ {ℓ : Level} {A : Type ℓ}
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

{: .foldable until="6" }
\begin{code}
  isProp-prod
    : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}
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
    : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}
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

{: .foldable until="6" }
\begin{code}
  Prop-/-≡
    : ∀ {ℓ : Level} {A : Type ℓ}
    → (P : A → hProp ℓ)
    → ∀ {a₀ a₁} p₀ p₁ {α : a₀ ≡ a₁}
    ------------------------------
    → p₀ ≡ p₁ [ (# ∘ P) / α ]

  Prop-/-≡ P {a₀} p₀ p₁ {α = idp} = proj₂ (P a₀) p₀ p₁
\end{code}

H-levels actually are preserved by products, coproducts, pi-types and sigma-types.


{: .foldable until="6" }
\begin{code}
  id-contractible-from-set
    : ∀ {ℓ : Level} {A : Type ℓ}
    → isSet A
    → {a a' : A}
    --------------------------
    → a ≡ a' → isContr (a ≡ a')

  id-contractible-from-set iA {a}{.a} idp
    = idp , λ q → iA a a idp q
  -- This is quite obvious from the hset definition.
  -- But it's nice to spell it out fully.
\end{code}


Lemma 3.11.3: For any type A, `isContr A` is a mere proposition.

{: .foldable until="4" }
\begin{code}
  isContrIsProp
    : ∀ {ℓ : Level} {A : Type ℓ}
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

{: .foldable until="6" }
\begin{code}
  lemma333
    : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}
    → isProp A → isProp B
    → (A → B)  → (B → A)
    ----------------------
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

{: .foldable until="6" }
\begin{code}
  prop-inhabited-≃𝟙
    : ∀ {ℓ : Level} {A : Type ℓ}
    → isProp A
    → (a : A)
    ---------
    → A ≃ (𝟙 ℓ)

  prop-inhabited-≃𝟙 iA a =
    lemma333 iA 𝟙-is-prop (λ _ → unit) (λ _ → a)

  BookLemma332 = prop-inhabited-≃𝟙
\end{code}

From Exercise 3.5 (HoTT-Book):

{: .foldable until="3" }
\begin{code}
  isProp-≃-isContr
    : ∀ {ℓ : Level} {A : Type ℓ}
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

{: .foldable until="5" }
\begin{code}
  isContrMapIsProp
    : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}
    → (f : A → B)
    -------------
    → isProp (isContrMap f)

  isContrMapIsProp f = pi-is-prop (λ a → isContrIsProp)
\end{code}

{: .foldable until="4" }
\begin{code}
  isEquivIsProp
    : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}
    → (f : A → B)
    → isProp (isEquiv f)

  isEquivIsProp = isContrMapIsProp
\end{code}

Equality of same-morphism equivalences

{: .foldable until="6" }
\begin{code}
  sameEqv
    : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}
    → {α β : A ≃ B}
    → π₁ α == π₁ β
    ---------------
    →    α == β

  sameEqv {α = (f , σ)} {(g , τ)} p = Σ-bycomponents (p , (isEquivIsProp g _ τ))
\end{code}

{: .foldable until="6" }
\begin{code}
  equiv-iff-hprop
    : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}
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


{: .foldable until="6" }
\begin{code}
  propEqvIsprop
    : ∀ {ℓ : Level} {A B : Type ℓ}
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

{: .foldable until="6" }
\begin{code}
  isProp-≃
    : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}
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

{: .foldable until="6" }
\begin{code}
  is-set-equiv-to-set
    : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}
    → A ≃ B
    → isSet A
    ---------
    → isSet B

  is-set-equiv-to-set {A = A}{B} e iA
    x y  =  isProp-≃ aux (iA (!f x) (!f y))
    where
    private
     f : A → B
     f = lemap e

     !f : B → A
     !f = remap e

     aux : (remap e x ≡ remap e y) ≃ (x ≡ y)
     aux
       = qinv-≃ (λ p → ! (lrmap-inverse e) · ap f p · lrmap-inverse e)
                ((λ { idp → idp})
                , (λ { idp → H₁})
                , λ {p → iA (!f x) (!f y) _ p})
       where
       H₁ : (! lrmap-inverse e · idp) · lrmap-inverse e {x} == idp
       H₁ = begin
         (! lrmap-inverse e · idp) · lrmap-inverse e
           ≡⟨ ap (λ w → w · (lrmap-inverse e)) (! (·-runit _)) ⟩
         ! lrmap-inverse e · lrmap-inverse e
           ≡⟨ ·-linv (lrmap-inverse e) ⟩
         idp
         ∎
  equiv-with-a-set-is-set = is-set-equiv-to-set
  ≃-with-a-set-is-set = is-set-equiv-to-set
\end{code}

Above, we might want to use univalence to rewrite $x ≡B y$. Unfortunately,
we can not because a universe level matters, at least for now.
A first proof would have been saying $x ≡A y$ is a mere proposition and since
$A ≃ B$, $x ≡B y$ is also a mere proposition. So, $B$ is a set.
Second proof is construct a term of 'isSet B' by using the inverse function
from the equivalence and some path algebra. Not happy with this but it works.


{: .foldable until="5" }
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

{: .foldable until="6" }
\begin{code}
  twoprops-to-equiv-≃-⇔
    : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}
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


{: .foldable until="6" }
\begin{code}
  ∑-prop
    : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : A → Type ℓ₂}
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

  isProp-Σ = ∑-prop
  isProp-∑ = ∑-prop
  Σ-prop = ∑-prop
\end{code}

{: .foldable until="5" }
\begin{code}
  pi-is-set
    : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : A → Type ℓ₂}
    → ((a : A) → isSet (B a))
    -------------------------
    → isSet (∏ A B)

  pi-is-set  setBa f g = b
    where
    a : isProp (f ∼ g)
    a h1 h2 = funext λ x → setBa x (f x) (g x) (h1 x) (h2 x)

    b : isProp (f ≡ g)
    b = isProp-≃ (≃-sym eqFunExt) (pi-is-prop λ a → setBa a (f a) (g a))
\end{code}

\begin{code}
  ∏-set = pi-is-set
  Π-set = pi-is-set
\end{code}

The following was a custom version useful to deal with functions
with implicit parameters.

{: .foldable until="5" }
\begin{code}
  pi-is-prop-implicit
     : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : A → Type ℓ₂}
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
  𝟘-is-set
    : ∀ {ℓ} → isSet (𝟘 ℓ)
  𝟘-is-set = prop-is-set 𝟘-is-prop
\end{code}

{: .hide}
\begin{code}
open HLevelLemmas public
\end{code}

{: .axiom }
\begin{code}
postulate
  law-excluded-middle
    : ∀ {ℓ} {P : Type ℓ}
    → isProp P
    ------------
    → P + (¬ P)

LEM = law-excluded-middle
\end{code}

and the more general propositions-as-types formulation of the
law of excluded middle is:

\begin{code}
postulate
 LEM∞
   : ∀ {ℓ : Level} {A : Type ℓ}
   → A + (¬ A)
\end{code}


{: .foldable until="5" }
\begin{code}
law-double-negation
 : ∀ {ℓ} {P : Type ℓ}
 → isProp P
 -----------
 → (¬ (¬ P)) → P

law-double-negation iP with LEM iP
law-double-negation iP | inl x = λ _ → x
law-double-negation iP | inr x = λ p→⊥→⊥ → ⊥-elim (p→⊥→⊥ x)
\end{code}


Law excluded middle and law of double negation are both equivalent.


Weak extensionality principle:

{: .foldable until="5" }
\begin{code}
WeakExtensionalityPrinciple
  : ∀ {ℓ : Level} {A : Type ℓ}  {P : A → Type ℓ}
  → ((x : A) → isContr (P x))
  -------------------------
  → isContr ( ∏ A P )

WeakExtensionalityPrinciple {A = A}{P} f =
  (fx , λ h →  ! funext (λ x → ! (π₂ (f x)) (h x)))
  where
   fx : ∏ A P
   fx = λ x → π₁ (f x)
\end{code}

\begin{code}
open import SigmaEquivalence
\end{code}

{: .foldable until="5" }
\begin{code}
isSet-Σ
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : A → Type ℓ₂}
  → isSet A → ((a : A) → isSet (B a))
  -------------------
  → isSet (Σ A B)

isSet-Σ {A = A}{B} iA f x y
  = isProp-≃
    (pair=Equiv A B)
    (∑-prop (iA (π₁ x) (π₁ y))
      (λ a → f _ (tr (λ x  → B x) a (π₂ x)) (π₂ y) ))
\end{code}

\begin{code}
sigma-is-set = isSet-Σ
∑-set   = isSet-Σ
isSet-∑ = isSet-Σ
\end{code}


{: .foldable until="6" }
\begin{code}
≃-is-set-from-sets
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}
  → isSet A
  → isSet B
  --------------
  → isSet (A ≃ B)

≃-is-set-from-sets {A = A}{B} ia ib
  = isSet-Σ (pi-is-set  (λ _ → ib)) (λ _ → prop-is-set (isEquivIsProp _))
\end{code}

{: .foldable until="6" }
\begin{code}
≡-is-set-from-sets
  : ∀ {ℓ : Level} {A B : Type ℓ}
  → isSet A
  → isSet B
  --------------
  → isSet (A ≡ B)

≡-is-set-from-sets iA iB = equiv-with-a-set-is-set (≃-sym eqvUnivalence) (≃-is-set-from-sets iA iB)
\end{code}

A handy result is that the two point type is a set. We know
already that 𝟙 is indeed mere propositions and hence a set.
The two point type 𝟚 is in fact equivalent to the type 𝟙 + 𝟙.
The fact 𝟚 is a set is used later to show A + B is a set when
both are sets.

\begin{code}
𝟙-is-set : ∀ {ℓ : Level} → isSet (𝟙 ℓ)
𝟙-is-set = prop-is-set (𝟙-is-prop)
\end{code}

\begin{code}
𝟙+𝟙-is-set : ∀ {ℓ : Level} → isSet (𝟙 ℓ + 𝟙 ℓ)
𝟙+𝟙-is-set (inl ∗) (inl ∗) idp idp = idp
𝟙+𝟙-is-set (inr ∗) (inr ∗) idp idp = idp
\end{code}


{: .foldable until="3" }
\begin{code}
𝟚-≃-𝟙+𝟙
  : ∀ {ℓ₁ ℓ₂ : Level}
  → 𝟚 ℓ₁ ≃ 𝟙 ℓ₂ + 𝟙 ℓ₂

𝟚-≃-𝟙+𝟙 {ℓ₁}{ℓ₂} = quasiinverse-to-≃ f (g ,
  (λ { (inl x) → ap inl idp ; (inr x) → ap inr idp}) ,
  λ { 𝟘₂ → idp ; 𝟙₂ → idp})
  where
    f : 𝟚 ℓ₁ → 𝟙 ℓ₂ + 𝟙 ℓ₂
    f 𝟘₂ = inl ∗
    f 𝟙₂ = inr ∗

    g : 𝟚 ℓ₁ ← 𝟙 ℓ₂ + 𝟙 ℓ₂
    g (inl x) = 𝟘₂
    g (inr x) = 𝟙₂
\end{code}


\begin{code}
𝟚-is-set : ∀ {ℓ : Level} → isSet (𝟚 ℓ)
𝟚-is-set {ℓ} = ≃-with-a-set-is-set {ℓ}{lsuc ℓ} (≃-sym (𝟚-≃-𝟙+𝟙 )) 𝟙+𝟙-is-set
\end{code}

Another fact we might use later is the fact, natural numbers forms a set.
We can see ℕ as a type is equivalent to ∑ (n : ℕ) 𝟙.

The coproduct A + B is equivalent to the sigma type ∑ 𝟚 P, where P is the
type family that maps 𝟘₂ to A and consequently, 𝟙₂ maps to B.


\begin{code}
P𝟚-to-A+B
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁}{B : Type ℓ₂}
  → 𝟚 ℓ₃ → Type (ℓ₁ ⊔ ℓ₂)
P𝟚-to-A+B {ℓ₁}{ℓ₂ = ℓ₂}{ℓ₃}{A}{B} = λ { 𝟘₂ → ↑ ℓ₂ A ; 𝟙₂ → ↑ ℓ₁ B}
\end{code}

{: .foldable until="3" }
\begin{code}
+-≃-∑
  : ∀ {ℓ₁ ℓ₂ ℓ₃ : Level} {A : Type ℓ₁}{B : Type ℓ₂}
  → A + B ≃ ∑ (𝟚 ℓ₃) (P𝟚-to-A+B {A = A}{B})

+-≃-∑ {ℓ₁}{ℓ₂}{ℓ₃}{A}{B} = quasiinverse-to-≃ f (g
  , (λ { (𝟘₂ , Lift lower₁) → idp ; (𝟙₂ , Lift lower₁) → idp})
  , λ { (inl x) → idp ; (inr x) → idp})
  where
  f : A + B → ∑ (𝟚 ℓ₃) (P𝟚-to-A+B {A = A}{B})
  f (inl x) = 𝟘₂ , Lift x
  f (inr x) = 𝟙₂ , Lift x

  g : A + B ← ∑ (𝟚 ℓ₃) (P𝟚-to-A+B {A = A}{B})
  g (𝟘₂ , Lift a) = inl a
  g (𝟙₂ , Lift b) = inr b
\end{code}

{: .foldable until="4" }
\begin{code}
+-of-sets-is-set
  : ∀ {ℓ₁ ℓ₂ : Level} {A : Type ℓ₁}{B : Type ℓ₂}
  → isSet A   → isSet B
  ---------------------
  → isSet (A + B)

+-of-sets-is-set {ℓ₁}{ℓ₂}{A}{B} iA iB
  = ≃-with-a-set-is-set (≃-sym (+-≃-∑ {ℓ₃ = ℓ₂}{A = A}{B}))
    (∑-set 𝟚-is-set λ { 𝟘₂ → fact₁ ; 𝟙₂ → fact₂})
  where
  open import BasicEquivalences
  fact₁ : isSet (P𝟚-to-A+B {ℓ₃ = ℓ₂}{A = A}{B} 𝟘₂)
  fact₁ = ≃-with-a-set-is-set (lifting-equivalence A) iA

  fact₂ : isSet (P𝟚-to-A+B {ℓ₃ = ℓ₂}{A = A}{B} 𝟙₂)
  fact₂ = ≃-with-a-set-is-set (lifting-equivalence B) iB
\end{code}

\begin{code}[hide]
module _ {ℓ : Level} where
  open Fin2 ℓ
\end{code}

{: .foldable until="4" }
\begin{code}
  ⟦n⟧-is-set
    : ∀ {n : ℕ}
    ---------------
    → isSet (⟦ n ⟧)

  ⟦n⟧-is-set {zr} = 𝟘-is-set
  ⟦n⟧-is-set {succ n} = +-of-sets-is-set 𝟙-is-set ⟦n⟧-is-set
\end{code}


{: .foldable until="6" }
\begin{code}
∑-≃-base
  : ∀ {ℓ₁ ℓ₂ : Level}
  → {A : Type ℓ₁}{B : A → Type ℓ₂}
  → ((a : A) → isContr (B a))
  ---------------------------
  → ∑ A B ≃ A

∑-≃-base {A = A}{B} discrete-base
  = quasiinverse-to-≃ f (g , (H₁ , H₂))
  where
  private
   f : ∑ A B → A
   f (a , b) = a

   g : ∑ A B ← A
   g a = (a ,  π₁ (discrete-base a))

   H₁ : f ∘ g ∼ id
   H₁ x = idp

   H₂ : g ∘ f ∼ id
   H₂ x = pair= (idp , contrIsProp (discrete-base (π₁ x)) _ _)
\end{code}


Another devive to remember the fact being a set implies to be a groupoid, is
the fact a simple graph can be seen as a multigraph. The graph represents
the picture of paths of the type in question.

{: .foldable until="4" }
\begin{code}
set-is-groupoid
  : ∀ {ℓ : Level} {A : Type ℓ}
  → isSet A
  → isGroupoid A

set-is-groupoid A-is-set a b = prop-is-set (A-is-set a b)
\end{code}

Postulated by now, see them in HoTT-Agda:

\begin{code}
module _ {ℓ : Level}(A : Type ℓ) where
  postulate
    contr-is-set : isContr A → isSet A
    ≡-preserves-prop : {x y : A} → (A is-prop → (x ≡ y) is-prop )
    ≡-preserves-set : {x y : A} → (A is-set → (x ≡ y) is-set)
    pathto-is-contr : (x : A) → (Σ A (λ t → t == x) is-contr)
    pathfrom-is-contr : (x : A) → (Σ A (λ t → x == t) is-contr)
    contr-has-section : ∀ {j} {B : A → Type j} → (A is-contr → (x : A) → (u : B x) → Π A B)
\end{code}
