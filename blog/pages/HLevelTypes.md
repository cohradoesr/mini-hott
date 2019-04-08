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

<pre class="Agda">
<a id="646" class="Keyword">module</a> <a id="Propositions"></a><a id="653" href="HLevelTypes.html#653" class="Module">Propositions</a> <a id="666" class="Keyword">where</a>
</pre>

A type is a *mere proposition* if any two inhabitants of the type are equal.

{: .foldable until="5"}
<pre class="Agda">
  <a id="801" class="Comment">-- Def.</a>
  <a id="Propositions.isProp"></a><a id="811" href="HLevelTypes.html#811" class="Function">isProp</a>
    <a id="822" class="Symbol">:</a> <a id="824" class="Symbol">∀</a> <a id="826" class="Symbol">{</a><a id="827" href="HLevelTypes.html#827" class="Bound">ℓ</a><a id="828" class="Symbol">}</a> <a id="830" class="Symbol">(</a><a id="831" href="HLevelTypes.html#831" class="Bound">A</a> <a id="833" class="Symbol">:</a> <a id="835" href="Intro.html#1442" class="Function">Type</a> <a id="840" href="HLevelTypes.html#827" class="Bound">ℓ</a><a id="841" class="Symbol">)</a> <a id="843" class="Symbol">→</a> <a id="845" href="Intro.html#1442" class="Function">Type</a> <a id="850" href="HLevelTypes.html#827" class="Bound">ℓ</a>
  <a id="854" href="HLevelTypes.html#811" class="Function">isProp</a> <a id="861" href="HLevelTypes.html#861" class="Bound">A</a> <a id="863" class="Symbol">=</a> <a id="865" class="Symbol">((</a><a id="867" href="HLevelTypes.html#867" class="Bound">x</a> <a id="869" href="HLevelTypes.html#869" class="Bound">y</a> <a id="871" class="Symbol">:</a> <a id="873" href="HLevelTypes.html#861" class="Bound">A</a><a id="874" class="Symbol">)</a> <a id="876" class="Symbol">→</a> <a id="878" href="HLevelTypes.html#867" class="Bound">x</a> <a id="880" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="883" href="HLevelTypes.html#869" class="Bound">y</a><a id="884" class="Symbol">)</a>
</pre>

<pre class="Agda">
  <a id="913" class="Comment">-- The type of mere propositions</a>
  <a id="Propositions.hProp"></a><a id="948" href="HLevelTypes.html#948" class="Function">hProp</a> <a id="954" class="Symbol">:</a> <a id="956" class="Symbol">∀</a> <a id="958" class="Symbol">{</a><a id="959" href="HLevelTypes.html#959" class="Bound">ℓ</a><a id="960" class="Symbol">}</a> <a id="962" class="Symbol">→</a> <a id="964" href="Intro.html#1442" class="Function">Type</a> <a id="969" class="Symbol">(</a><a id="970" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="975" href="HLevelTypes.html#959" class="Bound">ℓ</a><a id="976" class="Symbol">)</a>
  <a id="980" href="HLevelTypes.html#948" class="Function">hProp</a> <a id="986" class="Symbol">{</a><a id="987" href="HLevelTypes.html#987" class="Bound">ℓ</a><a id="988" class="Symbol">}</a> <a id="990" class="Symbol">=</a> <a id="992" href="BasicTypes.html#1401" class="Record">Σ</a> <a id="994" class="Symbol">(</a><a id="995" href="Intro.html#1442" class="Function">Type</a> <a id="1000" href="HLevelTypes.html#987" class="Bound">ℓ</a><a id="1001" class="Symbol">)</a> <a id="1003" href="HLevelTypes.html#811" class="Function">isProp</a>
</pre>

<pre class="Agda">
<a id="1035" class="Keyword">open</a> <a id="1040" href="HLevelTypes.html#653" class="Module">Propositions</a> <a id="1053" class="Keyword">public</a>
</pre>

### Sets

