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
<a id="586" class="Keyword">module</a> <a id="593" href="UnivalenceAxiom.html" class="Module">UnivalenceAxiom</a> <a id="609" class="Symbol">{</a><a id="610" href="UnivalenceAxiom.html#610" class="Bound">ℓ</a><a id="611" class="Symbol">}</a> <a id="613" class="Symbol">{</a><a id="614" href="UnivalenceAxiom.html#614" class="Bound">A</a> <a id="616" href="UnivalenceAxiom.html#616" class="Bound">B</a> <a id="618" class="Symbol">:</a> <a id="620" href="Intro.html#2766" class="Function">Type</a> <a id="625" href="UnivalenceAxiom.html#610" class="Bound">ℓ</a><a id="626" class="Symbol">}</a> <a id="628" class="Keyword">where</a>
</pre>

{: .foldable until="4"}
<pre class="Agda">
  <a id="idtoeqv"></a><a id="685" href="UnivalenceAxiom.html#685" class="Function">idtoeqv</a>
    <a id="697" class="Symbol">:</a> <a id="699" href="UnivalenceAxiom.html#614" class="Bound">A</a> <a id="701" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="704" href="UnivalenceAxiom.html#616" class="Bound">B</a>
    <a id="710" class="Comment">--------</a>
    <a id="723" class="Symbol">→</a> <a id="725" href="UnivalenceAxiom.html#614" class="Bound">A</a> <a id="727" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="729" href="UnivalenceAxiom.html#616" class="Bound">B</a>

  <a id="734" href="UnivalenceAxiom.html#685" class="Function">idtoeqv</a> <a id="742" href="UnivalenceAxiom.html#742" class="Bound">p</a> <a id="744" class="Symbol">=</a>
    <a id="750" href="QuasiinverseType.html#3454" class="Function">qinv-≃</a>
      <a id="763" class="Symbol">(</a><a id="764" href="Transport.html#784" class="Function">coe</a> <a id="768" href="UnivalenceAxiom.html#742" class="Bound">p</a><a id="769" class="Symbol">)</a>
      <a id="777" class="Symbol">((</a><a id="779" href="Transport.html#947" class="Function">!coe</a> <a id="784" href="UnivalenceAxiom.html#742" class="Bound">p</a><a id="785" class="Symbol">)</a> <a id="787" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a>
        <a id="797" class="Symbol">(</a><a id="798" href="TransportLemmas.html#4495" class="Function">coe-inv-l</a> <a id="808" href="UnivalenceAxiom.html#742" class="Bound">p</a> <a id="810" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="812" href="TransportLemmas.html#4722" class="Function">coe-inv-r</a> <a id="822" href="UnivalenceAxiom.html#742" class="Bound">p</a><a id="823" class="Symbol">))</a>
</pre>

Synonyms:

<pre class="Agda">
  <a id="==-to-≃"></a><a id="864" href="UnivalenceAxiom.html#864" class="Function">==-to-≃</a> <a id="872" class="Symbol">=</a> <a id="874" href="UnivalenceAxiom.html#685" class="Function">idtoeqv</a>
  <a id="≡-to-≃"></a><a id="884" href="UnivalenceAxiom.html#884" class="Function">≡-to-≃</a>  <a id="892" class="Symbol">=</a> <a id="894" href="UnivalenceAxiom.html#685" class="Function">idtoeqv</a>
  <a id="ite"></a><a id="904" href="UnivalenceAxiom.html#904" class="Function">ite</a>     <a id="912" class="Symbol">=</a> <a id="914" href="UnivalenceAxiom.html#685" class="Function">idtoeqv</a>
</pre>

The **Univalence axiom** induces an equivalence between equalities
and equivalences.

Univalence Axiom.

<pre class="Agda">
  <a id="1054" class="Keyword">postulate</a>
    <a id="axiomUnivalence"></a><a id="1068" href="UnivalenceAxiom.html#1068" class="Postulate">axiomUnivalence</a>
      <a id="1090" class="Symbol">:</a> <a id="1092" href="EquivalenceType.html#1337" class="Function">isEquivalence</a> <a id="1106" href="UnivalenceAxiom.html#884" class="Function">≡-to-≃</a>
</pre>

