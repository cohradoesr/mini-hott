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
      <a id="!∥_∥"></a><a id="1056" href="TruncationType.html#1056" class="Datatype Operator">!∥_∥</a> <a id="1061" class="Symbol">{</a><a id="1062" href="TruncationType.html#1062" class="Bound">ℓ</a><a id="1063" class="Symbol">}</a> <a id="1065" class="Symbol">(</a><a id="1066" href="TruncationType.html#1066" class="Bound">A</a> <a id="1068" class="Symbol">:</a> <a id="1070" href="Intro.html#2766" class="Function">Type</a> <a id="1075" href="TruncationType.html#1062" class="Bound">ℓ</a><a id="1076" class="Symbol">)</a>
        <a id="1086" class="Symbol">:</a> <a id="1088" href="Intro.html#2766" class="Function">Type</a> <a id="1093" href="TruncationType.html#1062" class="Bound">ℓ</a>
        <a id="1103" class="Keyword">where</a>
        <a id="!∥_∥.!∣_∣"></a><a id="1117" href="TruncationType.html#1117" class="InductiveConstructor Operator">!∣_∣</a> <a id="1122" class="Symbol">:</a> <a id="1124" href="TruncationType.html#1066" class="Bound">A</a> <a id="1126" class="Symbol">→</a> <a id="1128" href="TruncationType.html#1056" class="Datatype Operator">!∥</a> <a id="1131" href="TruncationType.html#1066" class="Bound">A</a> <a id="1133" href="TruncationType.html#1056" class="Datatype Operator">∥</a>
</pre>

<pre class="Agda">
  <a id="∥_∥"></a><a id="1162" href="TruncationType.html#1162" class="Function Operator">∥_∥</a>
    <a id="1170" class="Symbol">:</a>  <a id="1173" class="Symbol">(</a><a id="1174" href="TruncationType.html#1174" class="Bound">A</a> <a id="1176" class="Symbol">:</a> <a id="1178" href="Intro.html#2766" class="Function">Type</a> <a id="1183" href="Intro.html#3346" class="Generalizable">ℓ</a><a id="1184" class="Symbol">)</a>
    <a id="1190" class="Symbol">→</a> <a id="1192" href="Intro.html#2766" class="Function">Type</a> <a id="1197" href="Intro.html#3346" class="Generalizable">ℓ</a>

  <a id="1202" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="1204" href="TruncationType.html#1204" class="Bound">A</a> <a id="1206" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="1208" class="Symbol">=</a> <a id="1210" href="TruncationType.html#1056" class="Datatype Operator">!∥</a> <a id="1213" href="TruncationType.html#1204" class="Bound">A</a> <a id="1215" href="TruncationType.html#1056" class="Datatype Operator">∥</a>

  <a id="prop-trunc"></a><a id="1220" href="TruncationType.html#1220" class="Function">prop-trunc</a> <a id="1231" class="Symbol">=</a> <a id="1233" href="TruncationType.html#1162" class="Function Operator">∥_∥</a> 
</pre>

<pre class="Agda">
  <a id="∣_∣"></a><a id="1265" href="TruncationType.html#1265" class="Function Operator">∣_∣</a>
    <a id="1273" class="Symbol">:</a> <a id="1275" class="Symbol">{</a><a id="1276" href="TruncationType.html#1276" class="Bound">X</a> <a id="1278" class="Symbol">:</a> <a id="1280" href="Intro.html#2766" class="Function">Type</a> <a id="1285" href="Intro.html#3346" class="Generalizable">ℓ</a><a id="1286" class="Symbol">}</a>
    <a id="1292" class="Symbol">→</a> <a id="1294" href="TruncationType.html#1276" class="Bound">X</a>
    <a id="1300" class="Symbol">→</a> <a id="1302" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="1304" href="TruncationType.html#1276" class="Bound">X</a> <a id="1306" href="TruncationType.html#1162" class="Function Operator">∥</a>

  <a id="1311" href="TruncationType.html#1265" class="Function Operator">∣</a> <a id="1313" href="TruncationType.html#1313" class="Bound">x</a> <a id="1315" href="TruncationType.html#1265" class="Function Operator">∣</a> <a id="1317" class="Symbol">=</a> <a id="1319" href="TruncationType.html#1117" class="InductiveConstructor Operator">!∣</a> <a id="1322" href="TruncationType.html#1313" class="Bound">x</a> <a id="1324" href="TruncationType.html#1117" class="InductiveConstructor Operator">∣</a>

  <a id="∥∥-intro"></a><a id="1329" href="TruncationType.html#1329" class="Function">∥∥-intro</a> <a id="1338" class="Symbol">=</a> <a id="1340" href="TruncationType.html#1265" class="Function Operator">∣_∣</a> 
</pre>

Any two elements of the truncated type are equal

