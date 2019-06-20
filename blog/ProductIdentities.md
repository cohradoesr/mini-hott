---
layout: page
title: "Sigma identities"
category: lemmas functions homotopy
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
<a id="226" class="Symbol">{-#</a> <a id="230" class="Keyword">OPTIONS</a> <a id="238" class="Pragma">--without-K</a> <a id="250" class="Symbol">#-}</a>
<a id="254" class="Keyword">open</a> <a id="259" class="Keyword">import</a> <a id="266" href="BasicTypes.html" class="Module">BasicTypes</a>
<a id="277" class="Keyword">open</a> <a id="282" class="Keyword">import</a> <a id="289" href="BasicFunctions.html" class="Module">BasicFunctions</a>
<a id="304" class="Keyword">open</a> <a id="309" class="Keyword">import</a> <a id="316" href="Transport.html" class="Module">Transport</a>
</pre>
</div>

### Product identities

{: .foldable until="2"}
<pre class="Agda">
<a id="406" class="Keyword">module</a>
  <a id="415" href="ProductIdentities.html" class="Module">ProductIdentities</a>
  <a id="435" class="Keyword">where</a>

</pre>


<pre class="Agda">
<a id="468" class="Keyword">module</a> <a id="CartesianProduct"></a><a id="475" href="ProductIdentities.html#475" class="Module">CartesianProduct</a> <a id="492" class="Symbol">{</a><a id="493" href="ProductIdentities.html#493" class="Bound">A</a> <a id="495" class="Symbol">:</a> <a id="497" href="Intro.html#1621" class="Function">Type</a> <a id="502" href="Intro.html#2063" class="Generalizable">ℓᵢ</a><a id="504" class="Symbol">}</a> <a id="506" class="Symbol">{</a><a id="507" href="ProductIdentities.html#507" class="Bound">B</a> <a id="509" class="Symbol">:</a> <a id="511" href="Intro.html#1621" class="Function">Type</a> <a id="516" href="Intro.html#2066" class="Generalizable">ℓⱼ</a><a id="518" class="Symbol">}</a> <a id="520" class="Keyword">where</a>
</pre>

{: .foldable until="6"}
<pre class="Agda">
  <a id="577" class="Comment">-- Lemma.</a>
  <a id="CartesianProduct.prodComponentwise"></a><a id="589" href="ProductIdentities.html#589" class="Function">prodComponentwise</a>
    <a id="611" class="Symbol">:</a> <a id="613" class="Symbol">{</a><a id="614" href="ProductIdentities.html#614" class="Bound">x</a> <a id="616" href="ProductIdentities.html#616" class="Bound">y</a> <a id="618" class="Symbol">:</a> <a id="620" href="ProductIdentities.html#493" class="Bound">A</a> <a id="622" href="BasicTypes.html#1965" class="Function Operator">×</a> <a id="624" href="ProductIdentities.html#507" class="Bound">B</a><a id="625" class="Symbol">}</a>
    <a id="631" class="Symbol">→</a> <a id="633" class="Symbol">(</a><a id="634" href="ProductIdentities.html#614" class="Bound">x</a> <a id="636" href="BasicTypes.html#4326" class="Datatype Operator">==</a> <a id="639" href="ProductIdentities.html#616" class="Bound">y</a><a id="640" class="Symbol">)</a>
    <a id="646" class="Comment">---------------------------------</a>
    <a id="684" class="Symbol">→</a> <a id="686" class="Symbol">(</a><a id="687" href="BasicTypes.html#1425" class="Field">π₁</a> <a id="690" href="ProductIdentities.html#614" class="Bound">x</a> <a id="692" href="BasicTypes.html#4326" class="Datatype Operator">==</a> <a id="695" href="BasicTypes.html#1425" class="Field">π₁</a> <a id="698" href="ProductIdentities.html#616" class="Bound">y</a><a id="699" class="Symbol">)</a> <a id="701" href="BasicTypes.html#1965" class="Function Operator">×</a> <a id="703" class="Symbol">(</a><a id="704" href="BasicTypes.html#1436" class="Field">π₂</a> <a id="707" href="ProductIdentities.html#614" class="Bound">x</a> <a id="709" href="BasicTypes.html#4326" class="Datatype Operator">==</a> <a id="712" href="BasicTypes.html#1436" class="Field">π₂</a> <a id="715" href="ProductIdentities.html#616" class="Bound">y</a><a id="716" class="Symbol">)</a>

  <a id="721" href="ProductIdentities.html#589" class="Function">prodComponentwise</a> <a id="739" class="Symbol">{</a><a id="740" class="Argument">x</a> <a id="742" class="Symbol">=</a> <a id="744" href="ProductIdentities.html#744" class="Bound">x</a><a id="745" class="Symbol">}</a> <a id="747" href="BasicTypes.html#4381" class="InductiveConstructor">idp</a> <a id="751" class="Symbol">=</a> <a id="753" href="BasicTypes.html#4618" class="Function">refl</a> <a id="758" class="Symbol">(</a><a id="759" href="BasicTypes.html#1425" class="Field">π₁</a> <a id="762" href="ProductIdentities.html#744" class="Bound">x</a><a id="763" class="Symbol">)</a> <a id="765" href="BasicTypes.html#1409" class="InductiveConstructor Operator">,</a> <a id="767" href="BasicTypes.html#4618" class="Function">refl</a> <a id="772" class="Symbol">(</a><a id="773" href="BasicTypes.html#1436" class="Field">π₂</a> <a id="776" href="ProductIdentities.html#744" class="Bound">x</a><a id="777" class="Symbol">)</a>
</pre>

{: .foldable until="6"}
<pre class="Agda">
  <a id="830" class="Comment">-- Lemma.</a>
  <a id="CartesianProduct.prodByComponents"></a><a id="842" href="ProductIdentities.html#842" class="Function">prodByComponents</a>
    <a id="863" class="Symbol">:</a> <a id="865" class="Symbol">{</a><a id="866" href="ProductIdentities.html#866" class="Bound">x</a> <a id="868" href="ProductIdentities.html#868" class="Bound">y</a> <a id="870" class="Symbol">:</a> <a id="872" href="ProductIdentities.html#493" class="Bound">A</a> <a id="874" href="BasicTypes.html#1965" class="Function Operator">×</a> <a id="876" href="ProductIdentities.html#507" class="Bound">B</a><a id="877" class="Symbol">}</a>
    <a id="883" class="Symbol">→</a> <a id="885" class="Symbol">(</a><a id="886" href="BasicTypes.html#1425" class="Field">π₁</a> <a id="889" href="ProductIdentities.html#866" class="Bound">x</a> <a id="891" href="BasicTypes.html#4326" class="Datatype Operator">==</a> <a id="894" href="BasicTypes.html#1425" class="Field">π₁</a> <a id="897" href="ProductIdentities.html#868" class="Bound">y</a><a id="898" class="Symbol">)</a> <a id="900" href="BasicTypes.html#1965" class="Function Operator">×</a> <a id="902" class="Symbol">(</a><a id="903" href="BasicTypes.html#1436" class="Field">π₂</a> <a id="906" href="ProductIdentities.html#866" class="Bound">x</a> <a id="908" href="BasicTypes.html#4326" class="Datatype Operator">==</a> <a id="911" href="BasicTypes.html#1436" class="Field">π₂</a> <a id="914" href="ProductIdentities.html#868" class="Bound">y</a><a id="915" class="Symbol">)</a>
    <a id="921" class="Comment">---------------------------------</a>
    <a id="959" class="Symbol">→</a> <a id="961" class="Symbol">(</a><a id="962" href="ProductIdentities.html#866" class="Bound">x</a> <a id="964" href="BasicTypes.html#4326" class="Datatype Operator">==</a> <a id="967" href="ProductIdentities.html#868" class="Bound">y</a><a id="968" class="Symbol">)</a>

  <a id="973" href="ProductIdentities.html#842" class="Function">prodByComponents</a> <a id="990" class="Symbol">{</a><a id="991" class="Argument">x</a> <a id="993" class="Symbol">=</a> <a id="995" href="ProductIdentities.html#995" class="Bound">a</a> <a id="997" href="BasicTypes.html#1409" class="InductiveConstructor Operator">,</a> <a id="999" href="ProductIdentities.html#999" class="Bound">b</a><a id="1000" class="Symbol">}</a> <a id="1002" class="Symbol">(</a><a id="1003" href="BasicTypes.html#4381" class="InductiveConstructor">idp</a> <a id="1007" href="BasicTypes.html#1409" class="InductiveConstructor Operator">,</a> <a id="1009" href="BasicTypes.html#4381" class="InductiveConstructor">idp</a><a id="1012" class="Symbol">)</a> <a id="1014" class="Symbol">=</a> <a id="1016" href="BasicTypes.html#4618" class="Function">refl</a> <a id="1021" class="Symbol">(</a><a id="1022" href="ProductIdentities.html#995" class="Bound">a</a> <a id="1024" href="BasicTypes.html#1409" class="InductiveConstructor Operator">,</a> <a id="1026" href="ProductIdentities.html#999" class="Bound">b</a><a id="1027" class="Symbol">)</a>
</pre>

{: .foldable until="6"}
<pre class="Agda">
  <a id="1080" class="Comment">-- Lemma.</a>
  <a id="CartesianProduct.prodCompInverse"></a><a id="1092" href="ProductIdentities.html#1092" class="Function">prodCompInverse</a>
    <a id="1112" class="Symbol">:</a> <a id="1114" class="Symbol">{</a><a id="1115" href="ProductIdentities.html#1115" class="Bound">x</a> <a id="1117" href="ProductIdentities.html#1117" class="Bound">y</a> <a id="1119" class="Symbol">:</a> <a id="1121" href="ProductIdentities.html#493" class="Bound">A</a> <a id="1123" href="BasicTypes.html#1965" class="Function Operator">×</a> <a id="1125" href="ProductIdentities.html#507" class="Bound">B</a><a id="1126" class="Symbol">}</a>
    <a id="1132" class="Symbol">→</a> <a id="1134" class="Symbol">(</a><a id="1135" href="ProductIdentities.html#1135" class="Bound">b</a> <a id="1137" class="Symbol">:</a> <a id="1139" class="Symbol">(</a><a id="1140" href="BasicTypes.html#1425" class="Field">π₁</a> <a id="1143" href="ProductIdentities.html#1115" class="Bound">x</a> <a id="1145" href="BasicTypes.html#4326" class="Datatype Operator">==</a> <a id="1148" href="BasicTypes.html#1425" class="Field">π₁</a> <a id="1151" href="ProductIdentities.html#1117" class="Bound">y</a><a id="1152" class="Symbol">)</a> <a id="1154" href="BasicTypes.html#1965" class="Function Operator">×</a> <a id="1156" class="Symbol">(</a><a id="1157" href="BasicTypes.html#1436" class="Field">π₂</a> <a id="1160" href="ProductIdentities.html#1115" class="Bound">x</a> <a id="1162" href="BasicTypes.html#4326" class="Datatype Operator">==</a> <a id="1165" href="BasicTypes.html#1436" class="Field">π₂</a> <a id="1168" href="ProductIdentities.html#1117" class="Bound">y</a><a id="1169" class="Symbol">))</a>
    <a id="1176" class="Comment">---------------------------------------------</a>
    <a id="1226" class="Symbol">→</a> <a id="1228" href="ProductIdentities.html#589" class="Function">prodComponentwise</a> <a id="1246" class="Symbol">(</a><a id="1247" href="ProductIdentities.html#842" class="Function">prodByComponents</a> <a id="1264" href="ProductIdentities.html#1135" class="Bound">b</a><a id="1265" class="Symbol">)</a> <a id="1267" href="BasicTypes.html#4326" class="Datatype Operator">==</a> <a id="1270" href="ProductIdentities.html#1135" class="Bound">b</a>

  <a id="1275" href="ProductIdentities.html#1092" class="Function">prodCompInverse</a> <a id="1291" class="Symbol">{</a><a id="1292" href="ProductIdentities.html#1292" class="Bound">x</a><a id="1293" class="Symbol">}</a> <a id="1295" class="Symbol">(</a><a id="1296" href="BasicTypes.html#4381" class="InductiveConstructor">idp</a> <a id="1300" href="BasicTypes.html#1409" class="InductiveConstructor Operator">,</a> <a id="1302" href="BasicTypes.html#4381" class="InductiveConstructor">idp</a><a id="1305" class="Symbol">)</a> <a id="1307" class="Symbol">=</a> <a id="1309" href="BasicTypes.html#4618" class="Function">refl</a> <a id="1314" class="Symbol">(</a><a id="1315" href="BasicTypes.html#4618" class="Function">refl</a> <a id="1320" class="Symbol">(</a><a id="1321" href="BasicTypes.html#1425" class="Field">π₁</a> <a id="1324" href="ProductIdentities.html#1292" class="Bound">x</a><a id="1325" class="Symbol">)</a> <a id="1327" href="BasicTypes.html#1409" class="InductiveConstructor Operator">,</a> <a id="1329" href="BasicTypes.html#4618" class="Function">refl</a> <a id="1334" class="Symbol">(</a><a id="1335" href="BasicTypes.html#1436" class="Field">π₂</a> <a id="1338" href="ProductIdentities.html#1292" class="Bound">x</a><a id="1339" class="Symbol">))</a>
</pre>

{: .foldable until="6"}
<pre class="Agda">
  <a id="1393" class="Comment">-- Lemma.</a>
  <a id="CartesianProduct.prodByCompInverse"></a><a id="1405" href="ProductIdentities.html#1405" class="Function">prodByCompInverse</a>
    <a id="1427" class="Symbol">:</a> <a id="1429" class="Symbol">{</a><a id="1430" href="ProductIdentities.html#1430" class="Bound">x</a> <a id="1432" href="ProductIdentities.html#1432" class="Bound">y</a> <a id="1434" class="Symbol">:</a> <a id="1436" href="ProductIdentities.html#493" class="Bound">A</a> <a id="1438" href="BasicTypes.html#1965" class="Function Operator">×</a> <a id="1440" href="ProductIdentities.html#507" class="Bound">B</a><a id="1441" class="Symbol">}</a>
    <a id="1447" class="Symbol">→</a> <a id="1449" class="Symbol">(</a><a id="1450" href="ProductIdentities.html#1450" class="Bound">b</a> <a id="1452" class="Symbol">:</a> <a id="1454" href="ProductIdentities.html#1430" class="Bound">x</a> <a id="1456" href="BasicTypes.html#4326" class="Datatype Operator">==</a> <a id="1459" href="ProductIdentities.html#1432" class="Bound">y</a><a id="1460" class="Symbol">)</a>
    <a id="1466" class="Comment">---------------------------------------------</a>
    <a id="1516" class="Symbol">→</a> <a id="1518" href="ProductIdentities.html#842" class="Function">prodByComponents</a> <a id="1535" class="Symbol">(</a><a id="1536" href="ProductIdentities.html#589" class="Function">prodComponentwise</a> <a id="1554" href="ProductIdentities.html#1450" class="Bound">b</a><a id="1555" class="Symbol">)</a> <a id="1557" href="BasicTypes.html#4326" class="Datatype Operator">==</a> <a id="1560" href="ProductIdentities.html#1450" class="Bound">b</a>

  <a id="1565" href="ProductIdentities.html#1405" class="Function">prodByCompInverse</a> <a id="1583" class="Symbol">{</a><a id="1584" class="Argument">x</a> <a id="1586" class="Symbol">=</a> <a id="1588" href="ProductIdentities.html#1588" class="Bound">x</a><a id="1589" class="Symbol">}</a> <a id="1591" href="BasicTypes.html#4381" class="InductiveConstructor">idp</a> <a id="1595" class="Symbol">=</a> <a id="1597" href="BasicTypes.html#4618" class="Function">refl</a> <a id="1602" class="Symbol">(</a><a id="1603" href="BasicTypes.html#4618" class="Function">refl</a> <a id="1608" href="ProductIdentities.html#1588" class="Bound">x</a><a id="1609" class="Symbol">)</a>
</pre>

<pre class="Agda">
<a id="1636" class="Keyword">open</a> <a id="1641" href="ProductIdentities.html#475" class="Module">CartesianProduct</a> <a id="1658" class="Keyword">public</a>
</pre>

<pre class="Agda">
<a id="×-≡"></a><a id="1690" href="ProductIdentities.html#1690" class="Function">×-≡</a> <a id="1694" class="Symbol">:</a> <a id="1696" class="Symbol">∀</a> <a id="1698" class="Symbol">{</a><a id="1699" href="ProductIdentities.html#1699" class="Bound">i</a> <a id="1701" href="ProductIdentities.html#1701" class="Bound">j</a><a id="1702" class="Symbol">}</a> <a id="1704" class="Symbol">{</a><a id="1705" href="ProductIdentities.html#1705" class="Bound">A</a> <a id="1707" class="Symbol">:</a> <a id="1709" href="Intro.html#1621" class="Function">Type</a> <a id="1714" href="ProductIdentities.html#1699" class="Bound">i</a><a id="1715" class="Symbol">}</a> <a id="1717" class="Symbol">{</a><a id="1718" href="ProductIdentities.html#1718" class="Bound">B</a> <a id="1720" class="Symbol">:</a> <a id="1722" href="Intro.html#1621" class="Function">Type</a> <a id="1727" href="ProductIdentities.html#1701" class="Bound">j</a><a id="1728" class="Symbol">}</a>
    <a id="1734" class="Symbol">→</a> <a id="1736" class="Symbol">{</a><a id="1737" href="ProductIdentities.html#1737" class="Bound">ab</a> <a id="1740" href="ProductIdentities.html#1740" class="Bound">ab&#39;</a> <a id="1744" class="Symbol">:</a> <a id="1746" href="ProductIdentities.html#1705" class="Bound">A</a> <a id="1748" href="BasicTypes.html#1965" class="Function Operator">×</a> <a id="1750" href="ProductIdentities.html#1718" class="Bound">B</a><a id="1751" class="Symbol">}</a>
    <a id="1757" class="Symbol">→</a> <a id="1759" class="Symbol">(</a><a id="1760" href="ProductIdentities.html#1760" class="Bound">p</a> <a id="1762" class="Symbol">:</a> <a id="1764" href="BasicTypes.html#1425" class="Field">π₁</a> <a id="1767" href="ProductIdentities.html#1737" class="Bound">ab</a> <a id="1770" href="BasicTypes.html#4512" class="Function Operator">≡</a> <a id="1772" href="BasicTypes.html#1425" class="Field">π₁</a> <a id="1775" href="ProductIdentities.html#1740" class="Bound">ab&#39;</a><a id="1778" class="Symbol">)</a> <a id="1780" class="Symbol">→</a> <a id="1782" class="Symbol">(</a><a id="1783" href="BasicTypes.html#1436" class="Field">π₂</a> <a id="1786" href="ProductIdentities.html#1737" class="Bound">ab</a><a id="1788" class="Symbol">)</a> <a id="1790" href="BasicTypes.html#4512" class="Function Operator">≡</a> <a id="1792" href="BasicTypes.html#1436" class="Field">π₂</a> <a id="1795" href="ProductIdentities.html#1740" class="Bound">ab&#39;</a>
    <a id="1803" class="Symbol">→</a> <a id="1805" href="ProductIdentities.html#1737" class="Bound">ab</a> <a id="1808" href="BasicTypes.html#4512" class="Function Operator">≡</a> <a id="1810" href="ProductIdentities.html#1740" class="Bound">ab&#39;</a>
<a id="1814" href="ProductIdentities.html#1690" class="Function">×-≡</a> <a id="1818" href="BasicTypes.html#4381" class="InductiveConstructor">idp</a> <a id="1822" href="BasicTypes.html#4381" class="InductiveConstructor">idp</a> <a id="1826" class="Symbol">=</a> <a id="1828" href="BasicTypes.html#4381" class="InductiveConstructor">idp</a>
</pre>
