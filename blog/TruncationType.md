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

Propositional truncation (or reflection) is the universal
solution to the problem of mapping $X$ to a proposition:

```
X  → ∥ X ∥
 ↘    ⇣ (!∃ h)
    ↘ P 
```

Notes:
 - It's possible to extend MLTT to get truncations for all types.
 (Such as resizing + funext, or higher inductive types.)

For a different way of formalising trucation see:
[agd-premises](https://hub.darcs.net/gylterud/agda-premises/browse/Premises/Truncation.agda).

<pre class="Agda">
<a id="969" class="Keyword">module</a>
  <a id="978" href="TruncationType.html" class="Module">TruncationType</a>
  <a id="995" class="Keyword">where</a>
</pre>

<pre class="Agda">
  <a id="1028" class="Keyword">private</a>
    <a id="1040" class="Keyword">data</a>
      <a id="!∥_∥"></a><a id="1051" href="TruncationType.html#1051" class="Datatype Operator">!∥_∥</a> <a id="1056" class="Symbol">{</a><a id="1057" href="TruncationType.html#1057" class="Bound">ℓ</a><a id="1058" class="Symbol">}</a> <a id="1060" class="Symbol">(</a><a id="1061" href="TruncationType.html#1061" class="Bound">A</a> <a id="1063" class="Symbol">:</a> <a id="1065" href="Intro.html#1803" class="Function">Type</a> <a id="1070" href="TruncationType.html#1057" class="Bound">ℓ</a><a id="1071" class="Symbol">)</a>
        <a id="1081" class="Symbol">:</a> <a id="1083" href="Intro.html#1803" class="Function">Type</a> <a id="1088" href="TruncationType.html#1057" class="Bound">ℓ</a>
        <a id="1098" class="Keyword">where</a>
        <a id="!∥_∥.!∣_∣"></a><a id="1112" href="TruncationType.html#1112" class="InductiveConstructor Operator">!∣_∣</a> <a id="1117" class="Symbol">:</a> <a id="1119" href="TruncationType.html#1061" class="Bound">A</a> <a id="1121" class="Symbol">→</a> <a id="1123" href="TruncationType.html#1051" class="Datatype Operator">!∥</a> <a id="1126" href="TruncationType.html#1061" class="Bound">A</a> <a id="1128" href="TruncationType.html#1051" class="Datatype Operator">∥</a>
</pre>

<pre class="Agda">
  <a id="∥_∥"></a><a id="1157" href="TruncationType.html#1157" class="Function Operator">∥_∥</a>
    <a id="1165" class="Symbol">:</a>  <a id="1168" class="Symbol">(</a><a id="1169" href="TruncationType.html#1169" class="Bound">A</a> <a id="1171" class="Symbol">:</a> <a id="1173" href="Intro.html#1803" class="Function">Type</a> <a id="1178" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="1179" class="Symbol">)</a>
    <a id="1185" class="Symbol">→</a> <a id="1187" href="Intro.html#1803" class="Function">Type</a> <a id="1192" href="Intro.html#2243" class="Generalizable">ℓ</a>

  <a id="1197" href="TruncationType.html#1157" class="Function Operator">∥</a> <a id="1199" href="TruncationType.html#1199" class="Bound">A</a> <a id="1201" href="TruncationType.html#1157" class="Function Operator">∥</a> <a id="1203" class="Symbol">=</a> <a id="1205" href="TruncationType.html#1051" class="Datatype Operator">!∥</a> <a id="1208" href="TruncationType.html#1199" class="Bound">A</a> <a id="1210" href="TruncationType.html#1051" class="Datatype Operator">∥</a>

  <a id="prop-trunc"></a><a id="1215" href="TruncationType.html#1215" class="Function">prop-trunc</a> <a id="1226" class="Symbol">=</a> <a id="1228" href="TruncationType.html#1157" class="Function Operator">∥_∥</a> 
</pre>

<pre class="Agda">
  <a id="∣_∣"></a><a id="1260" href="TruncationType.html#1260" class="Function Operator">∣_∣</a>
    <a id="1268" class="Symbol">:</a> <a id="1270" class="Symbol">{</a><a id="1271" href="TruncationType.html#1271" class="Bound">X</a> <a id="1273" class="Symbol">:</a> <a id="1275" href="Intro.html#1803" class="Function">Type</a> <a id="1280" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="1281" class="Symbol">}</a>
    <a id="1287" class="Symbol">→</a> <a id="1289" href="TruncationType.html#1271" class="Bound">X</a>
    <a id="1295" class="Symbol">→</a> <a id="1297" href="TruncationType.html#1157" class="Function Operator">∥</a> <a id="1299" href="TruncationType.html#1271" class="Bound">X</a> <a id="1301" href="TruncationType.html#1157" class="Function Operator">∥</a>

  <a id="1306" href="TruncationType.html#1260" class="Function Operator">∣</a> <a id="1308" href="TruncationType.html#1308" class="Bound">x</a> <a id="1310" href="TruncationType.html#1260" class="Function Operator">∣</a> <a id="1312" class="Symbol">=</a> <a id="1314" href="TruncationType.html#1112" class="InductiveConstructor Operator">!∣</a> <a id="1317" href="TruncationType.html#1308" class="Bound">x</a> <a id="1319" href="TruncationType.html#1112" class="InductiveConstructor Operator">∣</a>
</pre>

Any two elements of the truncated type are equal

<pre class="Agda">
  <a id="1398" class="Keyword">postulate</a>
    <a id="trunc"></a><a id="1412" href="TruncationType.html#1412" class="Postulate">trunc</a>
      <a id="1424" class="Symbol">:</a> <a id="1426" class="Symbol">{</a><a id="1427" href="TruncationType.html#1427" class="Bound">A</a> <a id="1429" class="Symbol">:</a> <a id="1431" href="Intro.html#1803" class="Function">Type</a> <a id="1436" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="1437" class="Symbol">}</a>
      <a id="1445" class="Symbol">→</a> <a id="1447" href="HLevelTypes.html#1162" class="Function">isProp</a> <a id="1454" href="TruncationType.html#1157" class="Function Operator">∥</a> <a id="1456" href="TruncationType.html#1427" class="Bound">A</a> <a id="1458" href="TruncationType.html#1157" class="Function Operator">∥</a>
</pre>

Recursion principle
<pre class="Agda">
  <a id="trunc-rec"></a><a id="1507" href="TruncationType.html#1507" class="Function">trunc-rec</a>
    <a id="1521" class="Symbol">:</a> <a id="1523" class="Symbol">{</a><a id="1524" href="TruncationType.html#1524" class="Bound">A</a> <a id="1526" class="Symbol">:</a> <a id="1528" href="Intro.html#1803" class="Function">Type</a> <a id="1533" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="1535" class="Symbol">}</a> <a id="1537" class="Symbol">{</a><a id="1538" href="TruncationType.html#1538" class="Bound">P</a> <a id="1540" class="Symbol">:</a> <a id="1542" href="Intro.html#1803" class="Function">Type</a> <a id="1547" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1549" class="Symbol">}</a>
    <a id="1555" class="Symbol">→</a> <a id="1557" href="HLevelTypes.html#1162" class="Function">isProp</a> <a id="1564" href="TruncationType.html#1538" class="Bound">P</a>
    <a id="1570" class="Symbol">→</a> <a id="1572" class="Symbol">(</a><a id="1573" href="TruncationType.html#1524" class="Bound">A</a> <a id="1575" class="Symbol">→</a> <a id="1577" href="TruncationType.html#1538" class="Bound">P</a><a id="1578" class="Symbol">)</a>
    <a id="1584" class="Comment">---------</a>
    <a id="1598" class="Symbol">→</a> <a id="1600" href="TruncationType.html#1157" class="Function Operator">∥</a> <a id="1602" href="TruncationType.html#1524" class="Bound">A</a> <a id="1604" href="TruncationType.html#1157" class="Function Operator">∥</a> <a id="1606" class="Symbol">→</a> <a id="1608" href="TruncationType.html#1538" class="Bound">P</a>

  <a id="1613" href="TruncationType.html#1507" class="Function">trunc-rec</a> <a id="1623" class="Symbol">_</a> <a id="1625" href="TruncationType.html#1625" class="Bound">f</a> <a id="1627" href="TruncationType.html#1112" class="InductiveConstructor Operator">!∣</a> <a id="1630" href="TruncationType.html#1630" class="Bound">x</a> <a id="1632" href="TruncationType.html#1112" class="InductiveConstructor Operator">∣</a> <a id="1634" class="Symbol">=</a> <a id="1636" href="TruncationType.html#1625" class="Bound">f</a> <a id="1638" href="TruncationType.html#1630" class="Bound">x</a>
</pre>

#### Truncation Lemmas

<pre class="Agda">
  <a id="truncated-is-prop"></a><a id="1691" href="TruncationType.html#1691" class="Function">truncated-is-prop</a>
    <a id="1713" class="Symbol">:</a> <a id="1715" class="Symbol">{</a><a id="1716" href="TruncationType.html#1716" class="Bound">A</a> <a id="1718" class="Symbol">:</a> <a id="1720" href="Intro.html#1803" class="Function">Type</a> <a id="1725" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="1726" class="Symbol">}</a>
    <a id="1732" class="Symbol">→</a> <a id="1734" href="HLevelTypes.html#1162" class="Function">isProp</a> <a id="1741" class="Symbol">(</a><a id="1742" href="TruncationType.html#1157" class="Function Operator">∥</a> <a id="1744" href="TruncationType.html#1716" class="Bound">A</a> <a id="1746" href="TruncationType.html#1157" class="Function Operator">∥</a><a id="1747" class="Symbol">)</a>
  <a id="1751" href="TruncationType.html#1691" class="Function">truncated-is-prop</a> <a id="1769" class="Symbol">=</a> <a id="1771" href="TruncationType.html#1412" class="Postulate">trunc</a>
</pre>

<pre class="Agda">
  <a id="prop-≃-truncated"></a><a id="1804" href="TruncationType.html#1804" class="Function">prop-≃-truncated</a>
    <a id="1825" class="Symbol">:</a> <a id="1827" class="Symbol">{</a> <a id="1829" href="TruncationType.html#1829" class="Bound">A</a> <a id="1831" class="Symbol">:</a> <a id="1833" href="Intro.html#1803" class="Function">Type</a> <a id="1838" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="1839" class="Symbol">}</a>
    <a id="1845" class="Symbol">→</a> <a id="1847" href="HLevelTypes.html#1162" class="Function">isProp</a> <a id="1854" href="TruncationType.html#1829" class="Bound">A</a>
    <a id="1860" class="Symbol">→</a> <a id="1862" href="TruncationType.html#1157" class="Function Operator">∥</a> <a id="1864" href="TruncationType.html#1829" class="Bound">A</a> <a id="1866" href="TruncationType.html#1157" class="Function Operator">∥</a> <a id="1868" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="1870" href="TruncationType.html#1829" class="Bound">A</a>

  <a id="1875" href="TruncationType.html#1804" class="Function">prop-≃-truncated</a> <a id="1892" href="TruncationType.html#1892" class="Bound">pA</a> <a id="1895" class="Symbol">=</a> <a id="1897" href="HLevelLemmas.html#8237" class="Function">lemma333</a> <a id="1906" href="TruncationType.html#1412" class="Postulate">trunc</a> <a id="1912" href="TruncationType.html#1892" class="Bound">pA</a> <a id="1915" class="Symbol">(</a><a id="1916" href="TruncationType.html#1507" class="Function">trunc-rec</a> <a id="1926" href="TruncationType.html#1892" class="Bound">pA</a> <a id="1929" href="BasicFunctions.html#375" class="Function">id</a><a id="1931" class="Symbol">)</a> <a id="1933" href="TruncationType.html#1260" class="Function Operator">∣_∣</a>

  <a id="trunc-≃"></a><a id="1940" href="TruncationType.html#1940" class="Function">trunc-≃</a> <a id="1948" class="Symbol">=</a> <a id="1950" href="TruncationType.html#1804" class="Function">prop-≃-truncated</a> 
</pre>  
