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
      <a id="1450" class="Symbol">→</a> <a id="1452" href="HLevelTypes.html#1185" class="Function">isProp</a> <a id="1459" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="1461" href="TruncationType.html#1432" class="Bound">A</a> <a id="1463" href="TruncationType.html#1162" class="Function Operator">∥</a>
</pre>

Recursion principle
<pre class="Agda">
  <a id="trunc-rec"></a><a id="1512" href="TruncationType.html#1512" class="Function">trunc-rec</a>
    <a id="1526" class="Symbol">:</a> <a id="1528" class="Symbol">{</a><a id="1529" href="TruncationType.html#1529" class="Bound">A</a> <a id="1531" class="Symbol">:</a> <a id="1533" href="Intro.html#1803" class="Function">Type</a> <a id="1538" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="1540" class="Symbol">}</a> <a id="1542" class="Symbol">{</a><a id="1543" href="TruncationType.html#1543" class="Bound">P</a> <a id="1545" class="Symbol">:</a> <a id="1547" href="Intro.html#1803" class="Function">Type</a> <a id="1552" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1554" class="Symbol">}</a>
    <a id="1560" class="Symbol">→</a> <a id="1562" href="HLevelTypes.html#1185" class="Function">isProp</a> <a id="1569" href="TruncationType.html#1543" class="Bound">P</a>
    <a id="1575" class="Symbol">→</a> <a id="1577" class="Symbol">(</a><a id="1578" href="TruncationType.html#1529" class="Bound">A</a> <a id="1580" class="Symbol">→</a> <a id="1582" href="TruncationType.html#1543" class="Bound">P</a><a id="1583" class="Symbol">)</a>
    <a id="1589" class="Comment">---------</a>
    <a id="1603" class="Symbol">→</a> <a id="1605" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="1607" href="TruncationType.html#1529" class="Bound">A</a> <a id="1609" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="1611" class="Symbol">→</a> <a id="1613" href="TruncationType.html#1543" class="Bound">P</a>

  <a id="1618" href="TruncationType.html#1512" class="Function">trunc-rec</a> <a id="1628" class="Symbol">_</a> <a id="1630" href="TruncationType.html#1630" class="Bound">f</a> <a id="1632" href="TruncationType.html#1117" class="InductiveConstructor Operator">!∣</a> <a id="1635" href="TruncationType.html#1635" class="Bound">x</a> <a id="1637" href="TruncationType.html#1117" class="InductiveConstructor Operator">∣</a> <a id="1639" class="Symbol">=</a> <a id="1641" href="TruncationType.html#1630" class="Bound">f</a> <a id="1643" href="TruncationType.html#1635" class="Bound">x</a>

  <a id="trunc-elim"></a><a id="1648" href="TruncationType.html#1648" class="Function">trunc-elim</a> <a id="1659" class="Symbol">=</a> <a id="1661" href="TruncationType.html#1512" class="Function">trunc-rec</a>
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
  <a id="truncated-is-prop"></a><a id="2345" href="TruncationType.html#2345" class="Function">truncated-is-prop</a>
    <a id="2367" class="Symbol">:</a> <a id="2369" class="Symbol">{</a><a id="2370" href="TruncationType.html#2370" class="Bound">A</a> <a id="2372" class="Symbol">:</a> <a id="2374" href="Intro.html#1803" class="Function">Type</a> <a id="2379" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="2380" class="Symbol">}</a>
    <a id="2386" class="Symbol">→</a> <a id="2388" href="HLevelTypes.html#1185" class="Function">isProp</a> <a id="2395" class="Symbol">(</a><a id="2396" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="2398" href="TruncationType.html#2370" class="Bound">A</a> <a id="2400" href="TruncationType.html#1162" class="Function Operator">∥</a><a id="2401" class="Symbol">)</a>
  <a id="2405" href="TruncationType.html#2345" class="Function">truncated-is-prop</a> <a id="2423" class="Symbol">=</a> <a id="2425" href="TruncationType.html#1417" class="Postulate">trunc</a>
</pre>

<pre class="Agda">
  <a id="prop-≃-truncated"></a><a id="2458" href="TruncationType.html#2458" class="Function">prop-≃-truncated</a>
    <a id="2479" class="Symbol">:</a> <a id="2481" class="Symbol">{</a> <a id="2483" href="TruncationType.html#2483" class="Bound">A</a> <a id="2485" class="Symbol">:</a> <a id="2487" href="Intro.html#1803" class="Function">Type</a> <a id="2492" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="2493" class="Symbol">}</a>
    <a id="2499" class="Symbol">→</a> <a id="2501" href="HLevelTypes.html#1185" class="Function">isProp</a> <a id="2508" href="TruncationType.html#2483" class="Bound">A</a>
    <a id="2514" class="Symbol">→</a> <a id="2516" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="2518" href="TruncationType.html#2483" class="Bound">A</a> <a id="2520" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="2522" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="2524" href="TruncationType.html#2483" class="Bound">A</a>

  <a id="2529" href="TruncationType.html#2458" class="Function">prop-≃-truncated</a> <a id="2546" href="TruncationType.html#2546" class="Bound">pA</a> <a id="2549" class="Symbol">=</a> <a id="2551" href="HLevelLemmas.html#8237" class="Function">lemma333</a> <a id="2560" href="TruncationType.html#1417" class="Postulate">trunc</a> <a id="2566" href="TruncationType.html#2546" class="Bound">pA</a> <a id="2569" class="Symbol">(</a><a id="2570" href="TruncationType.html#1512" class="Function">trunc-rec</a> <a id="2580" href="TruncationType.html#2546" class="Bound">pA</a> <a id="2583" href="BasicFunctions.html#375" class="Function">id</a><a id="2585" class="Symbol">)</a> <a id="2587" href="TruncationType.html#1265" class="Function Operator">∣_∣</a>

  <a id="trunc-≃"></a><a id="2594" href="TruncationType.html#2594" class="Function">trunc-≃</a> <a id="2602" class="Symbol">=</a> <a id="2604" href="TruncationType.html#2458" class="Function">prop-≃-truncated</a> 
</pre>  

A relation between double implication and the truncation of a type:

<pre class="Agda">
  <a id="2720" class="Keyword">postulate</a>
   <a id="trunc-⇔-¬¬"></a><a id="2733" href="TruncationType.html#2733" class="Postulate">trunc-⇔-¬¬</a>
     <a id="2749" class="Symbol">:</a> <a id="2751" class="Symbol">∀</a> <a id="2753" class="Symbol">{</a><a id="2754" href="TruncationType.html#2754" class="Bound">ℓ</a><a id="2755" class="Symbol">}</a> <a id="2757" class="Symbol">{</a><a id="2758" href="TruncationType.html#2758" class="Bound">X</a> <a id="2760" class="Symbol">:</a> <a id="2762" href="Intro.html#1803" class="Function">Type</a> <a id="2767" href="TruncationType.html#2754" class="Bound">ℓ</a><a id="2768" class="Symbol">}</a>
     <a id="2775" class="Symbol">→</a> <a id="2777" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="2779" href="TruncationType.html#2758" class="Bound">X</a> <a id="2781" href="TruncationType.html#1162" class="Function Operator">∥</a> <a id="2783" href="BasicTypes.html#3063" class="Function Operator">⇔</a> <a id="2785" class="Symbol">(</a><a id="2786" href="BasicTypes.html#885" class="Function">¬</a> <a id="2788" class="Symbol">(</a><a id="2789" href="BasicTypes.html#885" class="Function">¬</a> <a id="2791" href="TruncationType.html#2758" class="Bound">X</a><a id="2792" class="Symbol">))</a>
</pre>
