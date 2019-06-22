---
layout: page
title: "Axiom of Univalence"
category: lemmas functions homotopy
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
<a id="229" class="Symbol">{-#</a> <a id="233" class="Keyword">OPTIONS</a> <a id="241" class="Pragma">--without-K</a> <a id="253" class="Symbol">#-}</a>
<a id="257" class="Keyword">open</a> <a id="262" class="Keyword">import</a> <a id="269" href="TransportLemmas.html" class="Module">TransportLemmas</a>
<a id="285" class="Keyword">open</a> <a id="290" class="Keyword">import</a> <a id="297" href="EquivalenceType.html" class="Module">EquivalenceType</a>

<a id="314" class="Keyword">open</a> <a id="319" class="Keyword">import</a> <a id="326" href="HomotopyType.html" class="Module">HomotopyType</a>
<a id="339" class="Keyword">open</a> <a id="344" class="Keyword">import</a> <a id="351" href="FunExtAxiom.html" class="Module">FunExtAxiom</a>
<a id="363" class="Keyword">open</a> <a id="368" class="Keyword">import</a> <a id="375" href="QuasiinverseType.html" class="Module">QuasiinverseType</a>
</pre>
</div>

## Voevodsky's Univalence Axiom

Voevodsky's Univalence axiom is postulated. It induces an equality between any
two equivalent types. Some $β$ and $η$ rules are provided.

<pre class="Agda">
<a id="596" class="Keyword">module</a> <a id="603" href="UnivalenceAxiom.html" class="Module">UnivalenceAxiom</a> <a id="619" class="Symbol">{</a><a id="620" href="UnivalenceAxiom.html#620" class="Bound">ℓ</a><a id="621" class="Symbol">}</a> <a id="623" class="Symbol">{</a><a id="624" href="UnivalenceAxiom.html#624" class="Bound">A</a> <a id="626" href="UnivalenceAxiom.html#626" class="Bound">B</a> <a id="628" class="Symbol">:</a> <a id="630" href="Intro.html#1593" class="Function">Type</a> <a id="635" href="UnivalenceAxiom.html#620" class="Bound">ℓ</a><a id="636" class="Symbol">}</a> <a id="638" class="Keyword">where</a>
</pre>

{: .foldable until="5"}
<pre class="Agda">
  <a id="695" class="Comment">-- Fun.</a>
  <a id="idtoeqv"></a><a id="705" href="UnivalenceAxiom.html#705" class="Function">idtoeqv</a>
    <a id="717" class="Symbol">:</a> <a id="719" href="UnivalenceAxiom.html#624" class="Bound">A</a> <a id="721" href="EqualityType.html#1038" class="Datatype Operator">==</a> <a id="724" href="UnivalenceAxiom.html#626" class="Bound">B</a>
    <a id="730" class="Comment">--------</a>
    <a id="743" class="Symbol">→</a> <a id="745" href="UnivalenceAxiom.html#624" class="Bound">A</a> <a id="747" href="EquivalenceType.html#764" class="Function Operator">≃</a> <a id="749" href="UnivalenceAxiom.html#626" class="Bound">B</a>

  <a id="754" href="UnivalenceAxiom.html#705" class="Function">idtoeqv</a> <a id="762" href="UnivalenceAxiom.html#762" class="Bound">p</a> <a id="764" class="Symbol">=</a> <a id="766" href="QuasiinverseType.html#3135" class="Function">qinv-≃</a>
    <a id="777" class="Symbol">(</a><a id="778" href="Transport.html#473" class="Function">transport</a> <a id="788" class="Symbol">(λ</a> <a id="791" href="UnivalenceAxiom.html#791" class="Bound">X</a> <a id="793" class="Symbol">→</a> <a id="795" href="UnivalenceAxiom.html#791" class="Bound">X</a><a id="796" class="Symbol">)</a> <a id="798" href="UnivalenceAxiom.html#762" class="Bound">p</a><a id="799" class="Symbol">)</a>
    <a id="805" class="Symbol">(</a><a id="806" href="Transport.html#473" class="Function">transport</a> <a id="816" class="Symbol">(λ</a> <a id="819" href="UnivalenceAxiom.html#819" class="Bound">X</a> <a id="821" class="Symbol">→</a> <a id="823" href="UnivalenceAxiom.html#819" class="Bound">X</a><a id="824" class="Symbol">)</a> <a id="826" class="Symbol">(</a><a id="827" href="EqualityType.html#2553" class="Function">inv</a> <a id="831" href="UnivalenceAxiom.html#762" class="Bound">p</a><a id="832" class="Symbol">)</a> <a id="834" href="BasicTypes.html#1381" class="InductiveConstructor Operator">,</a> <a id="836" class="Symbol">(</a><a id="837" href="TransportLemmas.html#4645" class="Function">coe-inv-l</a> <a id="847" href="UnivalenceAxiom.html#762" class="Bound">p</a> <a id="849" href="BasicTypes.html#1381" class="InductiveConstructor Operator">,</a> <a id="851" href="TransportLemmas.html#4876" class="Function">coe-inv-r</a> <a id="861" href="UnivalenceAxiom.html#762" class="Bound">p</a><a id="862" class="Symbol">))</a>
</pre>
<pre class="Agda">
  <a id="891" class="Comment">-- Synonyms:</a>
  <a id="==-to-≃"></a><a id="906" href="UnivalenceAxiom.html#906" class="Function">==-to-≃</a> <a id="914" class="Symbol">=</a> <a id="916" href="UnivalenceAxiom.html#705" class="Function">idtoeqv</a>
</pre>

The **Univalence axiom** induces an equivalence between equalities
and equivalences.

<pre class="Agda">
  <a id="1037" class="Comment">-- Axiom.</a>
  <a id="1049" class="Keyword">postulate</a>
    <a id="axiomUnivalence"></a><a id="1063" href="UnivalenceAxiom.html#1063" class="Postulate">axiomUnivalence</a> <a id="1079" class="Symbol">:</a> <a id="1081" href="EquivalenceType.html#608" class="Function">isEquiv</a> <a id="1089" href="UnivalenceAxiom.html#705" class="Function">idtoeqv</a>
</pre>

{: .foldable until="3" }
<pre class="Agda">
  <a id="1149" class="Comment">-- Lema.</a>
  <a id="eqvUnivalence"></a><a id="1160" href="UnivalenceAxiom.html#1160" class="Function">eqvUnivalence</a>
    <a id="1178" class="Symbol">:</a> <a id="1180" class="Symbol">(</a><a id="1181" href="UnivalenceAxiom.html#624" class="Bound">A</a> <a id="1183" href="EqualityType.html#1038" class="Datatype Operator">==</a> <a id="1186" href="UnivalenceAxiom.html#626" class="Bound">B</a><a id="1187" class="Symbol">)</a> <a id="1189" href="EquivalenceType.html#764" class="Function Operator">≃</a> <a id="1191" class="Symbol">(</a><a id="1192" href="UnivalenceAxiom.html#624" class="Bound">A</a> <a id="1194" href="EquivalenceType.html#764" class="Function Operator">≃</a> <a id="1196" href="UnivalenceAxiom.html#626" class="Bound">B</a><a id="1197" class="Symbol">)</a>

  <a id="1202" href="UnivalenceAxiom.html#1160" class="Function">eqvUnivalence</a> <a id="1216" class="Symbol">=</a> <a id="1218" href="UnivalenceAxiom.html#705" class="Function">idtoeqv</a> <a id="1226" href="BasicTypes.html#1381" class="InductiveConstructor Operator">,</a> <a id="1228" href="UnivalenceAxiom.html#1063" class="Postulate">axiomUnivalence</a>

  <a id="1247" class="Comment">-- Synonyms</a>
  <a id="==-equiv-≃"></a><a id="1261" href="UnivalenceAxiom.html#1261" class="Function">==-equiv-≃</a> <a id="1272" class="Symbol">=</a> <a id="1274" href="UnivalenceAxiom.html#1160" class="Function">eqvUnivalence</a>
  <a id="==-≃-≃"></a><a id="1290" href="UnivalenceAxiom.html#1290" class="Function">==-≃-≃</a>     <a id="1301" class="Symbol">=</a> <a id="1303" href="UnivalenceAxiom.html#1160" class="Function">eqvUnivalence</a>
</pre>

Introduction rule for equalities:

<pre class="Agda">
  <a id="1379" class="Comment">-- Fun.</a>
  <a id="ua"></a><a id="1389" href="UnivalenceAxiom.html#1389" class="Function">ua</a> <a id="1392" class="Symbol">:</a> <a id="1394" href="UnivalenceAxiom.html#624" class="Bound">A</a> <a id="1396" href="EquivalenceType.html#764" class="Function Operator">≃</a> <a id="1398" href="UnivalenceAxiom.html#626" class="Bound">B</a> <a id="1400" class="Symbol">→</a> <a id="1402" href="UnivalenceAxiom.html#624" class="Bound">A</a> <a id="1404" href="EqualityType.html#1038" class="Datatype Operator">==</a> <a id="1407" href="UnivalenceAxiom.html#626" class="Bound">B</a>
  <a id="1411" href="UnivalenceAxiom.html#1389" class="Function">ua</a> <a id="1414" class="Symbol">=</a> <a id="1416" href="EquivalenceType.html#1133" class="Function">remap</a> <a id="1422" href="UnivalenceAxiom.html#1160" class="Function">eqvUnivalence</a>

  <a id="1439" class="Comment">-- Synonyms</a>
  <a id="≃-to-=="></a><a id="1453" href="UnivalenceAxiom.html#1453" class="Function">≃-to-==</a> <a id="1461" class="Symbol">=</a> <a id="1463" href="UnivalenceAxiom.html#1389" class="Function">ua</a>
</pre>




Computation rules

{: .foldable until="5"}
<pre class="Agda">
  <a id="1539" class="Comment">-- Beta rule.</a>
  <a id="ua-β"></a><a id="1555" href="UnivalenceAxiom.html#1555" class="Function">ua-β</a>
    <a id="1564" class="Symbol">:</a> <a id="1566" class="Symbol">(</a><a id="1567" href="UnivalenceAxiom.html#1567" class="Bound">α</a> <a id="1569" class="Symbol">:</a> <a id="1571" href="UnivalenceAxiom.html#624" class="Bound">A</a> <a id="1573" href="EquivalenceType.html#764" class="Function Operator">≃</a> <a id="1575" href="UnivalenceAxiom.html#626" class="Bound">B</a><a id="1576" class="Symbol">)</a>
    <a id="1582" class="Comment">----------------------</a>
    <a id="1609" class="Symbol">→</a> <a id="1611" href="UnivalenceAxiom.html#705" class="Function">idtoeqv</a> <a id="1619" class="Symbol">(</a><a id="1620" href="UnivalenceAxiom.html#1389" class="Function">ua</a> <a id="1623" href="UnivalenceAxiom.html#1567" class="Bound">α</a><a id="1624" class="Symbol">)</a> <a id="1626" href="EqualityType.html#1038" class="Datatype Operator">==</a> <a id="1629" href="UnivalenceAxiom.html#1567" class="Bound">α</a>

  <a id="1634" href="UnivalenceAxiom.html#1555" class="Function">ua-β</a> <a id="1639" href="UnivalenceAxiom.html#1639" class="Bound">eqv</a> <a id="1643" class="Symbol">=</a> <a id="1645" href="EquivalenceType.html#1368" class="Function">lrmap-inverse</a> <a id="1659" href="UnivalenceAxiom.html#1160" class="Function">eqvUnivalence</a>
</pre>

{: .foldable until="5"}
<pre class="Agda">
  <a id="1724" class="Comment">-- Eta rule.</a>
  <a id="ua-η"></a><a id="1739" href="UnivalenceAxiom.html#1739" class="Function">ua-η</a>
    <a id="1748" class="Symbol">:</a> <a id="1750" class="Symbol">(</a><a id="1751" href="UnivalenceAxiom.html#1751" class="Bound">p</a> <a id="1753" class="Symbol">:</a> <a id="1755" href="UnivalenceAxiom.html#624" class="Bound">A</a> <a id="1757" href="EqualityType.html#1038" class="Datatype Operator">==</a> <a id="1760" href="UnivalenceAxiom.html#626" class="Bound">B</a><a id="1761" class="Symbol">)</a>
    <a id="1767" class="Comment">---------------------</a>
    <a id="1793" class="Symbol">→</a> <a id="1795" href="UnivalenceAxiom.html#1389" class="Function">ua</a> <a id="1798" class="Symbol">(</a><a id="1799" href="UnivalenceAxiom.html#705" class="Function">idtoeqv</a> <a id="1807" href="UnivalenceAxiom.html#1751" class="Bound">p</a><a id="1808" class="Symbol">)</a> <a id="1810" href="EqualityType.html#1038" class="Datatype Operator">==</a> <a id="1813" href="UnivalenceAxiom.html#1751" class="Bound">p</a>

  <a id="1818" href="UnivalenceAxiom.html#1739" class="Function">ua-η</a> <a id="1823" href="UnivalenceAxiom.html#1823" class="Bound">p</a> <a id="1825" class="Symbol">=</a> <a id="1827" href="EquivalenceType.html#1595" class="Function">rlmap-inverse</a> <a id="1841" href="UnivalenceAxiom.html#1160" class="Function">eqvUnivalence</a>
</pre>