<pre class="Agda">
  <a id="1422" class="Keyword">postulate</a>
    <a id="trunc"></a><a id="1436" href="TruncationType.html#1436" class="Postulate">trunc</a>
      <a id="1448" class="Symbol">:</a> <a id="1450" class="Symbol">{</a><a id="1451" href="TruncationType.html#1451" class="Bound">A</a> <a id="1453" class="Symbol">:</a> <a id="1455" href="Intro.html#2766" class="Function">Type</a> <a id="1460" href="Intro.html#3346" class="Generalizable">ℓ</a><a id="1461" class="Symbol">}</a>
      <a id="1469" class="Symbol">→</a> <a id="1471" href="HLevelTypes.html#1185" class="Function">isProp</a> <a id="1478" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="1480" href="TruncationType.html#1451" class="Bound">A</a> <a id="1482" href="TruncationType.html#1162" class="Function Operator">∥</a>
</pre>

Recursion principle
<pre class="Agda">
  <a id="trunc-rec"></a><a id="1531" href="TruncationType.html#1531" class="Function">trunc-rec</a>
    <a id="1545" class="Symbol">:</a> <a id="1547" class="Symbol">{</a><a id="1548" href="TruncationType.html#1548" class="Bound">A</a> <a id="1550" class="Symbol">:</a> <a id="1552" href="Intro.html#2766" class="Function">Type</a> <a id="1557" href="Intro.html#3348" class="Generalizable">ℓᵢ</a><a id="1559" class="Symbol">}</a> <a id="1561" class="Symbol">{</a><a id="1562" href="TruncationType.html#1562" class="Bound">P</a> <a id="1564" class="Symbol">:</a> <a id="1566" href="Intro.html#2766" class="Function">Type</a> <a id="1571" href="Intro.html#3351" class="Generalizable">ℓⱼ</a><a id="1573" class="Symbol">}</a>
    <a id="1579" class="Symbol">→</a> <a id="1581" href="HLevelTypes.html#1185" class="Function">isProp</a> <a id="1588" href="TruncationType.html#1562" class="Bound">P</a>
    <a id="1594" class="Symbol">→</a> <a id="1596" class="Symbol">(</a><a id="1597" href="TruncationType.html#1548" class="Bound">A</a> <a id="1599" class="Symbol">→</a> <a id="1601" href="TruncationType.html#1562" class="Bound">P</a><a id="1602" class="Symbol">)</a>
    <a id="1608" class="Comment">---------</a>
    <a id="1622" class="Symbol">→</a> <a id="1624" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="1626" href="TruncationType.html#1548" class="Bound">A</a> <a id="1628" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="1630" class="Symbol">→</a> <a id="1632" href="TruncationType.html#1562" class="Bound">P</a>

  <a id="1637" href="TruncationType.html#1531" class="Function">trunc-rec</a> <a id="1647" class="Symbol">_</a> <a id="1649" href="TruncationType.html#1649" class="Bound">f</a> <a id="1651" href="TruncationType.html#1117" class="InductiveConstructor Operator">!∣</a> <a id="1654" href="TruncationType.html#1654" class="Bound">x</a> <a id="1656" href="TruncationType.html#1117" class="InductiveConstructor Operator">∣</a> <a id="1658" class="Symbol">=</a> <a id="1660" href="TruncationType.html#1649" class="Bound">f</a> <a id="1662" href="TruncationType.html#1654" class="Bound">x</a>

  <a id="trunc-elim"></a><a id="1667" href="TruncationType.html#1667" class="Function">trunc-elim</a> <a id="1678" class="Symbol">=</a> <a id="1680" href="TruncationType.html#1531" class="Function">trunc-rec</a>
  <a id="∥∥-rec"></a><a id="1692" href="TruncationType.html#1692" class="Function">∥∥-rec</a>     <a id="1703" class="Symbol">=</a> <a id="1705" href="TruncationType.html#1531" class="Function">trunc-rec</a>
</pre>

There exists the possibility to charactherize, propositional truncation
using an impredicative approach, which means, our definition will lay on
a larger universe as follows on the right-hand side.

$$ ∥ X ∥ ⇔ ∏ (P : \mathsf{Type} ), \mathsf{isProp}(P) → (X → P) → P$$

Remarks:

- rhs is a propositon assuming funext
- this equation tells us an important relation (a pattern) between
the type (in this case, prop-trunc) and its elimination principle (trunc-rec)
- *Impredicative* means in this context: "it is defined in terms of quantification over a family which the thing we are defining is a member of." (Gylterud).


#### Truncation Lemmas

