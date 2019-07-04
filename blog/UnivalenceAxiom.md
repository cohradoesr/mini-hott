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

  <a id="744" href="UnivalenceAxiom.html#695" class="Function">idtoeqv</a> <a id="752" href="UnivalenceAxiom.html#752" class="Bound">p</a> <a id="754" class="Symbol">=</a> <a id="756" href="QuasiinverseType.html#3125" class="Function">qinv-≃</a>
    <a id="767" class="Symbol">(</a><a id="768" href="Transport.html#462" class="Function">transport</a> <a id="778" class="Symbol">(λ</a> <a id="781" href="UnivalenceAxiom.html#781" class="Bound">X</a> <a id="783" class="Symbol">→</a> <a id="785" href="UnivalenceAxiom.html#781" class="Bound">X</a><a id="786" class="Symbol">)</a> <a id="788" href="UnivalenceAxiom.html#752" class="Bound">p</a><a id="789" class="Symbol">)</a>
    <a id="795" class="Symbol">(</a><a id="796" href="Transport.html#462" class="Function">transport</a> <a id="806" class="Symbol">(λ</a> <a id="809" href="UnivalenceAxiom.html#809" class="Bound">X</a> <a id="811" class="Symbol">→</a> <a id="813" href="UnivalenceAxiom.html#809" class="Bound">X</a><a id="814" class="Symbol">)</a> <a id="816" class="Symbol">(</a><a id="817" href="BasicFunctions.html#4098" class="Function">inv</a> <a id="821" href="UnivalenceAxiom.html#752" class="Bound">p</a><a id="822" class="Symbol">)</a> <a id="824" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="826" class="Symbol">(</a><a id="827" href="TransportLemmas.html#4495" class="Function">coe-inv-l</a> <a id="837" href="UnivalenceAxiom.html#752" class="Bound">p</a> <a id="839" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="841" href="TransportLemmas.html#4722" class="Function">coe-inv-r</a> <a id="851" href="UnivalenceAxiom.html#752" class="Bound">p</a><a id="852" class="Symbol">))</a>
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
\
In Slide 20 from an [Escardo's talk](https://www.newton.ac.uk/files/seminar/20170711100011001-1442677.pdf), I saw
the following no standard definition of Univalence axiom.

<pre class="Agda">
  <a id="UA"></a><a id="1317" href="UnivalenceAxiom.html#1317" class="Function">UA</a>
    <a id="1324" class="Symbol">:</a> <a id="1326" class="Symbol">∀</a> <a id="1328" class="Symbol">{</a><a id="1329" href="UnivalenceAxiom.html#1329" class="Bound">ℓ</a><a id="1330" class="Symbol">}</a>
    <a id="1336" class="Symbol">→</a> <a id="1338" class="Symbol">(</a><a id="1339" href="Intro.html#1803" class="Function">Type</a> <a id="1344" class="Symbol">(</a><a id="1345" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="1350" href="UnivalenceAxiom.html#1329" class="Bound">ℓ</a><a id="1351" class="Symbol">))</a>
    
  <a id="1361" href="UnivalenceAxiom.html#1317" class="Function">UA</a> <a id="1364" class="Symbol">{</a><a id="1365" class="Argument">ℓ</a> <a id="1367" class="Symbol">=</a> <a id="1369" href="UnivalenceAxiom.html#1369" class="Bound">ℓ</a><a id="1370" class="Symbol">}</a>  <a id="1373" class="Symbol">=</a>
    <a id="1379" class="Symbol">(</a><a id="1380" href="UnivalenceAxiom.html#1380" class="Bound">X</a> <a id="1382" class="Symbol">:</a> <a id="1384" href="Intro.html#1803" class="Function">Type</a> <a id="1389" href="UnivalenceAxiom.html#1369" class="Bound">ℓ</a><a id="1390" class="Symbol">)</a>
    <a id="1396" class="Symbol">→</a> <a id="1398" href="HLevelTypes.html#2247" class="Function">isSet</a> <a id="1404" class="Symbol">(</a> <a id="1406" href="BasicTypes.html#1497" class="Record">∑</a> <a id="1408" class="Symbol">(</a><a id="1409" href="Intro.html#1803" class="Function">Type</a> <a id="1414" href="UnivalenceAxiom.html#1369" class="Bound">ℓ</a><a id="1415" class="Symbol">)</a> <a id="1417" class="Symbol">(λ</a> <a id="1420" href="UnivalenceAxiom.html#1420" class="Bound">Y</a> <a id="1422" class="Symbol">→</a> <a id="1424" class="Symbol">(</a><a id="1425" href="UnivalenceAxiom.html#1380" class="Bound">X</a> <a id="1427" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="1429" href="UnivalenceAxiom.html#1420" class="Bound">Y</a><a id="1430" class="Symbol">)</a> <a id="1432" class="Symbol">))</a>
    <a id="1439" class="Keyword">where</a> <a id="1445" class="Keyword">open</a> <a id="1450" class="Keyword">import</a>  <a id="1458" href="HLevelTypes.html" class="Module">HLevelTypes</a>
</pre>

Notes:

  - Univalence is a generalized extensionality axiom for intensional MLTT theory.
  - The type UA is a proposition.
  - UA is consistent with MLTT.
  - Theorem of MLTT+UA: $P(X)$ and $X≃Y$ imply $P(Y)$ for any $P : \mathsf{Type} → \mathsf{Type}$.
  - Theorem of spartan MLTT with two universes. The univalence axiom formulated
with crude isomorphism rather than equivalence is false!.

{: .foldable until="3" }
<pre class="Agda">
  <a id="eqvUnivalence"></a><a id="1916" href="UnivalenceAxiom.html#1916" class="Function">eqvUnivalence</a>
    <a id="1934" class="Symbol">:</a> <a id="1936" class="Symbol">(</a><a id="1937" href="UnivalenceAxiom.html#614" class="Bound">A</a> <a id="1939" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="1942" href="UnivalenceAxiom.html#616" class="Bound">B</a><a id="1943" class="Symbol">)</a> <a id="1945" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="1947" class="Symbol">(</a><a id="1948" href="UnivalenceAxiom.html#614" class="Bound">A</a> <a id="1950" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="1952" href="UnivalenceAxiom.html#616" class="Bound">B</a><a id="1953" class="Symbol">)</a>

  <a id="1958" href="UnivalenceAxiom.html#1916" class="Function">eqvUnivalence</a> <a id="1972" class="Symbol">=</a> <a id="1974" href="UnivalenceAxiom.html#695" class="Function">idtoeqv</a> <a id="1982" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="1984" href="UnivalenceAxiom.html#1077" class="Postulate">axiomUnivalence</a>
</pre>

Synonyms:
<pre class="Agda">
  <a id="==-equiv-≃"></a><a id="2037" href="UnivalenceAxiom.html#2037" class="Function">==-equiv-≃</a> <a id="2048" class="Symbol">=</a> <a id="2050" href="UnivalenceAxiom.html#1916" class="Function">eqvUnivalence</a>
  <a id="==-≃-≃"></a><a id="2066" href="UnivalenceAxiom.html#2066" class="Function">==-≃-≃</a>     <a id="2077" class="Symbol">=</a> <a id="2079" href="UnivalenceAxiom.html#1916" class="Function">eqvUnivalence</a>
  <a id="≡-≃-≃"></a><a id="2095" href="UnivalenceAxiom.html#2095" class="Function">≡-≃-≃</a>      <a id="2106" class="Symbol">=</a> <a id="2108" href="UnivalenceAxiom.html#1916" class="Function">eqvUnivalence</a>
</pre>

Introduction rule for equalities:

<pre class="Agda">
  <a id="ua"></a><a id="2184" href="UnivalenceAxiom.html#2184" class="Function">ua</a>
    <a id="2191" class="Symbol">:</a> <a id="2193" href="UnivalenceAxiom.html#614" class="Bound">A</a> <a id="2195" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="2197" href="UnivalenceAxiom.html#616" class="Bound">B</a>
    <a id="2203" class="Comment">-------</a>
    <a id="2215" class="Symbol">→</a> <a id="2217" href="UnivalenceAxiom.html#614" class="Bound">A</a> <a id="2219" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="2222" href="UnivalenceAxiom.html#616" class="Bound">B</a>
  <a id="2226" href="UnivalenceAxiom.html#2184" class="Function">ua</a> <a id="2229" class="Symbol">=</a> <a id="2231" href="EquivalenceType.html#1901" class="Function">remap</a> <a id="2237" href="UnivalenceAxiom.html#1916" class="Function">eqvUnivalence</a>
</pre>

Synonyms:

<pre class="Agda">
  <a id="≃-to-=="></a><a id="2289" href="UnivalenceAxiom.html#2289" class="Function">≃-to-==</a>   <a id="2299" class="Symbol">=</a> <a id="2301" href="UnivalenceAxiom.html#2184" class="Function">ua</a>
  <a id="eqv-to-eq"></a><a id="2306" href="UnivalenceAxiom.html#2306" class="Function">eqv-to-eq</a> <a id="2316" class="Symbol">=</a> <a id="2318" href="UnivalenceAxiom.html#2184" class="Function">ua</a>
</pre>

Computation rules

{: .foldable until="5"}
<pre class="Agda">
  <a id="ua-β"></a><a id="2391" href="UnivalenceAxiom.html#2391" class="Function">ua-β</a>
    <a id="2400" class="Symbol">:</a> <a id="2402" class="Symbol">(</a><a id="2403" href="UnivalenceAxiom.html#2403" class="Bound">α</a> <a id="2405" class="Symbol">:</a> <a id="2407" href="UnivalenceAxiom.html#614" class="Bound">A</a> <a id="2409" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="2411" href="UnivalenceAxiom.html#616" class="Bound">B</a><a id="2412" class="Symbol">)</a>
    <a id="2418" class="Comment">----------------------</a>
    <a id="2445" class="Symbol">→</a> <a id="2447" href="UnivalenceAxiom.html#695" class="Function">idtoeqv</a> <a id="2455" class="Symbol">(</a><a id="2456" href="UnivalenceAxiom.html#2184" class="Function">ua</a> <a id="2459" href="UnivalenceAxiom.html#2403" class="Bound">α</a><a id="2460" class="Symbol">)</a> <a id="2462" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="2465" href="UnivalenceAxiom.html#2403" class="Bound">α</a>

  <a id="2470" href="UnivalenceAxiom.html#2391" class="Function">ua-β</a> <a id="2475" href="UnivalenceAxiom.html#2475" class="Bound">eqv</a> <a id="2479" class="Symbol">=</a> <a id="2481" href="EquivalenceType.html#2195" class="Function">lrmap-inverse</a> <a id="2495" href="UnivalenceAxiom.html#1916" class="Function">eqvUnivalence</a>
</pre>

{: .foldable until="5"}
<pre class="Agda">
  <a id="ua-η"></a><a id="2560" href="UnivalenceAxiom.html#2560" class="Function">ua-η</a>
    <a id="2569" class="Symbol">:</a> <a id="2571" class="Symbol">(</a><a id="2572" href="UnivalenceAxiom.html#2572" class="Bound">p</a> <a id="2574" class="Symbol">:</a> <a id="2576" href="UnivalenceAxiom.html#614" class="Bound">A</a> <a id="2578" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="2581" href="UnivalenceAxiom.html#616" class="Bound">B</a><a id="2582" class="Symbol">)</a>
    <a id="2588" class="Comment">---------------------</a>
    <a id="2614" class="Symbol">→</a> <a id="2616" href="UnivalenceAxiom.html#2184" class="Function">ua</a> <a id="2619" class="Symbol">(</a><a id="2620" href="UnivalenceAxiom.html#695" class="Function">idtoeqv</a> <a id="2628" href="UnivalenceAxiom.html#2572" class="Bound">p</a><a id="2629" class="Symbol">)</a> <a id="2631" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="2634" href="UnivalenceAxiom.html#2572" class="Bound">p</a>

  <a id="2639" href="UnivalenceAxiom.html#2560" class="Function">ua-η</a> <a id="2644" href="UnivalenceAxiom.html#2644" class="Bound">p</a> <a id="2646" class="Symbol">=</a> <a id="2648" href="EquivalenceType.html#2448" class="Function">rlmap-inverse</a> <a id="2662" href="UnivalenceAxiom.html#1916" class="Function">eqvUnivalence</a>
</pre>
