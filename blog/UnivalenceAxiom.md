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
<a id="382" class="Keyword">open</a> <a id="387" class="Keyword">import</a> <a id="394" href="QuasiinverseLemmas.html" class="Module">QuasiinverseLemmas</a>
</pre>
</div>

## Voevodsky's Univalence Axiom

Voevodsky's Univalence axiom is postulated. It induces an equality between any
two equivalent types. Some $β$ and $η$ rules are provided.

<pre class="Agda">
<a id="617" class="Keyword">module</a> <a id="624" href="UnivalenceAxiom.html" class="Module">UnivalenceAxiom</a> <a id="640" class="Symbol">{</a><a id="641" href="UnivalenceAxiom.html#641" class="Bound">ℓ</a><a id="642" class="Symbol">}</a> <a id="644" class="Symbol">{</a><a id="645" href="UnivalenceAxiom.html#645" class="Bound">A</a> <a id="647" href="UnivalenceAxiom.html#647" class="Bound">B</a> <a id="649" class="Symbol">:</a> <a id="651" href="Intro.html#2793" class="Function">Type</a> <a id="656" href="UnivalenceAxiom.html#641" class="Bound">ℓ</a><a id="657" class="Symbol">}</a> <a id="659" class="Keyword">where</a>
</pre>

{: .foldable until="4"}
<pre class="Agda">
  <a id="idtoeqv"></a><a id="716" href="UnivalenceAxiom.html#716" class="Function">idtoeqv</a>
    <a id="728" class="Symbol">:</a> <a id="730" href="UnivalenceAxiom.html#645" class="Bound">A</a> <a id="732" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="735" href="UnivalenceAxiom.html#647" class="Bound">B</a>
    <a id="741" class="Comment">--------</a>
    <a id="754" class="Symbol">→</a> <a id="756" href="UnivalenceAxiom.html#645" class="Bound">A</a> <a id="758" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="760" href="UnivalenceAxiom.html#647" class="Bound">B</a>

  <a id="765" href="UnivalenceAxiom.html#716" class="Function">idtoeqv</a> <a id="773" href="UnivalenceAxiom.html#773" class="Bound">p</a> <a id="775" class="Symbol">=</a>
    <a id="781" href="QuasiinverseType.html#3454" class="Function">qinv-≃</a>
      <a id="794" class="Symbol">(</a><a id="795" href="Transport.html#784" class="Function">coe</a> <a id="799" href="UnivalenceAxiom.html#773" class="Bound">p</a><a id="800" class="Symbol">)</a>
      <a id="808" class="Symbol">((</a><a id="810" href="Transport.html#947" class="Function">!coe</a> <a id="815" href="UnivalenceAxiom.html#773" class="Bound">p</a><a id="816" class="Symbol">)</a> <a id="818" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a>
        <a id="828" class="Symbol">(</a><a id="829" href="TransportLemmas.html#4495" class="Function">coe-inv-l</a> <a id="839" href="UnivalenceAxiom.html#773" class="Bound">p</a> <a id="841" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="843" href="TransportLemmas.html#4722" class="Function">coe-inv-r</a> <a id="853" href="UnivalenceAxiom.html#773" class="Bound">p</a><a id="854" class="Symbol">))</a>
</pre>

Synonyms:

<pre class="Agda">
  <a id="==-to-≃"></a><a id="895" href="UnivalenceAxiom.html#895" class="Function">==-to-≃</a> <a id="903" class="Symbol">=</a> <a id="905" href="UnivalenceAxiom.html#716" class="Function">idtoeqv</a>
  <a id="≡-to-≃"></a><a id="915" href="UnivalenceAxiom.html#915" class="Function">≡-to-≃</a>  <a id="923" class="Symbol">=</a> <a id="925" href="UnivalenceAxiom.html#716" class="Function">idtoeqv</a>
  <a id="ite"></a><a id="935" href="UnivalenceAxiom.html#935" class="Function">ite</a>     <a id="943" class="Symbol">=</a> <a id="945" href="UnivalenceAxiom.html#716" class="Function">idtoeqv</a>
</pre>

The **Univalence axiom** induces an equivalence between equalities
and equivalences.

Univalence Axiom.

<pre class="Agda">
  <a id="1085" class="Keyword">postulate</a>
    <a id="axiomUnivalence"></a><a id="1099" href="UnivalenceAxiom.html#1099" class="Postulate">axiomUnivalence</a>
      <a id="1121" class="Symbol">:</a> <a id="1123" href="EquivalenceType.html#1337" class="Function">isEquivalence</a> <a id="1137" href="UnivalenceAxiom.html#915" class="Function">≡-to-≃</a>
</pre>

