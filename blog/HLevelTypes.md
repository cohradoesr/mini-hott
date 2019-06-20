---
layout: page
title: "H-Levels Types"
category: types
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
<a id="204" class="Symbol">{-#</a> <a id="208" class="Keyword">OPTIONS</a> <a id="216" class="Pragma">--without-K</a> <a id="228" class="Symbol">#-}</a>
<a id="232" class="Keyword">module</a> <a id="239" href="HLevelTypes.html" class="Module">_</a> <a id="241" class="Keyword">where</a>

<a id="248" class="Keyword">open</a> <a id="253" class="Keyword">import</a> <a id="260" href="TransportLemmas.html" class="Module">TransportLemmas</a>
<a id="276" class="Keyword">open</a> <a id="281" class="Keyword">import</a> <a id="288" href="EquivalenceType.html" class="Module">EquivalenceType</a>

<a id="305" class="Keyword">open</a> <a id="310" class="Keyword">import</a> <a id="317" href="HomotopyType.html" class="Module">HomotopyType</a>
<a id="330" class="Keyword">open</a> <a id="335" class="Keyword">import</a> <a id="342" href="HomotopyLemmas.html" class="Module">HomotopyLemmas</a>

<a id="358" class="Keyword">open</a> <a id="363" class="Keyword">import</a> <a id="370" href="HalfAdjointType.html" class="Module">HalfAdjointType</a>
<a id="386" class="Keyword">open</a> <a id="391" class="Keyword">import</a> <a id="398" href="QuasiinverseType.html" class="Module">QuasiinverseType</a>
<a id="415" class="Keyword">open</a> <a id="420" class="Keyword">import</a> <a id="427" href="QuasiinverseLemmas.html" class="Module">QuasiinverseLemmas</a>
</pre>
</div>


## Hlevels

Higher levels of the homotopical structure, where the
first levels are:

- Contractible types ($-2$)
- Propositions ($-1$)
- Sets ($0$)

### Propositions


A type is a *mere proposition* if any two inhabitants of the type are equal.

{: .foldable until="5"}
<pre class="Agda">
<a id="749" class="Comment">-- Def.</a>
<a id="isProp"></a><a id="757" href="HLevelTypes.html#757" class="Function">isProp</a>
  <a id="766" class="Symbol">:</a> <a id="768" class="Symbol">∀</a> <a id="770" class="Symbol">{</a><a id="771" href="HLevelTypes.html#771" class="Bound">ℓ</a><a id="772" class="Symbol">}</a> <a id="774" class="Symbol">(</a><a id="775" href="HLevelTypes.html#775" class="Bound">A</a> <a id="777" class="Symbol">:</a> <a id="779" href="Intro.html#1593" class="Function">Type</a> <a id="784" href="HLevelTypes.html#771" class="Bound">ℓ</a><a id="785" class="Symbol">)</a> <a id="787" class="Symbol">→</a> <a id="789" href="Intro.html#1593" class="Function">Type</a> <a id="794" href="HLevelTypes.html#771" class="Bound">ℓ</a>
<a id="796" href="HLevelTypes.html#757" class="Function">isProp</a> <a id="803" href="HLevelTypes.html#803" class="Bound">A</a> <a id="805" class="Symbol">=</a> <a id="807" class="Symbol">((</a><a id="809" href="HLevelTypes.html#809" class="Bound">x</a> <a id="811" href="HLevelTypes.html#811" class="Bound">y</a> <a id="813" class="Symbol">:</a> <a id="815" href="HLevelTypes.html#803" class="Bound">A</a><a id="816" class="Symbol">)</a> <a id="818" class="Symbol">→</a> <a id="820" href="HLevelTypes.html#809" class="Bound">x</a> <a id="822" href="EqualityType.html#1038" class="Datatype Operator">==</a> <a id="825" href="HLevelTypes.html#811" class="Bound">y</a><a id="826" class="Symbol">)</a>
</pre>

<pre class="Agda">
<a id="853" class="Comment">-- The type of mere propositions</a>
<a id="hProp"></a><a id="886" href="HLevelTypes.html#886" class="Function">hProp</a> <a id="892" class="Symbol">:</a> <a id="894" class="Symbol">∀</a> <a id="896" class="Symbol">{</a><a id="897" href="HLevelTypes.html#897" class="Bound">ℓ</a><a id="898" class="Symbol">}</a> <a id="900" class="Symbol">→</a> <a id="902" href="Intro.html#1593" class="Function">Type</a> <a id="907" class="Symbol">(</a><a id="908" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="913" href="HLevelTypes.html#897" class="Bound">ℓ</a><a id="914" class="Symbol">)</a>
<a id="916" href="HLevelTypes.html#886" class="Function">hProp</a> <a id="922" class="Symbol">{</a><a id="923" href="HLevelTypes.html#923" class="Bound">ℓ</a><a id="924" class="Symbol">}</a> <a id="926" class="Symbol">=</a> <a id="928" href="BasicTypes.html#1306" class="Record">∑</a> <a id="930" class="Symbol">(</a><a id="931" href="Intro.html#1593" class="Function">Type</a> <a id="936" href="HLevelTypes.html#923" class="Bound">ℓ</a><a id="937" class="Symbol">)</a> <a id="939" href="HLevelTypes.html#757" class="Function">isProp</a>
</pre>


### Sets

A type is a *set& by definition if any two equalities on the type are equal Sets
are types without any higher *dimensional structure*,  all parallel paths are
homotopic and the homotopy is given by a continuous function on the two paths.

<pre class="Agda">
<a id="isSet"></a><a id="1221" href="HLevelTypes.html#1221" class="Function">isSet</a> <a id="1227" class="Symbol">:</a> <a id="1229" href="Intro.html#1593" class="Function">Type</a> <a id="1234" href="Intro.html#2027" class="Generalizable">ℓ</a> <a id="1236" class="Symbol">→</a> <a id="1238" href="Intro.html#1593" class="Function">Type</a> <a id="1243" href="Intro.html#2027" class="Generalizable">ℓ</a>
<a id="1245" href="HLevelTypes.html#1221" class="Function">isSet</a> <a id="1251" href="HLevelTypes.html#1251" class="Bound">A</a> <a id="1253" class="Symbol">=</a> <a id="1255" class="Symbol">(</a><a id="1256" href="HLevelTypes.html#1256" class="Bound">x</a> <a id="1258" href="HLevelTypes.html#1258" class="Bound">y</a> <a id="1260" class="Symbol">:</a> <a id="1262" href="HLevelTypes.html#1251" class="Bound">A</a><a id="1263" class="Symbol">)</a> <a id="1265" class="Symbol">→</a> <a id="1267" href="HLevelTypes.html#757" class="Function">isProp</a> <a id="1274" class="Symbol">(</a><a id="1275" href="HLevelTypes.html#1256" class="Bound">x</a> <a id="1277" href="EqualityType.html#1038" class="Datatype Operator">==</a> <a id="1280" href="HLevelTypes.html#1258" class="Bound">y</a><a id="1281" class="Symbol">)</a>
</pre>

The type of sets

<pre class="Agda">
<a id="hSet"></a><a id="1326" href="HLevelTypes.html#1326" class="Function">hSet</a> <a id="1331" class="Symbol">:</a> <a id="1333" href="Intro.html#1593" class="Function">Type</a> <a id="1338" class="Symbol">(</a><a id="1339" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="1344" href="Intro.html#2027" class="Generalizable">ℓ</a><a id="1345" class="Symbol">)</a>
<a id="1347" href="HLevelTypes.html#1326" class="Function">hSet</a> <a id="1352" class="Symbol">{</a><a id="1353" href="HLevelTypes.html#1353" class="Bound">ℓ</a><a id="1354" class="Symbol">}</a> <a id="1356" class="Symbol">=</a> <a id="1358" href="BasicTypes.html#1306" class="Record">∑</a> <a id="1360" class="Symbol">(</a><a id="1361" href="Intro.html#1593" class="Function">Type</a> <a id="1366" href="HLevelTypes.html#1353" class="Bound">ℓ</a><a id="1367" class="Symbol">)</a> <a id="1369" href="HLevelTypes.html#1221" class="Function">isSet</a>
</pre>

### Groupoid

<pre class="Agda">
<a id="isGroupoid"></a><a id="1414" href="HLevelTypes.html#1414" class="Function">isGroupoid</a> <a id="1425" class="Symbol">:</a> <a id="1427" href="Intro.html#1593" class="Function">Type</a> <a id="1432" href="Intro.html#2027" class="Generalizable">ℓ</a> <a id="1434" class="Symbol">→</a> <a id="1436" href="Intro.html#1593" class="Function">Type</a> <a id="1441" href="Intro.html#2027" class="Generalizable">ℓ</a>
<a id="1443" href="HLevelTypes.html#1414" class="Function">isGroupoid</a> <a id="1454" href="HLevelTypes.html#1454" class="Bound">A</a>  <a id="1457" class="Symbol">=</a> <a id="1459" class="Symbol">(</a><a id="1460" href="HLevelTypes.html#1460" class="Bound">a₀</a> <a id="1463" href="HLevelTypes.html#1463" class="Bound">a₁</a> <a id="1466" class="Symbol">:</a> <a id="1468" href="HLevelTypes.html#1454" class="Bound">A</a><a id="1469" class="Symbol">)</a> <a id="1471" class="Symbol">→</a> <a id="1473" href="HLevelTypes.html#1221" class="Function">isSet</a> <a id="1479" class="Symbol">(</a><a id="1480" href="HLevelTypes.html#1460" class="Bound">a₀</a> <a id="1483" href="EqualityType.html#1213" class="Function Operator">≡</a> <a id="1485" href="HLevelTypes.html#1463" class="Bound">a₁</a><a id="1487" class="Symbol">)</a>
</pre>

<pre class="Agda">
<a id="Groupoid"></a><a id="1514" href="HLevelTypes.html#1514" class="Function">Groupoid</a> <a id="1523" class="Symbol">:</a> <a id="1525" href="Intro.html#1593" class="Function">Type</a> <a id="1530" class="Symbol">(</a><a id="1531" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="1536" href="Intro.html#2027" class="Generalizable">ℓ</a><a id="1537" class="Symbol">)</a>
<a id="1539" href="HLevelTypes.html#1514" class="Function">Groupoid</a> <a id="1548" class="Symbol">{</a><a id="1549" href="HLevelTypes.html#1549" class="Bound">ℓ</a><a id="1550" class="Symbol">}</a> <a id="1552" class="Symbol">=</a> <a id="1554" href="BasicTypes.html#1306" class="Record">∑</a> <a id="1556" class="Symbol">(</a><a id="1557" href="Intro.html#1593" class="Function">Type</a> <a id="1562" href="HLevelTypes.html#1549" class="Bound">ℓ</a><a id="1563" class="Symbol">)</a> <a id="1565" href="HLevelTypes.html#1414" class="Function">isGroupoid</a>
</pre>
