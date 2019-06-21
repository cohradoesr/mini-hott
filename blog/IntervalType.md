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

### Intervals

Interval. An interval is defined by taking two points (two elements) and a path
between them (an element of the equality type). The path is nontrivial.

<pre class="Agda">
<a id="545" class="Keyword">module</a> <a id="552" href="IntervalType.html" class="Module">IntervalType</a> <a id="565" class="Keyword">where</a>

  <a id="574" class="Keyword">private</a>
    <a id="586" class="Comment">-- The interval is defined as a type with a nontrivial equality</a>
    <a id="654" class="Comment">-- between its two elements.</a>
    <a id="687" class="Keyword">data</a> <a id="!I"></a><a id="692" href="IntervalType.html#692" class="Datatype">!I</a> <a id="695" class="Symbol">:</a> <a id="697" href="Intro.html#1892" class="Function">Type₀</a> <a id="703" class="Keyword">where</a>
      <a id="!I.!Izero"></a><a id="715" href="IntervalType.html#715" class="InductiveConstructor">!Izero</a> <a id="722" class="Symbol">:</a> <a id="724" href="IntervalType.html#692" class="Datatype">!I</a>
      <a id="!I.!Ione"></a><a id="733" href="IntervalType.html#733" class="InductiveConstructor">!Ione</a> <a id="739" class="Symbol">:</a> <a id="741" href="IntervalType.html#692" class="Datatype">!I</a>

  <a id="I"></a><a id="747" href="IntervalType.html#747" class="Function">I</a> <a id="749" class="Symbol">:</a> <a id="751" href="Intro.html#1892" class="Function">Type₀</a>
  <a id="759" href="IntervalType.html#747" class="Function">I</a> <a id="761" class="Symbol">=</a> <a id="763" href="IntervalType.html#692" class="Datatype">!I</a>

  <a id="Izero"></a><a id="769" href="IntervalType.html#769" class="Function">Izero</a> <a id="775" class="Symbol">:</a> <a id="777" href="IntervalType.html#747" class="Function">I</a>
  <a id="781" href="IntervalType.html#769" class="Function">Izero</a> <a id="787" class="Symbol">=</a> <a id="789" href="IntervalType.html#715" class="InductiveConstructor">!Izero</a>

  <a id="Ione"></a><a id="799" href="IntervalType.html#799" class="Function">Ione</a> <a id="804" class="Symbol">:</a> <a id="806" href="IntervalType.html#747" class="Function">I</a>
  <a id="810" href="IntervalType.html#799" class="Function">Ione</a> <a id="815" class="Symbol">=</a> <a id="817" href="IntervalType.html#733" class="InductiveConstructor">!Ione</a>

  <a id="826" class="Keyword">postulate</a>
    <a id="seg"></a><a id="840" href="IntervalType.html#840" class="Postulate">seg</a> <a id="844" class="Symbol">:</a> <a id="846" href="IntervalType.html#769" class="Function">Izero</a> <a id="852" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="855" href="IntervalType.html#799" class="Function">Ione</a>

  <a id="863" class="Comment">-- Recursion principle on points.</a>
  <a id="I-rec"></a><a id="899" href="IntervalType.html#899" class="Function">I-rec</a> <a id="905" class="Symbol">:</a> <a id="907" class="Symbol">∀</a> <a id="909" class="Symbol">{</a><a id="910" href="IntervalType.html#910" class="Bound">ℓ</a><a id="911" class="Symbol">}</a> <a id="913" class="Symbol">{</a><a id="914" href="IntervalType.html#914" class="Bound">A</a> <a id="916" class="Symbol">:</a> <a id="918" href="Intro.html#1813" class="Function">Type</a> <a id="923" href="IntervalType.html#910" class="Bound">ℓ</a><a id="924" class="Symbol">}</a>
        <a id="934" class="Symbol">→</a> <a id="936" class="Symbol">(</a><a id="937" href="IntervalType.html#937" class="Bound">a</a> <a id="939" href="IntervalType.html#939" class="Bound">b</a> <a id="941" class="Symbol">:</a> <a id="943" href="IntervalType.html#914" class="Bound">A</a><a id="944" class="Symbol">)</a>
        <a id="954" class="Symbol">→</a> <a id="956" class="Symbol">(</a><a id="957" href="IntervalType.html#957" class="Bound">p</a> <a id="959" class="Symbol">:</a> <a id="961" href="IntervalType.html#937" class="Bound">a</a> <a id="963" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="966" href="IntervalType.html#939" class="Bound">b</a><a id="967" class="Symbol">)</a>
        <a id="977" class="Comment">--------------</a>
        <a id="1000" class="Symbol">→</a> <a id="1002" class="Symbol">(</a><a id="1003" href="IntervalType.html#747" class="Function">I</a> <a id="1005" class="Symbol">→</a> <a id="1007" href="IntervalType.html#914" class="Bound">A</a><a id="1008" class="Symbol">)</a>
  <a id="1012" href="IntervalType.html#899" class="Function">I-rec</a> <a id="1018" href="IntervalType.html#1018" class="Bound">a</a> <a id="1020" class="Symbol">_</a> <a id="1022" class="Symbol">_</a> <a id="1024" href="IntervalType.html#715" class="InductiveConstructor">!Izero</a> <a id="1031" class="Symbol">=</a> <a id="1033" href="IntervalType.html#1018" class="Bound">a</a>
  <a id="1037" href="IntervalType.html#899" class="Function">I-rec</a> <a id="1043" class="Symbol">_</a> <a id="1045" href="IntervalType.html#1045" class="Bound">b</a> <a id="1047" class="Symbol">_</a> <a id="1049" href="IntervalType.html#733" class="InductiveConstructor">!Ione</a>  <a id="1056" class="Symbol">=</a> <a id="1058" href="IntervalType.html#1045" class="Bound">b</a>

  <a id="1063" class="Comment">-- Recursion principle on paths.</a>
  <a id="1098" class="Keyword">postulate</a>
    <a id="I-βrec"></a><a id="1112" href="IntervalType.html#1112" class="Postulate">I-βrec</a> <a id="1119" class="Symbol">:</a> <a id="1121" class="Symbol">∀</a> <a id="1123" class="Symbol">{</a><a id="1124" href="IntervalType.html#1124" class="Bound">ℓ</a><a id="1125" class="Symbol">}</a>
      <a id="1133" class="Symbol">→</a> <a id="1135" class="Symbol">(</a><a id="1136" href="IntervalType.html#1136" class="Bound">A</a> <a id="1138" class="Symbol">:</a> <a id="1140" href="Intro.html#1813" class="Function">Type</a> <a id="1145" href="IntervalType.html#1124" class="Bound">ℓ</a><a id="1146" class="Symbol">)</a>
      <a id="1154" class="Symbol">→</a> <a id="1156" class="Symbol">(</a><a id="1157" href="IntervalType.html#1157" class="Bound">a</a> <a id="1159" href="IntervalType.html#1159" class="Bound">b</a> <a id="1161" class="Symbol">:</a> <a id="1163" href="IntervalType.html#1136" class="Bound">A</a><a id="1164" class="Symbol">)</a>
      <a id="1172" class="Symbol">→</a> <a id="1174" class="Symbol">(</a><a id="1175" href="IntervalType.html#1175" class="Bound">p</a> <a id="1177" class="Symbol">:</a> <a id="1179" href="IntervalType.html#1157" class="Bound">a</a> <a id="1181" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="1184" href="IntervalType.html#1159" class="Bound">b</a><a id="1185" class="Symbol">)</a>
      <a id="1193" class="Comment">---------------------------</a>
      <a id="1227" class="Symbol">→</a> <a id="1229" href="AlgebraOnPaths.html#395" class="Function">ap</a> <a id="1232" class="Symbol">(</a><a id="1233" href="IntervalType.html#899" class="Function">I-rec</a> <a id="1239" href="IntervalType.html#1157" class="Bound">a</a> <a id="1241" href="IntervalType.html#1159" class="Bound">b</a> <a id="1243" href="IntervalType.html#1175" class="Bound">p</a><a id="1244" class="Symbol">)</a> <a id="1246" href="IntervalType.html#840" class="Postulate">seg</a> <a id="1250" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="1253" href="IntervalType.html#1175" class="Bound">p</a>

</pre>
