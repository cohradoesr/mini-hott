---
layout: page
title: "Truncation Type"
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
<a id="179" class="Symbol">{-#</a> <a id="183" class="Keyword">OPTIONS</a> <a id="191" class="Pragma">--without-K</a> <a id="203" class="Symbol">#-}</a>
<a id="207" class="Keyword">open</a> <a id="212" class="Keyword">import</a> <a id="219" href="TransportLemmas.html" class="Module">TransportLemmas</a>
<a id="235" class="Keyword">open</a> <a id="240" class="Keyword">import</a> <a id="247" href="EquivalenceType.html" class="Module">EquivalenceType</a>

<a id="264" class="Keyword">open</a> <a id="269" class="Keyword">import</a> <a id="276" href="HomotopyType.html" class="Module">HomotopyType</a>
<a id="289" class="Keyword">open</a> <a id="294" class="Keyword">import</a> <a id="301" href="FunExtAxiom.html" class="Module">FunExtAxiom</a>
<a id="313" class="Keyword">open</a> <a id="318" class="Keyword">import</a> <a id="325" href="QuasiinverseType.html" class="Module">QuasiinverseType</a>
<a id="342" class="Keyword">open</a> <a id="347" class="Keyword">import</a> <a id="354" href="DecidableEquality.html" class="Module">DecidableEquality</a>
<a id="372" class="Keyword">open</a> <a id="377" class="Keyword">import</a> <a id="384" href="NaturalType.html" class="Module">NaturalType</a>
<a id="396" class="Keyword">open</a> <a id="401" class="Keyword">import</a> <a id="408" href="HLevelTypes.html" class="Module">HLevelTypes</a>
<a id="420" class="Keyword">open</a> <a id="425" class="Keyword">import</a> <a id="432" href="HLevelLemmas.html" class="Module">HLevelLemmas</a>
<a id="445" class="Keyword">open</a> <a id="450" class="Keyword">import</a> <a id="457" href="HedbergLemmas.html" class="Module">HedbergLemmas</a>
</pre>
</div>

### Propositional truncation

Seeing at the moment:
https://hub.darcs.net/gylterud/agda-premises/browse/Premises/Truncation.agda

<pre class="Agda">
<a id="633" class="Keyword">module</a>
  <a id="642" href="TruncationType.html" class="Module">TruncationType</a>
  <a id="659" class="Keyword">where</a>
</pre>

<pre class="Agda">
  <a id="692" class="Keyword">private</a>
    <a id="704" class="Keyword">data</a>
      <a id="!∥_∥"></a><a id="715" href="TruncationType.html#715" class="Datatype Operator">!∥_∥</a> <a id="720" class="Symbol">{</a><a id="721" href="TruncationType.html#721" class="Bound">ℓ</a><a id="722" class="Symbol">}</a> <a id="724" class="Symbol">(</a><a id="725" href="TruncationType.html#725" class="Bound">A</a> <a id="727" class="Symbol">:</a> <a id="729" href="Intro.html#1803" class="Function">Type</a> <a id="734" href="TruncationType.html#721" class="Bound">ℓ</a><a id="735" class="Symbol">)</a>
        <a id="745" class="Symbol">:</a> <a id="747" href="Intro.html#1803" class="Function">Type</a> <a id="752" href="TruncationType.html#721" class="Bound">ℓ</a>
        <a id="762" class="Keyword">where</a>
        <a id="!∥_∥.!∣_∣"></a><a id="776" href="TruncationType.html#776" class="InductiveConstructor Operator">!∣_∣</a> <a id="781" class="Symbol">:</a> <a id="783" href="TruncationType.html#725" class="Bound">A</a> <a id="785" class="Symbol">→</a> <a id="787" href="TruncationType.html#715" class="Datatype Operator">!∥</a> <a id="790" href="TruncationType.html#725" class="Bound">A</a> <a id="792" href="TruncationType.html#715" class="Datatype Operator">∥</a>
</pre>

<pre class="Agda">
  <a id="∥_∥"></a><a id="821" href="TruncationType.html#821" class="Function Operator">∥_∥</a>
    <a id="829" class="Symbol">:</a>  <a id="832" class="Symbol">(</a><a id="833" href="TruncationType.html#833" class="Bound">A</a> <a id="835" class="Symbol">:</a> <a id="837" href="Intro.html#1803" class="Function">Type</a> <a id="842" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="843" class="Symbol">)</a>
    <a id="849" class="Symbol">→</a> <a id="851" href="Intro.html#1803" class="Function">Type</a> <a id="856" href="Intro.html#2243" class="Generalizable">ℓ</a>

  <a id="861" href="TruncationType.html#821" class="Function Operator">∥</a> <a id="863" href="TruncationType.html#863" class="Bound">A</a> <a id="865" href="TruncationType.html#821" class="Function Operator">∥</a> <a id="867" class="Symbol">=</a> <a id="869" href="TruncationType.html#715" class="Datatype Operator">!∥</a> <a id="872" href="TruncationType.html#863" class="Bound">A</a> <a id="874" href="TruncationType.html#715" class="Datatype Operator">∥</a>
</pre>

<pre class="Agda">
  <a id="∣_∣"></a><a id="903" href="TruncationType.html#903" class="Function Operator">∣_∣</a>
    <a id="911" class="Symbol">:</a> <a id="913" class="Symbol">{</a><a id="914" href="TruncationType.html#914" class="Bound">X</a> <a id="916" class="Symbol">:</a> <a id="918" href="Intro.html#1803" class="Function">Type</a> <a id="923" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="924" class="Symbol">}</a>
    <a id="930" class="Symbol">→</a> <a id="932" href="TruncationType.html#914" class="Bound">X</a>
    <a id="938" class="Symbol">→</a> <a id="940" href="TruncationType.html#821" class="Function Operator">∥</a> <a id="942" href="TruncationType.html#914" class="Bound">X</a> <a id="944" href="TruncationType.html#821" class="Function Operator">∥</a>

  <a id="949" href="TruncationType.html#903" class="Function Operator">∣</a> <a id="951" href="TruncationType.html#951" class="Bound">x</a> <a id="953" href="TruncationType.html#903" class="Function Operator">∣</a> <a id="955" class="Symbol">=</a> <a id="957" href="TruncationType.html#776" class="InductiveConstructor Operator">!∣</a> <a id="960" href="TruncationType.html#951" class="Bound">x</a> <a id="962" href="TruncationType.html#776" class="InductiveConstructor Operator">∣</a>
</pre>

Any two elements of the truncated type are equal

<pre class="Agda">
  <a id="1041" class="Keyword">postulate</a>
    <a id="trunc"></a><a id="1055" href="TruncationType.html#1055" class="Postulate">trunc</a>
      <a id="1067" class="Symbol">:</a> <a id="1069" class="Symbol">{</a><a id="1070" href="TruncationType.html#1070" class="Bound">A</a> <a id="1072" class="Symbol">:</a> <a id="1074" href="Intro.html#1803" class="Function">Type</a> <a id="1079" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="1080" class="Symbol">}</a>
      <a id="1088" class="Symbol">→</a> <a id="1090" href="HLevelTypes.html#1162" class="Function">isProp</a> <a id="1097" href="TruncationType.html#821" class="Function Operator">∥</a> <a id="1099" href="TruncationType.html#1070" class="Bound">A</a> <a id="1101" href="TruncationType.html#821" class="Function Operator">∥</a>
</pre>

Recursion principle
<pre class="Agda">
  <a id="trunc-rec"></a><a id="1150" href="TruncationType.html#1150" class="Function">trunc-rec</a>
    <a id="1164" class="Symbol">:</a> <a id="1166" class="Symbol">{</a><a id="1167" href="TruncationType.html#1167" class="Bound">A</a> <a id="1169" class="Symbol">:</a> <a id="1171" href="Intro.html#1803" class="Function">Type</a> <a id="1176" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="1178" class="Symbol">}</a> <a id="1180" class="Symbol">{</a><a id="1181" href="TruncationType.html#1181" class="Bound">P</a> <a id="1183" class="Symbol">:</a> <a id="1185" href="Intro.html#1803" class="Function">Type</a> <a id="1190" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1192" class="Symbol">}</a>
    <a id="1198" class="Symbol">→</a> <a id="1200" href="HLevelTypes.html#1162" class="Function">isProp</a> <a id="1207" href="TruncationType.html#1181" class="Bound">P</a>
    <a id="1213" class="Symbol">→</a> <a id="1215" class="Symbol">(</a><a id="1216" href="TruncationType.html#1167" class="Bound">A</a> <a id="1218" class="Symbol">→</a> <a id="1220" href="TruncationType.html#1181" class="Bound">P</a><a id="1221" class="Symbol">)</a>
    <a id="1227" class="Comment">---------</a>
    <a id="1241" class="Symbol">→</a> <a id="1243" href="TruncationType.html#821" class="Function Operator">∥</a> <a id="1245" href="TruncationType.html#1167" class="Bound">A</a> <a id="1247" href="TruncationType.html#821" class="Function Operator">∥</a> <a id="1249" class="Symbol">→</a> <a id="1251" href="TruncationType.html#1181" class="Bound">P</a>

  <a id="1256" href="TruncationType.html#1150" class="Function">trunc-rec</a> <a id="1266" class="Symbol">_</a> <a id="1268" href="TruncationType.html#1268" class="Bound">f</a> <a id="1270" href="TruncationType.html#776" class="InductiveConstructor Operator">!∣</a> <a id="1273" href="TruncationType.html#1273" class="Bound">x</a> <a id="1275" href="TruncationType.html#776" class="InductiveConstructor Operator">∣</a> <a id="1277" class="Symbol">=</a> <a id="1279" href="TruncationType.html#1268" class="Bound">f</a> <a id="1281" href="TruncationType.html#1273" class="Bound">x</a>
</pre>