A type is a *set& by definition if any two equalities on the type are equal Sets
are types without any higher *dimensional structure*,  all parallel paths are
homotopic and the homotopy is given by a continuous function on the two paths.

<pre class="Agda">
<a id="1334" class="Keyword">module</a> <a id="Sets"></a><a id="1341" href="HLevelTypes.html#1341" class="Module">Sets</a> <a id="1346" class="Keyword">where</a>

  <a id="Sets.isSet"></a><a id="1355" href="HLevelTypes.html#1355" class="Function">isSet</a> <a id="1361" class="Symbol">:</a> <a id="1363" class="Symbol">∀</a> <a id="1365" class="Symbol">{</a><a id="1366" href="HLevelTypes.html#1366" class="Bound">ℓ</a><a id="1367" class="Symbol">}</a>  <a id="1370" class="Symbol">(</a><a id="1371" href="HLevelTypes.html#1371" class="Bound">A</a> <a id="1373" class="Symbol">:</a> <a id="1375" href="Intro.html#1442" class="Function">Type</a> <a id="1380" href="HLevelTypes.html#1366" class="Bound">ℓ</a><a id="1381" class="Symbol">)</a> <a id="1383" class="Symbol">→</a> <a id="1385" href="Intro.html#1442" class="Function">Type</a> <a id="1390" href="HLevelTypes.html#1366" class="Bound">ℓ</a>
  <a id="1394" href="HLevelTypes.html#1355" class="Function">isSet</a> <a id="1400" href="HLevelTypes.html#1400" class="Bound">A</a> <a id="1402" class="Symbol">=</a> <a id="1404" class="Symbol">(</a><a id="1405" href="HLevelTypes.html#1405" class="Bound">x</a> <a id="1407" href="HLevelTypes.html#1407" class="Bound">y</a> <a id="1409" class="Symbol">:</a> <a id="1411" href="HLevelTypes.html#1400" class="Bound">A</a><a id="1412" class="Symbol">)</a> <a id="1414" class="Symbol">→</a> <a id="1416" href="HLevelTypes.html#811" class="Function">isProp</a> <a id="1423" class="Symbol">(</a><a id="1424" href="HLevelTypes.html#1405" class="Bound">x</a> <a id="1426" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="1429" href="HLevelTypes.html#1407" class="Bound">y</a><a id="1430" class="Symbol">)</a>

  <a id="1435" class="Comment">-- The type of sets.</a>
  <a id="Sets.hSet"></a><a id="1458" href="HLevelTypes.html#1458" class="Function">hSet</a> <a id="1463" class="Symbol">:</a> <a id="1465" class="Symbol">∀</a> <a id="1467" class="Symbol">{</a><a id="1468" href="HLevelTypes.html#1468" class="Bound">ℓ</a><a id="1469" class="Symbol">}</a> <a id="1471" class="Symbol">→</a> <a id="1473" href="Intro.html#1442" class="Function">Type</a> <a id="1478" class="Symbol">(</a><a id="1479" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="1484" href="HLevelTypes.html#1468" class="Bound">ℓ</a><a id="1485" class="Symbol">)</a>
  <a id="1489" href="HLevelTypes.html#1458" class="Function">hSet</a> <a id="1494" class="Symbol">{</a><a id="1495" href="HLevelTypes.html#1495" class="Bound">ℓ</a><a id="1496" class="Symbol">}</a> <a id="1498" class="Symbol">=</a> <a id="1500" href="BasicTypes.html#1401" class="Record">Σ</a> <a id="1502" class="Symbol">(</a><a id="1503" href="Intro.html#1442" class="Function">Type</a> <a id="1508" href="HLevelTypes.html#1495" class="Bound">ℓ</a><a id="1509" class="Symbol">)</a> <a id="1511" href="HLevelTypes.html#1355" class="Function">isSet</a>

<a id="1518" class="Keyword">open</a> <a id="1523" href="HLevelTypes.html#1341" class="Module">Sets</a> <a id="1528" class="Keyword">public</a>
</pre>