In Slide 20 from an [Escardo's talk](https://www.newton.ac.uk/files/seminar/20170711100011001-1442677.pdf), base on what we saw, we give
the following no standard definition of Univalence axiom (without transport).

<pre class="Agda">
  <a id="UA"></a><a id="1356" href="UnivalenceAxiom.html#1356" class="Function">UA</a>
    <a id="1363" class="Symbol">:</a> <a id="1365" class="Symbol">∀</a> <a id="1367" class="Symbol">{</a><a id="1368" href="UnivalenceAxiom.html#1368" class="Bound">ℓ</a><a id="1369" class="Symbol">}</a>
    <a id="1375" class="Symbol">→</a> <a id="1377" class="Symbol">(</a><a id="1378" href="Intro.html#2766" class="Function">Type</a> <a id="1383" class="Symbol">(</a><a id="1384" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="1389" href="UnivalenceAxiom.html#1368" class="Bound">ℓ</a><a id="1390" class="Symbol">))</a>

  <a id="1396" href="UnivalenceAxiom.html#1356" class="Function">UA</a> <a id="1399" class="Symbol">{</a><a id="1400" class="Argument">ℓ</a> <a id="1402" class="Symbol">=</a> <a id="1404" href="UnivalenceAxiom.html#1404" class="Bound">ℓ</a><a id="1405" class="Symbol">}</a>  <a id="1408" class="Symbol">=</a>
    <a id="1414" class="Symbol">(</a><a id="1415" href="UnivalenceAxiom.html#1415" class="Bound">X</a> <a id="1417" class="Symbol">:</a> <a id="1419" href="Intro.html#2766" class="Function">Type</a> <a id="1424" href="UnivalenceAxiom.html#1404" class="Bound">ℓ</a><a id="1425" class="Symbol">)</a> <a id="1427" class="Symbol">→</a> <a id="1429" href="HLevelTypes.html#1185" class="Function">isProp</a> <a id="1436" class="Symbol">(</a> <a id="1438" href="BasicTypes.html#1497" class="Record">∑</a> <a id="1440" class="Symbol">(</a><a id="1441" href="Intro.html#2766" class="Function">Type</a> <a id="1446" href="UnivalenceAxiom.html#1404" class="Bound">ℓ</a><a id="1447" class="Symbol">)</a> <a id="1449" class="Symbol">(λ</a> <a id="1452" href="UnivalenceAxiom.html#1452" class="Bound">Y</a> <a id="1454" class="Symbol">→</a> <a id="1456" class="Symbol">(</a><a id="1457" href="UnivalenceAxiom.html#1415" class="Bound">X</a> <a id="1459" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="1461" href="UnivalenceAxiom.html#1452" class="Bound">Y</a><a id="1462" class="Symbol">)</a> <a id="1464" class="Symbol">))</a>
    <a id="1471" class="Keyword">where</a> <a id="1477" class="Keyword">open</a> <a id="1482" class="Keyword">import</a>  <a id="1490" href="HLevelTypes.html" class="Module">HLevelTypes</a>
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

{: .foldable until="2" }
<pre class="Agda">
  <a id="eqvUnivalence"></a><a id="2302" href="UnivalenceAxiom.html#2302" class="Function">eqvUnivalence</a>
    <a id="2320" class="Symbol">:</a> <a id="2322" class="Symbol">(</a><a id="2323" href="UnivalenceAxiom.html#614" class="Bound">A</a> <a id="2325" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="2328" href="UnivalenceAxiom.html#616" class="Bound">B</a><a id="2329" class="Symbol">)</a> <a id="2331" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="2333" class="Symbol">(</a><a id="2334" href="UnivalenceAxiom.html#614" class="Bound">A</a> <a id="2336" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="2338" href="UnivalenceAxiom.html#616" class="Bound">B</a><a id="2339" class="Symbol">)</a>

  <a id="2344" href="UnivalenceAxiom.html#2302" class="Function">eqvUnivalence</a> <a id="2358" class="Symbol">=</a> <a id="2360" href="UnivalenceAxiom.html#685" class="Function">idtoeqv</a> <a id="2368" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="2370" href="UnivalenceAxiom.html#1068" class="Postulate">axiomUnivalence</a>
</pre>

Synonyms:
<pre class="Agda">
  <a id="==-equiv-≃"></a><a id="2423" href="UnivalenceAxiom.html#2423" class="Function">==-equiv-≃</a> <a id="2434" class="Symbol">=</a> <a id="2436" href="UnivalenceAxiom.html#2302" class="Function">eqvUnivalence</a>
  <a id="==-≃-≃"></a><a id="2452" href="UnivalenceAxiom.html#2452" class="Function">==-≃-≃</a>     <a id="2463" class="Symbol">=</a> <a id="2465" href="UnivalenceAxiom.html#2302" class="Function">eqvUnivalence</a>
  <a id="≡-≃-≃"></a><a id="2481" href="UnivalenceAxiom.html#2481" class="Function">≡-≃-≃</a>      <a id="2492" class="Symbol">=</a> <a id="2494" href="UnivalenceAxiom.html#2302" class="Function">eqvUnivalence</a>
</pre>

Introduction rule for equalities:

{: .foldable until="4" }
<pre class="Agda">
  <a id="ua"></a><a id="2595" href="UnivalenceAxiom.html#2595" class="Function">ua</a>
    <a id="2602" class="Symbol">:</a> <a id="2604" href="UnivalenceAxiom.html#614" class="Bound">A</a> <a id="2606" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="2608" href="UnivalenceAxiom.html#616" class="Bound">B</a>
    <a id="2614" class="Comment">-------</a>
    <a id="2626" class="Symbol">→</a> <a id="2628" href="UnivalenceAxiom.html#614" class="Bound">A</a> <a id="2630" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="2633" href="UnivalenceAxiom.html#616" class="Bound">B</a>

  <a id="2638" href="UnivalenceAxiom.html#2595" class="Function">ua</a> <a id="2641" class="Symbol">=</a> <a id="2643" href="EquivalenceType.html#1901" class="Function">remap</a> <a id="2649" href="UnivalenceAxiom.html#2302" class="Function">eqvUnivalence</a>
</pre>

Synonyms:

<pre class="Agda">
  <a id="≃-to-=="></a><a id="2701" href="UnivalenceAxiom.html#2701" class="Function">≃-to-==</a>   <a id="2711" class="Symbol">=</a> <a id="2713" href="UnivalenceAxiom.html#2595" class="Function">ua</a>
  <a id="eqv-to-eq"></a><a id="2718" href="UnivalenceAxiom.html#2718" class="Function">eqv-to-eq</a> <a id="2728" class="Symbol">=</a> <a id="2730" href="UnivalenceAxiom.html#2595" class="Function">ua</a>
</pre>

Computation rules

{: .foldable until="4"}
<pre class="Agda">
  <a id="ua-β"></a><a id="2803" href="UnivalenceAxiom.html#2803" class="Function">ua-β</a>
    <a id="2812" class="Symbol">:</a> <a id="2814" class="Symbol">(</a><a id="2815" href="UnivalenceAxiom.html#2815" class="Bound">α</a> <a id="2817" class="Symbol">:</a> <a id="2819" href="UnivalenceAxiom.html#614" class="Bound">A</a> <a id="2821" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="2823" href="UnivalenceAxiom.html#616" class="Bound">B</a><a id="2824" class="Symbol">)</a>
    <a id="2830" class="Comment">----------------------</a>
    <a id="2857" class="Symbol">→</a> <a id="2859" href="UnivalenceAxiom.html#685" class="Function">idtoeqv</a> <a id="2867" class="Symbol">(</a><a id="2868" href="UnivalenceAxiom.html#2595" class="Function">ua</a> <a id="2871" href="UnivalenceAxiom.html#2815" class="Bound">α</a><a id="2872" class="Symbol">)</a> <a id="2874" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="2877" href="UnivalenceAxiom.html#2815" class="Bound">α</a>

  <a id="2882" href="UnivalenceAxiom.html#2803" class="Function">ua-β</a> <a id="2887" href="UnivalenceAxiom.html#2887" class="Bound">eqv</a> <a id="2891" class="Symbol">=</a> <a id="2893" href="EquivalenceType.html#2195" class="Function">lrmap-inverse</a> <a id="2907" href="UnivalenceAxiom.html#2302" class="Function">eqvUnivalence</a>
</pre>

{: .foldable until="4"}
<pre class="Agda">
  <a id="ua-η"></a><a id="2972" href="UnivalenceAxiom.html#2972" class="Function">ua-η</a>
    <a id="2981" class="Symbol">:</a> <a id="2983" class="Symbol">(</a><a id="2984" href="UnivalenceAxiom.html#2984" class="Bound">p</a> <a id="2986" class="Symbol">:</a> <a id="2988" href="UnivalenceAxiom.html#614" class="Bound">A</a> <a id="2990" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="2993" href="UnivalenceAxiom.html#616" class="Bound">B</a><a id="2994" class="Symbol">)</a>
    <a id="3000" class="Comment">---------------------</a>
    <a id="3026" class="Symbol">→</a> <a id="3028" href="UnivalenceAxiom.html#2595" class="Function">ua</a> <a id="3031" class="Symbol">(</a><a id="3032" href="UnivalenceAxiom.html#685" class="Function">idtoeqv</a> <a id="3040" href="UnivalenceAxiom.html#2984" class="Bound">p</a><a id="3041" class="Symbol">)</a> <a id="3043" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="3046" href="UnivalenceAxiom.html#2984" class="Bound">p</a>

  <a id="3051" href="UnivalenceAxiom.html#2972" class="Function">ua-η</a> <a id="3056" href="UnivalenceAxiom.html#3056" class="Bound">p</a> <a id="3058" class="Symbol">=</a> <a id="3060" href="EquivalenceType.html#2448" class="Function">rlmap-inverse</a> <a id="3074" href="UnivalenceAxiom.html#2302" class="Function">eqvUnivalence</a>
</pre>