<pre class="Agda">
  <a id="truncated-is-prop"></a><a id="2389" href="TruncationType.html#2389" class="Function">truncated-is-prop</a>
    <a id="2411" class="Symbol">:</a> <a id="2413" class="Symbol">{</a><a id="2414" href="TruncationType.html#2414" class="Bound">A</a> <a id="2416" class="Symbol">:</a> <a id="2418" href="Intro.html#2766" class="Function">Type</a> <a id="2423" href="Intro.html#3346" class="Generalizable">ℓ</a><a id="2424" class="Symbol">}</a>
    <a id="2430" class="Symbol">→</a> <a id="2432" href="HLevelTypes.html#1185" class="Function">isProp</a> <a id="2439" class="Symbol">(</a><a id="2440" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="2442" href="TruncationType.html#2414" class="Bound">A</a> <a id="2444" href="TruncationType.html#1162" class="Function Operator">∥</a><a id="2445" class="Symbol">)</a>
  <a id="2449" href="TruncationType.html#2389" class="Function">truncated-is-prop</a> <a id="2467" class="Symbol">=</a> <a id="2469" href="TruncationType.html#1436" class="Postulate">trunc</a>

  <a id="∥∥-is-a-prop"></a><a id="2478" href="TruncationType.html#2478" class="Function">∥∥-is-a-prop</a> <a id="2491" class="Symbol">=</a> <a id="2493" href="TruncationType.html#2389" class="Function">truncated-is-prop</a>
</pre>

<pre class="Agda">
  <a id="prop-≃-truncated"></a><a id="2538" href="TruncationType.html#2538" class="Function">prop-≃-truncated</a>
    <a id="2559" class="Symbol">:</a> <a id="2561" class="Symbol">{</a> <a id="2563" href="TruncationType.html#2563" class="Bound">A</a> <a id="2565" class="Symbol">:</a> <a id="2567" href="Intro.html#2766" class="Function">Type</a> <a id="2572" href="Intro.html#3346" class="Generalizable">ℓ</a><a id="2573" class="Symbol">}</a>
    <a id="2579" class="Symbol">→</a> <a id="2581" href="HLevelTypes.html#1185" class="Function">isProp</a> <a id="2588" href="TruncationType.html#2563" class="Bound">A</a>
    <a id="2594" class="Symbol">→</a> <a id="2596" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="2598" href="TruncationType.html#2563" class="Bound">A</a> <a id="2600" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="2602" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="2604" href="TruncationType.html#2563" class="Bound">A</a>

  <a id="2609" href="TruncationType.html#2538" class="Function">prop-≃-truncated</a> <a id="2626" href="TruncationType.html#2626" class="Bound">pA</a> <a id="2629" class="Symbol">=</a> <a id="2631" href="HLevelLemmas.html#8541" class="Function">lemma333</a> <a id="2640" href="TruncationType.html#1436" class="Postulate">trunc</a> <a id="2646" href="TruncationType.html#2626" class="Bound">pA</a> <a id="2649" class="Symbol">(</a><a id="2650" href="TruncationType.html#1531" class="Function">trunc-rec</a> <a id="2660" href="TruncationType.html#2626" class="Bound">pA</a> <a id="2663" href="BasicFunctions.html#375" class="Function">id</a><a id="2665" class="Symbol">)</a> <a id="2667" href="TruncationType.html#1265" class="Function Operator">∣_∣</a>

  <a id="trunc-≃"></a><a id="2674" href="TruncationType.html#2674" class="Function">trunc-≃</a> <a id="2682" class="Symbol">=</a> <a id="2684" href="TruncationType.html#2538" class="Function">prop-≃-truncated</a> 
</pre>  

A relation between double implication and the truncation of a type:

<pre class="Agda">
  <a id="2800" class="Keyword">postulate</a>
   <a id="trunc-⇔-¬¬"></a><a id="2813" href="TruncationType.html#2813" class="Postulate">trunc-⇔-¬¬</a>
     <a id="2829" class="Symbol">:</a> <a id="2831" class="Symbol">∀</a> <a id="2833" class="Symbol">{</a><a id="2834" href="TruncationType.html#2834" class="Bound">ℓ</a><a id="2835" class="Symbol">}</a> <a id="2837" class="Symbol">{</a><a id="2838" href="TruncationType.html#2838" class="Bound">X</a> <a id="2840" class="Symbol">:</a> <a id="2842" href="Intro.html#2766" class="Function">Type</a> <a id="2847" href="TruncationType.html#2834" class="Bound">ℓ</a><a id="2848" class="Symbol">}</a>
     <a id="2855" class="Symbol">→</a> <a id="2857" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="2859" href="TruncationType.html#2838" class="Bound">X</a> <a id="2861" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="2863" href="BasicTypes.html#3063" class="Function Operator">⇔</a> <a id="2865" class="Symbol">(</a><a id="2866" href="BasicTypes.html#885" class="Function">¬</a> <a id="2868" class="Symbol">(</a><a id="2869" href="BasicTypes.html#885" class="Function">¬</a> <a id="2871" href="TruncationType.html#2838" class="Bound">X</a><a id="2872" class="Symbol">))</a>
</pre>
