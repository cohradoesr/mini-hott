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
solution to the problem of mapping $X$ to a proposition $P$:

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
<a id="974" class="Keyword">module</a>
  <a id="983" href="TruncationType.html" class="Module">TruncationType</a>
  <a id="1000" class="Keyword">where</a>
</pre>

<pre class="Agda">
  <a id="1033" class="Keyword">private</a>
    <a id="1045" class="Keyword">data</a>
      <a id="!∥_∥"></a><a id="1056" href="TruncationType.html#1056" class="Datatype Operator">!∥_∥</a> <a id="1061" class="Symbol">{</a><a id="1062" href="TruncationType.html#1062" class="Bound">ℓ</a><a id="1063" class="Symbol">}</a> <a id="1065" class="Symbol">(</a><a id="1066" href="TruncationType.html#1066" class="Bound">A</a> <a id="1068" class="Symbol">:</a> <a id="1070" href="Intro.html#1803" class="Function">Type</a> <a id="1075" href="TruncationType.html#1062" class="Bound">ℓ</a><a id="1076" class="Symbol">)</a>
        <a id="1086" class="Symbol">:</a> <a id="1088" href="Intro.html#1803" class="Function">Type</a> <a id="1093" href="TruncationType.html#1062" class="Bound">ℓ</a>
        <a id="1103" class="Keyword">where</a>
        <a id="!∥_∥.!∣_∣"></a><a id="1117" href="TruncationType.html#1117" class="InductiveConstructor Operator">!∣_∣</a> <a id="1122" class="Symbol">:</a> <a id="1124" href="TruncationType.html#1066" class="Bound">A</a> <a id="1126" class="Symbol">→</a> <a id="1128" href="TruncationType.html#1056" class="Datatype Operator">!∥</a> <a id="1131" href="TruncationType.html#1066" class="Bound">A</a> <a id="1133" href="TruncationType.html#1056" class="Datatype Operator">∥</a>
</pre>

<pre class="Agda">
  <a id="∥_∥"></a><a id="1162" href="TruncationType.html#1162" class="Function Operator">∥_∥</a>
    <a id="1170" class="Symbol">:</a>  <a id="1173" class="Symbol">(</a><a id="1174" href="TruncationType.html#1174" class="Bound">A</a> <a id="1176" class="Symbol">:</a> <a id="1178" href="Intro.html#1803" class="Function">Type</a> <a id="1183" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="1184" class="Symbol">)</a>
    <a id="1190" class="Symbol">→</a> <a id="1192" href="Intro.html#1803" class="Function">Type</a> <a id="1197" href="Intro.html#2243" class="Generalizable">ℓ</a>

  <a id="1202" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="1204" href="TruncationType.html#1204" class="Bound">A</a> <a id="1206" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="1208" class="Symbol">=</a> <a id="1210" href="TruncationType.html#1056" class="Datatype Operator">!∥</a> <a id="1213" href="TruncationType.html#1204" class="Bound">A</a> <a id="1215" href="TruncationType.html#1056" class="Datatype Operator">∥</a>

  <a id="prop-trunc"></a><a id="1220" href="TruncationType.html#1220" class="Function">prop-trunc</a> <a id="1231" class="Symbol">=</a> <a id="1233" href="TruncationType.html#1162" class="Function Operator">∥_∥</a> 
</pre>

<pre class="Agda">
  <a id="∣_∣"></a><a id="1265" href="TruncationType.html#1265" class="Function Operator">∣_∣</a>
    <a id="1273" class="Symbol">:</a> <a id="1275" class="Symbol">{</a><a id="1276" href="TruncationType.html#1276" class="Bound">X</a> <a id="1278" class="Symbol">:</a> <a id="1280" href="Intro.html#1803" class="Function">Type</a> <a id="1285" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="1286" class="Symbol">}</a>
    <a id="1292" class="Symbol">→</a> <a id="1294" href="TruncationType.html#1276" class="Bound">X</a>
    <a id="1300" class="Symbol">→</a> <a id="1302" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="1304" href="TruncationType.html#1276" class="Bound">X</a> <a id="1306" href="TruncationType.html#1162" class="Function Operator">∥</a>

  <a id="1311" href="TruncationType.html#1265" class="Function Operator">∣</a> <a id="1313" href="TruncationType.html#1313" class="Bound">x</a> <a id="1315" href="TruncationType.html#1265" class="Function Operator">∣</a> <a id="1317" class="Symbol">=</a> <a id="1319" href="TruncationType.html#1117" class="InductiveConstructor Operator">!∣</a> <a id="1322" href="TruncationType.html#1313" class="Bound">x</a> <a id="1324" href="TruncationType.html#1117" class="InductiveConstructor Operator">∣</a>
