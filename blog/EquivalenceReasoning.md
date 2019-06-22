---
layout: page
title: "Equivalence reasoning"
category: functions
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
</pre>

<pre class="Agda">
  <a id="_≃⟨⟩_"></a><a id="579" href="EquivalenceReasoning.html#579" class="Function Operator">_≃⟨⟩_</a>
    <a id="589" class="Symbol">:</a> <a id="591" class="Symbol">(</a><a id="592" href="EquivalenceReasoning.html#592" class="Bound">A</a> <a id="594" class="Symbol">{</a><a id="595" href="EquivalenceReasoning.html#595" class="Bound">B</a><a id="596" class="Symbol">}</a> <a id="598" class="Symbol">:</a> <a id="600" href="Intro.html#1813" class="Function">Type</a> <a id="605" href="Intro.html#2253" class="Generalizable">ℓ</a><a id="606" class="Symbol">)</a>
    <a id="612" class="Symbol">→</a> <a id="614" href="EquivalenceReasoning.html#592" class="Bound">A</a> <a id="616" href="EquivalenceType.html#994" class="Function Operator">≃</a> <a id="618" href="EquivalenceReasoning.html#595" class="Bound">B</a>
    <a id="624" class="Comment">-------</a>
    <a id="636" class="Symbol">→</a> <a id="638" href="EquivalenceReasoning.html#592" class="Bound">A</a> <a id="640" href="EquivalenceType.html#994" class="Function Operator">≃</a> <a id="642" href="EquivalenceReasoning.html#595" class="Bound">B</a>

  <a id="647" class="Symbol">_</a> <a id="649" href="EquivalenceReasoning.html#579" class="Function Operator">≃⟨⟩</a> <a id="653" href="EquivalenceReasoning.html#653" class="Bound">e</a> <a id="655" class="Symbol">=</a> <a id="657" href="EquivalenceReasoning.html#653" class="Bound">e</a>
  <a id="661" class="Keyword">infixr</a> <a id="668" class="Number">2</a> <a id="670" href="EquivalenceReasoning.html#579" class="Function Operator">_≃⟨⟩_</a>
</pre>

<pre class="Agda">
  <a id="_≃⟨by-def⟩_"></a><a id="703" href="EquivalenceReasoning.html#703" class="Function Operator">_≃⟨by-def⟩_</a>
    <a id="719" class="Symbol">:</a> <a id="721" class="Symbol">(</a><a id="722" href="EquivalenceReasoning.html#722" class="Bound">A</a> <a id="724" class="Symbol">{</a><a id="725" href="EquivalenceReasoning.html#725" class="Bound">B</a><a id="726" class="Symbol">}</a> <a id="728" class="Symbol">:</a> <a id="730" href="Intro.html#1813" class="Function">Type</a> <a id="735" href="Intro.html#2253" class="Generalizable">ℓ</a><a id="736" class="Symbol">)</a>
    <a id="742" class="Symbol">→</a> <a id="744" href="EquivalenceReasoning.html#722" class="Bound">A</a> <a id="746" href="EquivalenceType.html#994" class="Function Operator">≃</a> <a id="748" href="EquivalenceReasoning.html#725" class="Bound">B</a>
    <a id="754" class="Comment">-------</a>
    <a id="766" class="Symbol">→</a> <a id="768" href="EquivalenceReasoning.html#722" class="Bound">A</a> <a id="770" href="EquivalenceType.html#994" class="Function Operator">≃</a> <a id="772" href="EquivalenceReasoning.html#725" class="Bound">B</a>

  <a id="777" class="Symbol">_</a> <a id="779" href="EquivalenceReasoning.html#703" class="Function Operator">≃⟨by-def⟩</a> <a id="789" href="EquivalenceReasoning.html#789" class="Bound">e</a> <a id="791" class="Symbol">=</a> <a id="793" href="EquivalenceReasoning.html#789" class="Bound">e</a>
  <a id="797" class="Keyword">infixr</a> <a id="804" class="Number">2</a> <a id="806" href="EquivalenceReasoning.html#703" class="Function Operator">_≃⟨by-def⟩_</a>
</pre>

