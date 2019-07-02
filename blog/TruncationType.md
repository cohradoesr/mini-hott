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

Seeing at the moment:
https://hub.darcs.net/gylterud/agda-premises/browse/Premises/Truncation.agda

<pre class="Agda">
<a id="633" class="Keyword">module</a>
  <a id="642" href="TruncationType.html" class="Module">TruncationType</a>
  <a id="659" class="Keyword">where</a>
</pre>

<pre class="Agda">
  <a id="692" class="Keyword">private</a>
    <a id="704" class="Keyword">data</a>
      <a id="!∥_∥"></a><a id="715" href="TruncationType.html#715" class="Datatype Operator">!∥_∥</a> <a id="720" class="Symbol">{</a><a id="721" href="TruncationType.html#721" class="Bound">ℓ</a><a id="722" class="Symbol">}</a> <a id="724" class="Symbol">(</a><a id="725" href="TruncationType.html#725" class="Bound">A</a> <a id="727" class="Symbol">:</a> <a id="729" href="Intro.html#1803" class="Function">Type</a> <a id="734" href="TruncationType.html#721" class="Bound">ℓ</a><a id="735" class="Symbol">)</a>
        <a id="745" class="Symbol">:</a> <a id="747" href="Intro.html#1803" class="Function">Type</a> <a id="752" href="TruncationType.html#721" class="Bound">ℓ</a>
        <a id="762" class="Keyword">where</a>
        <a id="!∥_∥.!∣_∣"></a><a id="776" href="TruncationType.html#776" class="InductiveConstructor Operator">!∣_∣</a> <a id="781" class="Symbol">:</a> <a id="783" href="TruncationType.html#725" class="Bound">A</a> <a id="785" class="Symbol">→</a> <a id="787" href="TruncationType.html#715" class="Datatype Operator">!∥</a> <a id="790" href="TruncationType.html#725" class="Bound">A</a> <a id="792" href="TruncationType.html#715" class="Datatype Operator">∥</a>
</pre>

<pre class="Agda">
  <a id="∥_∥"></a><a id="821" href="TruncationType.html#821" class="Function Operator">∥_∥</a>
    <a id="829" class="Symbol">:</a>  <a id="832" class="Symbol">(</a><a id="833" href="TruncationType.html#833" class="Bound">A</a> <a id="835" class="Symbol">:</a> <a id="837" href="Intro.html#1803" class="Function">Type</a> <a id="842" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="843" class="Symbol">)</a>
    <a id="849" class="Symbol">→</a> <a id="851" href="Intro.html#1803" class="Function">Type</a> <a id="856" href="Intro.html#2243" class="Generalizable">ℓ</a>

  <a id="861" href="TruncationType.html#821" class="Function Operator">∥</a> <a id="863" href="TruncationType.html#863" class="Bound">A</a> <a id="865" href="TruncationType.html#821" class="Function Operator">∥</a> <a id="867" class="Symbol">=</a> <a id="869" href="TruncationType.html#715" class="Datatype Operator">!∥</a> <a id="872" href="TruncationType.html#863" class="Bound">A</a> <a id="874" href="TruncationType.html#715" class="Datatype Operator">∥</a>

  <a id="prop-trunc"></a><a id="879" href="TruncationType.html#879" class="Function">prop-trunc</a> <a id="890" class="Symbol">=</a> <a id="892" href="TruncationType.html#821" class="Function Operator">∥_∥</a> 
</pre>

