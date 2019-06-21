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


{: .foldable until="6"}
<pre class="Agda">
<a id="492" class="Comment">-- Lemma.</a>
<a id="prodComponentwise"></a><a id="502" href="ProductIdentities.html#502" class="Function">prodComponentwise</a>
  <a id="522" class="Symbol">:</a> <a id="524" class="Symbol">{</a><a id="525" href="ProductIdentities.html#525" class="Bound">A</a> <a id="527" class="Symbol">:</a> <a id="529" href="Intro.html#1813" class="Function">Type</a> <a id="534" href="Intro.html#2255" class="Generalizable">ℓᵢ</a><a id="536" class="Symbol">}{</a><a id="538" href="ProductIdentities.html#538" class="Bound">B</a> <a id="540" class="Symbol">:</a> <a id="542" href="Intro.html#1813" class="Function">Type</a> <a id="547" href="Intro.html#2258" class="Generalizable">ℓⱼ</a><a id="549" class="Symbol">}{</a><a id="551" href="ProductIdentities.html#551" class="Bound">x</a> <a id="553" href="ProductIdentities.html#553" class="Bound">y</a> <a id="555" class="Symbol">:</a> <a id="557" href="ProductIdentities.html#525" class="Bound">A</a> <a id="559" href="BasicTypes.html#2149" class="Function Operator">×</a> <a id="561" href="ProductIdentities.html#538" class="Bound">B</a><a id="562" class="Symbol">}</a>
  <a id="566" class="Symbol">→</a> <a id="568" class="Symbol">(</a><a id="569" href="ProductIdentities.html#551" class="Bound">x</a> <a id="571" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="574" href="ProductIdentities.html#553" class="Bound">y</a><a id="575" class="Symbol">)</a>
  <a id="579" class="Comment">---------------------------------</a>
  <a id="615" class="Symbol">→</a> <a id="617" class="Symbol">(</a><a id="618" href="BasicTypes.html#1598" class="Field">π₁</a> <a id="621" href="ProductIdentities.html#551" class="Bound">x</a> <a id="623" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="626" href="BasicTypes.html#1598" class="Field">π₁</a> <a id="629" href="ProductIdentities.html#553" class="Bound">y</a><a id="630" class="Symbol">)</a> <a id="632" href="BasicTypes.html#2149" class="Function Operator">×</a> <a id="634" class="Symbol">(</a><a id="635" href="BasicTypes.html#1609" class="Field">π₂</a> <a id="638" href="ProductIdentities.html#551" class="Bound">x</a> <a id="640" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="643" href="BasicTypes.html#1609" class="Field">π₂</a> <a id="646" href="ProductIdentities.html#553" class="Bound">y</a><a id="647" class="Symbol">)</a>

<a id="650" href="ProductIdentities.html#502" class="Function">prodComponentwise</a> <a id="668" class="Symbol">{</a><a id="669" class="Argument">x</a> <a id="671" class="Symbol">=</a> <a id="673" href="ProductIdentities.html#673" class="Bound">x</a><a id="674" class="Symbol">}</a> <a id="676" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a> <a id="680" class="Symbol">=</a> <a id="682" href="BasicTypes.html#4586" class="Function">refl</a> <a id="687" class="Symbol">(</a><a id="688" href="BasicTypes.html#1598" class="Field">π₁</a> <a id="691" href="ProductIdentities.html#673" class="Bound">x</a><a id="692" class="Symbol">)</a> <a id="694" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="696" href="BasicTypes.html#4586" class="Function">refl</a> <a id="701" class="Symbol">(</a><a id="702" href="BasicTypes.html#1609" class="Field">π₂</a> <a id="705" href="ProductIdentities.html#673" class="Bound">x</a><a id="706" class="Symbol">)</a>
</pre>

