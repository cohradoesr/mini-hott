---
layout: page
title: "Interval Type"
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
<a id="187" class="Symbol">{-#</a> <a id="191" class="Keyword">OPTIONS</a> <a id="199" class="Pragma">--without-K</a> <a id="211" class="Symbol">#-}</a>
<a id="215" class="Keyword">open</a> <a id="220" class="Keyword">import</a> <a id="227" href="TransportLemmas.html" class="Module">TransportLemmas</a>
<a id="243" class="Keyword">open</a> <a id="248" class="Keyword">import</a> <a id="255" href="EquivalenceType.html" class="Module">EquivalenceType</a>

<a id="272" class="Keyword">open</a> <a id="277" class="Keyword">import</a> <a id="284" href="HomotopyType.html" class="Module">HomotopyType</a>
<a id="297" class="Keyword">open</a> <a id="302" class="Keyword">import</a> <a id="309" href="FunExtAxiom.html" class="Module">FunExtAxiom</a>
<a id="321" class="Keyword">open</a> <a id="326" class="Keyword">import</a> <a id="333" href="HLevelTypes.html" class="Module">HLevelTypes</a>
</pre>
</div>

### Interval

Interval. An interval is defined by taking two points (two elements) and a path
between them (an element of the equality type). The path is nontrivial.

<pre class="Agda">
<a id="544" class="Keyword">module</a> <a id="551" href="IntervalType.html" class="Module">IntervalType</a> <a id="564" class="Keyword">where</a>

  <a id="573" class="Keyword">private</a>
    <a id="585" class="Comment">-- The interval is defined as a type with a nontrivial equality</a>
    <a id="653" class="Comment">-- between its two elements.</a>
    <a id="686" class="Keyword">data</a> <a id="!I"></a><a id="691" href="IntervalType.html#691" class="Datatype">!I</a> <a id="694" class="Symbol">:</a> <a id="696" href="Intro.html#1516" class="Function">Type₀</a> <a id="702" class="Keyword">where</a>
      <a id="!I.!Izero"></a><a id="714" href="IntervalType.html#714" class="InductiveConstructor">!Izero</a> <a id="721" class="Symbol">:</a> <a id="723" href="IntervalType.html#691" class="Datatype">!I</a>
      <a id="!I.!Ione"></a><a id="732" href="IntervalType.html#732" class="InductiveConstructor">!Ione</a> <a id="738" class="Symbol">:</a> <a id="740" href="IntervalType.html#691" class="Datatype">!I</a>

  <a id="I"></a><a id="746" href="IntervalType.html#746" class="Function">I</a> <a id="748" class="Symbol">:</a> <a id="750" href="Intro.html#1516" class="Function">Type₀</a>
  <a id="758" href="IntervalType.html#746" class="Function">I</a> <a id="760" class="Symbol">=</a> <a id="762" href="IntervalType.html#691" class="Datatype">!I</a>

  <a id="Izero"></a><a id="768" href="IntervalType.html#768" class="Function">Izero</a> <a id="774" class="Symbol">:</a> <a id="776" href="IntervalType.html#746" class="Function">I</a>
  <a id="780" href="IntervalType.html#768" class="Function">Izero</a> <a id="786" class="Symbol">=</a> <a id="788" href="IntervalType.html#714" class="InductiveConstructor">!Izero</a>

  <a id="Ione"></a><a id="798" href="IntervalType.html#798" class="Function">Ione</a> <a id="803" class="Symbol">:</a> <a id="805" href="IntervalType.html#746" class="Function">I</a>
  <a id="809" href="IntervalType.html#798" class="Function">Ione</a> <a id="814" class="Symbol">=</a> <a id="816" href="IntervalType.html#732" class="InductiveConstructor">!Ione</a>

  <a id="825" class="Keyword">postulate</a>
    <a id="seg"></a><a id="839" href="IntervalType.html#839" class="Postulate">seg</a> <a id="843" class="Symbol">:</a> <a id="845" href="IntervalType.html#768" class="Function">Izero</a> <a id="851" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="854" href="IntervalType.html#798" class="Function">Ione</a>

  <a id="862" class="Comment">-- Recursion principle on points.</a>
  <a id="I-rec"></a><a id="898" href="IntervalType.html#898" class="Function">I-rec</a> <a id="904" class="Symbol">:</a> <a id="906" class="Symbol">∀</a> <a id="908" class="Symbol">{</a><a id="909" href="IntervalType.html#909" class="Bound">ℓ</a><a id="910" class="Symbol">}</a> <a id="912" class="Symbol">{</a><a id="913" href="IntervalType.html#913" class="Bound">A</a> <a id="915" class="Symbol">:</a> <a id="917" href="Intro.html#1442" class="Function">Type</a> <a id="922" href="IntervalType.html#909" class="Bound">ℓ</a><a id="923" class="Symbol">}</a>
        <a id="933" class="Symbol">→</a> <a id="935" class="Symbol">(</a><a id="936" href="IntervalType.html#936" class="Bound">a</a> <a id="938" href="IntervalType.html#938" class="Bound">b</a> <a id="940" class="Symbol">:</a> <a id="942" href="IntervalType.html#913" class="Bound">A</a><a id="943" class="Symbol">)</a>
        <a id="953" class="Symbol">→</a> <a id="955" class="Symbol">(</a><a id="956" href="IntervalType.html#956" class="Bound">p</a> <a id="958" class="Symbol">:</a> <a id="960" href="IntervalType.html#936" class="Bound">a</a> <a id="962" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="965" href="IntervalType.html#938" class="Bound">b</a><a id="966" class="Symbol">)</a>
        <a id="976" class="Comment">--------------</a>
        <a id="999" class="Symbol">→</a> <a id="1001" class="Symbol">(</a><a id="1002" href="IntervalType.html#746" class="Function">I</a> <a id="1004" class="Symbol">→</a> <a id="1006" href="IntervalType.html#913" class="Bound">A</a><a id="1007" class="Symbol">)</a>
  <a id="1011" href="IntervalType.html#898" class="Function">I-rec</a> <a id="1017" href="IntervalType.html#1017" class="Bound">a</a> <a id="1019" class="Symbol">_</a> <a id="1021" class="Symbol">_</a> <a id="1023" href="IntervalType.html#714" class="InductiveConstructor">!Izero</a> <a id="1030" class="Symbol">=</a> <a id="1032" href="IntervalType.html#1017" class="Bound">a</a>
  <a id="1036" href="IntervalType.html#898" class="Function">I-rec</a> <a id="1042" class="Symbol">_</a> <a id="1044" href="IntervalType.html#1044" class="Bound">b</a> <a id="1046" class="Symbol">_</a> <a id="1048" href="IntervalType.html#732" class="InductiveConstructor">!Ione</a>  <a id="1055" class="Symbol">=</a> <a id="1057" href="IntervalType.html#1044" class="Bound">b</a>

  <a id="1062" class="Comment">-- Recursion principle on paths.</a>
  <a id="1097" class="Keyword">postulate</a>
    <a id="I-βrec"></a><a id="1111" href="IntervalType.html#1111" class="Postulate">I-βrec</a> <a id="1118" class="Symbol">:</a> <a id="1120" class="Symbol">∀</a> <a id="1122" class="Symbol">{</a><a id="1123" href="IntervalType.html#1123" class="Bound">ℓ</a><a id="1124" class="Symbol">}</a>
      <a id="1132" class="Symbol">→</a> <a id="1134" class="Symbol">(</a><a id="1135" href="IntervalType.html#1135" class="Bound">A</a> <a id="1137" class="Symbol">:</a> <a id="1139" href="Intro.html#1442" class="Function">Type</a> <a id="1144" href="IntervalType.html#1123" class="Bound">ℓ</a><a id="1145" class="Symbol">)</a>
      <a id="1153" class="Symbol">→</a> <a id="1155" class="Symbol">(</a><a id="1156" href="IntervalType.html#1156" class="Bound">a</a> <a id="1158" href="IntervalType.html#1158" class="Bound">b</a> <a id="1160" class="Symbol">:</a> <a id="1162" href="IntervalType.html#1135" class="Bound">A</a><a id="1163" class="Symbol">)</a>
      <a id="1171" class="Symbol">→</a> <a id="1173" class="Symbol">(</a><a id="1174" href="IntervalType.html#1174" class="Bound">p</a> <a id="1176" class="Symbol">:</a> <a id="1178" href="IntervalType.html#1156" class="Bound">a</a> <a id="1180" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="1183" href="IntervalType.html#1158" class="Bound">b</a><a id="1184" class="Symbol">)</a>
      <a id="1192" class="Comment">---------------------------</a>
      <a id="1226" class="Symbol">→</a> <a id="1228" href="AlgebraOnPaths.html#454" class="Function">ap</a> <a id="1231" class="Symbol">(</a><a id="1232" href="IntervalType.html#898" class="Function">I-rec</a> <a id="1238" href="IntervalType.html#1156" class="Bound">a</a> <a id="1240" href="IntervalType.html#1158" class="Bound">b</a> <a id="1242" href="IntervalType.html#1174" class="Bound">p</a><a id="1243" class="Symbol">)</a> <a id="1245" href="IntervalType.html#839" class="Postulate">seg</a> <a id="1249" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="1252" href="IntervalType.html#1174" class="Bound">p</a>

</pre>