<pre class="Agda">
  <a id="∣_∣"></a><a id="924" href="TruncationType.html#924" class="Function Operator">∣_∣</a>
    <a id="932" class="Symbol">:</a> <a id="934" class="Symbol">{</a><a id="935" href="TruncationType.html#935" class="Bound">X</a> <a id="937" class="Symbol">:</a> <a id="939" href="Intro.html#1803" class="Function">Type</a> <a id="944" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="945" class="Symbol">}</a>
    <a id="951" class="Symbol">→</a> <a id="953" href="TruncationType.html#935" class="Bound">X</a>
    <a id="959" class="Symbol">→</a> <a id="961" href="TruncationType.html#821" class="Function Operator">∥</a> <a id="963" href="TruncationType.html#935" class="Bound">X</a> <a id="965" href="TruncationType.html#821" class="Function Operator">∥</a>

  <a id="970" href="TruncationType.html#924" class="Function Operator">∣</a> <a id="972" href="TruncationType.html#972" class="Bound">x</a> <a id="974" href="TruncationType.html#924" class="Function Operator">∣</a> <a id="976" class="Symbol">=</a> <a id="978" href="TruncationType.html#776" class="InductiveConstructor Operator">!∣</a> <a id="981" href="TruncationType.html#972" class="Bound">x</a> <a id="983" href="TruncationType.html#776" class="InductiveConstructor Operator">∣</a>
</pre>

Any two elements of the truncated type are equal

<pre class="Agda">
  <a id="1062" class="Keyword">postulate</a>
    <a id="trunc"></a><a id="1076" href="TruncationType.html#1076" class="Postulate">trunc</a>
      <a id="1088" class="Symbol">:</a> <a id="1090" class="Symbol">{</a><a id="1091" href="TruncationType.html#1091" class="Bound">A</a> <a id="1093" class="Symbol">:</a> <a id="1095" href="Intro.html#1803" class="Function">Type</a> <a id="1100" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="1101" class="Symbol">}</a>
      <a id="1109" class="Symbol">→</a> <a id="1111" href="HLevelTypes.html#1162" class="Function">isProp</a> <a id="1118" href="TruncationType.html#821" class="Function Operator">∥</a> <a id="1120" href="TruncationType.html#1091" class="Bound">A</a> <a id="1122" href="TruncationType.html#821" class="Function Operator">∥</a>
</pre>

