---
layout: page
title: "Relation Type"
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

### Monoids

A **monoid** is a algebraic structure on a set with a featured object called the
*unit* and an associative binary operation (also called the multiplication) that
fulfills certain properties described below.

Before monoids, we could define instead a much simpler structure, the magma. A
**magma** is basically a set and an binary operation. Then, any monoid is also
magma, but magmas are not so interesting as the monoids.

<pre class="Agda">
<a id="804" class="Keyword">module</a>
  <a id="813" href="MonoidType.html" class="Module">MonoidType</a>
    <a id="828" class="Keyword">where</a>
</pre>

<pre class="Agda">
  <a id="861" class="Keyword">record</a>
    <a id="Monoid"></a><a id="872" href="MonoidType.html#872" class="Record">Monoid</a>
      <a id="885" class="Symbol">:</a> <a id="887" href="Intro.html#1803" class="Function">Type</a> <a id="892" class="Symbol">(</a><a id="893" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="898" href="MonoidType.html#898" class="Bound">ℓ</a><a id="899" class="Symbol">)</a>
      <a id="907" class="Keyword">where</a>
    <a id="917" class="Keyword">constructor</a> <a id="Monoid.monoid"></a><a id="929" href="MonoidType.html#929" class="InductiveConstructor">monoid</a>
    <a id="940" class="Keyword">field</a>
      <a id="Monoid.M"></a><a id="952" href="MonoidType.html#952" class="Field">M</a>    <a id="957" class="Symbol">:</a> <a id="959" href="Intro.html#1803" class="Function">Type</a> <a id="964" href="MonoidType.html#898" class="Bound">ℓ</a>       <a id="972" class="Comment">-- The carrier</a>
      <a id="Monoid.e"></a><a id="993" href="MonoidType.html#993" class="Field">e</a>    <a id="998" class="Symbol">:</a> <a id="1000" href="MonoidType.html#952" class="Field">M</a>            <a id="1013" class="Comment">-- Unit element (at least one element, this one)</a>
      <a id="Monoid._&lt;&gt;_"></a><a id="1068" href="MonoidType.html#1068" class="Field Operator">_&lt;&gt;_</a> <a id="1073" class="Symbol">:</a> <a id="1075" href="MonoidType.html#952" class="Field">M</a> <a id="1077" class="Symbol">→</a> <a id="1079" href="MonoidType.html#952" class="Field">M</a> <a id="1081" class="Symbol">→</a> <a id="1083" href="MonoidType.html#952" class="Field">M</a>    <a id="1088" class="Comment">-- Operation</a>

      <a id="Monoid.M-is-set"></a><a id="1108" href="MonoidType.html#1108" class="Field">M-is-set</a> <a id="1117" class="Symbol">:</a> <a id="1119" href="HLevelTypes.html#1682" class="Function">isSet</a> <a id="1125" href="MonoidType.html#952" class="Field">M</a>   <a id="1129" class="Comment">-- the carrier is a set</a>

      <a id="1160" class="Comment">-- axioms:</a>
      <a id="Monoid.lunit"></a><a id="1177" href="MonoidType.html#1177" class="Field">lunit</a> <a id="1183" class="Symbol">:</a> <a id="1185" class="Symbol">(</a><a id="1186" href="MonoidType.html#1186" class="Bound">x</a> <a id="1188" class="Symbol">:</a> <a id="1190" href="MonoidType.html#952" class="Field">M</a><a id="1191" class="Symbol">)</a> <a id="1193" class="Symbol">→</a> <a id="1195" class="Symbol">(</a><a id="1196" href="MonoidType.html#993" class="Field">e</a> <a id="1198" href="MonoidType.html#1068" class="Field Operator">&lt;&gt;</a> <a id="1201" href="MonoidType.html#1186" class="Bound">x</a><a id="1202" class="Symbol">)</a> <a id="1204" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="1207" href="MonoidType.html#1186" class="Bound">x</a>
      <a id="Monoid.runit"></a><a id="1215" href="MonoidType.html#1215" class="Field">runit</a> <a id="1221" class="Symbol">:</a> <a id="1223" class="Symbol">(</a><a id="1224" href="MonoidType.html#1224" class="Bound">x</a> <a id="1226" class="Symbol">:</a> <a id="1228" href="MonoidType.html#952" class="Field">M</a><a id="1229" class="Symbol">)</a> <a id="1231" class="Symbol">→</a> <a id="1233" class="Symbol">(</a><a id="1234" href="MonoidType.html#1224" class="Bound">x</a> <a id="1236" href="MonoidType.html#1068" class="Field Operator">&lt;&gt;</a> <a id="1239" href="MonoidType.html#993" class="Field">e</a><a id="1240" class="Symbol">)</a> <a id="1242" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="1245" href="MonoidType.html#1224" class="Bound">x</a>
      <a id="Monoid.assoc"></a><a id="1253" href="MonoidType.html#1253" class="Field">assoc</a> <a id="1259" class="Symbol">:</a> <a id="1261" class="Symbol">(</a><a id="1262" href="MonoidType.html#1262" class="Bound">x</a> <a id="1264" href="MonoidType.html#1264" class="Bound">y</a> <a id="1266" href="MonoidType.html#1266" class="Bound">z</a> <a id="1268" class="Symbol">:</a> <a id="1270" href="MonoidType.html#952" class="Field">M</a><a id="1271" class="Symbol">)</a> <a id="1273" class="Symbol">→</a> <a id="1275" class="Symbol">(</a><a id="1276" href="MonoidType.html#1262" class="Bound">x</a> <a id="1278" href="MonoidType.html#1068" class="Field Operator">&lt;&gt;</a> <a id="1281" class="Symbol">(</a><a id="1282" href="MonoidType.html#1264" class="Bound">y</a> <a id="1284" href="MonoidType.html#1068" class="Field Operator">&lt;&gt;</a> <a id="1287" href="MonoidType.html#1266" class="Bound">z</a><a id="1288" class="Symbol">))</a> <a id="1291" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="1294" class="Symbol">((</a><a id="1296" href="MonoidType.html#1262" class="Bound">x</a> <a id="1298" href="MonoidType.html#1068" class="Field Operator">&lt;&gt;</a> <a id="1301" href="MonoidType.html#1264" class="Bound">y</a><a id="1302" class="Symbol">)</a> <a id="1304" href="MonoidType.html#1068" class="Field Operator">&lt;&gt;</a> <a id="1307" href="MonoidType.html#1266" class="Bound">z</a><a id="1308" class="Symbol">)</a>
</pre>

<pre class="Agda">
  <a id="1337" class="Keyword">open</a> <a id="1342" href="MonoidType.html#872" class="Module">Monoid</a> <a id="1349" class="Keyword">public</a>
</pre>
