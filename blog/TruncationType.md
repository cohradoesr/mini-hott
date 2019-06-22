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
<a id="189" class="Symbol">{-#</a> <a id="193" class="Keyword">OPTIONS</a> <a id="201" class="Pragma">--without-K</a> <a id="213" class="Symbol">#-}</a>
<a id="217" class="Keyword">open</a> <a id="222" class="Keyword">import</a> <a id="229" href="TransportLemmas.html" class="Module">TransportLemmas</a>
<a id="245" class="Keyword">open</a> <a id="250" class="Keyword">import</a> <a id="257" href="EquivalenceType.html" class="Module">EquivalenceType</a>

<a id="274" class="Keyword">open</a> <a id="279" class="Keyword">import</a> <a id="286" href="HomotopyType.html" class="Module">HomotopyType</a>
<a id="299" class="Keyword">open</a> <a id="304" class="Keyword">import</a> <a id="311" href="FunExtAxiom.html" class="Module">FunExtAxiom</a>
<a id="323" class="Keyword">open</a> <a id="328" class="Keyword">import</a> <a id="335" href="QuasiinverseType.html" class="Module">QuasiinverseType</a>
<a id="352" class="Keyword">open</a> <a id="357" class="Keyword">import</a> <a id="364" href="DecidableEquality.html" class="Module">DecidableEquality</a>
<a id="382" class="Keyword">open</a> <a id="387" class="Keyword">import</a> <a id="394" href="NaturalType.html" class="Module">NaturalType</a>
<a id="406" class="Keyword">open</a> <a id="411" class="Keyword">import</a> <a id="418" href="HLevelTypes.html" class="Module">HLevelTypes</a>
<a id="430" class="Keyword">open</a> <a id="435" class="Keyword">import</a> <a id="442" href="HLevelLemmas.html" class="Module">HLevelLemmas</a>
<a id="455" class="Keyword">open</a> <a id="460" class="Keyword">import</a> <a id="467" href="HedbergLemmas.html" class="Module">HedbergLemmas</a>
</pre>
</div>


### Propositional truncation

See at the moment:
https://hub.darcs.net/gylterud/agda-premises/browse/Premises/Truncation.agda


<pre class="Agda">
<a id="642" class="Keyword">module</a>
  <a id="651" href="TruncationType.html" class="Module">TruncationType</a>
  <a id="668" class="Keyword">where</a>
</pre>

<pre class="Agda">
  <a id="701" class="Keyword">private</a>
    <a id="713" class="Comment">-- Higher inductive type, defined with equalities between any two</a>
    <a id="783" class="Comment">-- members.</a>
    <a id="799" class="Keyword">data</a>
      <a id="!∥_∥"></a><a id="810" href="TruncationType.html#810" class="Datatype Operator">!∥_∥</a> <a id="815" class="Symbol">{</a><a id="816" href="TruncationType.html#816" class="Bound">ℓ</a><a id="817" class="Symbol">}</a> <a id="819" class="Symbol">(</a><a id="820" href="TruncationType.html#820" class="Bound">A</a> <a id="822" class="Symbol">:</a> <a id="824" href="Intro.html#1813" class="Function">Type</a> <a id="829" href="TruncationType.html#816" class="Bound">ℓ</a><a id="830" class="Symbol">)</a>
        <a id="840" class="Symbol">:</a> <a id="842" href="Intro.html#1813" class="Function">Type</a> <a id="847" href="TruncationType.html#816" class="Bound">ℓ</a>
        <a id="857" class="Keyword">where</a>
        <a id="!∥_∥.!∣_∣"></a><a id="871" href="TruncationType.html#871" class="InductiveConstructor Operator">!∣_∣</a> <a id="876" class="Symbol">:</a> <a id="878" href="TruncationType.html#820" class="Bound">A</a> <a id="880" class="Symbol">→</a> <a id="882" href="TruncationType.html#810" class="Datatype Operator">!∥</a> <a id="885" href="TruncationType.html#820" class="Bound">A</a> <a id="887" href="TruncationType.html#810" class="Datatype Operator">∥</a>
</pre>

<pre class="Agda">
  <a id="∥_∥"></a><a id="916" href="TruncationType.html#916" class="Function Operator">∥_∥</a>
    <a id="924" class="Symbol">:</a>  <a id="927" class="Symbol">(</a><a id="928" href="TruncationType.html#928" class="Bound">A</a> <a id="930" class="Symbol">:</a> <a id="932" href="Intro.html#1813" class="Function">Type</a> <a id="937" href="Intro.html#2253" class="Generalizable">ℓ</a><a id="938" class="Symbol">)</a>
    <a id="944" class="Symbol">→</a> <a id="946" href="Intro.html#1813" class="Function">Type</a> <a id="951" href="Intro.html#2253" class="Generalizable">ℓ</a>

  <a id="956" href="TruncationType.html#916" class="Function Operator">∥</a> <a id="958" href="TruncationType.html#958" class="Bound">A</a> <a id="960" href="TruncationType.html#916" class="Function Operator">∥</a> <a id="962" class="Symbol">=</a> <a id="964" href="TruncationType.html#810" class="Datatype Operator">!∥</a> <a id="967" href="TruncationType.html#958" class="Bound">A</a> <a id="969" href="TruncationType.html#810" class="Datatype Operator">∥</a>
</pre>

<pre class="Agda">
  <a id="∣_∣"></a><a id="998" href="TruncationType.html#998" class="Function Operator">∣_∣</a> <a id="1002" class="Symbol">:</a> <a id="1004" class="Symbol">∀</a> <a id="1006" class="Symbol">{</a><a id="1007" href="TruncationType.html#1007" class="Bound">ℓ</a><a id="1008" class="Symbol">}</a> <a id="1010" class="Symbol">{</a><a id="1011" href="TruncationType.html#1011" class="Bound">X</a> <a id="1013" class="Symbol">:</a> <a id="1015" href="Intro.html#1813" class="Function">Type</a> <a id="1020" href="TruncationType.html#1007" class="Bound">ℓ</a><a id="1021" class="Symbol">}</a> <a id="1023" class="Symbol">→</a> <a id="1025" href="TruncationType.html#1011" class="Bound">X</a> <a id="1027" class="Symbol">→</a> <a id="1029" href="TruncationType.html#916" class="Function Operator">∥</a> <a id="1031" href="TruncationType.html#1011" class="Bound">X</a> <a id="1033" href="TruncationType.html#916" class="Function Operator">∥</a>
  <a id="1037" href="TruncationType.html#998" class="Function Operator">∣</a> <a id="1039" href="TruncationType.html#1039" class="Bound">x</a> <a id="1041" href="TruncationType.html#998" class="Function Operator">∣</a> <a id="1043" class="Symbol">=</a> <a id="1045" href="TruncationType.html#871" class="InductiveConstructor Operator">!∣</a> <a id="1048" href="TruncationType.html#1039" class="Bound">x</a> <a id="1050" href="TruncationType.html#871" class="InductiveConstructor Operator">∣</a>
</pre>

Any two elements of the truncated type are equal
<pre class="Agda">
  <a id="1128" class="Keyword">postulate</a>
    <a id="trunc"></a><a id="1142" href="TruncationType.html#1142" class="Postulate">trunc</a> <a id="1148" class="Symbol">:</a> <a id="1150" class="Symbol">∀</a> <a id="1152" class="Symbol">{</a><a id="1153" href="TruncationType.html#1153" class="Bound">ℓ</a><a id="1154" class="Symbol">}</a> <a id="1156" class="Symbol">{</a><a id="1157" href="TruncationType.html#1157" class="Bound">A</a> <a id="1159" class="Symbol">:</a> <a id="1161" href="Intro.html#1813" class="Function">Type</a> <a id="1166" href="TruncationType.html#1153" class="Bound">ℓ</a><a id="1167" class="Symbol">}</a> <a id="1169" class="Symbol">→</a> <a id="1171" href="HLevelTypes.html#1179" class="Function">isProp</a> <a id="1178" href="TruncationType.html#916" class="Function Operator">∥</a> <a id="1180" href="TruncationType.html#1157" class="Bound">A</a> <a id="1182" href="TruncationType.html#916" class="Function Operator">∥</a>
</pre>

Recursion principle
<pre class="Agda">
  <a id="trunc-rec"></a><a id="1231" href="TruncationType.html#1231" class="Function">trunc-rec</a> <a id="1241" class="Symbol">:</a> <a id="1243" class="Symbol">∀</a> <a id="1245" class="Symbol">{</a><a id="1246" href="TruncationType.html#1246" class="Bound">ℓᵢ</a> <a id="1249" href="TruncationType.html#1249" class="Bound">ℓⱼ</a><a id="1251" class="Symbol">}</a> <a id="1253" class="Symbol">{</a><a id="1254" href="TruncationType.html#1254" class="Bound">A</a> <a id="1256" class="Symbol">:</a> <a id="1258" href="Intro.html#1813" class="Function">Type</a> <a id="1263" href="TruncationType.html#1246" class="Bound">ℓᵢ</a><a id="1265" class="Symbol">}</a> <a id="1267" class="Symbol">{</a><a id="1268" href="TruncationType.html#1268" class="Bound">P</a> <a id="1270" class="Symbol">:</a> <a id="1272" href="Intro.html#1813" class="Function">Type</a> <a id="1277" href="TruncationType.html#1249" class="Bound">ℓⱼ</a><a id="1279" class="Symbol">}</a>
            <a id="1293" class="Symbol">→</a> <a id="1295" href="HLevelTypes.html#1179" class="Function">isProp</a> <a id="1302" href="TruncationType.html#1268" class="Bound">P</a>
            <a id="1316" class="Symbol">→</a> <a id="1318" class="Symbol">(</a><a id="1319" href="TruncationType.html#1254" class="Bound">A</a> <a id="1321" class="Symbol">→</a> <a id="1323" href="TruncationType.html#1268" class="Bound">P</a><a id="1324" class="Symbol">)</a>
            <a id="1338" class="Comment">---------</a>
            <a id="1360" class="Symbol">→</a> <a id="1362" href="TruncationType.html#916" class="Function Operator">∥</a> <a id="1364" href="TruncationType.html#1254" class="Bound">A</a> <a id="1366" href="TruncationType.html#916" class="Function Operator">∥</a> <a id="1368" class="Symbol">→</a> <a id="1370" href="TruncationType.html#1268" class="Bound">P</a>
  <a id="1374" href="TruncationType.html#1231" class="Function">trunc-rec</a> <a id="1384" class="Symbol">_</a> <a id="1386" href="TruncationType.html#1386" class="Bound">f</a> <a id="1388" href="TruncationType.html#871" class="InductiveConstructor Operator">!∣</a> <a id="1391" href="TruncationType.html#1391" class="Bound">x</a> <a id="1393" href="TruncationType.html#871" class="InductiveConstructor Operator">∣</a> <a id="1395" class="Symbol">=</a> <a id="1397" href="TruncationType.html#1386" class="Bound">f</a> <a id="1399" href="TruncationType.html#1391" class="Bound">x</a>
</pre>
