---
layout: page
title: "H-Levels Lemmas"
permalink : /hlevels-lemmas/
category: types lemmas
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
module _ where

open import TransportLemmas
open import EquivalenceType

open import ContractibleType

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



### Proposition and Set lemmas

\begin{code}
module HLevelLemmas where
\end{code}

For any type, $A : \Type$,

{: .equation }
  $$ \isContr{A} ⇒ \isProp{A} ⇒ \isSet{A}.$$

{: .foldable until="6"}
\begin{code}
  -- Lemma. Propositions are Sets.
  propIsSet
    : ∀ {ℓ} {A : Type ℓ}
    → isProp A
    ----------
    → isSet A

  propIsSet {A = A} f a _ p q = lemma p · inv (lemma q)
    where
      triang : {y z : A} {p : y == z} → (f a y) · p == f a z
      triang {y}{p = idp} = inv (·-runit (f a y))

      lemma : {y z : A} (p : y == z) → p == ! (f a y) · (f a z)
      lemma {y} {z} p =
        begin
          p                       ==⟨ ap (_· p) (inv (·-linv (f a y))) ⟩
          ! (f a y) · f a y · p   ==⟨ ·-assoc (! (f a y)) (f a y) p ⟩
          ! (f a y) · (f a y · p) ==⟨ ap (! (f a y) ·_) triang ⟩
          ! (f a y) · (f a z)
        ∎

  -- Synonyms
  prop-is-set  = propIsSet
  prop→set     = propIsSet
  isProp-isSet = propIsSet
\end{code}

{: .foldable until="5"}
\begin{code}
  -- Lemma. Propositions are propositions.
  propIsProp
    :  ∀ {ℓ}{A : Type ℓ}
    --------------------
    → isProp (isProp A)

  propIsProp {_}{A} =
    λ x y → funext (λ a →
              funext (λ b
                → propIsSet x a b (x a b) (y a b)))

  prop-is-prop-always = propIsProp
  prop-is-prop        = propIsProp
  prop→prop           = propIsProp
  isProp-isProp       = propIsProp
\end{code}

The dependent function type to proposition types is itself a
proposition.

{: .foldable until="6"}
\begin{code}
  -- Lemma.
  isProp-pi
    : ∀ {ℓᵢ ℓⱼ} → {A : Type ℓᵢ} → {B : A → Type ℓⱼ}
    → ((a : A) → isProp (B a))
    --------------------------
    → isProp ((a : A) → B a)

  isProp-pi props f g = funext λ a → props a (f a) (g a)

  pi-is-prop = isProp-pi
  Π-isProp   = isProp-pi
  piIsProp   = isProp-pi
\end{code}

{: .foldable until="6"}
\begin{code}
  -- Lemma.
  ispropA-B
    : ∀ {ℓ} {A B : Type ℓ}
    →  isProp A → isProp B → (A ⇔ B)
    -------------------------------
    → A == B

  ispropA-B propA propB (f , g) =
    ua (qinv-≃ f (g , (λ x → propB _ _) , (λ x → propA _ _)))

  -- Synonyms
  props-⇔-to-== = ispropA-B
\end{code}


{: .foldable until="6"}
\begin{code}
  -- Lemma.
  -- propEqvIsprop
  --   : ∀ {ℓ} {A B : Type ℓ}
  --   → isProp A → isProp B
  --   ---------------------
  --   → isProp (A == B)
  --
  -- propEqvIsprop {ℓ} {A} {B} x x₁ x₂ y = {!   !}
\end{code}

{: .foldable until="4"}
\begin{code}
  -- Lemma.
  setIsProp
    : ∀ {ℓ} {A : Type ℓ}
    → isProp (isSet A)

  setIsProp {ℓ} {A} p₁ p₂ =
    funext (λ x →
      funext (λ y →
        funext (λ p →
          funext (λ q → propIsSet (p₂ x y) p q (p₁ x y p q) (p₂ x y p q)))))

  set→prop           = setIsProp
  set-is-prop-always = setIsProp
\end{code}

The product of propositions is itself a proposition.

{: .foldable until="6"}
\begin{code}
  -- Lemma.
  isProp-prod
    : ∀ {ℓᵢ ℓⱼ} → {A : Type ℓᵢ} → {B : Type ℓⱼ}
    → isProp A → isProp B
    ---------------------
    → isProp (A × B)

  isProp-prod p q x y = prodByComponents ((p _ _) , (q _ _))

  ispropA×B      = isProp-prod
  ×-isProp       = isProp-prod
  prop×prop→prop = isProp-prod
\end{code}

Product of sets is a set.

{: .foldable until="6" }
\begin{code}
  -- Lemma.
  isSet-prod
    : ∀ {ℓᵢ ℓⱼ} {A : Type ℓᵢ} → {B : Type ℓⱼ}
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

  isSetA×B      = isSet-prod
  ×-isSet       = isSet-prod
  set×set→set   = isSet-prod
\end{code}

{: .foldable until="6"}
\begin{code}
  -- Contractible types are Propositions.
  contrIsProp
    : ∀ {ℓ}  {A : Type ℓ}
    → isContr A
    -----------
    → isProp A

  contrIsProp (a , p) x y = ! (p x) · p y

  -- Synonyms
  isContr→isProp = contrIsProp
\end{code}
To be contractible is itself a proposition.

{: .foldable until="5"}
\begin{code}
  -- Lemma 3.11.3 in HoTT-Book.
  isContrIsProp
    : ∀ {ℓ} {A : Type ℓ}
    --------------------
    → isProp (isContr A)

  isContrIsProp {_} {A} (a , p) (b , q) =
    Σ-bycomponents (inv (q a) , isProp-pi (AisSet b) _ q)
      where
        AisSet : isSet A
        AisSet = propIsSet (contrIsProp (a , p))
open HLevelLemmas public
\end{code}


Equivalence of two types is a proposition
Moreover, equivalences preserve propositions.

\begin{code}

module EquivalenceProp {ℓᵢ ℓⱼ} {A : Type ℓᵢ} {B : Type ℓⱼ} where

  -- Contractible maps are propositions
  isContrMapIsProp : (f : A → B) → isProp (isContrMap f)
  isContrMapIsProp f = isProp-pi λ a → isContrIsProp

  isEquivIsProp : (f : A → B) → isProp (isEquiv f)
  isEquivIsProp = isContrMapIsProp

  -- Equality of same-morphism equivalences
  sameEqv : {α β : A ≃ B} → π₁ α == π₁ β → α == β
  sameEqv {(f , σ)} {(g , τ)} p = Σ-bycomponents (p , (isEquivIsProp g _ τ))

  -- Equivalences preserve propositions
  isProp-≃ : (A ≃ B) → isProp A → isProp B
  isProp-≃ eq prop x y =
    begin
      x                       ==⟨ inv (lrmap-inverse eq) ⟩
      lemap eq ((remap eq) x) ==⟨ ap (λ u → lemap eq u) (prop _ _) ⟩
      lemap eq ((remap eq) y) ==⟨ lrmap-inverse eq ⟩
      y
    ∎
open EquivalenceProp public
\end{code}

{: .foldable until="6"}
\begin{code}
-- Lemma.
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

\begin{code}
-- Lem.
twoprops-to-equiv-≃-⇔
  : ∀ {ℓ₁ ℓ₂} {A : Type ℓ₁} {B : Type ℓ₂}
  → isProp A → isProp B
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
