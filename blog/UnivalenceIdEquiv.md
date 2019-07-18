---
layout: page
title: "Univalence Lemma for id Equivalence"
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
<a id="235" class="Symbol">{-#</a> <a id="239" class="Keyword">OPTIONS</a> <a id="247" class="Pragma">--without-K</a> <a id="259" class="Symbol">#-}</a>
<a id="263" class="Keyword">module</a> <a id="270" href="UnivalenceIdEquiv.html" class="Module">_</a> <a id="272" class="Keyword">where</a>
<a id="278" class="Keyword">open</a> <a id="283" class="Keyword">import</a> <a id="290" href="TransportLemmas.html" class="Module">TransportLemmas</a>
<a id="306" class="Keyword">open</a> <a id="311" class="Keyword">import</a> <a id="318" href="EquivalenceType.html" class="Module">EquivalenceType</a>

<a id="335" class="Keyword">open</a> <a id="340" class="Keyword">import</a> <a id="347" href="HomotopyType.html" class="Module">HomotopyType</a>
<a id="360" class="Keyword">open</a> <a id="365" class="Keyword">import</a> <a id="372" href="FunExtAxiom.html" class="Module">FunExtAxiom</a>

<a id="385" class="Keyword">open</a> <a id="390" class="Keyword">import</a> <a id="397" href="EquivalenceType.html" class="Module">EquivalenceType</a>
<a id="413" class="Keyword">open</a> <a id="418" class="Keyword">import</a> <a id="425" href="QuasiinverseType.html" class="Module">QuasiinverseType</a>
<a id="442" class="Keyword">open</a> <a id="447" class="Keyword">import</a> <a id="454" href="QuasiinverseLemmas.html" class="Module">QuasiinverseLemmas</a>
<a id="473" class="Keyword">open</a> <a id="478" class="Keyword">import</a> <a id="485" href="UnivalenceAxiom.html" class="Module">UnivalenceAxiom</a>
<a id="501" class="Keyword">open</a> <a id="506" class="Keyword">import</a> <a id="513" href="UnivalenceTransport.html" class="Module">UnivalenceTransport</a>
<a id="533" class="Keyword">open</a> <a id="538" class="Keyword">import</a> <a id="545" href="HLevelLemmas.html" class="Module">HLevelLemmas</a>
</pre>
</div>

#### Univalence Lemma for id Equivalence

<pre class="Agda">
<a id="632" class="Keyword">module</a> <a id="UnivalenceIdEquiv"></a><a id="639" href="UnivalenceIdEquiv.html#639" class="Module">UnivalenceIdEquiv</a> <a id="657" class="Keyword">where</a>
</pre>

The identity equivalence creates the trivial path.

{: .foldable until="4" }
<pre class="Agda">
  <a id="UnivalenceIdEquiv.ua-id"></a><a id="767" href="UnivalenceIdEquiv.html#767" class="Function">ua-id</a>
    <a id="777" class="Symbol">:</a> <a id="779" class="Symbol">{</a><a id="780" href="UnivalenceIdEquiv.html#780" class="Bound">A</a> <a id="782" class="Symbol">:</a> <a id="784" href="Intro.html#2793" class="Function">Type</a> <a id="789" href="Intro.html#3373" class="Generalizable">ℓ</a><a id="790" class="Symbol">}</a>
    <a id="796" class="Comment">--------------------</a>
    <a id="821" class="Symbol">→</a> <a id="823" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="826" href="QuasiinverseLemmas.html#1402" class="Function">idEqv</a> <a id="832" href="BasicTypes.html#4524" class="Function Operator">≡</a> <a id="834" href="BasicTypes.html#4630" class="Function">refl</a> <a id="839" href="UnivalenceIdEquiv.html#780" class="Bound">A</a>

  <a id="844" href="UnivalenceIdEquiv.html#767" class="Function">ua-id</a> <a id="850" class="Symbol">{</a><a id="851" class="Argument">A</a> <a id="853" class="Symbol">=</a> <a id="855" href="UnivalenceIdEquiv.html#855" class="Bound">A</a><a id="856" class="Symbol">}</a> <a id="858" class="Symbol">=</a>
    <a id="864" href="BasicFunctions.html#5405" class="Function Operator">begin</a>
      <a id="876" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="879" href="QuasiinverseLemmas.html#1402" class="Function">idEqv</a>
        <a id="893" href="BasicFunctions.html#5212" class="Function Operator">≡⟨</a> <a id="896" href="AlgebraOnPaths.html#389" class="Function">ap</a> <a id="899" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="902" class="Symbol">(</a><a id="903" href="HLevelLemmas.html#10132" class="Function">sameEqv</a> <a id="911" class="Symbol">(</a><a id="912" href="BasicTypes.html#4630" class="Function">refl</a> <a id="917" href="BasicFunctions.html#375" class="Function">id</a><a id="919" class="Symbol">))</a> <a id="922" href="BasicFunctions.html#5212" class="Function Operator">⟩</a>
      <a id="930" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="933" class="Symbol">(</a><a id="934" href="UnivalenceAxiom.html#716" class="Function">idtoeqv</a> <a id="942" class="Symbol">(</a><a id="943" href="BasicTypes.html#4630" class="Function">refl</a> <a id="948" href="UnivalenceIdEquiv.html#855" class="Bound">A</a><a id="949" class="Symbol">))</a>
        <a id="960" href="BasicFunctions.html#5212" class="Function Operator">≡⟨</a> <a id="963" href="UnivalenceAxiom.html#3003" class="Function">ua-η</a> <a id="968" class="Symbol">(</a><a id="969" href="BasicTypes.html#4630" class="Function">refl</a> <a id="974" href="UnivalenceIdEquiv.html#855" class="Bound">A</a><a id="975" class="Symbol">)</a> <a id="977" href="BasicFunctions.html#5212" class="Function Operator">⟩</a>
      <a id="985" href="BasicTypes.html#4630" class="Function">refl</a> <a id="990" href="UnivalenceIdEquiv.html#855" class="Bound">A</a>
    <a id="996" href="BasicFunctions.html#5290" class="Function Operator">∎</a>
</pre>
