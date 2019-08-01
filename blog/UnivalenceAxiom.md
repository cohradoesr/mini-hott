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
    <a id="754" class="Symbol">→</a> <a id="756" href="UnivalenceAxiom.html#645" class="Bound">A</a> <a id="758" href="EquivalenceType.html#1467" class="Function Operator">≃</a> <a id="760" href="UnivalenceAxiom.html#647" class="Bound">B</a>

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

{: .axiom }
<pre class="Agda">
  <a id="1097" class="Keyword">postulate</a>
    <a id="axiomUnivalence"></a><a id="1111" href="UnivalenceAxiom.html#1111" class="Postulate">axiomUnivalence</a>
      <a id="1133" class="Symbol">:</a> <a id="1135" href="EquivalenceType.html#1369" class="Function">isEquivalence</a> <a id="1149" href="UnivalenceAxiom.html#915" class="Function">≡-to-≃</a>
</pre>

In Slide 20 from an [Escardo's talk](https://www.newton.ac.uk/files/seminar/20170711100011001-1442677.pdf), base on what we saw, we give
the following no standard definition of Univalence axiom (without transport).

{: .axiom }
<pre class="Agda">
  <a id="UA"></a><a id="1411" href="UnivalenceAxiom.html#1411" class="Function">UA</a>
    <a id="1418" class="Symbol">:</a> <a id="1420" class="Symbol">∀</a> <a id="1422" class="Symbol">{</a><a id="1423" href="UnivalenceAxiom.html#1423" class="Bound">ℓ</a><a id="1424" class="Symbol">}</a>
    <a id="1430" class="Symbol">→</a> <a id="1432" class="Symbol">(</a><a id="1433" href="Intro.html#2793" class="Function">Type</a> <a id="1438" class="Symbol">(</a><a id="1439" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="1444" href="UnivalenceAxiom.html#1423" class="Bound">ℓ</a><a id="1445" class="Symbol">))</a>

  <a id="1451" href="UnivalenceAxiom.html#1411" class="Function">UA</a> <a id="1454" class="Symbol">{</a><a id="1455" class="Argument">ℓ</a> <a id="1457" class="Symbol">=</a> <a id="1459" href="UnivalenceAxiom.html#1459" class="Bound">ℓ</a><a id="1460" class="Symbol">}</a>  <a id="1463" class="Symbol">=</a>
    <a id="1469" class="Symbol">(</a><a id="1470" href="UnivalenceAxiom.html#1470" class="Bound">X</a> <a id="1472" class="Symbol">:</a> <a id="1474" href="Intro.html#2793" class="Function">Type</a> <a id="1479" href="UnivalenceAxiom.html#1459" class="Bound">ℓ</a><a id="1480" class="Symbol">)</a> <a id="1482" class="Symbol">→</a> <a id="1484" href="HLevelTypes.html#1185" class="Function">isProp</a> <a id="1491" class="Symbol">(</a> <a id="1493" href="BasicTypes.html#1497" class="Record">∑</a> <a id="1495" class="Symbol">(</a><a id="1496" href="Intro.html#2793" class="Function">Type</a> <a id="1501" href="UnivalenceAxiom.html#1459" class="Bound">ℓ</a><a id="1502" class="Symbol">)</a> <a id="1504" class="Symbol">(λ</a> <a id="1507" href="UnivalenceAxiom.html#1507" class="Bound">Y</a> <a id="1509" class="Symbol">→</a> <a id="1511" class="Symbol">(</a><a id="1512" href="UnivalenceAxiom.html#1470" class="Bound">X</a> <a id="1514" href="EquivalenceType.html#1467" class="Function Operator">≃</a> <a id="1516" href="UnivalenceAxiom.html#1507" class="Bound">Y</a><a id="1517" class="Symbol">)</a> <a id="1519" class="Symbol">))</a>
    <a id="1526" class="Keyword">where</a> <a id="1532" class="Keyword">open</a> <a id="1537" class="Keyword">import</a>  <a id="1545" href="HLevelTypes.html" class="Module">HLevelTypes</a>
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
  <a id="eqvUnivalence"></a><a id="2357" href="UnivalenceAxiom.html#2357" class="Function">eqvUnivalence</a>
    <a id="2375" class="Symbol">:</a> <a id="2377" class="Symbol">(</a><a id="2378" href="UnivalenceAxiom.html#645" class="Bound">A</a> <a id="2380" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="2383" href="UnivalenceAxiom.html#647" class="Bound">B</a><a id="2384" class="Symbol">)</a> <a id="2386" href="EquivalenceType.html#1467" class="Function Operator">≃</a> <a id="2388" class="Symbol">(</a><a id="2389" href="UnivalenceAxiom.html#645" class="Bound">A</a> <a id="2391" href="EquivalenceType.html#1467" class="Function Operator">≃</a> <a id="2393" href="UnivalenceAxiom.html#647" class="Bound">B</a><a id="2394" class="Symbol">)</a>

  <a id="2399" href="UnivalenceAxiom.html#2357" class="Function">eqvUnivalence</a> <a id="2413" class="Symbol">=</a> <a id="2415" href="UnivalenceAxiom.html#716" class="Function">idtoeqv</a> <a id="2423" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="2425" href="UnivalenceAxiom.html#1111" class="Postulate">axiomUnivalence</a>
</pre>

Synonyms:
<pre class="Agda">
  <a id="==-equiv-≃"></a><a id="2478" href="UnivalenceAxiom.html#2478" class="Function">==-equiv-≃</a> <a id="2489" class="Symbol">=</a> <a id="2491" href="UnivalenceAxiom.html#2357" class="Function">eqvUnivalence</a>
  <a id="==-≃-≃"></a><a id="2507" href="UnivalenceAxiom.html#2507" class="Function">==-≃-≃</a>     <a id="2518" class="Symbol">=</a> <a id="2520" href="UnivalenceAxiom.html#2357" class="Function">eqvUnivalence</a>
  <a id="≡-≃-≃"></a><a id="2536" href="UnivalenceAxiom.html#2536" class="Function">≡-≃-≃</a>      <a id="2547" class="Symbol">=</a> <a id="2549" href="UnivalenceAxiom.html#2357" class="Function">eqvUnivalence</a>
</pre>

Introduction rule for equalities:

{: .foldable until="4" }
<pre class="Agda">
  <a id="ua"></a><a id="2650" href="UnivalenceAxiom.html#2650" class="Function">ua</a>
    <a id="2657" class="Symbol">:</a> <a id="2659" href="UnivalenceAxiom.html#645" class="Bound">A</a> <a id="2661" href="EquivalenceType.html#1467" class="Function Operator">≃</a> <a id="2663" href="UnivalenceAxiom.html#647" class="Bound">B</a>
    <a id="2669" class="Comment">-------</a>
    <a id="2681" class="Symbol">→</a> <a id="2683" href="UnivalenceAxiom.html#645" class="Bound">A</a> <a id="2685" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="2688" href="UnivalenceAxiom.html#647" class="Bound">B</a>

  <a id="2693" href="UnivalenceAxiom.html#2650" class="Function">ua</a> <a id="2696" class="Symbol">=</a> <a id="2698" href="EquivalenceType.html#1933" class="Function">remap</a> <a id="2704" href="UnivalenceAxiom.html#2357" class="Function">eqvUnivalence</a>
</pre>

Synonyms:

<pre class="Agda">
  <a id="≃-to-=="></a><a id="2756" href="UnivalenceAxiom.html#2756" class="Function">≃-to-==</a>   <a id="2766" class="Symbol">=</a> <a id="2768" href="UnivalenceAxiom.html#2650" class="Function">ua</a>
  <a id="eqv-to-eq"></a><a id="2773" href="UnivalenceAxiom.html#2773" class="Function">eqv-to-eq</a> <a id="2783" class="Symbol">=</a> <a id="2785" href="UnivalenceAxiom.html#2650" class="Function">ua</a>
</pre>

Computation rules

{: .foldable until="4"}
<pre class="Agda">
  <a id="ua-β"></a><a id="2858" href="UnivalenceAxiom.html#2858" class="Function">ua-β</a>
    <a id="2867" class="Symbol">:</a> <a id="2869" class="Symbol">(</a><a id="2870" href="UnivalenceAxiom.html#2870" class="Bound">α</a> <a id="2872" class="Symbol">:</a> <a id="2874" href="UnivalenceAxiom.html#645" class="Bound">A</a> <a id="2876" href="EquivalenceType.html#1467" class="Function Operator">≃</a> <a id="2878" href="UnivalenceAxiom.html#647" class="Bound">B</a><a id="2879" class="Symbol">)</a>
    <a id="2885" class="Comment">----------------------</a>
    <a id="2912" class="Symbol">→</a> <a id="2914" href="UnivalenceAxiom.html#716" class="Function">idtoeqv</a> <a id="2922" class="Symbol">(</a><a id="2923" href="UnivalenceAxiom.html#2650" class="Function">ua</a> <a id="2926" href="UnivalenceAxiom.html#2870" class="Bound">α</a><a id="2927" class="Symbol">)</a> <a id="2929" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="2932" href="UnivalenceAxiom.html#2870" class="Bound">α</a>

  <a id="2937" href="UnivalenceAxiom.html#2858" class="Function">ua-β</a> <a id="2942" href="UnivalenceAxiom.html#2942" class="Bound">eqv</a> <a id="2946" class="Symbol">=</a> <a id="2948" href="EquivalenceType.html#2227" class="Function">lrmap-inverse</a> <a id="2962" href="UnivalenceAxiom.html#2357" class="Function">eqvUnivalence</a>
</pre>

{: .foldable until="4"}
<pre class="Agda">
  <a id="ua-η"></a><a id="3027" href="UnivalenceAxiom.html#3027" class="Function">ua-η</a>
    <a id="3036" class="Symbol">:</a> <a id="3038" class="Symbol">(</a><a id="3039" href="UnivalenceAxiom.html#3039" class="Bound">p</a> <a id="3041" class="Symbol">:</a> <a id="3043" href="UnivalenceAxiom.html#645" class="Bound">A</a> <a id="3045" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="3048" href="UnivalenceAxiom.html#647" class="Bound">B</a><a id="3049" class="Symbol">)</a>
    <a id="3055" class="Comment">---------------------</a>
    <a id="3081" class="Symbol">→</a> <a id="3083" href="UnivalenceAxiom.html#2650" class="Function">ua</a> <a id="3086" class="Symbol">(</a><a id="3087" href="UnivalenceAxiom.html#716" class="Function">idtoeqv</a> <a id="3095" href="UnivalenceAxiom.html#3039" class="Bound">p</a><a id="3096" class="Symbol">)</a> <a id="3098" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="3101" href="UnivalenceAxiom.html#3039" class="Bound">p</a>

  <a id="3106" href="UnivalenceAxiom.html#3027" class="Function">ua-η</a> <a id="3111" href="UnivalenceAxiom.html#3111" class="Bound">p</a> <a id="3113" class="Symbol">=</a> <a id="3115" href="EquivalenceType.html#2480" class="Function">rlmap-inverse</a> <a id="3129" href="UnivalenceAxiom.html#2357" class="Function">eqvUnivalence</a>
</pre>
