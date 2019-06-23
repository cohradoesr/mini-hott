---
layout: page
title: "Interval Type"
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
<a id="177" class="Symbol">{-#</a> <a id="181" class="Keyword">OPTIONS</a> <a id="189" class="Pragma">--without-K</a> <a id="201" class="Symbol">#-}</a>
<a id="205" class="Keyword">open</a> <a id="210" class="Keyword">import</a> <a id="217" href="TransportLemmas.html" class="Module">TransportLemmas</a>
<a id="233" class="Keyword">open</a> <a id="238" class="Keyword">import</a> <a id="245" href="EquivalenceType.html" class="Module">EquivalenceType</a>

<a id="262" class="Keyword">open</a> <a id="267" class="Keyword">import</a> <a id="274" href="HomotopyType.html" class="Module">HomotopyType</a>
<a id="287" class="Keyword">open</a> <a id="292" class="Keyword">import</a> <a id="299" href="FunExtAxiom.html" class="Module">FunExtAxiom</a>
<a id="311" class="Keyword">open</a> <a id="316" class="Keyword">import</a> <a id="323" href="HLevelTypes.html" class="Module">HLevelTypes</a>
</pre>
</div>

### Intervals

Interval. An interval is defined by taking two points (two elements) and a path
between them (an element of the equality type). This path is nontrivial.

<pre class="Agda">
<a id="536" class="Keyword">module</a> <a id="543" href="IntervalType.html" class="Module">IntervalType</a> <a id="556" class="Keyword">where</a>

  <a id="565" class="Keyword">private</a>

    <a id="578" class="Keyword">data</a> <a id="!I"></a><a id="583" href="IntervalType.html#583" class="Datatype">!I</a> <a id="586" class="Symbol">:</a> <a id="588" href="Intro.html#1882" class="Function">Type₀</a> <a id="594" class="Keyword">where</a>
      <a id="!I.!Izero"></a><a id="606" href="IntervalType.html#606" class="InductiveConstructor">!Izero</a> <a id="613" class="Symbol">:</a> <a id="615" href="IntervalType.html#583" class="Datatype">!I</a>
      <a id="!I.!Ione"></a><a id="624" href="IntervalType.html#624" class="InductiveConstructor">!Ione</a> <a id="630" class="Symbol">:</a> <a id="632" href="IntervalType.html#583" class="Datatype">!I</a>

  <a id="I"></a><a id="638" href="IntervalType.html#638" class="Function">I</a> <a id="640" class="Symbol">:</a> <a id="642" href="Intro.html#1882" class="Function">Type₀</a>
  <a id="650" href="IntervalType.html#638" class="Function">I</a> <a id="652" class="Symbol">=</a> <a id="654" href="IntervalType.html#583" class="Datatype">!I</a>

  <a id="Izero"></a><a id="660" href="IntervalType.html#660" class="Function">Izero</a> <a id="666" class="Symbol">:</a> <a id="668" href="IntervalType.html#638" class="Function">I</a>
  <a id="672" href="IntervalType.html#660" class="Function">Izero</a> <a id="678" class="Symbol">=</a> <a id="680" href="IntervalType.html#606" class="InductiveConstructor">!Izero</a>

  <a id="Ione"></a><a id="690" href="IntervalType.html#690" class="Function">Ione</a> <a id="695" class="Symbol">:</a> <a id="697" href="IntervalType.html#638" class="Function">I</a>
  <a id="701" href="IntervalType.html#690" class="Function">Ione</a> <a id="706" class="Symbol">=</a> <a id="708" href="IntervalType.html#624" class="InductiveConstructor">!Ione</a>

  <a id="717" class="Keyword">postulate</a>
    <a id="seg"></a><a id="731" href="IntervalType.html#731" class="Postulate">seg</a> <a id="735" class="Symbol">:</a> <a id="737" href="IntervalType.html#660" class="Function">Izero</a> <a id="743" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="746" href="IntervalType.html#690" class="Function">Ione</a>
</pre>

Recursion principle on points.
{: .foldable until="6" }
<pre class="Agda">
  <a id="I-rec"></a><a id="834" href="IntervalType.html#834" class="Function">I-rec</a>
    <a id="844" class="Symbol">:</a> <a id="846" class="Symbol">{</a><a id="847" href="IntervalType.html#847" class="Bound">A</a> <a id="849" class="Symbol">:</a> <a id="851" href="Intro.html#1803" class="Function">Type</a> <a id="856" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="857" class="Symbol">}</a>
    <a id="863" class="Symbol">→</a> <a id="865" class="Symbol">(</a><a id="866" href="IntervalType.html#866" class="Bound">a</a> <a id="868" href="IntervalType.html#868" class="Bound">b</a> <a id="870" class="Symbol">:</a> <a id="872" href="IntervalType.html#847" class="Bound">A</a><a id="873" class="Symbol">)</a>
    <a id="879" class="Symbol">→</a> <a id="881" class="Symbol">(</a><a id="882" href="IntervalType.html#882" class="Bound">p</a> <a id="884" class="Symbol">:</a> <a id="886" href="IntervalType.html#866" class="Bound">a</a> <a id="888" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="891" href="IntervalType.html#868" class="Bound">b</a><a id="892" class="Symbol">)</a>
    <a id="898" class="Comment">--------------</a>
    <a id="917" class="Symbol">→</a> <a id="919" class="Symbol">(</a><a id="920" href="IntervalType.html#638" class="Function">I</a> <a id="922" class="Symbol">→</a> <a id="924" href="IntervalType.html#847" class="Bound">A</a><a id="925" class="Symbol">)</a>

  <a id="930" href="IntervalType.html#834" class="Function">I-rec</a> <a id="936" href="IntervalType.html#936" class="Bound">a</a> <a id="938" class="Symbol">_</a> <a id="940" class="Symbol">_</a> <a id="942" href="IntervalType.html#606" class="InductiveConstructor">!Izero</a> <a id="949" class="Symbol">=</a> <a id="951" href="IntervalType.html#936" class="Bound">a</a>
  <a id="955" href="IntervalType.html#834" class="Function">I-rec</a> <a id="961" class="Symbol">_</a> <a id="963" href="IntervalType.html#963" class="Bound">b</a> <a id="965" class="Symbol">_</a> <a id="967" href="IntervalType.html#624" class="InductiveConstructor">!Ione</a>  <a id="974" class="Symbol">=</a> <a id="976" href="IntervalType.html#963" class="Bound">b</a>
</pre>

Recursion principle on paths.
{: .foldable until="6" }
<pre class="Agda">
  <a id="1060" class="Keyword">postulate</a>
    <a id="I-βrec"></a><a id="1074" href="IntervalType.html#1074" class="Postulate">I-βrec</a>
      <a id="1087" class="Symbol">:</a> <a id="1089" class="Symbol">(</a><a id="1090" href="IntervalType.html#1090" class="Bound">A</a> <a id="1092" class="Symbol">:</a> <a id="1094" href="Intro.html#1803" class="Function">Type</a> <a id="1099" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="1100" class="Symbol">)</a>
      <a id="1108" class="Symbol">→</a> <a id="1110" class="Symbol">(</a><a id="1111" href="IntervalType.html#1111" class="Bound">a</a> <a id="1113" href="IntervalType.html#1113" class="Bound">b</a> <a id="1115" class="Symbol">:</a> <a id="1117" href="IntervalType.html#1090" class="Bound">A</a><a id="1118" class="Symbol">)</a>
      <a id="1126" class="Symbol">→</a> <a id="1128" class="Symbol">(</a><a id="1129" href="IntervalType.html#1129" class="Bound">p</a> <a id="1131" class="Symbol">:</a> <a id="1133" href="IntervalType.html#1111" class="Bound">a</a> <a id="1135" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="1138" href="IntervalType.html#1113" class="Bound">b</a><a id="1139" class="Symbol">)</a>
      <a id="1147" class="Comment">---------------------------</a>
      <a id="1181" class="Symbol">→</a> <a id="1183" href="AlgebraOnPaths.html#389" class="Function">ap</a> <a id="1186" class="Symbol">(</a><a id="1187" href="IntervalType.html#834" class="Function">I-rec</a> <a id="1193" href="IntervalType.html#1111" class="Bound">a</a> <a id="1195" href="IntervalType.html#1113" class="Bound">b</a> <a id="1197" href="IntervalType.html#1129" class="Bound">p</a><a id="1198" class="Symbol">)</a> <a id="1200" href="IntervalType.html#731" class="Postulate">seg</a> <a id="1204" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="1207" href="IntervalType.html#1129" class="Bound">p</a>
</pre>
