---
layout: page
title: "Mini-HoTT"
permalink : /everything/
toc: true
agda: true
gallery: true
latex: true
references: true
linkify: true
showcitation: true
home: true
---


\begin{code}

{-# OPTIONS --without-K #-}

module MiniHoTT where

  open import Intro public

  open import BasicTypes public
  open import BasicFunctions public

  open import EqualityType public
  open import AlgebraOnPaths public

  open import Transport public
  open import TransportLemmas public

  open import ContractibleType public
  open import FiberType public

  open import EquivalenceType public

  open import HomotopyType public
  open import HomotopyLemmas public

  open import FunExtAxiom public
  open import FunExtTransport public
  open import FunExtTransportDependent public

  open import DecidableEquality public

  open import HalfAdjointType public

  open import QuasiinverseType public
  open import QuasiinverseLemmas public


  open import SigmaEquivalence public
  open import SigmaPreserves public

  open import PiPreserves public

  open import UnivalenceAxiom public

  open import HLevelTypes public
  open import HLevelLemmas public

  open import HedbergLemmas public

  -- open import UnivalenceLemmas public

  open import EquivalenceReasoning public
  open import UnivalenceTransport public

  open import CircleType public
  open import IntervalType public
  open import SuspensionType public
  open import TruncationType public
  open import SetTruncationType public

  open import NaturalType public
  open import IntegerType public


  open import QuotientType public
  open import RelationType public

  open import MonoidType public
  open import GroupType public

  open import FundamentalGroupType public

\end{code}
