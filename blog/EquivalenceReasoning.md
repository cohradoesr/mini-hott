---
layout: page
title: "Equivalence reasoning"
category: functions
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
<pre class="Agda">
<a id="215" class="Symbol">{-#</a> <a id="219" class="Keyword">OPTIONS</a> <a id="227" class="Pragma">--without-K</a> <a id="239" class="Symbol">#-}</a>
<a id="243" class="Comment">-- module _ where</a>

<a id="262" class="Keyword">open</a> <a id="267" class="Keyword">import</a> <a id="274" href="TransportLemmas.html" class="Module">TransportLemmas</a>
<a id="290" class="Keyword">open</a> <a id="295" class="Keyword">import</a> <a id="302" href="EquivalenceType.html" class="Module">EquivalenceType</a>

<a id="319" class="Keyword">open</a> <a id="324" class="Keyword">import</a> <a id="331" href="HomotopyType.html" class="Module">HomotopyType</a>
<a id="344" class="Keyword">open</a> <a id="349" class="Keyword">import</a> <a id="356" href="HomotopyLemmas.html" class="Module">HomotopyLemmas</a>

<a id="372" class="Keyword">open</a> <a id="377" class="Keyword">import</a> <a id="384" href="HalfAdjointType.html" class="Module">HalfAdjointType</a>
<a id="400" class="Keyword">open</a> <a id="405" class="Keyword">import</a> <a id="412" href="QuasiinverseType.html" class="Module">QuasiinverseType</a>
<a id="429" class="Keyword">open</a> <a id="434" class="Keyword">import</a> <a id="441" href="QuasiinverseLemmas.html" class="Module">QuasiinverseLemmas</a>
</pre>
</div>

## Equivalence reasoning

<pre class="Agda">
<a id="518" class="Keyword">module</a> <a id="525" href="EquivalenceReasoning.html" class="Module">EquivalenceReasoning</a> <a id="546" class="Keyword">where</a>

  <a id="555" class="Keyword">infixr</a> <a id="562" class="Number">2</a> <a id="564" href="EquivalenceReasoning.html#572" class="Function Operator">_≃⟨⟩_</a>
  <a id="_≃⟨⟩_"></a><a id="572" href="EquivalenceReasoning.html#572" class="Function Operator">_≃⟨⟩_</a> <a id="578" class="Symbol">:</a> <a id="580" class="Symbol">∀</a> <a id="582" class="Symbol">{</a><a id="583" href="EquivalenceReasoning.html#583" class="Bound">ℓ</a><a id="584" class="Symbol">}</a> <a id="586" class="Symbol">(</a><a id="587" href="EquivalenceReasoning.html#587" class="Bound">A</a> <a id="589" class="Symbol">{</a><a id="590" href="EquivalenceReasoning.html#590" class="Bound">B</a><a id="591" class="Symbol">}</a> <a id="593" class="Symbol">:</a> <a id="595" href="Intro.html#1442" class="Function">Type</a> <a id="600" href="EquivalenceReasoning.html#583" class="Bound">ℓ</a><a id="601" class="Symbol">)</a> <a id="603" class="Symbol">→</a> <a id="605" href="EquivalenceReasoning.html#587" class="Bound">A</a> <a id="607" href="EquivalenceType.html#778" class="Function Operator">≃</a> <a id="609" href="EquivalenceReasoning.html#590" class="Bound">B</a> <a id="611" class="Symbol">→</a> <a id="613" href="EquivalenceReasoning.html#587" class="Bound">A</a> <a id="615" href="EquivalenceType.html#778" class="Function Operator">≃</a> <a id="617" href="EquivalenceReasoning.html#590" class="Bound">B</a>
  <a id="621" class="Symbol">_</a> <a id="623" href="EquivalenceReasoning.html#572" class="Function Operator">≃⟨⟩</a> <a id="627" href="EquivalenceReasoning.html#627" class="Bound">e</a> <a id="629" class="Symbol">=</a> <a id="631" href="EquivalenceReasoning.html#627" class="Bound">e</a>

  <a id="636" class="Keyword">infixr</a> <a id="643" class="Number">2</a> <a id="645" href="EquivalenceReasoning.html#654" class="Function Operator">_≃⟨_⟩_</a>
  <a id="_≃⟨_⟩_"></a><a id="654" href="EquivalenceReasoning.html#654" class="Function Operator">_≃⟨_⟩_</a>
    <a id="665" class="Symbol">:</a> <a id="667" class="Symbol">∀</a> <a id="669" class="Symbol">{</a><a id="670" href="EquivalenceReasoning.html#670" class="Bound">ℓ₁</a> <a id="673" href="EquivalenceReasoning.html#673" class="Bound">ℓ₂</a> <a id="676" href="EquivalenceReasoning.html#676" class="Bound">ℓ₃</a><a id="678" class="Symbol">}</a> <a id="680" class="Symbol">(</a><a id="681" href="EquivalenceReasoning.html#681" class="Bound">A</a> <a id="683" class="Symbol">:</a> <a id="685" href="Intro.html#1442" class="Function">Type</a> <a id="690" href="EquivalenceReasoning.html#670" class="Bound">ℓ₁</a><a id="692" class="Symbol">)</a> <a id="694" class="Symbol">{</a><a id="695" href="EquivalenceReasoning.html#695" class="Bound">B</a> <a id="697" class="Symbol">:</a> <a id="699" href="Intro.html#1442" class="Function">Type</a> <a id="704" href="EquivalenceReasoning.html#673" class="Bound">ℓ₂</a><a id="706" class="Symbol">}{</a><a id="708" href="EquivalenceReasoning.html#708" class="Bound">C</a> <a id="710" class="Symbol">:</a> <a id="712" href="Intro.html#1442" class="Function">Type</a> <a id="717" href="EquivalenceReasoning.html#676" class="Bound">ℓ₃</a><a id="719" class="Symbol">}</a>
    <a id="725" class="Symbol">→</a> <a id="727" href="EquivalenceReasoning.html#681" class="Bound">A</a> <a id="729" href="EquivalenceType.html#778" class="Function Operator">≃</a> <a id="731" href="EquivalenceReasoning.html#695" class="Bound">B</a> <a id="733" class="Symbol">→</a> <a id="735" href="EquivalenceReasoning.html#695" class="Bound">B</a> <a id="737" href="EquivalenceType.html#778" class="Function Operator">≃</a> <a id="739" href="EquivalenceReasoning.html#708" class="Bound">C</a>
    <a id="745" class="Comment">---------------</a>
    <a id="765" class="Symbol">→</a> <a id="767" href="EquivalenceReasoning.html#681" class="Bound">A</a> <a id="769" href="EquivalenceType.html#778" class="Function Operator">≃</a> <a id="771" href="EquivalenceReasoning.html#708" class="Bound">C</a>

  <a id="776" class="Symbol">_</a> <a id="778" href="EquivalenceReasoning.html#654" class="Function Operator">≃⟨</a> <a id="781" href="EquivalenceReasoning.html#781" class="Bound">e₁</a> <a id="784" href="EquivalenceReasoning.html#654" class="Function Operator">⟩</a> <a id="786" href="EquivalenceReasoning.html#786" class="Bound">e₂</a> <a id="789" class="Symbol">=</a> <a id="791" href="QuasiinverseLemmas.html#1653" class="Function">≃-trans</a> <a id="799" href="EquivalenceReasoning.html#781" class="Bound">e₁</a> <a id="802" href="EquivalenceReasoning.html#786" class="Bound">e₂</a>


  <a id="809" class="Keyword">infix</a>  <a id="816" class="Number">3</a> <a id="818" href="EquivalenceReasoning.html#824" class="Function Operator">_≃∎</a>
  <a id="_≃∎"></a><a id="824" href="EquivalenceReasoning.html#824" class="Function Operator">_≃∎</a> <a id="828" class="Symbol">:</a>  <a id="831" class="Symbol">∀</a> <a id="833" class="Symbol">{</a><a id="834" href="EquivalenceReasoning.html#834" class="Bound">ℓ</a><a id="835" class="Symbol">}</a> <a id="837" class="Symbol">(</a><a id="838" href="EquivalenceReasoning.html#838" class="Bound">A</a> <a id="840" class="Symbol">:</a> <a id="842" href="Intro.html#1442" class="Function">Type</a> <a id="847" href="EquivalenceReasoning.html#834" class="Bound">ℓ</a><a id="848" class="Symbol">)</a> <a id="850" class="Symbol">→</a> <a id="852" href="EquivalenceReasoning.html#838" class="Bound">A</a> <a id="854" href="EquivalenceType.html#778" class="Function Operator">≃</a> <a id="856" href="EquivalenceReasoning.html#838" class="Bound">A</a>
  <a id="860" href="EquivalenceReasoning.html#824" class="Function Operator">_≃∎</a> <a id="864" class="Symbol">=</a> <a id="866" class="Symbol">λ</a> <a id="868" href="EquivalenceReasoning.html#868" class="Bound">A</a> <a id="870" class="Symbol">→</a> <a id="872" href="QuasiinverseLemmas.html#1413" class="Function">idEqv</a> <a id="878" class="Symbol">{</a><a id="879" class="Argument">A</a> <a id="881" class="Symbol">=</a> <a id="883" href="EquivalenceReasoning.html#868" class="Bound">A</a><a id="884" class="Symbol">}</a>

  <a id="889" class="Keyword">infix</a>  <a id="896" class="Number">1</a> <a id="898" href="EquivalenceReasoning.html#908" class="Function Operator">begin≃_</a>
  <a id="begin≃_"></a><a id="908" href="EquivalenceReasoning.html#908" class="Function Operator">begin≃_</a> <a id="916" class="Symbol">:</a> <a id="918" class="Symbol">∀</a> <a id="920" class="Symbol">{</a><a id="921" href="EquivalenceReasoning.html#921" class="Bound">ℓ₁</a> <a id="924" href="EquivalenceReasoning.html#924" class="Bound">ℓ₂</a><a id="926" class="Symbol">}</a> <a id="928" class="Symbol">{</a><a id="929" href="EquivalenceReasoning.html#929" class="Bound">A</a> <a id="931" class="Symbol">:</a> <a id="933" href="Intro.html#1442" class="Function">Type</a> <a id="938" href="EquivalenceReasoning.html#921" class="Bound">ℓ₁</a><a id="940" class="Symbol">}{</a><a id="942" href="EquivalenceReasoning.html#942" class="Bound">B</a> <a id="944" class="Symbol">:</a> <a id="946" href="Intro.html#1442" class="Function">Type</a> <a id="951" href="EquivalenceReasoning.html#924" class="Bound">ℓ₂</a><a id="953" class="Symbol">}</a> <a id="955" class="Symbol">→</a> <a id="957" href="EquivalenceReasoning.html#929" class="Bound">A</a> <a id="959" href="EquivalenceType.html#778" class="Function Operator">≃</a> <a id="961" href="EquivalenceReasoning.html#942" class="Bound">B</a> <a id="963" class="Symbol">→</a> <a id="965" href="EquivalenceReasoning.html#929" class="Bound">A</a> <a id="967" href="EquivalenceType.html#778" class="Function Operator">≃</a> <a id="969" href="EquivalenceReasoning.html#942" class="Bound">B</a>
  <a id="973" href="EquivalenceReasoning.html#908" class="Function Operator">begin≃_</a> <a id="981" href="EquivalenceReasoning.html#981" class="Bound">e</a> <a id="983" class="Symbol">=</a> <a id="985" href="EquivalenceReasoning.html#981" class="Bound">e</a>
</pre>