<pre class="Agda">
  <a id="_≃⟨_⟩_"></a><a id="845" href="EquivalenceReasoning.html#845" class="Function Operator">_≃⟨_⟩_</a>
    <a id="856" class="Symbol">:</a> <a id="858" class="Symbol">(</a><a id="859" href="EquivalenceReasoning.html#859" class="Bound">A</a> <a id="861" class="Symbol">:</a> <a id="863" href="Intro.html#1813" class="Function">Type</a> <a id="868" href="Intro.html#2255" class="Generalizable">ℓᵢ</a><a id="870" class="Symbol">)</a> <a id="872" class="Symbol">{</a><a id="873" href="EquivalenceReasoning.html#873" class="Bound">B</a> <a id="875" class="Symbol">:</a> <a id="877" href="Intro.html#1813" class="Function">Type</a> <a id="882" href="Intro.html#2258" class="Generalizable">ℓⱼ</a><a id="884" class="Symbol">}{</a><a id="886" href="EquivalenceReasoning.html#886" class="Bound">C</a> <a id="888" class="Symbol">:</a> <a id="890" href="Intro.html#1813" class="Function">Type</a> <a id="895" href="Intro.html#2261" class="Generalizable">ℓₖ</a><a id="897" class="Symbol">}</a>
    <a id="903" class="Symbol">→</a> <a id="905" href="EquivalenceReasoning.html#859" class="Bound">A</a> <a id="907" href="EquivalenceType.html#994" class="Function Operator">≃</a> <a id="909" href="EquivalenceReasoning.html#873" class="Bound">B</a> <a id="911" class="Symbol">→</a> <a id="913" href="EquivalenceReasoning.html#873" class="Bound">B</a> <a id="915" href="EquivalenceType.html#994" class="Function Operator">≃</a> <a id="917" href="EquivalenceReasoning.html#886" class="Bound">C</a>
    <a id="923" class="Comment">---------------</a>
    <a id="943" class="Symbol">→</a> <a id="945" href="EquivalenceReasoning.html#859" class="Bound">A</a> <a id="947" href="EquivalenceType.html#994" class="Function Operator">≃</a> <a id="949" href="EquivalenceReasoning.html#886" class="Bound">C</a>

  <a id="954" class="Symbol">_</a> <a id="956" href="EquivalenceReasoning.html#845" class="Function Operator">≃⟨</a> <a id="959" href="EquivalenceReasoning.html#959" class="Bound">e₁</a> <a id="962" href="EquivalenceReasoning.html#845" class="Function Operator">⟩</a> <a id="964" href="EquivalenceReasoning.html#964" class="Bound">e₂</a> <a id="967" class="Symbol">=</a> <a id="969" href="QuasiinverseLemmas.html#1625" class="Function">≃-trans</a> <a id="977" href="EquivalenceReasoning.html#959" class="Bound">e₁</a> <a id="980" href="EquivalenceReasoning.html#964" class="Bound">e₂</a>
  <a id="985" class="Keyword">infixr</a> <a id="992" class="Number">2</a> <a id="994" href="EquivalenceReasoning.html#845" class="Function Operator">_≃⟨_⟩_</a>
</pre>

<pre class="Agda">
  <a id="_≃∎"></a><a id="1028" href="EquivalenceReasoning.html#1028" class="Function Operator">_≃∎</a>
    <a id="1036" class="Symbol">:</a> <a id="1038" class="Symbol">(</a><a id="1039" href="EquivalenceReasoning.html#1039" class="Bound">A</a> <a id="1041" class="Symbol">:</a> <a id="1043" href="Intro.html#1813" class="Function">Type</a> <a id="1048" href="Intro.html#2253" class="Generalizable">ℓ</a><a id="1049" class="Symbol">)</a>
    <a id="1055" class="Symbol">→</a> <a id="1057" href="EquivalenceReasoning.html#1039" class="Bound">A</a> <a id="1059" href="EquivalenceType.html#994" class="Function Operator">≃</a> <a id="1061" href="EquivalenceReasoning.html#1039" class="Bound">A</a>

  <a id="1066" href="EquivalenceReasoning.html#1028" class="Function Operator">_≃∎</a> <a id="1070" class="Symbol">=</a> <a id="1072" class="Symbol">λ</a> <a id="1074" href="EquivalenceReasoning.html#1074" class="Bound">A</a> <a id="1076" class="Symbol">→</a> <a id="1078" href="QuasiinverseLemmas.html#1385" class="Function">idEqv</a> <a id="1084" class="Symbol">{</a><a id="1085" class="Argument">A</a> <a id="1087" class="Symbol">=</a> <a id="1089" href="EquivalenceReasoning.html#1074" class="Bound">A</a><a id="1090" class="Symbol">}</a>
  <a id="1094" class="Keyword">infix</a>  <a id="1101" class="Number">3</a> <a id="1103" href="EquivalenceReasoning.html#1028" class="Function Operator">_≃∎</a>
</pre>

<pre class="Agda">
  <a id="begin≃_"></a><a id="1134" href="EquivalenceReasoning.html#1134" class="Function Operator">begin≃_</a>
    <a id="1146" class="Symbol">:</a> <a id="1148" class="Symbol">{</a><a id="1149" href="EquivalenceReasoning.html#1149" class="Bound">A</a> <a id="1151" class="Symbol">:</a> <a id="1153" href="Intro.html#1813" class="Function">Type</a> <a id="1158" href="Intro.html#2255" class="Generalizable">ℓᵢ</a><a id="1160" class="Symbol">}{</a><a id="1162" href="EquivalenceReasoning.html#1162" class="Bound">B</a> <a id="1164" class="Symbol">:</a> <a id="1166" href="Intro.html#1813" class="Function">Type</a> <a id="1171" href="Intro.html#2258" class="Generalizable">ℓⱼ</a><a id="1173" class="Symbol">}</a>
    <a id="1179" class="Symbol">→</a> <a id="1181" href="EquivalenceReasoning.html#1149" class="Bound">A</a> <a id="1183" href="EquivalenceType.html#994" class="Function Operator">≃</a> <a id="1185" href="EquivalenceReasoning.html#1162" class="Bound">B</a>
    <a id="1191" class="Comment">-------</a>
    <a id="1203" class="Symbol">→</a> <a id="1205" href="EquivalenceReasoning.html#1149" class="Bound">A</a> <a id="1207" href="EquivalenceType.html#994" class="Function Operator">≃</a> <a id="1209" href="EquivalenceReasoning.html#1162" class="Bound">B</a>

  <a id="1214" href="EquivalenceReasoning.html#1134" class="Function Operator">begin≃_</a> <a id="1222" href="EquivalenceReasoning.html#1222" class="Bound">e</a> <a id="1224" class="Symbol">=</a> <a id="1226" href="EquivalenceReasoning.html#1222" class="Bound">e</a>
  <a id="1230" class="Keyword">infix</a>  <a id="1237" class="Number">1</a> <a id="1239" href="EquivalenceReasoning.html#1134" class="Function Operator">begin≃_</a>
</pre>
