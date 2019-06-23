---
layout: page
title: "Univalence Lemmas"
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
<a id="217" class="Symbol">{-#</a> <a id="221" class="Keyword">OPTIONS</a> <a id="229" class="Pragma">--without-K</a> <a id="241" class="Symbol">#-}</a>
<a id="245" class="Keyword">open</a> <a id="250" class="Keyword">import</a> <a id="257" href="TransportLemmas.html" class="Module">TransportLemmas</a>
<a id="273" class="Keyword">open</a> <a id="278" class="Keyword">import</a> <a id="285" href="EquivalenceType.html" class="Module">EquivalenceType</a>

<a id="302" class="Keyword">open</a> <a id="307" class="Keyword">import</a> <a id="314" href="HomotopyType.html" class="Module">HomotopyType</a>
<a id="327" class="Keyword">open</a> <a id="332" class="Keyword">import</a> <a id="339" href="FunExtAxiom.html" class="Module">FunExtAxiom</a>
<a id="351" class="Keyword">open</a> <a id="356" class="Keyword">import</a> <a id="363" href="QuasiinverseType.html" class="Module">QuasiinverseType</a>

<a id="381" class="Keyword">open</a> <a id="386" class="Keyword">import</a> <a id="393" href="UnivalenceAxiom.html" class="Module">UnivalenceAxiom</a>
</pre>
</div>

## Transport and Univalence

<pre class="Agda">
<a id="470" class="Keyword">module</a> <a id="477" href="UnivalenceTransport.html" class="Module">UnivalenceTransport</a> <a id="497" class="Keyword">where</a>
</pre>

{: .foldable until="8" }
<pre class="Agda">
  <a id="transport-family-ap"></a><a id="555" href="UnivalenceTransport.html#555" class="Function">transport-family-ap</a>
    <a id="579" class="Symbol">:</a> <a id="581" class="Symbol">{</a><a id="582" href="UnivalenceTransport.html#582" class="Bound">A</a> <a id="584" class="Symbol">:</a> <a id="586" href="Intro.html#1803" class="Function">Type</a> <a id="591" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="592" class="Symbol">}</a>
    <a id="598" class="Symbol">→</a> <a id="600" class="Symbol">(</a><a id="601" href="UnivalenceTransport.html#601" class="Bound">B</a> <a id="603" class="Symbol">:</a> <a id="605" href="UnivalenceTransport.html#582" class="Bound">A</a> <a id="607" class="Symbol">→</a> <a id="609" href="Intro.html#1803" class="Function">Type</a> <a id="614" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="615" class="Symbol">)</a>
    <a id="621" class="Symbol">→</a> <a id="623" class="Symbol">{</a><a id="624" href="UnivalenceTransport.html#624" class="Bound">x</a> <a id="626" href="UnivalenceTransport.html#626" class="Bound">y</a> <a id="628" class="Symbol">:</a> <a id="630" href="UnivalenceTransport.html#582" class="Bound">A</a><a id="631" class="Symbol">}</a>
    <a id="637" class="Symbol">→</a> <a id="639" class="Symbol">(</a><a id="640" href="UnivalenceTransport.html#640" class="Bound">p</a> <a id="642" class="Symbol">:</a> <a id="644" href="UnivalenceTransport.html#624" class="Bound">x</a> <a id="646" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="649" href="UnivalenceTransport.html#626" class="Bound">y</a><a id="650" class="Symbol">)</a>
    <a id="656" class="Symbol">→</a> <a id="658" class="Symbol">(</a><a id="659" href="UnivalenceTransport.html#659" class="Bound">u</a> <a id="661" class="Symbol">:</a> <a id="663" href="UnivalenceTransport.html#601" class="Bound">B</a> <a id="665" href="UnivalenceTransport.html#624" class="Bound">x</a><a id="666" class="Symbol">)</a>
    <a id="672" class="Comment">---------------------------------------------------</a>
    <a id="728" class="Symbol">→</a> <a id="730" href="Transport.html#462" class="Function">transport</a> <a id="740" href="UnivalenceTransport.html#601" class="Bound">B</a> <a id="742" href="UnivalenceTransport.html#640" class="Bound">p</a> <a id="744" href="UnivalenceTransport.html#659" class="Bound">u</a> <a id="746" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="749" href="Transport.html#462" class="Function">transport</a> <a id="759" class="Symbol">(λ</a> <a id="762" href="UnivalenceTransport.html#762" class="Bound">X</a> <a id="764" class="Symbol">→</a> <a id="766" href="UnivalenceTransport.html#762" class="Bound">X</a><a id="767" class="Symbol">)</a> <a id="769" class="Symbol">(</a><a id="770" href="AlgebraOnPaths.html#389" class="Function">ap</a> <a id="773" href="UnivalenceTransport.html#601" class="Bound">B</a> <a id="775" href="UnivalenceTransport.html#640" class="Bound">p</a><a id="776" class="Symbol">)</a> <a id="778" href="UnivalenceTransport.html#659" class="Bound">u</a>

  <a id="783" href="UnivalenceTransport.html#555" class="Function">transport-family-ap</a> <a id="803" href="UnivalenceTransport.html#803" class="Bound">B</a> <a id="805" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a> <a id="809" href="UnivalenceTransport.html#809" class="Bound">u</a> <a id="811" class="Symbol">=</a> <a id="813" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a>
</pre>

{: .foldable until="8" }
<pre class="Agda">
  <a id="transport-family-idtoeqv"></a><a id="869" href="UnivalenceTransport.html#869" class="Function">transport-family-idtoeqv</a>
    <a id="898" class="Symbol">:</a> <a id="900" class="Symbol">{</a><a id="901" href="UnivalenceTransport.html#901" class="Bound">A</a> <a id="903" class="Symbol">:</a> <a id="905" href="Intro.html#1803" class="Function">Type</a> <a id="910" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="911" class="Symbol">}</a>
    <a id="917" class="Symbol">→</a> <a id="919" class="Symbol">(</a><a id="920" href="UnivalenceTransport.html#920" class="Bound">B</a> <a id="922" class="Symbol">:</a> <a id="924" href="UnivalenceTransport.html#901" class="Bound">A</a> <a id="926" class="Symbol">→</a> <a id="928" href="Intro.html#1803" class="Function">Type</a> <a id="933" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="934" class="Symbol">)</a>
    <a id="940" class="Symbol">→</a> <a id="942" class="Symbol">{</a><a id="943" href="UnivalenceTransport.html#943" class="Bound">x</a> <a id="945" href="UnivalenceTransport.html#945" class="Bound">y</a> <a id="947" class="Symbol">:</a> <a id="949" href="UnivalenceTransport.html#901" class="Bound">A</a><a id="950" class="Symbol">}</a>
    <a id="956" class="Symbol">→</a> <a id="958" class="Symbol">(</a><a id="959" href="UnivalenceTransport.html#959" class="Bound">p</a> <a id="961" class="Symbol">:</a> <a id="963" href="UnivalenceTransport.html#943" class="Bound">x</a> <a id="965" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="968" href="UnivalenceTransport.html#945" class="Bound">y</a><a id="969" class="Symbol">)</a>
    <a id="975" class="Symbol">→</a> <a id="977" class="Symbol">(</a><a id="978" href="UnivalenceTransport.html#978" class="Bound">u</a> <a id="980" class="Symbol">:</a> <a id="982" href="UnivalenceTransport.html#920" class="Bound">B</a> <a id="984" href="UnivalenceTransport.html#943" class="Bound">x</a><a id="985" class="Symbol">)</a>
    <a id="991" class="Comment">----------------------------------------------</a>
    <a id="1042" class="Symbol">→</a> <a id="1044" href="Transport.html#462" class="Function">transport</a> <a id="1054" href="UnivalenceTransport.html#920" class="Bound">B</a> <a id="1056" href="UnivalenceTransport.html#959" class="Bound">p</a> <a id="1058" href="UnivalenceTransport.html#978" class="Bound">u</a> <a id="1060" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="1063" href="EquivalenceType.html#1265" class="Function">fun≃</a> <a id="1068" class="Symbol">(</a><a id="1069" href="UnivalenceAxiom.html#695" class="Function">idtoeqv</a> <a id="1077" class="Symbol">(</a><a id="1078" href="AlgebraOnPaths.html#389" class="Function">ap</a> <a id="1081" href="UnivalenceTransport.html#920" class="Bound">B</a> <a id="1083" href="UnivalenceTransport.html#959" class="Bound">p</a><a id="1084" class="Symbol">))</a> <a id="1087" href="UnivalenceTransport.html#978" class="Bound">u</a>

  <a id="1092" href="UnivalenceTransport.html#869" class="Function">transport-family-idtoeqv</a> <a id="1117" href="UnivalenceTransport.html#1117" class="Bound">B</a> <a id="1119" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a> <a id="1123" href="UnivalenceTransport.html#1123" class="Bound">u</a> <a id="1125" class="Symbol">=</a> <a id="1127" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a>
</pre>

{: .foldable until="9" }
<pre class="Agda">
  <a id="transport-ua"></a><a id="1183" href="UnivalenceTransport.html#1183" class="Function">transport-ua</a>
    <a id="1200" class="Symbol">:</a> <a id="1202" class="Symbol">{</a><a id="1203" href="UnivalenceTransport.html#1203" class="Bound">A</a> <a id="1205" class="Symbol">:</a> <a id="1207" href="Intro.html#1803" class="Function">Type</a> <a id="1212" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="1213" class="Symbol">}</a>
    <a id="1219" class="Symbol">→</a> <a id="1221" class="Symbol">(</a><a id="1222" href="UnivalenceTransport.html#1222" class="Bound">B</a> <a id="1224" class="Symbol">:</a> <a id="1226" href="UnivalenceTransport.html#1203" class="Bound">A</a> <a id="1228" class="Symbol">→</a> <a id="1230" href="Intro.html#1803" class="Function">Type</a> <a id="1235" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="1236" class="Symbol">)</a>
    <a id="1242" class="Symbol">→</a> <a id="1244" class="Symbol">{</a><a id="1245" href="UnivalenceTransport.html#1245" class="Bound">x</a> <a id="1247" href="UnivalenceTransport.html#1247" class="Bound">y</a> <a id="1249" class="Symbol">:</a> <a id="1251" href="UnivalenceTransport.html#1203" class="Bound">A</a><a id="1252" class="Symbol">}</a>
    <a id="1258" class="Symbol">→</a> <a id="1260" class="Symbol">(</a><a id="1261" href="UnivalenceTransport.html#1261" class="Bound">p</a> <a id="1263" class="Symbol">:</a> <a id="1265" href="UnivalenceTransport.html#1245" class="Bound">x</a> <a id="1267" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="1270" href="UnivalenceTransport.html#1247" class="Bound">y</a><a id="1271" class="Symbol">)</a>
    <a id="1277" class="Symbol">→</a> <a id="1279" class="Symbol">(</a><a id="1280" href="UnivalenceTransport.html#1280" class="Bound">e</a> <a id="1282" class="Symbol">:</a> <a id="1284" href="UnivalenceTransport.html#1222" class="Bound">B</a> <a id="1286" href="UnivalenceTransport.html#1245" class="Bound">x</a> <a id="1288" href="EquivalenceType.html#977" class="Function Operator">≃</a> <a id="1290" href="UnivalenceTransport.html#1222" class="Bound">B</a> <a id="1292" href="UnivalenceTransport.html#1247" class="Bound">y</a><a id="1293" class="Symbol">)</a>
    <a id="1299" class="Symbol">→</a> <a id="1301" href="AlgebraOnPaths.html#389" class="Function">ap</a> <a id="1304" href="UnivalenceTransport.html#1222" class="Bound">B</a> <a id="1306" href="UnivalenceTransport.html#1261" class="Bound">p</a> <a id="1308" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="1311" href="UnivalenceAxiom.html#1379" class="Function">ua</a> <a id="1314" href="UnivalenceTransport.html#1280" class="Bound">e</a>
    <a id="1320" class="Comment">-----------------</a>
    <a id="1342" class="Symbol">→</a> <a id="1344" class="Symbol">(</a><a id="1345" href="UnivalenceTransport.html#1345" class="Bound">u</a> <a id="1347" class="Symbol">:</a> <a id="1349" href="UnivalenceTransport.html#1222" class="Bound">B</a> <a id="1351" href="UnivalenceTransport.html#1245" class="Bound">x</a><a id="1352" class="Symbol">)</a> <a id="1354" class="Symbol">→</a> <a id="1356" href="Transport.html#462" class="Function">transport</a> <a id="1366" href="UnivalenceTransport.html#1222" class="Bound">B</a> <a id="1368" href="UnivalenceTransport.html#1261" class="Bound">p</a> <a id="1370" href="UnivalenceTransport.html#1345" class="Bound">u</a> <a id="1372" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="1375" class="Symbol">(</a><a id="1376" href="EquivalenceType.html#1265" class="Function">fun≃</a> <a id="1381" href="UnivalenceTransport.html#1280" class="Bound">e</a><a id="1382" class="Symbol">)</a> <a id="1384" href="UnivalenceTransport.html#1345" class="Bound">u</a>

  <a id="1389" href="UnivalenceTransport.html#1183" class="Function">transport-ua</a> <a id="1402" href="UnivalenceTransport.html#1402" class="Bound">B</a> <a id="1404" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a> <a id="1408" href="UnivalenceTransport.html#1408" class="Bound">e</a> <a id="1410" href="UnivalenceTransport.html#1410" class="Bound">q</a> <a id="1412" href="UnivalenceTransport.html#1412" class="Bound">u</a> <a id="1414" class="Symbol">=</a>
    <a id="1420" href="BasicFunctions.html#5358" class="Function Operator">begin</a>
      <a id="1432" href="Transport.html#462" class="Function">transport</a> <a id="1442" href="UnivalenceTransport.html#1402" class="Bound">B</a> <a id="1444" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a> <a id="1448" href="UnivalenceTransport.html#1412" class="Bound">u</a>
        <a id="1458" href="BasicFunctions.html#5058" class="Function Operator">==⟨</a> <a id="1462" href="UnivalenceTransport.html#869" class="Function">transport-family-idtoeqv</a> <a id="1487" href="UnivalenceTransport.html#1402" class="Bound">B</a> <a id="1489" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a> <a id="1493" href="UnivalenceTransport.html#1412" class="Bound">u</a> <a id="1495" href="BasicFunctions.html#5058" class="Function Operator">⟩</a>
      <a id="1503" href="EquivalenceType.html#1265" class="Function">fun≃</a> <a id="1508" class="Symbol">(</a><a id="1509" href="UnivalenceAxiom.html#695" class="Function">idtoeqv</a> <a id="1517" class="Symbol">(</a><a id="1518" href="AlgebraOnPaths.html#389" class="Function">ap</a> <a id="1521" href="UnivalenceTransport.html#1402" class="Bound">B</a> <a id="1523" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a><a id="1526" class="Symbol">))</a> <a id="1529" href="UnivalenceTransport.html#1412" class="Bound">u</a>
        <a id="1539" href="BasicFunctions.html#5058" class="Function Operator">==⟨</a> <a id="1543" href="AlgebraOnPaths.html#389" class="Function">ap</a> <a id="1546" class="Symbol">(λ</a> <a id="1549" href="UnivalenceTransport.html#1549" class="Bound">r</a> <a id="1551" class="Symbol">→</a> <a id="1553" href="EquivalenceType.html#1265" class="Function">fun≃</a> <a id="1558" class="Symbol">(</a><a id="1559" href="UnivalenceAxiom.html#695" class="Function">idtoeqv</a> <a id="1567" href="UnivalenceTransport.html#1549" class="Bound">r</a><a id="1568" class="Symbol">)</a> <a id="1570" href="UnivalenceTransport.html#1412" class="Bound">u</a><a id="1571" class="Symbol">)</a> <a id="1573" href="UnivalenceTransport.html#1410" class="Bound">q</a> <a id="1575" href="BasicFunctions.html#5058" class="Function Operator">⟩</a>
      <a id="1583" href="EquivalenceType.html#1265" class="Function">fun≃</a> <a id="1588" class="Symbol">(</a><a id="1589" href="UnivalenceAxiom.html#695" class="Function">idtoeqv</a> <a id="1597" class="Symbol">(</a><a id="1598" href="UnivalenceAxiom.html#1379" class="Function">ua</a> <a id="1601" href="UnivalenceTransport.html#1408" class="Bound">e</a><a id="1602" class="Symbol">))</a> <a id="1605" href="UnivalenceTransport.html#1412" class="Bound">u</a>
        <a id="1615" href="BasicFunctions.html#5058" class="Function Operator">==⟨</a> <a id="1619" href="AlgebraOnPaths.html#389" class="Function">ap</a> <a id="1622" class="Symbol">(λ</a> <a id="1625" href="UnivalenceTransport.html#1625" class="Bound">r</a> <a id="1627" class="Symbol">→</a> <a id="1629" href="EquivalenceType.html#1265" class="Function">fun≃</a> <a id="1634" href="UnivalenceTransport.html#1625" class="Bound">r</a> <a id="1636" href="UnivalenceTransport.html#1412" class="Bound">u</a><a id="1637" class="Symbol">)</a> <a id="1639" class="Symbol">(</a><a id="1640" href="UnivalenceAxiom.html#1545" class="Function">ua-β</a> <a id="1645" href="UnivalenceTransport.html#1408" class="Bound">e</a><a id="1646" class="Symbol">)</a> <a id="1648" href="BasicFunctions.html#5058" class="Function Operator">⟩</a>
      <a id="1656" href="EquivalenceType.html#1265" class="Function">fun≃</a> <a id="1661" href="UnivalenceTransport.html#1408" class="Bound">e</a> <a id="1663" href="UnivalenceTransport.html#1412" class="Bound">u</a>
    <a id="1669" href="BasicFunctions.html#5241" class="Function Operator">∎</a>
</pre>

{: .foldable until="9" }
<pre class="Agda">
  <a id="funext-transport-ua"></a><a id="1723" href="UnivalenceTransport.html#1723" class="Function">funext-transport-ua</a>
    <a id="1747" class="Symbol">:</a> <a id="1749" class="Symbol">{</a><a id="1750" href="UnivalenceTransport.html#1750" class="Bound">A</a> <a id="1752" class="Symbol">:</a> <a id="1754" href="Intro.html#1803" class="Function">Type</a> <a id="1759" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="1760" class="Symbol">}</a>
    <a id="1766" class="Symbol">→</a> <a id="1768" class="Symbol">(</a><a id="1769" href="UnivalenceTransport.html#1769" class="Bound">B</a> <a id="1771" class="Symbol">:</a> <a id="1773" href="UnivalenceTransport.html#1750" class="Bound">A</a> <a id="1775" class="Symbol">→</a> <a id="1777" href="Intro.html#1803" class="Function">Type</a> <a id="1782" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="1783" class="Symbol">)</a>
    <a id="1789" class="Symbol">→</a> <a id="1791" class="Symbol">{</a><a id="1792" href="UnivalenceTransport.html#1792" class="Bound">x</a> <a id="1794" href="UnivalenceTransport.html#1794" class="Bound">y</a> <a id="1796" class="Symbol">:</a> <a id="1798" href="UnivalenceTransport.html#1750" class="Bound">A</a><a id="1799" class="Symbol">}</a>
    <a id="1805" class="Symbol">→</a> <a id="1807" class="Symbol">(</a><a id="1808" href="UnivalenceTransport.html#1808" class="Bound">p</a> <a id="1810" class="Symbol">:</a> <a id="1812" href="UnivalenceTransport.html#1792" class="Bound">x</a> <a id="1814" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="1817" href="UnivalenceTransport.html#1794" class="Bound">y</a><a id="1818" class="Symbol">)</a>
    <a id="1824" class="Symbol">→</a> <a id="1826" class="Symbol">(</a><a id="1827" href="UnivalenceTransport.html#1827" class="Bound">e</a> <a id="1829" class="Symbol">:</a> <a id="1831" href="UnivalenceTransport.html#1769" class="Bound">B</a> <a id="1833" href="UnivalenceTransport.html#1792" class="Bound">x</a> <a id="1835" href="EquivalenceType.html#977" class="Function Operator">≃</a> <a id="1837" href="UnivalenceTransport.html#1769" class="Bound">B</a> <a id="1839" href="UnivalenceTransport.html#1794" class="Bound">y</a><a id="1840" class="Symbol">)</a>
    <a id="1846" class="Symbol">→</a> <a id="1848" href="AlgebraOnPaths.html#389" class="Function">ap</a> <a id="1851" href="UnivalenceTransport.html#1769" class="Bound">B</a> <a id="1853" href="UnivalenceTransport.html#1808" class="Bound">p</a> <a id="1855" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="1858" href="UnivalenceAxiom.html#1379" class="Function">ua</a> <a id="1861" href="UnivalenceTransport.html#1827" class="Bound">e</a>
    <a id="1867" class="Comment">-----------------</a>
    <a id="1889" class="Symbol">→</a> <a id="1891" href="Transport.html#462" class="Function">transport</a> <a id="1901" href="UnivalenceTransport.html#1769" class="Bound">B</a> <a id="1903" href="UnivalenceTransport.html#1808" class="Bound">p</a> <a id="1905" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="1908" class="Symbol">(</a><a id="1909" href="EquivalenceType.html#1265" class="Function">fun≃</a> <a id="1914" href="UnivalenceTransport.html#1827" class="Bound">e</a><a id="1915" class="Symbol">)</a>

  <a id="1920" href="UnivalenceTransport.html#1723" class="Function">funext-transport-ua</a> <a id="1940" href="UnivalenceTransport.html#1940" class="Bound">B</a> <a id="1942" href="UnivalenceTransport.html#1942" class="Bound">p</a> <a id="1944" href="UnivalenceTransport.html#1944" class="Bound">e</a> <a id="1946" href="UnivalenceTransport.html#1946" class="Bound">x₁</a> <a id="1949" class="Symbol">=</a> <a id="1951" href="FunExtAxiom.html#952" class="Function">funext</a> <a id="1958" class="Symbol">(</a><a id="1959" href="UnivalenceTransport.html#1183" class="Function">transport-ua</a> <a id="1972" href="UnivalenceTransport.html#1940" class="Bound">B</a> <a id="1974" href="UnivalenceTransport.html#1942" class="Bound">p</a> <a id="1976" href="UnivalenceTransport.html#1944" class="Bound">e</a> <a id="1978" href="UnivalenceTransport.html#1946" class="Bound">x₁</a><a id="1980" class="Symbol">)</a>
</pre>

{: .foldable until="5" }
<pre class="Agda">
  <a id="2034" class="Keyword">postulate</a>
    <a id="ua-coe"></a><a id="2048" href="UnivalenceTransport.html#2048" class="Postulate">ua-coe</a>
      <a id="2061" class="Symbol">:</a> <a id="2063" class="Symbol">{</a><a id="2064" href="UnivalenceTransport.html#2064" class="Bound">A</a> <a id="2066" href="UnivalenceTransport.html#2066" class="Bound">B</a> <a id="2068" class="Symbol">:</a> <a id="2070" href="Intro.html#1803" class="Function">Type</a> <a id="2075" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="2076" class="Symbol">}</a>
      <a id="2084" class="Symbol">→</a> <a id="2086" class="Symbol">(</a><a id="2087" href="UnivalenceTransport.html#2087" class="Bound">α</a> <a id="2089" class="Symbol">:</a> <a id="2091" href="UnivalenceTransport.html#2064" class="Bound">A</a> <a id="2093" href="EquivalenceType.html#977" class="Function Operator">≃</a> <a id="2095" href="UnivalenceTransport.html#2066" class="Bound">B</a><a id="2096" class="Symbol">)</a>
      <a id="2104" class="Symbol">→</a> <a id="2106" class="Symbol">(∀</a> <a id="2109" href="UnivalenceTransport.html#2109" class="Bound">x</a> <a id="2111" class="Symbol">→</a> <a id="2113" class="Symbol">(</a><a id="2114" href="Transport.html#784" class="Function">coe</a> <a id="2118" class="Symbol">(</a><a id="2119" href="UnivalenceAxiom.html#1379" class="Function">ua</a> <a id="2122" href="UnivalenceTransport.html#2087" class="Bound">α</a><a id="2123" class="Symbol">)</a> <a id="2125" href="UnivalenceTransport.html#2109" class="Bound">x</a><a id="2126" class="Symbol">)</a> <a id="2128" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="2131" class="Symbol">((</a><a id="2133" href="UnivalenceTransport.html#2087" class="Bound">α</a> <a id="2135" href="EquivalenceType.html#1282" class="Function Operator">∙</a><a id="2136" class="Symbol">)</a> <a id="2138" href="UnivalenceTransport.html#2109" class="Bound">x</a><a id="2139" class="Symbol">))</a>
  <a id="2144" class="Comment">-- ua-coe α x =</a>
  <a id="2162" class="Comment">--   begin</a>
  <a id="2175" class="Comment">--     (coe (ua α) x)</a>
  <a id="2199" class="Comment">--       ==⟨ idp ⟩</a>
  <a id="2220" class="Comment">--     transport (λ X → X) (ua α) x</a>
  <a id="2258" class="Comment">--       ==⟨ {!   !} ⟩</a>
  <a id="2283" class="Comment">--     {!   !}</a>
  <a id="2300" class="Comment">--       ==⟨ {!   !} ⟩</a>
  <a id="2325" class="Comment">--     {!   !}</a>
</pre>
