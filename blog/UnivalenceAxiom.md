---
layout: page
title: "Axiom of Univalence"
category: lemmas functions homotopy
toc: true
agda: true
gallery: true
latex: true
references: false
linkify: true
showcitation: true
---

<div class="hide" >
<pre class="Agda">
<a id="219" class="Symbol">{-#</a> <a id="223" class="Keyword">OPTIONS</a> <a id="231" class="Pragma">--without-K</a> <a id="243" class="Symbol">#-}</a>
<a id="247" class="Keyword">open</a> <a id="252" class="Keyword">import</a> <a id="259" href="TransportLemmas.html" class="Module">TransportLemmas</a>
<a id="275" class="Keyword">open</a> <a id="280" class="Keyword">import</a> <a id="287" href="EquivalenceType.html" class="Module">EquivalenceType</a>

<a id="304" class="Keyword">open</a> <a id="309" class="Keyword">import</a> <a id="316" href="HomotopyType.html" class="Module">HomotopyType</a>
<a id="329" class="Keyword">open</a> <a id="334" class="Keyword">import</a> <a id="341" href="FunExtAxiom.html" class="Module">FunExtAxiom</a>
<a id="353" class="Keyword">open</a> <a id="358" class="Keyword">import</a> <a id="365" href="QuasiinverseType.html" class="Module">QuasiinverseType</a>
</pre>
</div>

## Voevodsky's Univalence Axiom

Voevodsky's Univalence axiom is postulated. It induces an equality between any
two equivalent types. Some $β$ and $η$ rules are provided.

<pre class="Agda">
<a id="586" class="Keyword">module</a> <a id="593" href="UnivalenceAxiom.html" class="Module">UnivalenceAxiom</a> <a id="609" class="Symbol">{</a><a id="610" href="UnivalenceAxiom.html#610" class="Bound">ℓ</a><a id="611" class="Symbol">}</a> <a id="613" class="Symbol">{</a><a id="614" href="UnivalenceAxiom.html#614" class="Bound">A</a> <a id="616" href="UnivalenceAxiom.html#616" class="Bound">B</a> <a id="618" class="Symbol">:</a> <a id="620" href="Intro.html#1803" class="Function">Type</a> <a id="625" href="UnivalenceAxiom.html#610" class="Bound">ℓ</a><a id="626" class="Symbol">}</a> <a id="628" class="Keyword">where</a>
</pre>

{: .foldable until="5"}
<pre class="Agda">
  <a id="685" class="Comment">-- Fun.</a>
  <a id="idtoeqv"></a><a id="695" href="UnivalenceAxiom.html#695" class="Function">idtoeqv</a>
    <a id="707" class="Symbol">:</a> <a id="709" href="UnivalenceAxiom.html#614" class="Bound">A</a> <a id="711" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="714" href="UnivalenceAxiom.html#616" class="Bound">B</a>
    <a id="720" class="Comment">--------</a>
    <a id="733" class="Symbol">→</a> <a id="735" href="UnivalenceAxiom.html#614" class="Bound">A</a> <a id="737" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="739" href="UnivalenceAxiom.html#616" class="Bound">B</a>

  <a id="744" href="UnivalenceAxiom.html#695" class="Function">idtoeqv</a> <a id="752" href="UnivalenceAxiom.html#752" class="Bound">p</a> <a id="754" class="Symbol">=</a>
    <a id="760" href="QuasiinverseType.html#3454" class="Function">qinv-≃</a>
      <a id="773" class="Symbol">(</a><a id="774" href="Transport.html#663" class="Function">tr</a> <a id="777" class="Symbol">(λ</a> <a id="780" href="UnivalenceAxiom.html#780" class="Bound">X</a> <a id="782" class="Symbol">→</a> <a id="784" href="UnivalenceAxiom.html#780" class="Bound">X</a><a id="785" class="Symbol">)</a> <a id="787" href="UnivalenceAxiom.html#752" class="Bound">p</a><a id="788" class="Symbol">)</a>
      <a id="796" class="Symbol">(</a><a id="797" href="Transport.html#663" class="Function">tr</a> <a id="800" class="Symbol">(λ</a> <a id="803" href="UnivalenceAxiom.html#803" class="Bound">X</a> <a id="805" class="Symbol">→</a> <a id="807" href="UnivalenceAxiom.html#803" class="Bound">X</a><a id="808" class="Symbol">)</a> <a id="810" class="Symbol">(</a><a id="811" href="BasicFunctions.html#4241" class="Function Operator">!</a> <a id="813" href="UnivalenceAxiom.html#752" class="Bound">p</a><a id="814" class="Symbol">)</a> <a id="816" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a>
        <a id="826" class="Symbol">(</a><a id="827" href="TransportLemmas.html#4495" class="Function">coe-inv-l</a> <a id="837" href="UnivalenceAxiom.html#752" class="Bound">p</a> <a id="839" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="841" href="TransportLemmas.html#4722" class="Function">coe-inv-r</a> <a id="851" href="UnivalenceAxiom.html#752" class="Bound">p</a><a id="852" class="Symbol">))</a>
</pre>

Synonyms:

<pre class="Agda">
  <a id="==-to-≃"></a><a id="893" href="UnivalenceAxiom.html#893" class="Function">==-to-≃</a> <a id="901" class="Symbol">=</a> <a id="903" href="UnivalenceAxiom.html#695" class="Function">idtoeqv</a>
  <a id="≡-to-≃"></a><a id="913" href="UnivalenceAxiom.html#913" class="Function">≡-to-≃</a>  <a id="921" class="Symbol">=</a> <a id="923" href="UnivalenceAxiom.html#695" class="Function">idtoeqv</a>
</pre>

The **Univalence axiom** induces an equivalence between equalities
and equivalences.

Univalence Axiom.

<pre class="Agda">
  <a id="1063" class="Keyword">postulate</a>
    <a id="axiomUnivalence"></a><a id="1077" href="UnivalenceAxiom.html#1077" class="Postulate">axiomUnivalence</a> <a id="1093" class="Symbol">:</a> <a id="1095" href="EquivalenceType.html#1337" class="Function">isEquivalence</a> <a id="1109" href="UnivalenceAxiom.html#913" class="Function">≡-to-≃</a>
</pre>

In Slide 20 from an [Escardo's talk](https://www.newton.ac.uk/files/seminar/20170711100011001-1442677.pdf), base on what we saw, we give
the following no standard definition of Univalence axiom (without transport).

<pre class="Agda">
  <a id="UA"></a><a id="1359" href="UnivalenceAxiom.html#1359" class="Function">UA</a>
    <a id="1366" class="Symbol">:</a> <a id="1368" class="Symbol">∀</a> <a id="1370" class="Symbol">{</a><a id="1371" href="UnivalenceAxiom.html#1371" class="Bound">ℓ</a><a id="1372" class="Symbol">}</a>
    <a id="1378" class="Symbol">→</a> <a id="1380" class="Symbol">(</a><a id="1381" href="Intro.html#1803" class="Function">Type</a> <a id="1386" class="Symbol">(</a><a id="1387" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="1392" href="UnivalenceAxiom.html#1371" class="Bound">ℓ</a><a id="1393" class="Symbol">))</a>
    
  <a id="1403" href="UnivalenceAxiom.html#1359" class="Function">UA</a> <a id="1406" class="Symbol">{</a><a id="1407" class="Argument">ℓ</a> <a id="1409" class="Symbol">=</a> <a id="1411" href="UnivalenceAxiom.html#1411" class="Bound">ℓ</a><a id="1412" class="Symbol">}</a>  <a id="1415" class="Symbol">=</a>
    <a id="1421" class="Symbol">(</a><a id="1422" href="UnivalenceAxiom.html#1422" class="Bound">X</a> <a id="1424" class="Symbol">:</a> <a id="1426" href="Intro.html#1803" class="Function">Type</a> <a id="1431" href="UnivalenceAxiom.html#1411" class="Bound">ℓ</a><a id="1432" class="Symbol">)</a> <a id="1434" class="Symbol">→</a> <a id="1436" href="HLevelTypes.html#1185" class="Function">isProp</a> <a id="1443" class="Symbol">(</a> <a id="1445" href="BasicTypes.html#1497" class="Record">∑</a> <a id="1447" class="Symbol">(</a><a id="1448" href="Intro.html#1803" class="Function">Type</a> <a id="1453" href="UnivalenceAxiom.html#1411" class="Bound">ℓ</a><a id="1454" class="Symbol">)</a> <a id="1456" class="Symbol">(λ</a> <a id="1459" href="UnivalenceAxiom.html#1459" class="Bound">Y</a> <a id="1461" class="Symbol">→</a> <a id="1463" class="Symbol">(</a><a id="1464" href="UnivalenceAxiom.html#1422" class="Bound">X</a> <a id="1466" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="1468" href="UnivalenceAxiom.html#1459" class="Bound">Y</a><a id="1469" class="Symbol">)</a> <a id="1471" class="Symbol">))</a>
    <a id="1478" class="Keyword">where</a> <a id="1484" class="Keyword">open</a> <a id="1489" class="Keyword">import</a>  <a id="1497" href="HLevelTypes.html" class="Module">HLevelTypes</a>
</pre>

About this Univalence axiom version:

  - ∑ (Type ℓ) (λ Y → X ≃ Y) is inhabited, but we don't know if it's contractible
  unless, we demand (assume) to be propositional. Then, in such a case,
  we use the theorem (isProp P ≃ (P → isContr P)). To be more precise, we know it's contractible, in fact, the center of contractibility, is indeed (X, id-≃ X : X ≃ X).
  
  - Univalence is a generalized extensionality axiom for intensional MLTT theory.
  - The type UA is a proposition.
  - UA is consistent with MLTT.
  - Theorem of MLTT+UA: $P(X)$ and $X≃Y$ imply $P(Y)$ for any $P : \mathsf{Type} → \mathsf{Type}$.
  - Theorem of spartan MLTT with two universes. The univalence axiom formulated
with crude isomorphism rather than equivalence is false!.

{: .foldable until="3" }
<pre class="Agda">
  <a id="eqvUnivalence"></a><a id="2311" href="UnivalenceAxiom.html#2311" class="Function">eqvUnivalence</a>
    <a id="2329" class="Symbol">:</a> <a id="2331" class="Symbol">(</a><a id="2332" href="UnivalenceAxiom.html#614" class="Bound">A</a> <a id="2334" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="2337" href="UnivalenceAxiom.html#616" class="Bound">B</a><a id="2338" class="Symbol">)</a> <a id="2340" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="2342" class="Symbol">(</a><a id="2343" href="UnivalenceAxiom.html#614" class="Bound">A</a> <a id="2345" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="2347" href="UnivalenceAxiom.html#616" class="Bound">B</a><a id="2348" class="Symbol">)</a>

  <a id="2353" href="UnivalenceAxiom.html#2311" class="Function">eqvUnivalence</a> <a id="2367" class="Symbol">=</a> <a id="2369" href="UnivalenceAxiom.html#695" class="Function">idtoeqv</a> <a id="2377" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="2379" href="UnivalenceAxiom.html#1077" class="Postulate">axiomUnivalence</a>
</pre>

Synonyms:
<pre class="Agda">
  <a id="==-equiv-≃"></a><a id="2432" href="UnivalenceAxiom.html#2432" class="Function">==-equiv-≃</a> <a id="2443" class="Symbol">=</a> <a id="2445" href="UnivalenceAxiom.html#2311" class="Function">eqvUnivalence</a>
  <a id="==-≃-≃"></a><a id="2461" href="UnivalenceAxiom.html#2461" class="Function">==-≃-≃</a>     <a id="2472" class="Symbol">=</a> <a id="2474" href="UnivalenceAxiom.html#2311" class="Function">eqvUnivalence</a>
  <a id="≡-≃-≃"></a><a id="2490" href="UnivalenceAxiom.html#2490" class="Function">≡-≃-≃</a>      <a id="2501" class="Symbol">=</a> <a id="2503" href="UnivalenceAxiom.html#2311" class="Function">eqvUnivalence</a>
</pre>

Introduction rule for equalities:

<pre class="Agda">
  <a id="ua"></a><a id="2579" href="UnivalenceAxiom.html#2579" class="Function">ua</a>
    <a id="2586" class="Symbol">:</a> <a id="2588" href="UnivalenceAxiom.html#614" class="Bound">A</a> <a id="2590" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="2592" href="UnivalenceAxiom.html#616" class="Bound">B</a>
    <a id="2598" class="Comment">-------</a>
    <a id="2610" class="Symbol">→</a> <a id="2612" href="UnivalenceAxiom.html#614" class="Bound">A</a> <a id="2614" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="2617" href="UnivalenceAxiom.html#616" class="Bound">B</a>
  <a id="2621" href="UnivalenceAxiom.html#2579" class="Function">ua</a> <a id="2624" class="Symbol">=</a> <a id="2626" href="EquivalenceType.html#1901" class="Function">remap</a> <a id="2632" href="UnivalenceAxiom.html#2311" class="Function">eqvUnivalence</a>
</pre>

Synonyms:

<pre class="Agda">
  <a id="≃-to-=="></a><a id="2684" href="UnivalenceAxiom.html#2684" class="Function">≃-to-==</a>   <a id="2694" class="Symbol">=</a> <a id="2696" href="UnivalenceAxiom.html#2579" class="Function">ua</a>
  <a id="eqv-to-eq"></a><a id="2701" href="UnivalenceAxiom.html#2701" class="Function">eqv-to-eq</a> <a id="2711" class="Symbol">=</a> <a id="2713" href="UnivalenceAxiom.html#2579" class="Function">ua</a>
</pre>

Computation rules

{: .foldable until="5"}
<pre class="Agda">
  <a id="ua-β"></a><a id="2786" href="UnivalenceAxiom.html#2786" class="Function">ua-β</a>
    <a id="2795" class="Symbol">:</a> <a id="2797" class="Symbol">(</a><a id="2798" href="UnivalenceAxiom.html#2798" class="Bound">α</a> <a id="2800" class="Symbol">:</a> <a id="2802" href="UnivalenceAxiom.html#614" class="Bound">A</a> <a id="2804" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="2806" href="UnivalenceAxiom.html#616" class="Bound">B</a><a id="2807" class="Symbol">)</a>
    <a id="2813" class="Comment">----------------------</a>
    <a id="2840" class="Symbol">→</a> <a id="2842" href="UnivalenceAxiom.html#695" class="Function">idtoeqv</a> <a id="2850" class="Symbol">(</a><a id="2851" href="UnivalenceAxiom.html#2579" class="Function">ua</a> <a id="2854" href="UnivalenceAxiom.html#2798" class="Bound">α</a><a id="2855" class="Symbol">)</a> <a id="2857" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="2860" href="UnivalenceAxiom.html#2798" class="Bound">α</a>

  <a id="2865" href="UnivalenceAxiom.html#2786" class="Function">ua-β</a> <a id="2870" href="UnivalenceAxiom.html#2870" class="Bound">eqv</a> <a id="2874" class="Symbol">=</a> <a id="2876" href="EquivalenceType.html#2195" class="Function">lrmap-inverse</a> <a id="2890" href="UnivalenceAxiom.html#2311" class="Function">eqvUnivalence</a>
</pre>

{: .foldable until="5"}
<pre class="Agda">
  <a id="ua-η"></a><a id="2955" href="UnivalenceAxiom.html#2955" class="Function">ua-η</a>
    <a id="2964" class="Symbol">:</a> <a id="2966" class="Symbol">(</a><a id="2967" href="UnivalenceAxiom.html#2967" class="Bound">p</a> <a id="2969" class="Symbol">:</a> <a id="2971" href="UnivalenceAxiom.html#614" class="Bound">A</a> <a id="2973" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="2976" href="UnivalenceAxiom.html#616" class="Bound">B</a><a id="2977" class="Symbol">)</a>
    <a id="2983" class="Comment">---------------------</a>
    <a id="3009" class="Symbol">→</a> <a id="3011" href="UnivalenceAxiom.html#2579" class="Function">ua</a> <a id="3014" class="Symbol">(</a><a id="3015" href="UnivalenceAxiom.html#695" class="Function">idtoeqv</a> <a id="3023" href="UnivalenceAxiom.html#2967" class="Bound">p</a><a id="3024" class="Symbol">)</a> <a id="3026" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="3029" href="UnivalenceAxiom.html#2967" class="Bound">p</a>

  <a id="3034" href="UnivalenceAxiom.html#2955" class="Function">ua-η</a> <a id="3039" href="UnivalenceAxiom.html#3039" class="Bound">p</a> <a id="3041" class="Symbol">=</a> <a id="3043" href="EquivalenceType.html#2448" class="Function">rlmap-inverse</a> <a id="3057" href="UnivalenceAxiom.html#2311" class="Function">eqvUnivalence</a>
</pre>