{: .foldable until="6"}
<pre class="Agda">
<a id="757" class="Comment">-- Lemma.</a>
<a id="prodByComponents"></a><a id="767" href="ProductIdentities.html#767" class="Function">prodByComponents</a>
  <a id="786" class="Symbol">:</a> <a id="788" class="Symbol">{</a><a id="789" href="ProductIdentities.html#789" class="Bound">A</a> <a id="791" class="Symbol">:</a> <a id="793" href="Intro.html#1813" class="Function">Type</a> <a id="798" href="Intro.html#2255" class="Generalizable">ℓᵢ</a><a id="800" class="Symbol">}{</a><a id="802" href="ProductIdentities.html#802" class="Bound">B</a> <a id="804" class="Symbol">:</a> <a id="806" href="Intro.html#1813" class="Function">Type</a> <a id="811" href="Intro.html#2258" class="Generalizable">ℓⱼ</a><a id="813" class="Symbol">}</a> <a id="815" class="Symbol">{</a><a id="816" href="ProductIdentities.html#816" class="Bound">x</a> <a id="818" href="ProductIdentities.html#818" class="Bound">y</a> <a id="820" class="Symbol">:</a> <a id="822" href="ProductIdentities.html#789" class="Bound">A</a> <a id="824" href="BasicTypes.html#2149" class="Function Operator">×</a> <a id="826" href="ProductIdentities.html#802" class="Bound">B</a><a id="827" class="Symbol">}</a>
  <a id="831" class="Symbol">→</a> <a id="833" class="Symbol">(</a><a id="834" href="BasicTypes.html#1598" class="Field">π₁</a> <a id="837" href="ProductIdentities.html#816" class="Bound">x</a> <a id="839" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="842" href="BasicTypes.html#1598" class="Field">π₁</a> <a id="845" href="ProductIdentities.html#818" class="Bound">y</a><a id="846" class="Symbol">)</a> <a id="848" href="BasicTypes.html#2149" class="Function Operator">×</a> <a id="850" class="Symbol">(</a><a id="851" href="BasicTypes.html#1609" class="Field">π₂</a> <a id="854" href="ProductIdentities.html#816" class="Bound">x</a> <a id="856" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="859" href="BasicTypes.html#1609" class="Field">π₂</a> <a id="862" href="ProductIdentities.html#818" class="Bound">y</a><a id="863" class="Symbol">)</a>
  <a id="867" class="Comment">---------------------------------</a>
  <a id="903" class="Symbol">→</a> <a id="905" class="Symbol">(</a><a id="906" href="ProductIdentities.html#816" class="Bound">x</a> <a id="908" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="911" href="ProductIdentities.html#818" class="Bound">y</a><a id="912" class="Symbol">)</a>

<a id="915" href="ProductIdentities.html#767" class="Function">prodByComponents</a> <a id="932" class="Symbol">{</a><a id="933" class="Argument">x</a> <a id="935" class="Symbol">=</a> <a id="937" href="ProductIdentities.html#937" class="Bound">a</a> <a id="939" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="941" href="ProductIdentities.html#941" class="Bound">b</a><a id="942" class="Symbol">}</a> <a id="944" class="Symbol">(</a><a id="945" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a> <a id="949" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="951" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a><a id="954" class="Symbol">)</a> <a id="956" class="Symbol">=</a> <a id="958" href="BasicTypes.html#4586" class="Function">refl</a> <a id="963" class="Symbol">(</a><a id="964" href="ProductIdentities.html#937" class="Bound">a</a> <a id="966" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="968" href="ProductIdentities.html#941" class="Bound">b</a><a id="969" class="Symbol">)</a>
</pre>

{: .foldable until="6"}
<pre class="Agda">
<a id="1020" class="Comment">-- Lemma.</a>
<a id="prodCompInverse"></a><a id="1030" href="ProductIdentities.html#1030" class="Function">prodCompInverse</a>
  <a id="1048" class="Symbol">:</a> <a id="1050" class="Symbol">{</a><a id="1051" href="ProductIdentities.html#1051" class="Bound">A</a> <a id="1053" class="Symbol">:</a> <a id="1055" href="Intro.html#1813" class="Function">Type</a> <a id="1060" href="Intro.html#2255" class="Generalizable">ℓᵢ</a><a id="1062" class="Symbol">}{</a><a id="1064" href="ProductIdentities.html#1064" class="Bound">B</a> <a id="1066" class="Symbol">:</a> <a id="1068" href="Intro.html#1813" class="Function">Type</a> <a id="1073" href="Intro.html#2258" class="Generalizable">ℓⱼ</a><a id="1075" class="Symbol">}</a> <a id="1077" class="Symbol">{</a><a id="1078" href="ProductIdentities.html#1078" class="Bound">x</a> <a id="1080" href="ProductIdentities.html#1080" class="Bound">y</a> <a id="1082" class="Symbol">:</a> <a id="1084" href="ProductIdentities.html#1051" class="Bound">A</a> <a id="1086" href="BasicTypes.html#2149" class="Function Operator">×</a> <a id="1088" href="ProductIdentities.html#1064" class="Bound">B</a><a id="1089" class="Symbol">}</a>
  <a id="1093" class="Symbol">→</a> <a id="1095" class="Symbol">(</a><a id="1096" href="ProductIdentities.html#1096" class="Bound">b</a> <a id="1098" class="Symbol">:</a> <a id="1100" class="Symbol">(</a><a id="1101" href="BasicTypes.html#1598" class="Field">π₁</a> <a id="1104" href="ProductIdentities.html#1078" class="Bound">x</a> <a id="1106" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="1109" href="BasicTypes.html#1598" class="Field">π₁</a> <a id="1112" href="ProductIdentities.html#1080" class="Bound">y</a><a id="1113" class="Symbol">)</a> <a id="1115" href="BasicTypes.html#2149" class="Function Operator">×</a> <a id="1117" class="Symbol">(</a><a id="1118" href="BasicTypes.html#1609" class="Field">π₂</a> <a id="1121" href="ProductIdentities.html#1078" class="Bound">x</a> <a id="1123" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="1126" href="BasicTypes.html#1609" class="Field">π₂</a> <a id="1129" href="ProductIdentities.html#1080" class="Bound">y</a><a id="1130" class="Symbol">))</a>
  <a id="1135" class="Comment">---------------------------------------------</a>
  <a id="1183" class="Symbol">→</a> <a id="1185" href="ProductIdentities.html#502" class="Function">prodComponentwise</a> <a id="1203" class="Symbol">(</a><a id="1204" href="ProductIdentities.html#767" class="Function">prodByComponents</a> <a id="1221" href="ProductIdentities.html#1096" class="Bound">b</a><a id="1222" class="Symbol">)</a> <a id="1224" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="1227" href="ProductIdentities.html#1096" class="Bound">b</a>

