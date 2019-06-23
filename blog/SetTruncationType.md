---
layout: page
title: "Set Truncation Type"
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
<a id="183" class="Symbol">{-#</a> <a id="187" class="Keyword">OPTIONS</a> <a id="195" class="Pragma">--without-K</a> <a id="207" class="Symbol">#-}</a>
<a id="211" class="Keyword">open</a> <a id="216" class="Keyword">import</a> <a id="223" href="TransportLemmas.html" class="Module">TransportLemmas</a>
<a id="239" class="Keyword">open</a> <a id="244" class="Keyword">import</a> <a id="251" href="EquivalenceType.html" class="Module">EquivalenceType</a>

<a id="268" class="Keyword">open</a> <a id="273" class="Keyword">import</a> <a id="280" href="HomotopyType.html" class="Module">HomotopyType</a>
<a id="293" class="Keyword">open</a> <a id="298" class="Keyword">import</a> <a id="305" href="FunExtAxiom.html" class="Module">FunExtAxiom</a>
<a id="317" class="Keyword">open</a> <a id="322" class="Keyword">import</a> <a id="329" href="QuasiinverseType.html" class="Module">QuasiinverseType</a>
<a id="346" class="Keyword">open</a> <a id="351" class="Keyword">import</a> <a id="358" href="DecidableEquality.html" class="Module">DecidableEquality</a>
<a id="376" class="Keyword">open</a> <a id="381" class="Keyword">import</a> <a id="388" href="NaturalType.html" class="Module">NaturalType</a>
<a id="400" class="Keyword">open</a> <a id="405" class="Keyword">import</a> <a id="412" href="HLevelTypes.html" class="Module">HLevelTypes</a>
<a id="424" class="Keyword">open</a> <a id="429" class="Keyword">import</a> <a id="436" href="HLevelLemmas.html" class="Module">HLevelLemmas</a>
<a id="449" class="Keyword">open</a> <a id="454" class="Keyword">import</a> <a id="461" href="HedbergLemmas.html" class="Module">HedbergLemmas</a>
</pre>
</div>

### Set truncations

<pre class="Agda">
<a id="528" class="Keyword">module</a> <a id="535" href="SetTruncationType.html" class="Module">SetTruncationType</a> <a id="553" class="Keyword">where</a>

  <a id="562" class="Keyword">private</a>
    <a id="574" class="Comment">-- Higher inductive type</a>
    <a id="603" class="Keyword">data</a> <a id="!∥_∥₀"></a><a id="608" href="SetTruncationType.html#608" class="Datatype Operator">!∥_∥₀</a> <a id="614" class="Symbol">{</a><a id="615" href="SetTruncationType.html#615" class="Bound">ℓ</a><a id="616" class="Symbol">}</a> <a id="618" class="Symbol">(</a><a id="619" href="SetTruncationType.html#619" class="Bound">A</a> <a id="621" class="Symbol">:</a> <a id="623" href="Intro.html#1803" class="Function">Type</a> <a id="628" href="SetTruncationType.html#615" class="Bound">ℓ</a><a id="629" class="Symbol">)</a> <a id="631" class="Symbol">:</a> <a id="633" href="Intro.html#1803" class="Function">Type</a> <a id="638" href="SetTruncationType.html#615" class="Bound">ℓ</a> <a id="640" class="Keyword">where</a>
      <a id="!∥_∥₀.!∣_∣₀"></a><a id="652" href="SetTruncationType.html#652" class="InductiveConstructor Operator">!∣_∣₀</a> <a id="658" class="Symbol">:</a> <a id="660" href="SetTruncationType.html#619" class="Bound">A</a> <a id="662" class="Symbol">→</a> <a id="664" href="SetTruncationType.html#608" class="Datatype Operator">!∥</a> <a id="667" href="SetTruncationType.html#619" class="Bound">A</a> <a id="669" href="SetTruncationType.html#608" class="Datatype Operator">∥₀</a>

  <a id="∥_∥₀"></a><a id="675" href="SetTruncationType.html#675" class="Function Operator">∥_∥₀</a>
    <a id="684" class="Symbol">:</a> <a id="686" class="Symbol">(</a><a id="687" href="SetTruncationType.html#687" class="Bound">A</a> <a id="689" class="Symbol">:</a> <a id="691" href="Intro.html#1803" class="Function">Type</a> <a id="696" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="697" class="Symbol">)</a>
    <a id="703" class="Symbol">→</a> <a id="705" href="Intro.html#1803" class="Function">Type</a> <a id="710" href="Intro.html#2243" class="Generalizable">ℓ</a>

  <a id="715" href="SetTruncationType.html#675" class="Function Operator">∥</a> <a id="717" href="SetTruncationType.html#717" class="Bound">A</a> <a id="719" href="SetTruncationType.html#675" class="Function Operator">∥₀</a> <a id="722" class="Symbol">=</a> <a id="724" href="SetTruncationType.html#608" class="Datatype Operator">!∥</a> <a id="727" href="SetTruncationType.html#717" class="Bound">A</a> <a id="729" href="SetTruncationType.html#608" class="Datatype Operator">∥₀</a>

  <a id="∣_∣₀"></a><a id="735" href="SetTruncationType.html#735" class="Function Operator">∣_∣₀</a>
    <a id="744" class="Symbol">:</a> <a id="746" class="Symbol">{</a><a id="747" href="SetTruncationType.html#747" class="Bound">X</a> <a id="749" class="Symbol">:</a> <a id="751" href="Intro.html#1803" class="Function">Type</a> <a id="756" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="757" class="Symbol">}</a>
    <a id="763" class="Symbol">→</a> <a id="765" href="SetTruncationType.html#747" class="Bound">X</a>
    <a id="771" class="Symbol">→</a> <a id="773" href="SetTruncationType.html#675" class="Function Operator">∥</a> <a id="775" href="SetTruncationType.html#747" class="Bound">X</a> <a id="777" href="SetTruncationType.html#675" class="Function Operator">∥₀</a>

  <a id="783" href="SetTruncationType.html#735" class="Function Operator">∣</a> <a id="785" href="SetTruncationType.html#785" class="Bound">x</a> <a id="787" href="SetTruncationType.html#735" class="Function Operator">∣₀</a> <a id="790" class="Symbol">=</a> <a id="792" href="SetTruncationType.html#652" class="InductiveConstructor Operator">!∣</a> <a id="795" href="SetTruncationType.html#785" class="Bound">x</a> <a id="797" href="SetTruncationType.html#652" class="InductiveConstructor Operator">∣₀</a>

  <a id="803" class="Keyword">postulate</a>
    <a id="strunc"></a><a id="817" href="SetTruncationType.html#817" class="Postulate">strunc</a>
      <a id="830" class="Symbol">:</a> <a id="832" class="Symbol">{</a><a id="833" href="SetTruncationType.html#833" class="Bound">A</a> <a id="835" class="Symbol">:</a> <a id="837" href="Intro.html#1803" class="Function">Type</a> <a id="842" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="843" class="Symbol">}</a>
      <a id="851" class="Symbol">→</a> <a id="853" href="HLevelTypes.html#1682" class="Function">isSet</a> <a id="859" href="SetTruncationType.html#675" class="Function Operator">∥</a> <a id="861" href="SetTruncationType.html#833" class="Bound">A</a> <a id="863" href="SetTruncationType.html#675" class="Function Operator">∥₀</a>
</pre>

 Recursion principle

 {: .foldable until="6" }
<pre class="Agda">
  <a id="strunc-rec"></a><a id="941" href="SetTruncationType.html#941" class="Function">strunc-rec</a>
    <a id="956" class="Symbol">:</a> <a id="958" class="Symbol">{</a><a id="959" href="SetTruncationType.html#959" class="Bound">A</a> <a id="961" class="Symbol">:</a> <a id="963" href="Intro.html#1803" class="Function">Type</a> <a id="968" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="970" class="Symbol">}</a> <a id="972" class="Symbol">{</a><a id="973" href="SetTruncationType.html#973" class="Bound">P</a> <a id="975" class="Symbol">:</a> <a id="977" href="Intro.html#1803" class="Function">Type</a> <a id="982" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="984" class="Symbol">}</a>
    <a id="990" class="Symbol">→</a> <a id="992" href="HLevelTypes.html#1682" class="Function">isSet</a> <a id="998" href="SetTruncationType.html#973" class="Bound">P</a>
    <a id="1004" class="Symbol">→</a> <a id="1006" class="Symbol">(</a><a id="1007" href="SetTruncationType.html#959" class="Bound">A</a> <a id="1009" class="Symbol">→</a> <a id="1011" href="SetTruncationType.html#973" class="Bound">P</a><a id="1012" class="Symbol">)</a>
    <a id="1018" class="Comment">------------</a>
    <a id="1035" class="Symbol">→</a> <a id="1037" href="SetTruncationType.html#675" class="Function Operator">∥</a> <a id="1039" href="SetTruncationType.html#959" class="Bound">A</a> <a id="1041" href="SetTruncationType.html#675" class="Function Operator">∥₀</a> <a id="1044" class="Symbol">→</a> <a id="1046" href="SetTruncationType.html#973" class="Bound">P</a>

  <a id="1051" href="SetTruncationType.html#941" class="Function">strunc-rec</a> <a id="1062" class="Symbol">_</a> <a id="1064" href="SetTruncationType.html#1064" class="Bound">f</a> <a id="1066" href="SetTruncationType.html#652" class="InductiveConstructor Operator">!∣</a> <a id="1069" href="SetTruncationType.html#1069" class="Bound">x</a> <a id="1071" href="SetTruncationType.html#652" class="InductiveConstructor Operator">∣₀</a> <a id="1074" class="Symbol">=</a> <a id="1076" href="SetTruncationType.html#1064" class="Bound">f</a> <a id="1078" href="SetTruncationType.html#1069" class="Bound">x</a>
</pre>

Induction principle

{: .foldable until="6" }
<pre class="Agda">
  <a id="strunc-ind"></a><a id="1153" href="SetTruncationType.html#1153" class="Function">strunc-ind</a>
    <a id="1168" class="Symbol">:</a> <a id="1170" class="Symbol">{</a><a id="1171" href="SetTruncationType.html#1171" class="Bound">A</a> <a id="1173" class="Symbol">:</a> <a id="1175" href="Intro.html#1803" class="Function">Type</a> <a id="1180" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="1182" class="Symbol">}</a> <a id="1184" class="Symbol">{</a><a id="1185" href="SetTruncationType.html#1185" class="Bound">B</a> <a id="1187" class="Symbol">:</a> <a id="1189" href="SetTruncationType.html#675" class="Function Operator">∥</a> <a id="1191" href="SetTruncationType.html#1171" class="Bound">A</a> <a id="1193" href="SetTruncationType.html#675" class="Function Operator">∥₀</a> <a id="1196" class="Symbol">→</a> <a id="1198" href="Intro.html#1803" class="Function">Type</a> <a id="1203" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1205" class="Symbol">}</a>
    <a id="1211" class="Symbol">→</a> <a id="1213" class="Symbol">((</a><a id="1215" href="SetTruncationType.html#1215" class="Bound">a</a> <a id="1217" class="Symbol">:</a> <a id="1219" href="SetTruncationType.html#675" class="Function Operator">∥</a> <a id="1221" href="SetTruncationType.html#1171" class="Bound">A</a> <a id="1223" href="SetTruncationType.html#675" class="Function Operator">∥₀</a><a id="1225" class="Symbol">)</a> <a id="1227" class="Symbol">→</a> <a id="1229" href="HLevelTypes.html#1682" class="Function">isSet</a> <a id="1235" class="Symbol">(</a><a id="1236" href="SetTruncationType.html#1185" class="Bound">B</a> <a id="1238" href="SetTruncationType.html#1215" class="Bound">a</a><a id="1239" class="Symbol">))</a>
    <a id="1246" class="Symbol">→</a> <a id="1248" class="Symbol">(</a><a id="1249" href="SetTruncationType.html#1249" class="Bound">g</a> <a id="1251" class="Symbol">:</a> <a id="1253" class="Symbol">(</a><a id="1254" href="SetTruncationType.html#1254" class="Bound">a</a> <a id="1256" class="Symbol">:</a> <a id="1258" href="SetTruncationType.html#1171" class="Bound">A</a><a id="1259" class="Symbol">)</a> <a id="1261" class="Symbol">→</a> <a id="1263" href="SetTruncationType.html#1185" class="Bound">B</a> <a id="1265" href="SetTruncationType.html#735" class="Function Operator">∣</a> <a id="1267" href="SetTruncationType.html#1254" class="Bound">a</a> <a id="1269" href="SetTruncationType.html#735" class="Function Operator">∣₀</a><a id="1271" class="Symbol">)</a>
    <a id="1277" class="Comment">------------------------------</a>
    <a id="1312" class="Symbol">→</a> <a id="1314" class="Symbol">(</a><a id="1315" href="SetTruncationType.html#1315" class="Bound">a</a> <a id="1317" class="Symbol">:</a> <a id="1319" href="SetTruncationType.html#675" class="Function Operator">∥</a> <a id="1321" href="SetTruncationType.html#1171" class="Bound">A</a> <a id="1323" href="SetTruncationType.html#675" class="Function Operator">∥₀</a><a id="1325" class="Symbol">)</a> <a id="1327" class="Symbol">→</a> <a id="1329" href="SetTruncationType.html#1185" class="Bound">B</a> <a id="1331" href="SetTruncationType.html#1315" class="Bound">a</a>

  <a id="1336" href="SetTruncationType.html#1153" class="Function">strunc-ind</a> <a id="1347" class="Symbol">_</a> <a id="1349" href="SetTruncationType.html#1349" class="Bound">g</a> <a id="1351" href="SetTruncationType.html#652" class="InductiveConstructor Operator">!∣</a> <a id="1354" href="SetTruncationType.html#1354" class="Bound">x</a> <a id="1356" href="SetTruncationType.html#652" class="InductiveConstructor Operator">∣₀</a> <a id="1359" class="Symbol">=</a> <a id="1361" href="SetTruncationType.html#1349" class="Bound">g</a> <a id="1363" href="SetTruncationType.html#1354" class="Bound">x</a>
</pre>
