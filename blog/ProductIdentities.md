---
layout: page
title: "Sigma identities"
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
<a id="226" class="Symbol">{-#</a> <a id="230" class="Keyword">OPTIONS</a> <a id="238" class="Pragma">--without-K</a> <a id="250" class="Symbol">#-}</a>
<a id="254" class="Keyword">open</a> <a id="259" class="Keyword">import</a> <a id="266" href="BasicTypes.html" class="Module">BasicTypes</a>
<a id="277" class="Keyword">open</a> <a id="282" class="Keyword">import</a> <a id="289" href="BasicFunctions.html" class="Module">BasicFunctions</a>
<a id="304" class="Keyword">open</a> <a id="309" class="Keyword">import</a> <a id="316" href="Transport.html" class="Module">Transport</a>
</pre>
</div>

### Product identities

<div class="hide" >
<pre class="Agda">
<a id="402" class="Keyword">module</a>
  <a id="411" href="ProductIdentities.html" class="Module">ProductIdentities</a>
  <a id="431" class="Keyword">where</a>
</pre>
</div>


{: .foldable until="6"}
<pre class="Agda">
<a id="494" class="Comment">-- Lemma.</a>
<a id="prodComponentwise"></a><a id="504" href="ProductIdentities.html#504" class="Function">prodComponentwise</a>
  <a id="524" class="Symbol">:</a> <a id="526" class="Symbol">{</a><a id="527" href="ProductIdentities.html#527" class="Bound">A</a> <a id="529" class="Symbol">:</a> <a id="531" href="Intro.html#1813" class="Function">Type</a> <a id="536" href="Intro.html#2255" class="Generalizable">ℓᵢ</a><a id="538" class="Symbol">}{</a><a id="540" href="ProductIdentities.html#540" class="Bound">B</a> <a id="542" class="Symbol">:</a> <a id="544" href="Intro.html#1813" class="Function">Type</a> <a id="549" href="Intro.html#2258" class="Generalizable">ℓⱼ</a><a id="551" class="Symbol">}{</a><a id="553" href="ProductIdentities.html#553" class="Bound">x</a> <a id="555" href="ProductIdentities.html#555" class="Bound">y</a> <a id="557" class="Symbol">:</a> <a id="559" href="ProductIdentities.html#527" class="Bound">A</a> <a id="561" href="BasicTypes.html#2149" class="Function Operator">×</a> <a id="563" href="ProductIdentities.html#540" class="Bound">B</a><a id="564" class="Symbol">}</a>
  <a id="568" class="Symbol">→</a> <a id="570" class="Symbol">(</a><a id="571" href="ProductIdentities.html#553" class="Bound">x</a> <a id="573" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="576" href="ProductIdentities.html#555" class="Bound">y</a><a id="577" class="Symbol">)</a>
  <a id="581" class="Comment">---------------------------------</a>
  <a id="617" class="Symbol">→</a> <a id="619" class="Symbol">(</a><a id="620" href="BasicTypes.html#1598" class="Field">π₁</a> <a id="623" href="ProductIdentities.html#553" class="Bound">x</a> <a id="625" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="628" href="BasicTypes.html#1598" class="Field">π₁</a> <a id="631" href="ProductIdentities.html#555" class="Bound">y</a><a id="632" class="Symbol">)</a> <a id="634" href="BasicTypes.html#2149" class="Function Operator">×</a> <a id="636" class="Symbol">(</a><a id="637" href="BasicTypes.html#1609" class="Field">π₂</a> <a id="640" href="ProductIdentities.html#553" class="Bound">x</a> <a id="642" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="645" href="BasicTypes.html#1609" class="Field">π₂</a> <a id="648" href="ProductIdentities.html#555" class="Bound">y</a><a id="649" class="Symbol">)</a>

<a id="652" href="ProductIdentities.html#504" class="Function">prodComponentwise</a> <a id="670" class="Symbol">{</a><a id="671" class="Argument">x</a> <a id="673" class="Symbol">=</a> <a id="675" href="ProductIdentities.html#675" class="Bound">x</a><a id="676" class="Symbol">}</a> <a id="678" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a> <a id="682" class="Symbol">=</a> <a id="684" href="BasicTypes.html#4586" class="Function">refl</a> <a id="689" class="Symbol">(</a><a id="690" href="BasicTypes.html#1598" class="Field">π₁</a> <a id="693" href="ProductIdentities.html#675" class="Bound">x</a><a id="694" class="Symbol">)</a> <a id="696" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="698" href="BasicTypes.html#4586" class="Function">refl</a> <a id="703" class="Symbol">(</a><a id="704" href="BasicTypes.html#1609" class="Field">π₂</a> <a id="707" href="ProductIdentities.html#675" class="Bound">x</a><a id="708" class="Symbol">)</a>
</pre>

{: .foldable until="6"}
<pre class="Agda">
<a id="759" class="Comment">-- Lemma.</a>
<a id="prodByComponents"></a><a id="769" href="ProductIdentities.html#769" class="Function">prodByComponents</a>
  <a id="788" class="Symbol">:</a> <a id="790" class="Symbol">{</a><a id="791" href="ProductIdentities.html#791" class="Bound">A</a> <a id="793" class="Symbol">:</a> <a id="795" href="Intro.html#1813" class="Function">Type</a> <a id="800" href="Intro.html#2255" class="Generalizable">ℓᵢ</a><a id="802" class="Symbol">}{</a><a id="804" href="ProductIdentities.html#804" class="Bound">B</a> <a id="806" class="Symbol">:</a> <a id="808" href="Intro.html#1813" class="Function">Type</a> <a id="813" href="Intro.html#2258" class="Generalizable">ℓⱼ</a><a id="815" class="Symbol">}</a> <a id="817" class="Symbol">{</a><a id="818" href="ProductIdentities.html#818" class="Bound">x</a> <a id="820" href="ProductIdentities.html#820" class="Bound">y</a> <a id="822" class="Symbol">:</a> <a id="824" href="ProductIdentities.html#791" class="Bound">A</a> <a id="826" href="BasicTypes.html#2149" class="Function Operator">×</a> <a id="828" href="ProductIdentities.html#804" class="Bound">B</a><a id="829" class="Symbol">}</a>
  <a id="833" class="Symbol">→</a> <a id="835" class="Symbol">(</a><a id="836" href="BasicTypes.html#1598" class="Field">π₁</a> <a id="839" href="ProductIdentities.html#818" class="Bound">x</a> <a id="841" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="844" href="BasicTypes.html#1598" class="Field">π₁</a> <a id="847" href="ProductIdentities.html#820" class="Bound">y</a><a id="848" class="Symbol">)</a> <a id="850" href="BasicTypes.html#2149" class="Function Operator">×</a> <a id="852" class="Symbol">(</a><a id="853" href="BasicTypes.html#1609" class="Field">π₂</a> <a id="856" href="ProductIdentities.html#818" class="Bound">x</a> <a id="858" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="861" href="BasicTypes.html#1609" class="Field">π₂</a> <a id="864" href="ProductIdentities.html#820" class="Bound">y</a><a id="865" class="Symbol">)</a>
  <a id="869" class="Comment">---------------------------------</a>
  <a id="905" class="Symbol">→</a> <a id="907" class="Symbol">(</a><a id="908" href="ProductIdentities.html#818" class="Bound">x</a> <a id="910" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="913" href="ProductIdentities.html#820" class="Bound">y</a><a id="914" class="Symbol">)</a>

<a id="917" href="ProductIdentities.html#769" class="Function">prodByComponents</a> <a id="934" class="Symbol">{</a><a id="935" class="Argument">x</a> <a id="937" class="Symbol">=</a> <a id="939" href="ProductIdentities.html#939" class="Bound">a</a> <a id="941" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="943" href="ProductIdentities.html#943" class="Bound">b</a><a id="944" class="Symbol">}</a> <a id="946" class="Symbol">(</a><a id="947" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a> <a id="951" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="953" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a><a id="956" class="Symbol">)</a> <a id="958" class="Symbol">=</a> <a id="960" href="BasicTypes.html#4586" class="Function">refl</a> <a id="965" class="Symbol">(</a><a id="966" href="ProductIdentities.html#939" class="Bound">a</a> <a id="968" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="970" href="ProductIdentities.html#943" class="Bound">b</a><a id="971" class="Symbol">)</a>
</pre>

{: .foldable until="6"}
<pre class="Agda">
<a id="1022" class="Comment">-- Lemma.</a>
<a id="prodCompInverse"></a><a id="1032" href="ProductIdentities.html#1032" class="Function">prodCompInverse</a>
  <a id="1050" class="Symbol">:</a> <a id="1052" class="Symbol">{</a><a id="1053" href="ProductIdentities.html#1053" class="Bound">A</a> <a id="1055" class="Symbol">:</a> <a id="1057" href="Intro.html#1813" class="Function">Type</a> <a id="1062" href="Intro.html#2255" class="Generalizable">ℓᵢ</a><a id="1064" class="Symbol">}{</a><a id="1066" href="ProductIdentities.html#1066" class="Bound">B</a> <a id="1068" class="Symbol">:</a> <a id="1070" href="Intro.html#1813" class="Function">Type</a> <a id="1075" href="Intro.html#2258" class="Generalizable">ℓⱼ</a><a id="1077" class="Symbol">}</a> <a id="1079" class="Symbol">{</a><a id="1080" href="ProductIdentities.html#1080" class="Bound">x</a> <a id="1082" href="ProductIdentities.html#1082" class="Bound">y</a> <a id="1084" class="Symbol">:</a> <a id="1086" href="ProductIdentities.html#1053" class="Bound">A</a> <a id="1088" href="BasicTypes.html#2149" class="Function Operator">×</a> <a id="1090" href="ProductIdentities.html#1066" class="Bound">B</a><a id="1091" class="Symbol">}</a>
  <a id="1095" class="Symbol">→</a> <a id="1097" class="Symbol">(</a><a id="1098" href="ProductIdentities.html#1098" class="Bound">b</a> <a id="1100" class="Symbol">:</a> <a id="1102" class="Symbol">(</a><a id="1103" href="BasicTypes.html#1598" class="Field">π₁</a> <a id="1106" href="ProductIdentities.html#1080" class="Bound">x</a> <a id="1108" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="1111" href="BasicTypes.html#1598" class="Field">π₁</a> <a id="1114" href="ProductIdentities.html#1082" class="Bound">y</a><a id="1115" class="Symbol">)</a> <a id="1117" href="BasicTypes.html#2149" class="Function Operator">×</a> <a id="1119" class="Symbol">(</a><a id="1120" href="BasicTypes.html#1609" class="Field">π₂</a> <a id="1123" href="ProductIdentities.html#1080" class="Bound">x</a> <a id="1125" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="1128" href="BasicTypes.html#1609" class="Field">π₂</a> <a id="1131" href="ProductIdentities.html#1082" class="Bound">y</a><a id="1132" class="Symbol">))</a>
  <a id="1137" class="Comment">---------------------------------------------</a>
  <a id="1185" class="Symbol">→</a> <a id="1187" href="ProductIdentities.html#504" class="Function">prodComponentwise</a> <a id="1205" class="Symbol">(</a><a id="1206" href="ProductIdentities.html#769" class="Function">prodByComponents</a> <a id="1223" href="ProductIdentities.html#1098" class="Bound">b</a><a id="1224" class="Symbol">)</a> <a id="1226" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="1229" href="ProductIdentities.html#1098" class="Bound">b</a>

<a id="1232" href="ProductIdentities.html#1032" class="Function">prodCompInverse</a> <a id="1248" class="Symbol">{</a><a id="1249" class="Argument">x</a> <a id="1251" class="Symbol">=</a> <a id="1253" href="ProductIdentities.html#1253" class="Bound">x</a><a id="1254" class="Symbol">}</a> <a id="1256" class="Symbol">(</a><a id="1257" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a> <a id="1261" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="1263" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a><a id="1266" class="Symbol">)</a> <a id="1268" class="Symbol">=</a> <a id="1270" href="BasicTypes.html#4586" class="Function">refl</a> <a id="1275" class="Symbol">(</a><a id="1276" href="BasicTypes.html#4586" class="Function">refl</a> <a id="1281" class="Symbol">(</a><a id="1282" href="BasicTypes.html#1598" class="Field">π₁</a> <a id="1285" href="ProductIdentities.html#1253" class="Bound">x</a><a id="1286" class="Symbol">)</a> <a id="1288" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="1290" href="BasicTypes.html#4586" class="Function">refl</a> <a id="1295" class="Symbol">(</a><a id="1296" href="BasicTypes.html#1609" class="Field">π₂</a> <a id="1299" href="ProductIdentities.html#1253" class="Bound">x</a><a id="1300" class="Symbol">))</a>
</pre>

{: .foldable until="6"}
<pre class="Agda">
<a id="1352" class="Comment">-- Lemma.</a>
<a id="prodByCompInverse"></a><a id="1362" href="ProductIdentities.html#1362" class="Function">prodByCompInverse</a>
  <a id="1382" class="Symbol">:</a> <a id="1384" class="Symbol">{</a><a id="1385" href="ProductIdentities.html#1385" class="Bound">A</a> <a id="1387" class="Symbol">:</a> <a id="1389" href="Intro.html#1813" class="Function">Type</a> <a id="1394" href="Intro.html#2255" class="Generalizable">ℓᵢ</a><a id="1396" class="Symbol">}{</a><a id="1398" href="ProductIdentities.html#1398" class="Bound">B</a> <a id="1400" class="Symbol">:</a> <a id="1402" href="Intro.html#1813" class="Function">Type</a> <a id="1407" href="Intro.html#2258" class="Generalizable">ℓⱼ</a><a id="1409" class="Symbol">}</a> <a id="1411" class="Symbol">{</a><a id="1412" href="ProductIdentities.html#1412" class="Bound">x</a> <a id="1414" href="ProductIdentities.html#1414" class="Bound">y</a> <a id="1416" class="Symbol">:</a> <a id="1418" href="ProductIdentities.html#1385" class="Bound">A</a> <a id="1420" href="BasicTypes.html#2149" class="Function Operator">×</a> <a id="1422" href="ProductIdentities.html#1398" class="Bound">B</a><a id="1423" class="Symbol">}</a>
  <a id="1427" class="Symbol">→</a> <a id="1429" class="Symbol">(</a><a id="1430" href="ProductIdentities.html#1430" class="Bound">b</a> <a id="1432" class="Symbol">:</a> <a id="1434" href="ProductIdentities.html#1412" class="Bound">x</a> <a id="1436" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="1439" href="ProductIdentities.html#1414" class="Bound">y</a><a id="1440" class="Symbol">)</a>
  <a id="1444" class="Comment">---------------------------------------------</a>
  <a id="1492" class="Symbol">→</a> <a id="1494" href="ProductIdentities.html#769" class="Function">prodByComponents</a> <a id="1511" class="Symbol">(</a><a id="1512" href="ProductIdentities.html#504" class="Function">prodComponentwise</a> <a id="1530" href="ProductIdentities.html#1430" class="Bound">b</a><a id="1531" class="Symbol">)</a> <a id="1533" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="1536" href="ProductIdentities.html#1430" class="Bound">b</a>

<a id="1539" href="ProductIdentities.html#1362" class="Function">prodByCompInverse</a> <a id="1557" class="Symbol">{</a><a id="1558" class="Argument">x</a> <a id="1560" class="Symbol">=</a> <a id="1562" href="ProductIdentities.html#1562" class="Bound">x</a><a id="1563" class="Symbol">}</a> <a id="1565" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a> <a id="1569" class="Symbol">=</a> <a id="1571" href="BasicTypes.html#4586" class="Function">refl</a> <a id="1576" class="Symbol">(</a><a id="1577" href="BasicTypes.html#4586" class="Function">refl</a> <a id="1582" href="ProductIdentities.html#1562" class="Bound">x</a><a id="1583" class="Symbol">)</a>
</pre>

<pre class="Agda">
<a id="×-≡"></a><a id="1610" href="ProductIdentities.html#1610" class="Function">×-≡</a>
  <a id="1616" class="Symbol">:</a> <a id="1618" class="Symbol">{</a><a id="1619" href="ProductIdentities.html#1619" class="Bound">A</a> <a id="1621" class="Symbol">:</a> <a id="1623" href="Intro.html#1813" class="Function">Type</a> <a id="1628" href="Intro.html#2255" class="Generalizable">ℓᵢ</a><a id="1630" class="Symbol">}{</a><a id="1632" href="ProductIdentities.html#1632" class="Bound">B</a> <a id="1634" class="Symbol">:</a> <a id="1636" href="Intro.html#1813" class="Function">Type</a> <a id="1641" href="Intro.html#2258" class="Generalizable">ℓⱼ</a><a id="1643" class="Symbol">}</a>
  <a id="1647" class="Symbol">→</a> <a id="1649" class="Symbol">{</a><a id="1650" href="ProductIdentities.html#1650" class="Bound">ab</a> <a id="1653" href="ProductIdentities.html#1653" class="Bound">ab&#39;</a> <a id="1657" class="Symbol">:</a> <a id="1659" href="ProductIdentities.html#1619" class="Bound">A</a> <a id="1661" href="BasicTypes.html#2149" class="Function Operator">×</a> <a id="1663" href="ProductIdentities.html#1632" class="Bound">B</a><a id="1664" class="Symbol">}</a>
  <a id="1668" class="Symbol">→</a> <a id="1670" class="Symbol">(</a><a id="1671" href="ProductIdentities.html#1671" class="Bound">p</a> <a id="1673" class="Symbol">:</a> <a id="1675" href="BasicTypes.html#1598" class="Field">π₁</a> <a id="1678" href="ProductIdentities.html#1650" class="Bound">ab</a> <a id="1681" href="BasicTypes.html#4480" class="Function Operator">≡</a> <a id="1683" href="BasicTypes.html#1598" class="Field">π₁</a> <a id="1686" href="ProductIdentities.html#1653" class="Bound">ab&#39;</a><a id="1689" class="Symbol">)</a> <a id="1691" class="Symbol">→</a> <a id="1693" class="Symbol">(</a><a id="1694" href="BasicTypes.html#1609" class="Field">π₂</a> <a id="1697" href="ProductIdentities.html#1650" class="Bound">ab</a><a id="1699" class="Symbol">)</a> <a id="1701" href="BasicTypes.html#4480" class="Function Operator">≡</a> <a id="1703" href="BasicTypes.html#1609" class="Field">π₂</a> <a id="1706" href="ProductIdentities.html#1653" class="Bound">ab&#39;</a>
  <a id="1712" class="Symbol">→</a> <a id="1714" href="ProductIdentities.html#1650" class="Bound">ab</a> <a id="1717" href="BasicTypes.html#4480" class="Function Operator">≡</a> <a id="1719" href="ProductIdentities.html#1653" class="Bound">ab&#39;</a>

<a id="1724" href="ProductIdentities.html#1610" class="Function">×-≡</a> <a id="1728" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a> <a id="1732" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a> <a id="1736" class="Symbol">=</a> <a id="1738" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a>
</pre>