In Slide 20 from an [Escardo's talk](https://www.newton.ac.uk/files/seminar/20170711100011001-1442677.pdf), base on what we saw, we give
the following no standard definition of Univalence axiom (without transport).

<pre class="Agda">
  <a id="UA"></a><a id="1387" href="UnivalenceAxiom.html#1387" class="Function">UA</a>
    <a id="1394" class="Symbol">:</a> <a id="1396" class="Symbol">∀</a> <a id="1398" class="Symbol">{</a><a id="1399" href="UnivalenceAxiom.html#1399" class="Bound">ℓ</a><a id="1400" class="Symbol">}</a>
    <a id="1406" class="Symbol">→</a> <a id="1408" class="Symbol">(</a><a id="1409" href="Intro.html#2793" class="Function">Type</a> <a id="1414" class="Symbol">(</a><a id="1415" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="1420" href="UnivalenceAxiom.html#1399" class="Bound">ℓ</a><a id="1421" class="Symbol">))</a>

  <a id="1427" href="UnivalenceAxiom.html#1387" class="Function">UA</a> <a id="1430" class="Symbol">{</a><a id="1431" class="Argument">ℓ</a> <a id="1433" class="Symbol">=</a> <a id="1435" href="UnivalenceAxiom.html#1435" class="Bound">ℓ</a><a id="1436" class="Symbol">}</a>  <a id="1439" class="Symbol">=</a>
    <a id="1445" class="Symbol">(</a><a id="1446" href="UnivalenceAxiom.html#1446" class="Bound">X</a> <a id="1448" class="Symbol">:</a> <a id="1450" href="Intro.html#2793" class="Function">Type</a> <a id="1455" href="UnivalenceAxiom.html#1435" class="Bound">ℓ</a><a id="1456" class="Symbol">)</a> <a id="1458" class="Symbol">→</a> <a id="1460" href="HLevelTypes.html#1185" class="Function">isProp</a> <a id="1467" class="Symbol">(</a> <a id="1469" href="BasicTypes.html#1497" class="Record">∑</a> <a id="1471" class="Symbol">(</a><a id="1472" href="Intro.html#2793" class="Function">Type</a> <a id="1477" href="UnivalenceAxiom.html#1435" class="Bound">ℓ</a><a id="1478" class="Symbol">)</a> <a id="1480" class="Symbol">(λ</a> <a id="1483" href="UnivalenceAxiom.html#1483" class="Bound">Y</a> <a id="1485" class="Symbol">→</a> <a id="1487" class="Symbol">(</a><a id="1488" href="UnivalenceAxiom.html#1446" class="Bound">X</a> <a id="1490" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="1492" href="UnivalenceAxiom.html#1483" class="Bound">Y</a><a id="1493" class="Symbol">)</a> <a id="1495" class="Symbol">))</a>
    <a id="1502" class="Keyword">where</a> <a id="1508" class="Keyword">open</a> <a id="1513" class="Keyword">import</a>  <a id="1521" href="HLevelTypes.html" class="Module">HLevelTypes</a>
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
  <a id="eqvUnivalence"></a><a id="2333" href="UnivalenceAxiom.html#2333" class="Function">eqvUnivalence</a>
    <a id="2351" class="Symbol">:</a> <a id="2353" class="Symbol">(</a><a id="2354" href="UnivalenceAxiom.html#645" class="Bound">A</a> <a id="2356" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="2359" href="UnivalenceAxiom.html#647" class="Bound">B</a><a id="2360" class="Symbol">)</a> <a id="2362" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="2364" class="Symbol">(</a><a id="2365" href="UnivalenceAxiom.html#645" class="Bound">A</a> <a id="2367" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="2369" href="UnivalenceAxiom.html#647" class="Bound">B</a><a id="2370" class="Symbol">)</a>

  <a id="2375" href="UnivalenceAxiom.html#2333" class="Function">eqvUnivalence</a> <a id="2389" class="Symbol">=</a> <a id="2391" href="UnivalenceAxiom.html#716" class="Function">idtoeqv</a> <a id="2399" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="2401" href="UnivalenceAxiom.html#1099" class="Postulate">axiomUnivalence</a>
</pre>

Synonyms:
<pre class="Agda">
  <a id="==-equiv-≃"></a><a id="2454" href="UnivalenceAxiom.html#2454" class="Function">==-equiv-≃</a> <a id="2465" class="Symbol">=</a> <a id="2467" href="UnivalenceAxiom.html#2333" class="Function">eqvUnivalence</a>
  <a id="==-≃-≃"></a><a id="2483" href="UnivalenceAxiom.html#2483" class="Function">==-≃-≃</a>     <a id="2494" class="Symbol">=</a> <a id="2496" href="UnivalenceAxiom.html#2333" class="Function">eqvUnivalence</a>
  <a id="≡-≃-≃"></a><a id="2512" href="UnivalenceAxiom.html#2512" class="Function">≡-≃-≃</a>      <a id="2523" class="Symbol">=</a> <a id="2525" href="UnivalenceAxiom.html#2333" class="Function">eqvUnivalence</a>
</pre>

Introduction rule for equalities:

{: .foldable until="4" }
<pre class="Agda">
  <a id="ua"></a><a id="2626" href="UnivalenceAxiom.html#2626" class="Function">ua</a>
    <a id="2633" class="Symbol">:</a> <a id="2635" href="UnivalenceAxiom.html#645" class="Bound">A</a> <a id="2637" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="2639" href="UnivalenceAxiom.html#647" class="Bound">B</a>
    <a id="2645" class="Comment">-------</a>
    <a id="2657" class="Symbol">→</a> <a id="2659" href="UnivalenceAxiom.html#645" class="Bound">A</a> <a id="2661" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="2664" href="UnivalenceAxiom.html#647" class="Bound">B</a>

  <a id="2669" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="2672" class="Symbol">=</a> <a id="2674" href="EquivalenceType.html#1901" class="Function">remap</a> <a id="2680" href="UnivalenceAxiom.html#2333" class="Function">eqvUnivalence</a>
</pre>

Synonyms:

<pre class="Agda">
  <a id="≃-to-=="></a><a id="2732" href="UnivalenceAxiom.html#2732" class="Function">≃-to-==</a>   <a id="2742" class="Symbol">=</a> <a id="2744" href="UnivalenceAxiom.html#2626" class="Function">ua</a>
  <a id="eqv-to-eq"></a><a id="2749" href="UnivalenceAxiom.html#2749" class="Function">eqv-to-eq</a> <a id="2759" class="Symbol">=</a> <a id="2761" href="UnivalenceAxiom.html#2626" class="Function">ua</a>
</pre>

Computation rules

{: .foldable until="4"}
<pre class="Agda">
  <a id="ua-β"></a><a id="2834" href="UnivalenceAxiom.html#2834" class="Function">ua-β</a>
    <a id="2843" class="Symbol">:</a> <a id="2845" class="Symbol">(</a><a id="2846" href="UnivalenceAxiom.html#2846" class="Bound">α</a> <a id="2848" class="Symbol">:</a> <a id="2850" href="UnivalenceAxiom.html#645" class="Bound">A</a> <a id="2852" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="2854" href="UnivalenceAxiom.html#647" class="Bound">B</a><a id="2855" class="Symbol">)</a>
    <a id="2861" class="Comment">----------------------</a>
    <a id="2888" class="Symbol">→</a> <a id="2890" href="UnivalenceAxiom.html#716" class="Function">idtoeqv</a> <a id="2898" class="Symbol">(</a><a id="2899" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="2902" href="UnivalenceAxiom.html#2846" class="Bound">α</a><a id="2903" class="Symbol">)</a> <a id="2905" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="2908" href="UnivalenceAxiom.html#2846" class="Bound">α</a>

  <a id="2913" href="UnivalenceAxiom.html#2834" class="Function">ua-β</a> <a id="2918" href="UnivalenceAxiom.html#2918" class="Bound">eqv</a> <a id="2922" class="Symbol">=</a> <a id="2924" href="EquivalenceType.html#2195" class="Function">lrmap-inverse</a> <a id="2938" href="UnivalenceAxiom.html#2333" class="Function">eqvUnivalence</a>
</pre>

{: .foldable until="4"}
<pre class="Agda">
  <a id="ua-η"></a><a id="3003" href="UnivalenceAxiom.html#3003" class="Function">ua-η</a>
    <a id="3012" class="Symbol">:</a> <a id="3014" class="Symbol">(</a><a id="3015" href="UnivalenceAxiom.html#3015" class="Bound">p</a> <a id="3017" class="Symbol">:</a> <a id="3019" href="UnivalenceAxiom.html#645" class="Bound">A</a> <a id="3021" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="3024" href="UnivalenceAxiom.html#647" class="Bound">B</a><a id="3025" class="Symbol">)</a>
    <a id="3031" class="Comment">---------------------</a>
    <a id="3057" class="Symbol">→</a> <a id="3059" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="3062" class="Symbol">(</a><a id="3063" href="UnivalenceAxiom.html#716" class="Function">idtoeqv</a> <a id="3071" href="UnivalenceAxiom.html#3015" class="Bound">p</a><a id="3072" class="Symbol">)</a> <a id="3074" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="3077" href="UnivalenceAxiom.html#3015" class="Bound">p</a>

  <a id="3082" href="UnivalenceAxiom.html#3003" class="Function">ua-η</a> <a id="3087" href="UnivalenceAxiom.html#3087" class="Bound">p</a> <a id="3089" class="Symbol">=</a> <a id="3091" href="EquivalenceType.html#2448" class="Function">rlmap-inverse</a> <a id="3105" href="UnivalenceAxiom.html#2333" class="Function">eqvUnivalence</a>
</pre>