<a id="1230" href="ProductIdentities.html#1030" class="Function">prodCompInverse</a> <a id="1246" class="Symbol">{</a><a id="1247" class="Argument">x</a> <a id="1249" class="Symbol">=</a> <a id="1251" href="ProductIdentities.html#1251" class="Bound">x</a><a id="1252" class="Symbol">}</a> <a id="1254" class="Symbol">(</a><a id="1255" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a> <a id="1259" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="1261" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a><a id="1264" class="Symbol">)</a> <a id="1266" class="Symbol">=</a> <a id="1268" href="BasicTypes.html#4586" class="Function">refl</a> <a id="1273" class="Symbol">(</a><a id="1274" href="BasicTypes.html#4586" class="Function">refl</a> <a id="1279" class="Symbol">(</a><a id="1280" href="BasicTypes.html#1598" class="Field">π₁</a> <a id="1283" href="ProductIdentities.html#1251" class="Bound">x</a><a id="1284" class="Symbol">)</a> <a id="1286" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="1288" href="BasicTypes.html#4586" class="Function">refl</a> <a id="1293" class="Symbol">(</a><a id="1294" href="BasicTypes.html#1609" class="Field">π₂</a> <a id="1297" href="ProductIdentities.html#1251" class="Bound">x</a><a id="1298" class="Symbol">))</a>
</pre>

{: .foldable until="6"}
<pre class="Agda">
<a id="1350" class="Comment">-- Lemma.</a>
<a id="prodByCompInverse"></a><a id="1360" href="ProductIdentities.html#1360" class="Function">prodByCompInverse</a>
  <a id="1380" class="Symbol">:</a> <a id="1382" class="Symbol">{</a><a id="1383" href="ProductIdentities.html#1383" class="Bound">A</a> <a id="1385" class="Symbol">:</a> <a id="1387" href="Intro.html#1813" class="Function">Type</a> <a id="1392" href="Intro.html#2255" class="Generalizable">ℓᵢ</a><a id="1394" class="Symbol">}{</a><a id="1396" href="ProductIdentities.html#1396" class="Bound">B</a> <a id="1398" class="Symbol">:</a> <a id="1400" href="Intro.html#1813" class="Function">Type</a> <a id="1405" href="Intro.html#2258" class="Generalizable">ℓⱼ</a><a id="1407" class="Symbol">}</a> <a id="1409" class="Symbol">{</a><a id="1410" href="ProductIdentities.html#1410" class="Bound">x</a> <a id="1412" href="ProductIdentities.html#1412" class="Bound">y</a> <a id="1414" class="Symbol">:</a> <a id="1416" href="ProductIdentities.html#1383" class="Bound">A</a> <a id="1418" href="BasicTypes.html#2149" class="Function Operator">×</a> <a id="1420" href="ProductIdentities.html#1396" class="Bound">B</a><a id="1421" class="Symbol">}</a>
  <a id="1425" class="Symbol">→</a> <a id="1427" class="Symbol">(</a><a id="1428" href="ProductIdentities.html#1428" class="Bound">b</a> <a id="1430" class="Symbol">:</a> <a id="1432" href="ProductIdentities.html#1410" class="Bound">x</a> <a id="1434" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="1437" href="ProductIdentities.html#1412" class="Bound">y</a><a id="1438" class="Symbol">)</a>
  <a id="1442" class="Comment">---------------------------------------------</a>
  <a id="1490" class="Symbol">→</a> <a id="1492" href="ProductIdentities.html#767" class="Function">prodByComponents</a> <a id="1509" class="Symbol">(</a><a id="1510" href="ProductIdentities.html#502" class="Function">prodComponentwise</a> <a id="1528" href="ProductIdentities.html#1428" class="Bound">b</a><a id="1529" class="Symbol">)</a> <a id="1531" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="1534" href="ProductIdentities.html#1428" class="Bound">b</a>