Recursion principle
<pre class="Agda">
  <a id="trunc-rec"></a><a id="1171" href="TruncationType.html#1171" class="Function">trunc-rec</a>
    <a id="1185" class="Symbol">:</a> <a id="1187" class="Symbol">{</a><a id="1188" href="TruncationType.html#1188" class="Bound">A</a> <a id="1190" class="Symbol">:</a> <a id="1192" href="Intro.html#1803" class="Function">Type</a> <a id="1197" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="1199" class="Symbol">}</a> <a id="1201" class="Symbol">{</a><a id="1202" href="TruncationType.html#1202" class="Bound">P</a> <a id="1204" class="Symbol">:</a> <a id="1206" href="Intro.html#1803" class="Function">Type</a> <a id="1211" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1213" class="Symbol">}</a>
    <a id="1219" class="Symbol">→</a> <a id="1221" href="HLevelTypes.html#1162" class="Function">isProp</a> <a id="1228" href="TruncationType.html#1202" class="Bound">P</a>
    <a id="1234" class="Symbol">→</a> <a id="1236" class="Symbol">(</a><a id="1237" href="TruncationType.html#1188" class="Bound">A</a> <a id="1239" class="Symbol">→</a> <a id="1241" href="TruncationType.html#1202" class="Bound">P</a><a id="1242" class="Symbol">)</a>
    <a id="1248" class="Comment">---------</a>
    <a id="1262" class="Symbol">→</a> <a id="1264" href="TruncationType.html#821" class="Function Operator">∥</a> <a id="1266" href="TruncationType.html#1188" class="Bound">A</a> <a id="1268" href="TruncationType.html#821" class="Function Operator">∥</a> <a id="1270" class="Symbol">→</a> <a id="1272" href="TruncationType.html#1202" class="Bound">P</a>

  <a id="1277" href="TruncationType.html#1171" class="Function">trunc-rec</a> <a id="1287" class="Symbol">_</a> <a id="1289" href="TruncationType.html#1289" class="Bound">f</a> <a id="1291" href="TruncationType.html#776" class="InductiveConstructor Operator">!∣</a> <a id="1294" href="TruncationType.html#1294" class="Bound">x</a> <a id="1296" href="TruncationType.html#776" class="InductiveConstructor Operator">∣</a> <a id="1298" class="Symbol">=</a> <a id="1300" href="TruncationType.html#1289" class="Bound">f</a> <a id="1302" href="TruncationType.html#1294" class="Bound">x</a>
</pre>

#### Truncation Lemmas

<pre class="Agda">
  <a id="truncated-is-prop"></a><a id="1355" href="TruncationType.html#1355" class="Function">truncated-is-prop</a>
    <a id="1377" class="Symbol">:</a> <a id="1379" class="Symbol">{</a><a id="1380" href="TruncationType.html#1380" class="Bound">A</a> <a id="1382" class="Symbol">:</a> <a id="1384" href="Intro.html#1803" class="Function">Type</a> <a id="1389" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="1390" class="Symbol">}</a>
    <a id="1396" class="Symbol">→</a> <a id="1398" href="HLevelTypes.html#1162" class="Function">isProp</a> <a id="1405" class="Symbol">(</a><a id="1406" href="TruncationType.html#821" class="Function Operator">∥</a> <a id="1408" href="TruncationType.html#1380" class="Bound">A</a> <a id="1410" href="TruncationType.html#821" class="Function Operator">∥</a><a id="1411" class="Symbol">)</a>
  <a id="1415" href="TruncationType.html#1355" class="Function">truncated-is-prop</a> <a id="1433" class="Symbol">=</a> <a id="1435" href="TruncationType.html#1076" class="Postulate">trunc</a>
</pre>

<pre class="Agda">
  <a id="prop-≃-truncated"></a><a id="1468" href="TruncationType.html#1468" class="Function">prop-≃-truncated</a>
    <a id="1489" class="Symbol">:</a> <a id="1491" class="Symbol">{</a> <a id="1493" href="TruncationType.html#1493" class="Bound">A</a> <a id="1495" class="Symbol">:</a> <a id="1497" href="Intro.html#1803" class="Function">Type</a> <a id="1502" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="1503" class="Symbol">}</a>
    <a id="1509" class="Symbol">→</a> <a id="1511" href="HLevelTypes.html#1162" class="Function">isProp</a> <a id="1518" href="TruncationType.html#1493" class="Bound">A</a>
    <a id="1524" class="Symbol">→</a> <a id="1526" href="TruncationType.html#821" class="Function Operator">∥</a> <a id="1528" href="TruncationType.html#1493" class="Bound">A</a> <a id="1530" href="TruncationType.html#821" class="Function Operator">∥</a> <a id="1532" href="EquivalenceType.html#1318" class="Function Operator">≃</a> <a id="1534" href="TruncationType.html#1493" class="Bound">A</a>

  <a id="1539" href="TruncationType.html#1468" class="Function">prop-≃-truncated</a> <a id="1556" href="TruncationType.html#1556" class="Bound">pA</a> <a id="1559" class="Symbol">=</a> <a id="1561" href="HLevelLemmas.html#7816" class="Function">lemma333</a> <a id="1570" href="TruncationType.html#1076" class="Postulate">trunc</a> <a id="1576" href="TruncationType.html#1556" class="Bound">pA</a> <a id="1579" class="Symbol">(</a><a id="1580" href="TruncationType.html#1171" class="Function">trunc-rec</a> <a id="1590" href="TruncationType.html#1556" class="Bound">pA</a> <a id="1593" href="BasicFunctions.html#375" class="Function">id</a><a id="1595" class="Symbol">)</a> <a id="1597" href="TruncationType.html#924" class="Function Operator">∣_∣</a>

  <a id="trunc-≃"></a><a id="1604" href="TruncationType.html#1604" class="Function">trunc-≃</a> <a id="1612" class="Symbol">=</a> <a id="1614" href="TruncationType.html#1468" class="Function">prop-≃-truncated</a> 
</pre>  