</pre>

Any two elements of the truncated type are equal

<pre class="Agda">
  <a id="1403" class="Keyword">postulate</a>
    <a id="trunc"></a><a id="1417" href="TruncationType.html#1417" class="Postulate">trunc</a>
      <a id="1429" class="Symbol">:</a> <a id="1431" class="Symbol">{</a><a id="1432" href="TruncationType.html#1432" class="Bound">A</a> <a id="1434" class="Symbol">:</a> <a id="1436" href="Intro.html#1803" class="Function">Type</a> <a id="1441" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="1442" class="Symbol">}</a>
      <a id="1450" class="Symbol">→</a> <a id="1452" href="HLevelTypes.html#1162" class="Function">isProp</a> <a id="1459" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="1461" href="TruncationType.html#1432" class="Bound">A</a> <a id="1463" href="TruncationType.html#1162" class="Function Operator">∥</a>
</pre>

Recursion principle
<pre class="Agda">
  <a id="trunc-rec"></a><a id="1512" href="TruncationType.html#1512" class="Function">trunc-rec</a>
    <a id="1526" class="Symbol">:</a> <a id="1528" class="Symbol">{</a><a id="1529" href="TruncationType.html#1529" class="Bound">A</a> <a id="1531" class="Symbol">:</a> <a id="1533" href="Intro.html#1803" class="Function">Type</a> <a id="1538" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="1540" class="Symbol">}</a> <a id="1542" class="Symbol">{</a><a id="1543" href="TruncationType.html#1543" class="Bound">P</a> <a id="1545" class="Symbol">:</a> <a id="1547" href="Intro.html#1803" class="Function">Type</a> <a id="1552" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1554" class="Symbol">}</a>
    <a id="1560" class="Symbol">→</a> <a id="1562" href="HLevelTypes.html#1162" class="Function">isProp</a> <a id="1569" href="TruncationType.html#1543" class="Bound">P</a>
    <a id="1575" class="Symbol">→</a> <a id="1577" class="Symbol">(</a><a id="1578" href="TruncationType.html#1529" class="Bound">A</a> <a id="1580" class="Symbol">→</a> <a id="1582" href="TruncationType.html#1543" class="Bound">P</a><a id="1583" class="Symbol">)</a>
    <a id="1589" class="Comment">---------</a>
    <a id="1603" class="Symbol">→</a> <a id="1605" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="1607" href="TruncationType.html#1529" class="Bound">A</a> <a id="1609" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="1611" class="Symbol">→</a> <a id="1613" href="TruncationType.html#1543" class="Bound">P</a>

  <a id="1618" href="TruncationType.html#1512" class="Function">trunc-rec</a> <a id="1628" class="Symbol">_</a> <a id="1630" href="TruncationType.html#1630" class="Bound">f</a> <a id="1632" href="TruncationType.html#1117" class="InductiveConstructor Operator">!∣</a> <a id="1635" href="TruncationType.html#1635" class="Bound">x</a> <a id="1637" href="TruncationType.html#1117" class="InductiveConstructor Operator">∣</a> <a id="1639" class="Symbol">=</a> <a id="1641" href="TruncationType.html#1630" class="Bound">f</a> <a id="1643" href="TruncationType.html#1635" class="Bound">x</a>
</pre>

#### Truncation Lemmas

<pre class="Agda">
  <a id="truncated-is-prop"></a><a id="1696" href="TruncationType.html#1696" class="Function">truncated-is-prop</a>
    <a id="1718" class="Symbol">:</a> <a id="1720" class="Symbol">{</a><a id="1721" href="TruncationType.html#1721" class="Bound">A</a> <a id="1723" class="Symbol">:</a> <a id="1725" href="Intro.html#1803" class="Function">Type</a> <a id="1730" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="1731" class="Symbol">}</a>
    <a id="1737" class="Symbol">→</a> <a id="1739" href="HLevelTypes.html#1162" class="Function">isProp</a> <a id="1746" class="Symbol">(</a><a id="1747" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="1749" href="TruncationType.html#1721" class="Bound">A</a> <a id="1751" href="TruncationType.html#1162" class="Function Operator">∥</a><a id="1752" class="Symbol">)</a>
  <a id="1756" href="TruncationType.html#1696" class="Function">truncated-is-prop</a> <a id="1774" class="Symbol">=</a> <a id="1776" href="TruncationType.html#1417" class="Postulate">trunc</a>
</pre>

<pre class="Agda">
  <a id="prop-≃-truncated"></a><a id="1809" href="TruncationType.html#1809" class="Function">prop-≃-truncated</a>
    <a id="1830" class="Symbol">:</a> <a id="1832" class="Symbol">{</a> <a id="1834" href="TruncationType.html#1834" class="Bound">A</a> <a id="1836" class="Symbol">:</a> <a id="1838" href="Intro.html#1803" class="Function">Type</a> <a id="1843" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="1844" class="Symbol">}</a>
    <a id="1850" class="Symbol">→</a> <a id="1852" href="HLevelTypes.html#1162" class="Function">isProp</a> <a id="1859" href="TruncationType.html#1834" class="Bound">A</a>
    <a id="1865" class="Symbol">→</a> <a id="1867" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="1869" href="TruncationType.html#1834" class="Bound">A</a> <a id="1871" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="1873" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="1875" href="TruncationType.html#1834" class="Bound">A</a>

  <a id="1880" href="TruncationType.html#1809" class="Function">prop-≃-truncated</a> <a id="1897" href="TruncationType.html#1897" class="Bound">pA</a> <a id="1900" class="Symbol">=</a> <a id="1902" href="HLevelLemmas.html#8237" class="Function">lemma333</a> <a id="1911" href="TruncationType.html#1417" class="Postulate">trunc</a> <a id="1917" href="TruncationType.html#1897" class="Bound">pA</a> <a id="1920" class="Symbol">(</a><a id="1921" href="TruncationType.html#1512" class="Function">trunc-rec</a> <a id="1931" href="TruncationType.html#1897" class="Bound">pA</a> <a id="1934" href="BasicFunctions.html#375" class="Function">id</a><a id="1936" class="Symbol">)</a> <a id="1938" href="TruncationType.html#1265" class="Function Operator">∣_∣</a>

  <a id="trunc-≃"></a><a id="1945" href="TruncationType.html#1945" class="Function">trunc-≃</a> <a id="1953" class="Symbol">=</a> <a id="1955" href="TruncationType.html#1809" class="Function">prop-≃-truncated</a> 
</pre>  

A relation between double implication and the truncation of a type:

<pre class="Agda">
  <a id="2071" class="Keyword">postulate</a>
   <a id="trunc-⇔-¬¬"></a><a id="2084" href="TruncationType.html#2084" class="Postulate">trunc-⇔-¬¬</a>
     <a id="2100" class="Symbol">:</a> <a id="2102" class="Symbol">∀</a> <a id="2104" class="Symbol">{</a><a id="2105" href="TruncationType.html#2105" class="Bound">ℓ</a><a id="2106" class="Symbol">}</a> <a id="2108" class="Symbol">{</a><a id="2109" href="TruncationType.html#2109" class="Bound">X</a> <a id="2111" class="Symbol">:</a> <a id="2113" href="Intro.html#1803" class="Function">Type</a> <a id="2118" href="TruncationType.html#2105" class="Bound">ℓ</a><a id="2119" class="Symbol">}</a>
     <a id="2126" class="Symbol">→</a> <a id="2128" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="2130" href="TruncationType.html#2109" class="Bound">X</a> <a id="2132" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="2134" href="BasicTypes.html#3063" class="Function Operator">⇔</a> <a id="2136" class="Symbol">(</a><a id="2137" href="BasicTypes.html#885" class="Function">¬</a> <a id="2139" class="Symbol">(</a><a id="2140" href="BasicTypes.html#885" class="Function">¬</a> <a id="2142" href="TruncationType.html#2109" class="Bound">X</a><a id="2143" class="Symbol">))</a>
</pre>