<a id="1537" href="ProductIdentities.html#1360" class="Function">prodByCompInverse</a> <a id="1555" class="Symbol">{</a><a id="1556" class="Argument">x</a> <a id="1558" class="Symbol">=</a> <a id="1560" href="ProductIdentities.html#1560" class="Bound">x</a><a id="1561" class="Symbol">}</a> <a id="1563" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a> <a id="1567" class="Symbol">=</a> <a id="1569" href="BasicTypes.html#4586" class="Function">refl</a> <a id="1574" class="Symbol">(</a><a id="1575" href="BasicTypes.html#4586" class="Function">refl</a> <a id="1580" href="ProductIdentities.html#1560" class="Bound">x</a><a id="1581" class="Symbol">)</a>
</pre>

<pre class="Agda">
<a id="×-≡"></a><a id="1608" href="ProductIdentities.html#1608" class="Function">×-≡</a>
  <a id="1614" class="Symbol">:</a> <a id="1616" class="Symbol">{</a><a id="1617" href="ProductIdentities.html#1617" class="Bound">A</a> <a id="1619" class="Symbol">:</a> <a id="1621" href="Intro.html#1813" class="Function">Type</a> <a id="1626" href="Intro.html#2255" class="Generalizable">ℓᵢ</a><a id="1628" class="Symbol">}{</a><a id="1630" href="ProductIdentities.html#1630" class="Bound">B</a> <a id="1632" class="Symbol">:</a> <a id="1634" href="Intro.html#1813" class="Function">Type</a> <a id="1639" href="Intro.html#2258" class="Generalizable">ℓⱼ</a><a id="1641" class="Symbol">}</a>
  <a id="1645" class="Symbol">→</a> <a id="1647" class="Symbol">{</a><a id="1648" href="ProductIdentities.html#1648" class="Bound">ab</a> <a id="1651" href="ProductIdentities.html#1651" class="Bound">ab&#39;</a> <a id="1655" class="Symbol">:</a> <a id="1657" href="ProductIdentities.html#1617" class="Bound">A</a> <a id="1659" href="BasicTypes.html#2149" class="Function Operator">×</a> <a id="1661" href="ProductIdentities.html#1630" class="Bound">B</a><a id="1662" class="Symbol">}</a>
  <a id="1666" class="Symbol">→</a> <a id="1668" class="Symbol">(</a><a id="1669" href="ProductIdentities.html#1669" class="Bound">p</a> <a id="1671" class="Symbol">:</a> <a id="1673" href="BasicTypes.html#1598" class="Field">π₁</a> <a id="1676" href="ProductIdentities.html#1648" class="Bound">ab</a> <a id="1679" href="BasicTypes.html#4480" class="Function Operator">≡</a> <a id="1681" href="BasicTypes.html#1598" class="Field">π₁</a> <a id="1684" href="ProductIdentities.html#1651" class="Bound">ab&#39;</a><a id="1687" class="Symbol">)</a> <a id="1689" class="Symbol">→</a> <a id="1691" class="Symbol">(</a><a id="1692" href="BasicTypes.html#1609" class="Field">π₂</a> <a id="1695" href="ProductIdentities.html#1648" class="Bound">ab</a><a id="1697" class="Symbol">)</a> <a id="1699" href="BasicTypes.html#4480" class="Function Operator">≡</a> <a id="1701" href="BasicTypes.html#1609" class="Field">π₂</a> <a id="1704" href="ProductIdentities.html#1651" class="Bound">ab&#39;</a>
  <a id="1710" class="Symbol">→</a> <a id="1712" href="ProductIdentities.html#1648" class="Bound">ab</a> <a id="1715" href="BasicTypes.html#4480" class="Function Operator">≡</a> <a id="1717" href="ProductIdentities.html#1651" class="Bound">ab&#39;</a>

<a id="1722" href="ProductIdentities.html#1608" class="Function">×-≡</a> <a id="1726" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a> <a id="1730" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a> <a id="1734" class="Symbol">=</a> <a id="1736" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a>
</pre>
