---
layout: page
title: "Basic Functions"
category: functions
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
<a id="199" class="Symbol">{-#</a> <a id="203" class="Keyword">OPTIONS</a> <a id="211" class="Pragma">--without-K</a> <a id="223" class="Symbol">#-}</a>
<a id="227" class="Keyword">open</a> <a id="232" class="Keyword">import</a> <a id="239" href="BasicTypes.html" class="Module">BasicTypes</a> <a id="250" class="Keyword">public</a>
</pre>
</div>

## Basic functions

### Identity functions

The identity function with implicit type.
<pre class="Agda">
<a id="id"></a><a id="375" href="BasicFunctions.html#375" class="Function">id</a>
  <a id="380" class="Symbol">:</a> <a id="382" class="Symbol">{</a><a id="383" href="BasicFunctions.html#383" class="Bound">A</a> <a id="385" class="Symbol">:</a> <a id="387" href="Intro.html#1803" class="Function">Type</a> <a id="392" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="393" class="Symbol">}</a>
  <a id="397" class="Comment">----------------</a>
  <a id="416" class="Symbol">→</a> <a id="418" href="BasicFunctions.html#383" class="Bound">A</a> <a id="420" class="Symbol">→</a> <a id="422" href="BasicFunctions.html#383" class="Bound">A</a>

<a id="425" href="BasicFunctions.html#375" class="Function">id</a> <a id="428" class="Symbol">=</a> <a id="430" class="Symbol">λ</a> <a id="432" href="BasicFunctions.html#432" class="Bound">x</a> <a id="434" class="Symbol">→</a> <a id="436" href="BasicFunctions.html#432" class="Bound">x</a>
</pre>

The identity function on a type `A` is `idf A`.

<pre class="Agda">
<a id="idf"></a><a id="512" href="BasicFunctions.html#512" class="Function">idf</a>
  <a id="518" class="Symbol">:</a> <a id="520" class="Symbol">(</a><a id="521" href="BasicFunctions.html#521" class="Bound">A</a> <a id="523" class="Symbol">:</a> <a id="525" href="Intro.html#1803" class="Function">Type</a> <a id="530" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="532" class="Symbol">)</a>
  <a id="536" class="Comment">---------------</a>
  <a id="554" class="Symbol">→</a> <a id="556" class="Symbol">(</a><a id="557" href="BasicFunctions.html#521" class="Bound">A</a> <a id="559" class="Symbol">→</a> <a id="561" href="BasicFunctions.html#521" class="Bound">A</a><a id="562" class="Symbol">)</a>

<a id="565" href="BasicFunctions.html#512" class="Function">idf</a> <a id="569" href="BasicFunctions.html#569" class="Bound">A</a> <a id="571" class="Symbol">=</a> <a id="573" class="Symbol">λ</a> <a id="575" href="BasicFunctions.html#575" class="Bound">x</a> <a id="577" class="Symbol">→</a> <a id="579" href="BasicFunctions.html#575" class="Bound">x</a>
</pre>


### Constant functions

Constant function at some point `b` is `cst b`

<pre class="Agda">
<a id="cst"></a><a id="679" href="BasicFunctions.html#679" class="Function">cst</a>
  <a id="685" class="Symbol">:</a> <a id="687" class="Symbol">{</a><a id="688" href="BasicFunctions.html#688" class="Bound">A</a> <a id="690" class="Symbol">:</a> <a id="692" href="Intro.html#1803" class="Function">Type</a> <a id="697" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="699" class="Symbol">}</a> <a id="701" class="Symbol">{</a><a id="702" href="BasicFunctions.html#702" class="Bound">B</a> <a id="704" class="Symbol">:</a> <a id="706" href="Intro.html#1803" class="Function">Type</a> <a id="711" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="713" class="Symbol">}</a>
  <a id="717" class="Symbol">→</a> <a id="719" class="Symbol">(</a><a id="720" href="BasicFunctions.html#720" class="Bound">b</a> <a id="722" class="Symbol">:</a> <a id="724" href="BasicFunctions.html#702" class="Bound">B</a><a id="725" class="Symbol">)</a>
  <a id="729" class="Comment">---------</a>
  <a id="741" class="Symbol">→</a> <a id="743" class="Symbol">(</a><a id="744" href="BasicFunctions.html#688" class="Bound">A</a> <a id="746" class="Symbol">→</a> <a id="748" href="BasicFunctions.html#702" class="Bound">B</a><a id="749" class="Symbol">)</a>

<a id="752" href="BasicFunctions.html#679" class="Function">cst</a> <a id="756" href="BasicFunctions.html#756" class="Bound">b</a> <a id="758" class="Symbol">=</a> <a id="760" class="Symbol">λ</a> <a id="762" href="BasicFunctions.html#762" class="Bound">_</a> <a id="764" class="Symbol">→</a> <a id="766" href="BasicFunctions.html#756" class="Bound">b</a>
</pre>

### Logical negation

<pre class="Agda">
<a id="neg¬"></a><a id="815" href="BasicFunctions.html#815" class="Function">neg¬</a>
  <a id="822" class="Symbol">:</a> <a id="824" href="BasicTypes.html#3228" class="Datatype">Bool</a>
  <a id="831" class="Symbol">→</a> <a id="833" href="BasicTypes.html#3228" class="Datatype">Bool</a>
<a id="838" href="BasicFunctions.html#815" class="Function">neg¬</a> <a id="843" href="BasicTypes.html#3442" class="InductiveConstructor">tt</a> <a id="846" class="Symbol">=</a> <a id="848" href="BasicTypes.html#3423" class="InductiveConstructor">ff</a>
<a id="851" href="BasicFunctions.html#815" class="Function">neg¬</a> <a id="856" href="BasicTypes.html#3423" class="InductiveConstructor">ff</a> <a id="859" class="Symbol">=</a> <a id="861" href="BasicTypes.html#3442" class="InductiveConstructor">tt</a>
</pre>

### Composition

A more sophisticated composition function that can handle dependent functions.

{: .foldable until="6" }
<pre class="Agda">
<a id="_∘_"></a><a id="1011" href="BasicFunctions.html#1011" class="Function Operator">_∘_</a>
  <a id="1017" class="Symbol">:</a> <a id="1019" class="Symbol">{</a><a id="1020" href="BasicFunctions.html#1020" class="Bound">A</a> <a id="1022" class="Symbol">:</a> <a id="1024" href="Intro.html#1803" class="Function">Type</a> <a id="1029" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="1031" class="Symbol">}</a> <a id="1033" class="Symbol">{</a><a id="1034" href="BasicFunctions.html#1034" class="Bound">B</a> <a id="1036" class="Symbol">:</a> <a id="1038" href="BasicFunctions.html#1020" class="Bound">A</a> <a id="1040" class="Symbol">→</a> <a id="1042" href="Intro.html#1803" class="Function">Type</a> <a id="1047" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1049" class="Symbol">}</a> <a id="1051" class="Symbol">{</a><a id="1052" href="BasicFunctions.html#1052" class="Bound">C</a> <a id="1054" class="Symbol">:</a> <a id="1056" class="Symbol">(</a><a id="1057" href="BasicFunctions.html#1057" class="Bound">a</a> <a id="1059" class="Symbol">:</a> <a id="1061" href="BasicFunctions.html#1020" class="Bound">A</a><a id="1062" class="Symbol">)</a> <a id="1064" class="Symbol">→</a> <a id="1066" class="Symbol">(</a><a id="1067" href="BasicFunctions.html#1034" class="Bound">B</a> <a id="1069" href="BasicFunctions.html#1057" class="Bound">a</a> <a id="1071" class="Symbol">→</a> <a id="1073" href="Intro.html#1803" class="Function">Type</a> <a id="1078" href="Intro.html#2251" class="Generalizable">ℓₖ</a><a id="1080" class="Symbol">)}</a>
  <a id="1085" class="Symbol">→</a> <a id="1087" class="Symbol">(</a><a id="1088" href="BasicFunctions.html#1088" class="Bound">g</a> <a id="1090" class="Symbol">:</a> <a id="1092" class="Symbol">{</a><a id="1093" href="BasicFunctions.html#1093" class="Bound">a</a> <a id="1095" class="Symbol">:</a> <a id="1097" href="BasicFunctions.html#1020" class="Bound">A</a><a id="1098" class="Symbol">}</a> <a id="1100" class="Symbol">→</a> <a id="1102" href="BasicTypes.html#2022" class="Function">∏</a> <a id="1104" class="Symbol">(</a><a id="1105" href="BasicFunctions.html#1034" class="Bound">B</a> <a id="1107" href="BasicFunctions.html#1093" class="Bound">a</a><a id="1108" class="Symbol">)</a> <a id="1110" class="Symbol">(</a><a id="1111" href="BasicFunctions.html#1052" class="Bound">C</a> <a id="1113" href="BasicFunctions.html#1093" class="Bound">a</a><a id="1114" class="Symbol">))</a>
  <a id="1119" class="Symbol">→</a> <a id="1121" class="Symbol">(</a><a id="1122" href="BasicFunctions.html#1122" class="Bound">f</a> <a id="1124" class="Symbol">:</a> <a id="1126" href="BasicTypes.html#2022" class="Function">∏</a> <a id="1128" href="BasicFunctions.html#1020" class="Bound">A</a> <a id="1130" href="BasicFunctions.html#1034" class="Bound">B</a><a id="1131" class="Symbol">)</a>
  <a id="1135" class="Comment">-------------------------------</a>
  <a id="1169" class="Symbol">→</a> <a id="1171" href="BasicTypes.html#2022" class="Function">∏</a> <a id="1173" href="BasicFunctions.html#1020" class="Bound">A</a> <a id="1175" class="Symbol">(λ</a> <a id="1178" href="BasicFunctions.html#1178" class="Bound">a</a> <a id="1180" class="Symbol">→</a> <a id="1182" href="BasicFunctions.html#1052" class="Bound">C</a> <a id="1184" href="BasicFunctions.html#1178" class="Bound">a</a> <a id="1186" class="Symbol">(</a><a id="1187" href="BasicFunctions.html#1122" class="Bound">f</a> <a id="1189" href="BasicFunctions.html#1178" class="Bound">a</a><a id="1190" class="Symbol">))</a>

<a id="1194" href="BasicFunctions.html#1194" class="Bound">g</a> <a id="1196" href="BasicFunctions.html#1011" class="Function Operator">∘</a> <a id="1198" href="BasicFunctions.html#1198" class="Bound">f</a> <a id="1200" class="Symbol">=</a> <a id="1202" class="Symbol">λ</a> <a id="1204" href="BasicFunctions.html#1204" class="Bound">x</a> <a id="1206" class="Symbol">→</a> <a id="1208" href="BasicFunctions.html#1194" class="Bound">g</a> <a id="1210" class="Symbol">(</a><a id="1211" href="BasicFunctions.html#1198" class="Bound">f</a> <a id="1213" href="BasicFunctions.html#1204" class="Bound">x</a><a id="1214" class="Symbol">)</a>

<a id="1217" class="Keyword">infixr</a> <a id="1224" class="Number">80</a> <a id="1227" href="BasicFunctions.html#1011" class="Function Operator">_∘_</a>
</pre>

Synonym for composition (diagrammatic version)

{: .foldable until="7" }
<pre class="Agda">
<a id="_:&gt;_"></a><a id="1329" href="BasicFunctions.html#1329" class="Function Operator">_:&gt;_</a>
  <a id="1336" class="Symbol">:</a> <a id="1338" class="Symbol">{</a><a id="1339" href="BasicFunctions.html#1339" class="Bound">A</a> <a id="1341" class="Symbol">:</a> <a id="1343" href="Intro.html#1803" class="Function">Type</a> <a id="1348" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="1350" class="Symbol">}</a> <a id="1352" class="Symbol">{</a><a id="1353" href="BasicFunctions.html#1353" class="Bound">B</a> <a id="1355" class="Symbol">:</a> <a id="1357" href="BasicFunctions.html#1339" class="Bound">A</a> <a id="1359" class="Symbol">→</a> <a id="1361" href="Intro.html#1803" class="Function">Type</a> <a id="1366" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1368" class="Symbol">}</a> <a id="1370" class="Symbol">{</a><a id="1371" href="BasicFunctions.html#1371" class="Bound">C</a> <a id="1373" class="Symbol">:</a> <a id="1375" class="Symbol">(</a><a id="1376" href="BasicFunctions.html#1376" class="Bound">a</a> <a id="1378" class="Symbol">:</a> <a id="1380" href="BasicFunctions.html#1339" class="Bound">A</a><a id="1381" class="Symbol">)</a> <a id="1383" class="Symbol">→</a> <a id="1385" class="Symbol">(</a><a id="1386" href="BasicFunctions.html#1353" class="Bound">B</a> <a id="1388" href="BasicFunctions.html#1376" class="Bound">a</a> <a id="1390" class="Symbol">→</a> <a id="1392" href="Intro.html#1803" class="Function">Type</a> <a id="1397" href="Intro.html#2251" class="Generalizable">ℓₖ</a><a id="1399" class="Symbol">)}</a>
  <a id="1404" class="Symbol">→</a> <a id="1406" class="Symbol">(</a><a id="1407" href="BasicFunctions.html#1407" class="Bound">f</a> <a id="1409" class="Symbol">:</a> <a id="1411" href="BasicTypes.html#1873" class="Function">Π</a> <a id="1413" href="BasicFunctions.html#1339" class="Bound">A</a> <a id="1415" href="BasicFunctions.html#1353" class="Bound">B</a><a id="1416" class="Symbol">)</a>
  <a id="1420" class="Symbol">→</a> <a id="1422" class="Symbol">(</a><a id="1423" href="BasicFunctions.html#1423" class="Bound">g</a> <a id="1425" class="Symbol">:</a> <a id="1427" class="Symbol">{</a><a id="1428" href="BasicFunctions.html#1428" class="Bound">a</a> <a id="1430" class="Symbol">:</a> <a id="1432" href="BasicFunctions.html#1339" class="Bound">A</a><a id="1433" class="Symbol">}</a> <a id="1435" class="Symbol">→</a> <a id="1437" href="BasicTypes.html#1873" class="Function">Π</a> <a id="1439" class="Symbol">(</a><a id="1440" href="BasicFunctions.html#1353" class="Bound">B</a> <a id="1442" href="BasicFunctions.html#1428" class="Bound">a</a><a id="1443" class="Symbol">)</a> <a id="1445" class="Symbol">(</a><a id="1446" href="BasicFunctions.html#1371" class="Bound">C</a> <a id="1448" href="BasicFunctions.html#1428" class="Bound">a</a><a id="1449" class="Symbol">))</a>
  <a id="1454" class="Comment">-------------------------------</a>
  <a id="1488" class="Symbol">→</a> <a id="1490" href="BasicTypes.html#1873" class="Function">Π</a> <a id="1492" href="BasicFunctions.html#1339" class="Bound">A</a> <a id="1494" class="Symbol">(λ</a> <a id="1497" href="BasicFunctions.html#1497" class="Bound">a</a> <a id="1499" class="Symbol">→</a> <a id="1501" href="BasicFunctions.html#1371" class="Bound">C</a> <a id="1503" href="BasicFunctions.html#1497" class="Bound">a</a> <a id="1505" class="Symbol">(</a><a id="1506" href="BasicFunctions.html#1407" class="Bound">f</a> <a id="1508" href="BasicFunctions.html#1497" class="Bound">a</a><a id="1509" class="Symbol">))</a>

<a id="1513" href="BasicFunctions.html#1513" class="Bound">f</a> <a id="1515" href="BasicFunctions.html#1329" class="Function Operator">:&gt;</a> <a id="1518" href="BasicFunctions.html#1518" class="Bound">g</a> <a id="1520" class="Symbol">=</a> <a id="1522" href="BasicFunctions.html#1518" class="Bound">g</a> <a id="1524" href="BasicFunctions.html#1011" class="Function Operator">∘</a> <a id="1526" href="BasicFunctions.html#1513" class="Bound">f</a>

<a id="1529" class="Keyword">infixr</a> <a id="1536" class="Number">90</a> <a id="1539" href="BasicFunctions.html#1329" class="Function Operator">_:&gt;_</a>
</pre>

#### Associativity of composition

- Left associativity

{: .foldable until="5" }
<pre class="Agda">
<a id="∘-lassoc"></a><a id="1651" href="BasicFunctions.html#1651" class="Function">∘-lassoc</a>
  <a id="1662" class="Symbol">:</a> <a id="1664" class="Symbol">{</a><a id="1665" href="BasicFunctions.html#1665" class="Bound">A</a> <a id="1667" href="BasicFunctions.html#1667" class="Bound">B</a> <a id="1669" href="BasicFunctions.html#1669" class="Bound">C</a> <a id="1671" href="BasicFunctions.html#1671" class="Bound">D</a> <a id="1673" class="Symbol">:</a> <a id="1675" href="Intro.html#1803" class="Function">Type</a> <a id="1680" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="1681" class="Symbol">}</a>
  <a id="1685" class="Symbol">→</a> <a id="1687" class="Symbol">(</a><a id="1688" href="BasicFunctions.html#1688" class="Bound">h</a> <a id="1690" class="Symbol">:</a> <a id="1692" href="BasicFunctions.html#1669" class="Bound">C</a> <a id="1694" class="Symbol">→</a> <a id="1696" href="BasicFunctions.html#1671" class="Bound">D</a><a id="1697" class="Symbol">)</a> <a id="1699" class="Symbol">→</a> <a id="1701" class="Symbol">(</a><a id="1702" href="BasicFunctions.html#1702" class="Bound">g</a> <a id="1704" class="Symbol">:</a> <a id="1706" href="BasicFunctions.html#1667" class="Bound">B</a> <a id="1708" class="Symbol">→</a> <a id="1710" href="BasicFunctions.html#1669" class="Bound">C</a><a id="1711" class="Symbol">)</a> <a id="1713" class="Symbol">→</a> <a id="1715" class="Symbol">(</a><a id="1716" href="BasicFunctions.html#1716" class="Bound">f</a> <a id="1718" class="Symbol">:</a> <a id="1720" href="BasicFunctions.html#1665" class="Bound">A</a> <a id="1722" class="Symbol">→</a> <a id="1724" href="BasicFunctions.html#1667" class="Bound">B</a><a id="1725" class="Symbol">)</a>
  <a id="1729" class="Comment">-----------------------------------------</a>
  <a id="1773" class="Symbol">→</a> <a id="1775" class="Symbol">(</a><a id="1776" href="BasicFunctions.html#1688" class="Bound">h</a> <a id="1778" href="BasicFunctions.html#1011" class="Function Operator">∘</a> <a id="1780" class="Symbol">(</a><a id="1781" href="BasicFunctions.html#1702" class="Bound">g</a> <a id="1783" href="BasicFunctions.html#1011" class="Function Operator">∘</a> <a id="1785" href="BasicFunctions.html#1716" class="Bound">f</a><a id="1786" class="Symbol">))</a> <a id="1789" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="1792" class="Symbol">((</a><a id="1794" href="BasicFunctions.html#1688" class="Bound">h</a> <a id="1796" href="BasicFunctions.html#1011" class="Function Operator">∘</a> <a id="1798" href="BasicFunctions.html#1702" class="Bound">g</a><a id="1799" class="Symbol">)</a> <a id="1801" href="BasicFunctions.html#1011" class="Function Operator">∘</a> <a id="1803" href="BasicFunctions.html#1716" class="Bound">f</a><a id="1804" class="Symbol">)</a>

<a id="1807" href="BasicFunctions.html#1651" class="Function">∘-lassoc</a> <a id="1816" href="BasicFunctions.html#1816" class="Bound">h</a> <a id="1818" href="BasicFunctions.html#1818" class="Bound">g</a> <a id="1820" href="BasicFunctions.html#1820" class="Bound">f</a> <a id="1822" class="Symbol">=</a> <a id="1824" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a> <a id="1828" class="Symbol">{</a><a id="1829" class="Argument">a</a> <a id="1831" class="Symbol">=</a> <a id="1833" class="Symbol">(λ</a> <a id="1836" href="BasicFunctions.html#1836" class="Bound">x</a> <a id="1838" class="Symbol">→</a> <a id="1840" href="BasicFunctions.html#1816" class="Bound">h</a> <a id="1842" class="Symbol">(</a><a id="1843" href="BasicFunctions.html#1818" class="Bound">g</a> <a id="1845" class="Symbol">(</a><a id="1846" href="BasicFunctions.html#1820" class="Bound">f</a> <a id="1848" href="BasicFunctions.html#1836" class="Bound">x</a><a id="1849" class="Symbol">)))}</a>
</pre>

- Right associativity

{: .foldable until="5" }
<pre class="Agda">
<a id="∘-rassoc"></a><a id="1927" href="BasicFunctions.html#1927" class="Function">∘-rassoc</a>
  <a id="1938" class="Symbol">:</a> <a id="1940" class="Symbol">{</a><a id="1941" href="BasicFunctions.html#1941" class="Bound">A</a> <a id="1943" href="BasicFunctions.html#1943" class="Bound">B</a> <a id="1945" href="BasicFunctions.html#1945" class="Bound">C</a> <a id="1947" href="BasicFunctions.html#1947" class="Bound">D</a> <a id="1949" class="Symbol">:</a> <a id="1951" href="Intro.html#1803" class="Function">Type</a> <a id="1956" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="1957" class="Symbol">}</a>
  <a id="1961" class="Symbol">→</a> <a id="1963" class="Symbol">(</a><a id="1964" href="BasicFunctions.html#1964" class="Bound">h</a> <a id="1966" class="Symbol">:</a> <a id="1968" href="BasicFunctions.html#1945" class="Bound">C</a> <a id="1970" class="Symbol">→</a> <a id="1972" href="BasicFunctions.html#1947" class="Bound">D</a><a id="1973" class="Symbol">)</a> <a id="1975" class="Symbol">→</a> <a id="1977" class="Symbol">(</a><a id="1978" href="BasicFunctions.html#1978" class="Bound">g</a> <a id="1980" class="Symbol">:</a> <a id="1982" href="BasicFunctions.html#1943" class="Bound">B</a> <a id="1984" class="Symbol">→</a> <a id="1986" href="BasicFunctions.html#1945" class="Bound">C</a><a id="1987" class="Symbol">)</a> <a id="1989" class="Symbol">→</a> <a id="1991" class="Symbol">(</a><a id="1992" href="BasicFunctions.html#1992" class="Bound">f</a> <a id="1994" class="Symbol">:</a> <a id="1996" href="BasicFunctions.html#1941" class="Bound">A</a> <a id="1998" class="Symbol">→</a> <a id="2000" href="BasicFunctions.html#1943" class="Bound">B</a><a id="2001" class="Symbol">)</a>
  <a id="2005" class="Comment">-----------------------------------------</a>
  <a id="2049" class="Symbol">→</a> <a id="2051" class="Symbol">((</a><a id="2053" href="BasicFunctions.html#1964" class="Bound">h</a> <a id="2055" href="BasicFunctions.html#1011" class="Function Operator">∘</a> <a id="2057" href="BasicFunctions.html#1978" class="Bound">g</a><a id="2058" class="Symbol">)</a> <a id="2060" href="BasicFunctions.html#1011" class="Function Operator">∘</a> <a id="2062" href="BasicFunctions.html#1992" class="Bound">f</a><a id="2063" class="Symbol">)</a> <a id="2065" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="2068" class="Symbol">(</a><a id="2069" href="BasicFunctions.html#1964" class="Bound">h</a> <a id="2071" href="BasicFunctions.html#1011" class="Function Operator">∘</a> <a id="2073" class="Symbol">(</a><a id="2074" href="BasicFunctions.html#1978" class="Bound">g</a> <a id="2076" href="BasicFunctions.html#1011" class="Function Operator">∘</a> <a id="2078" href="BasicFunctions.html#1992" class="Bound">f</a><a id="2079" class="Symbol">))</a>

<a id="2083" href="BasicFunctions.html#1927" class="Function">∘-rassoc</a> <a id="2092" href="BasicFunctions.html#2092" class="Bound">h</a> <a id="2094" href="BasicFunctions.html#2094" class="Bound">g</a> <a id="2096" href="BasicFunctions.html#2096" class="Bound">f</a> <a id="2098" class="Symbol">=</a> <a id="2100" href="BasicTypes.html#4734" class="Function">sym</a> <a id="2104" class="Symbol">(</a><a id="2105" href="BasicFunctions.html#1651" class="Function">∘-lassoc</a> <a id="2114" href="BasicFunctions.html#2092" class="Bound">h</a> <a id="2116" href="BasicFunctions.html#2094" class="Bound">g</a> <a id="2118" href="BasicFunctions.html#2096" class="Bound">f</a><a id="2119" class="Symbol">)</a>
</pre>


### Application

<pre class="Agda">
<a id="_$_"></a><a id="2164" href="BasicFunctions.html#2164" class="Function Operator">_$_</a>
  <a id="2170" class="Symbol">:</a> <a id="2172" class="Symbol">{</a><a id="2173" href="BasicFunctions.html#2173" class="Bound">A</a> <a id="2175" class="Symbol">:</a> <a id="2177" href="Intro.html#1803" class="Function">Type</a> <a id="2182" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="2184" class="Symbol">}</a> <a id="2186" class="Symbol">{</a><a id="2187" href="BasicFunctions.html#2187" class="Bound">B</a> <a id="2189" class="Symbol">:</a> <a id="2191" href="BasicFunctions.html#2173" class="Bound">A</a> <a id="2193" class="Symbol">→</a> <a id="2195" href="Intro.html#1803" class="Function">Type</a> <a id="2200" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="2202" class="Symbol">}</a>
  <a id="2206" class="Symbol">→</a> <a id="2208" class="Symbol">(∀</a> <a id="2211" href="BasicFunctions.html#2211" class="Bound">x</a> <a id="2213" class="Symbol">→</a> <a id="2215" href="BasicFunctions.html#2187" class="Bound">B</a> <a id="2217" href="BasicFunctions.html#2211" class="Bound">x</a><a id="2218" class="Symbol">)</a>
  <a id="2222" class="Comment">-------------</a>
  <a id="2238" class="Symbol">→</a> <a id="2240" class="Symbol">(∀</a> <a id="2243" href="BasicFunctions.html#2243" class="Bound">x</a> <a id="2245" class="Symbol">→</a> <a id="2247" href="BasicFunctions.html#2187" class="Bound">B</a> <a id="2249" href="BasicFunctions.html#2243" class="Bound">x</a><a id="2250" class="Symbol">)</a>

<a id="2253" href="BasicFunctions.html#2253" class="Bound">f</a> <a id="2255" href="BasicFunctions.html#2164" class="Function Operator">$</a> <a id="2257" href="BasicFunctions.html#2257" class="Bound">x</a> <a id="2259" class="Symbol">=</a> <a id="2261" href="BasicFunctions.html#2253" class="Bound">f</a> <a id="2263" href="BasicFunctions.html#2257" class="Bound">x</a>

<a id="2266" class="Keyword">infixr</a> <a id="2273" class="Number">0</a> <a id="2275" href="BasicFunctions.html#2164" class="Function Operator">_$_</a>
</pre>

### Coproduct manipulation

Functions handy to manipulate coproducts:

<pre class="Agda">
<a id="+-map"></a><a id="2375" href="BasicFunctions.html#2375" class="Function">+-map</a>
  <a id="2383" class="Symbol">:</a> <a id="2385" class="Symbol">∀</a> <a id="2387" class="Symbol">{</a><a id="2388" href="BasicFunctions.html#2388" class="Bound">i</a> <a id="2390" href="BasicFunctions.html#2390" class="Bound">j</a> <a id="2392" href="BasicFunctions.html#2392" class="Bound">k</a> <a id="2394" href="BasicFunctions.html#2394" class="Bound">l</a><a id="2395" class="Symbol">}</a> <a id="2397" class="Symbol">{</a><a id="2398" href="BasicFunctions.html#2398" class="Bound">A</a> <a id="2400" class="Symbol">:</a> <a id="2402" href="Intro.html#1803" class="Function">Type</a> <a id="2407" href="BasicFunctions.html#2388" class="Bound">i</a><a id="2408" class="Symbol">}</a> <a id="2410" class="Symbol">{</a><a id="2411" href="BasicFunctions.html#2411" class="Bound">B</a> <a id="2413" class="Symbol">:</a> <a id="2415" href="Intro.html#1803" class="Function">Type</a> <a id="2420" href="BasicFunctions.html#2390" class="Bound">j</a><a id="2421" class="Symbol">}</a> <a id="2423" class="Symbol">{</a><a id="2424" href="BasicFunctions.html#2424" class="Bound">A&#39;</a> <a id="2427" class="Symbol">:</a> <a id="2429" href="Intro.html#1803" class="Function">Type</a> <a id="2434" href="BasicFunctions.html#2392" class="Bound">k</a><a id="2435" class="Symbol">}</a> <a id="2437" class="Symbol">{</a><a id="2438" href="BasicFunctions.html#2438" class="Bound">B&#39;</a> <a id="2441" class="Symbol">:</a> <a id="2443" href="Intro.html#1803" class="Function">Type</a> <a id="2448" href="BasicFunctions.html#2394" class="Bound">l</a><a id="2449" class="Symbol">}</a>
  <a id="2453" class="Symbol">→</a> <a id="2455" class="Symbol">(</a><a id="2456" href="BasicFunctions.html#2398" class="Bound">A</a> <a id="2458" class="Symbol">→</a> <a id="2460" href="BasicFunctions.html#2424" class="Bound">A&#39;</a><a id="2462" class="Symbol">)</a>
  <a id="2466" class="Symbol">→</a> <a id="2468" class="Symbol">(</a><a id="2469" href="BasicFunctions.html#2411" class="Bound">B</a> <a id="2471" class="Symbol">→</a> <a id="2473" href="BasicFunctions.html#2438" class="Bound">B&#39;</a><a id="2475" class="Symbol">)</a>
  <a id="2479" class="Symbol">→</a> <a id="2481" href="BasicFunctions.html#2398" class="Bound">A</a> <a id="2483" href="BasicTypes.html#2342" class="Datatype Operator">+</a> <a id="2485" href="BasicFunctions.html#2411" class="Bound">B</a> <a id="2487" class="Symbol">→</a> <a id="2489" href="BasicFunctions.html#2424" class="Bound">A&#39;</a> <a id="2492" href="BasicTypes.html#2342" class="Datatype Operator">+</a> <a id="2494" href="BasicFunctions.html#2438" class="Bound">B&#39;</a>

<a id="2498" href="BasicFunctions.html#2375" class="Function">+-map</a> <a id="2504" href="BasicFunctions.html#2504" class="Bound">f</a> <a id="2506" href="BasicFunctions.html#2506" class="Bound">g</a> <a id="2508" class="Symbol">=</a> <a id="2510" href="BasicTypes.html#2805" class="Function">cases</a> <a id="2516" class="Symbol">(</a><a id="2517" href="BasicFunctions.html#2504" class="Bound">f</a> <a id="2519" href="BasicFunctions.html#1329" class="Function Operator">:&gt;</a> <a id="2522" href="BasicTypes.html#2511" class="InductiveConstructor">left</a><a id="2526" class="Symbol">)</a> <a id="2528" class="Symbol">(</a><a id="2529" href="BasicFunctions.html#2506" class="Bound">g</a> <a id="2531" href="BasicFunctions.html#1329" class="Function Operator">:&gt;</a> <a id="2534" href="BasicTypes.html#2531" class="InductiveConstructor">right</a><a id="2539" class="Symbol">)</a>

<a id="2542" class="Keyword">syntax</a> <a id="2549" href="BasicFunctions.html#2375" class="Function">+-map</a> <a id="2555" class="Bound">f</a> <a id="2557" class="Bound">g</a> <a id="2559" class="Symbol">=</a> <a id="2561" class="Function">〈</a> <a id="2563" class="Bound">f</a> <a id="2565" class="Function">⊕</a> <a id="2567" class="Bound">g</a> <a id="2569" class="Function">〉</a>  <a id="2572" class="Comment">-- Obs: Note the space after the left bracket.</a>
</pre>

<pre class="Agda">
<a id="parallell"></a><a id="2644" href="BasicFunctions.html#2644" class="Function">parallell</a>
  <a id="2656" class="Symbol">:</a> <a id="2658" class="Symbol">{</a><a id="2659" href="BasicFunctions.html#2659" class="Bound">A</a> <a id="2661" class="Symbol">:</a> <a id="2663" href="Intro.html#1803" class="Function">Type</a> <a id="2668" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="2670" class="Symbol">}</a> <a id="2672" class="Symbol">{</a><a id="2673" href="BasicFunctions.html#2673" class="Bound">B</a> <a id="2675" class="Symbol">:</a> <a id="2677" href="BasicFunctions.html#2659" class="Bound">A</a> <a id="2679" class="Symbol">→</a> <a id="2681" href="Intro.html#1803" class="Function">Type</a> <a id="2686" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="2688" class="Symbol">}</a> <a id="2690" class="Symbol">{</a><a id="2691" href="BasicFunctions.html#2691" class="Bound">C</a> <a id="2693" class="Symbol">:</a> <a id="2695" class="Symbol">(</a><a id="2696" href="BasicFunctions.html#2696" class="Bound">a</a> <a id="2698" class="Symbol">:</a> <a id="2700" href="BasicFunctions.html#2659" class="Bound">A</a><a id="2701" class="Symbol">)</a> <a id="2703" class="Symbol">→</a> <a id="2705" href="BasicFunctions.html#2673" class="Bound">B</a> <a id="2707" href="BasicFunctions.html#2696" class="Bound">a</a> <a id="2709" class="Symbol">→</a> <a id="2711" href="Intro.html#1803" class="Function">Type</a> <a id="2716" href="Intro.html#2251" class="Generalizable">ℓₖ</a><a id="2718" class="Symbol">}</a>
  <a id="2722" class="Symbol">→</a> <a id="2724" class="Symbol">(</a><a id="2725" href="BasicFunctions.html#2725" class="Bound">f</a> <a id="2727" class="Symbol">:</a> <a id="2729" class="Symbol">(</a><a id="2730" href="BasicFunctions.html#2730" class="Bound">a</a> <a id="2732" class="Symbol">:</a> <a id="2734" href="BasicFunctions.html#2659" class="Bound">A</a><a id="2735" class="Symbol">)</a> <a id="2737" class="Symbol">→</a> <a id="2739" href="BasicFunctions.html#2673" class="Bound">B</a> <a id="2741" href="BasicFunctions.html#2730" class="Bound">a</a><a id="2742" class="Symbol">)</a>
  <a id="2746" class="Symbol">→</a> <a id="2748" class="Symbol">((</a><a id="2750" href="BasicFunctions.html#2750" class="Bound">a</a> <a id="2752" class="Symbol">:</a> <a id="2754" href="BasicFunctions.html#2659" class="Bound">A</a><a id="2755" class="Symbol">)</a> <a id="2757" class="Symbol">→</a> <a id="2759" href="BasicFunctions.html#2691" class="Bound">C</a> <a id="2761" href="BasicFunctions.html#2750" class="Bound">a</a> <a id="2763" class="Symbol">(</a><a id="2764" href="BasicFunctions.html#2725" class="Bound">f</a> <a id="2766" href="BasicFunctions.html#2750" class="Bound">a</a><a id="2767" class="Symbol">))</a>
  <a id="2772" class="Comment">-------------------------</a>
  <a id="2800" class="Symbol">→</a> <a id="2802" class="Symbol">(</a><a id="2803" href="BasicFunctions.html#2803" class="Bound">a</a> <a id="2805" class="Symbol">:</a> <a id="2807" href="BasicFunctions.html#2659" class="Bound">A</a><a id="2808" class="Symbol">)</a> <a id="2810" class="Symbol">→</a> <a id="2812" href="BasicTypes.html#1497" class="Record">∑</a> <a id="2814" class="Symbol">(</a><a id="2815" href="BasicFunctions.html#2673" class="Bound">B</a> <a id="2817" href="BasicFunctions.html#2803" class="Bound">a</a><a id="2818" class="Symbol">)</a> <a id="2820" class="Symbol">(</a><a id="2821" href="BasicFunctions.html#2691" class="Bound">C</a> <a id="2823" href="BasicFunctions.html#2803" class="Bound">a</a><a id="2824" class="Symbol">)</a>

<a id="2827" href="BasicFunctions.html#2644" class="Function">parallell</a><a id="2836" class="Bound"> </a><a id="2837" href="BasicFunctions.html#2837" class="Bound">f</a> <a id="2839" href="BasicFunctions.html#2839" class="Bound">g</a><a id="2840" class="Function"> </a><a id="2841" href="BasicFunctions.html#2841" class="Bound">a</a><a id="2842" class="Bound"> </a><a id="2843" class="Symbol">=</a><a id="2844" class="Function"> </a><a id="2845" class="Symbol">(</a><a id="2846" href="BasicFunctions.html#2837" class="Bound">f</a> <a id="2848" href="BasicFunctions.html#2841" class="Bound">a</a> <a id="2850" href="BasicTypes.html#1572" class="InductiveConstructor Operator">,</a> <a id="2852" href="BasicFunctions.html#2839" class="Bound">g</a> <a id="2854" href="BasicFunctions.html#2841" class="Bound">a</a><a id="2855" class="Symbol">)</a>

<a id="2858" class="Keyword">syntax</a> <a id="2865" href="BasicFunctions.html#2644" class="Function">parallell</a> <a id="2875" class="Bound">f</a> <a id="2877" class="Bound">g</a> <a id="2879" class="Symbol">=</a> <a id="2881" class="Function">〈</a> <a id="2883" class="Bound">f</a> <a id="2885" class="Function">×</a> <a id="2887" class="Bound">g</a> <a id="2889" class="Function">〉</a>
</pre>

### Curryfication

<pre class="Agda">
<a id="curry"></a><a id="2935" href="BasicFunctions.html#2935" class="Function">curry</a>
  <a id="2943" class="Symbol">:</a> <a id="2945" class="Symbol">{</a><a id="2946" href="BasicFunctions.html#2946" class="Bound">A</a> <a id="2948" class="Symbol">:</a> <a id="2950" href="Intro.html#1803" class="Function">Type</a> <a id="2955" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="2957" class="Symbol">}</a> <a id="2959" class="Symbol">{</a><a id="2960" href="BasicFunctions.html#2960" class="Bound">B</a> <a id="2962" class="Symbol">:</a> <a id="2964" href="BasicFunctions.html#2946" class="Bound">A</a> <a id="2966" class="Symbol">→</a> <a id="2968" href="Intro.html#1803" class="Function">Type</a> <a id="2973" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="2975" class="Symbol">}</a> <a id="2977" class="Symbol">{</a><a id="2978" href="BasicFunctions.html#2978" class="Bound">C</a> <a id="2980" class="Symbol">:</a> <a id="2982" href="BasicTypes.html#1680" class="Function">Σ</a> <a id="2984" href="BasicFunctions.html#2946" class="Bound">A</a> <a id="2986" href="BasicFunctions.html#2960" class="Bound">B</a> <a id="2988" class="Symbol">→</a> <a id="2990" href="Intro.html#1803" class="Function">Type</a> <a id="2995" href="Intro.html#2251" class="Generalizable">ℓₖ</a><a id="2997" class="Symbol">}</a>
  <a id="3001" class="Symbol">→</a> <a id="3003" class="Symbol">((</a><a id="3005" href="BasicFunctions.html#3005" class="Bound">s</a> <a id="3007" class="Symbol">:</a> <a id="3009" href="BasicTypes.html#1497" class="Record">∑</a> <a id="3011" href="BasicFunctions.html#2946" class="Bound">A</a> <a id="3013" href="BasicFunctions.html#2960" class="Bound">B</a><a id="3014" class="Symbol">)</a> <a id="3016" class="Symbol">→</a> <a id="3018" href="BasicFunctions.html#2978" class="Bound">C</a> <a id="3020" href="BasicFunctions.html#3005" class="Bound">s</a><a id="3021" class="Symbol">)</a>
  <a id="3025" class="Comment">---------------------</a>
  <a id="3049" class="Symbol">→</a> <a id="3051" class="Symbol">((</a><a id="3053" href="BasicFunctions.html#3053" class="Bound">x</a> <a id="3055" class="Symbol">:</a> <a id="3057" href="BasicFunctions.html#2946" class="Bound">A</a><a id="3058" class="Symbol">)(</a><a id="3060" href="BasicFunctions.html#3060" class="Bound">y</a> <a id="3062" class="Symbol">:</a> <a id="3064" href="BasicFunctions.html#2960" class="Bound">B</a> <a id="3066" href="BasicFunctions.html#3053" class="Bound">x</a><a id="3067" class="Symbol">)</a> <a id="3069" class="Symbol">→</a> <a id="3071" href="BasicFunctions.html#2978" class="Bound">C</a> <a id="3073" class="Symbol">(</a><a id="3074" href="BasicFunctions.html#3053" class="Bound">x</a> <a id="3076" href="BasicTypes.html#1572" class="InductiveConstructor Operator">,</a> <a id="3078" href="BasicFunctions.html#3060" class="Bound">y</a><a id="3079" class="Symbol">))</a>

<a id="3083" href="BasicFunctions.html#2935" class="Function">curry</a> <a id="3089" href="BasicFunctions.html#3089" class="Bound">f</a> <a id="3091" href="BasicFunctions.html#3091" class="Bound">x</a> <a id="3093" href="BasicFunctions.html#3093" class="Bound">y</a> <a id="3095" class="Symbol">=</a> <a id="3097" href="BasicFunctions.html#3089" class="Bound">f</a> <a id="3099" class="Symbol">(</a><a id="3100" href="BasicFunctions.html#3091" class="Bound">x</a> <a id="3102" href="BasicTypes.html#1572" class="InductiveConstructor Operator">,</a> <a id="3104" href="BasicFunctions.html#3093" class="Bound">y</a><a id="3105" class="Symbol">)</a>
</pre>

### Uncurryfication

<pre class="Agda">
<a id="unCurry"></a><a id="3153" href="BasicFunctions.html#3153" class="Function">unCurry</a>
  <a id="3163" class="Symbol">:</a> <a id="3165" class="Symbol">{</a><a id="3166" href="BasicFunctions.html#3166" class="Bound">A</a> <a id="3168" class="Symbol">:</a> <a id="3170" href="Intro.html#1803" class="Function">Type</a> <a id="3175" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="3177" class="Symbol">}{</a><a id="3179" href="BasicFunctions.html#3179" class="Bound">B</a> <a id="3181" class="Symbol">:</a> <a id="3183" href="BasicFunctions.html#3166" class="Bound">A</a> <a id="3185" class="Symbol">→</a> <a id="3187" href="Intro.html#1803" class="Function">Type</a> <a id="3192" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="3194" class="Symbol">}{</a><a id="3196" href="BasicFunctions.html#3196" class="Bound">C</a> <a id="3198" class="Symbol">:</a> <a id="3200" href="Intro.html#1803" class="Function">Type</a> <a id="3205" href="Intro.html#2251" class="Generalizable">ℓₖ</a><a id="3207" class="Symbol">}</a>
  <a id="3211" class="Symbol">→</a> <a id="3213" class="Symbol">(</a><a id="3214" href="BasicFunctions.html#3214" class="Bound">D</a> <a id="3216" class="Symbol">:</a> <a id="3218" class="Symbol">(</a><a id="3219" href="BasicFunctions.html#3219" class="Bound">a</a> <a id="3221" class="Symbol">:</a> <a id="3223" href="BasicFunctions.html#3166" class="Bound">A</a><a id="3224" class="Symbol">)</a> <a id="3226" class="Symbol">→</a> <a id="3228" href="BasicFunctions.html#3179" class="Bound">B</a> <a id="3230" href="BasicFunctions.html#3219" class="Bound">a</a> <a id="3232" class="Symbol">→</a> <a id="3234" href="BasicFunctions.html#3196" class="Bound">C</a><a id="3235" class="Symbol">)</a>
  <a id="3239" class="Comment">------------------------</a>
  <a id="3266" class="Symbol">→</a> <a id="3268" class="Symbol">(</a><a id="3269" href="BasicFunctions.html#3269" class="Bound">p</a> <a id="3271" class="Symbol">:</a> <a id="3273" href="BasicTypes.html#1497" class="Record">∑</a> <a id="3275" href="BasicFunctions.html#3166" class="Bound">A</a> <a id="3277" href="BasicFunctions.html#3179" class="Bound">B</a><a id="3278" class="Symbol">)</a> <a id="3280" class="Symbol">→</a> <a id="3282" href="BasicFunctions.html#3196" class="Bound">C</a>

<a id="3285" href="BasicFunctions.html#3153" class="Function">unCurry</a> <a id="3293" href="BasicFunctions.html#3293" class="Bound">D</a> <a id="3295" href="BasicFunctions.html#3295" class="Bound">p</a> <a id="3297" class="Symbol">=</a> <a id="3299" href="BasicFunctions.html#3293" class="Bound">D</a> <a id="3301" class="Symbol">(</a><a id="3302" href="BasicTypes.html#1754" class="Function">proj₁</a> <a id="3308" href="BasicFunctions.html#3295" class="Bound">p</a><a id="3309" class="Symbol">)</a> <a id="3311" class="Symbol">(</a><a id="3312" href="BasicTypes.html#1765" class="Function">proj₂</a> <a id="3318" href="BasicFunctions.html#3295" class="Bound">p</a><a id="3319" class="Symbol">)</a>
</pre>

<pre class="Agda">
<a id="uncurry"></a><a id="3346" href="BasicFunctions.html#3346" class="Function">uncurry</a>
  <a id="3356" class="Symbol">:</a> <a id="3358" class="Symbol">{</a><a id="3359" href="BasicFunctions.html#3359" class="Bound">A</a> <a id="3361" class="Symbol">:</a> <a id="3363" href="Intro.html#1803" class="Function">Type</a> <a id="3368" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="3370" class="Symbol">}</a> <a id="3372" class="Symbol">{</a><a id="3373" href="BasicFunctions.html#3373" class="Bound">B</a> <a id="3375" class="Symbol">:</a> <a id="3377" href="BasicFunctions.html#3359" class="Bound">A</a> <a id="3379" class="Symbol">→</a> <a id="3381" href="Intro.html#1803" class="Function">Type</a> <a id="3386" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="3388" class="Symbol">}</a> <a id="3390" class="Symbol">{</a><a id="3391" href="BasicFunctions.html#3391" class="Bound">C</a> <a id="3393" class="Symbol">:</a> <a id="3395" class="Symbol">(</a><a id="3396" href="BasicFunctions.html#3396" class="Bound">a</a> <a id="3398" class="Symbol">:</a> <a id="3400" href="BasicFunctions.html#3359" class="Bound">A</a><a id="3401" class="Symbol">)</a> <a id="3403" class="Symbol">→</a> <a id="3405" href="BasicFunctions.html#3373" class="Bound">B</a> <a id="3407" href="BasicFunctions.html#3396" class="Bound">a</a> <a id="3409" class="Symbol">→</a> <a id="3411" href="Intro.html#1803" class="Function">Type</a> <a id="3416" href="Intro.html#2251" class="Generalizable">ℓₖ</a><a id="3418" class="Symbol">}</a>
  <a id="3422" class="Symbol">→</a> <a id="3424" class="Symbol">(</a><a id="3425" href="BasicFunctions.html#3425" class="Bound">f</a> <a id="3427" class="Symbol">:</a> <a id="3429" class="Symbol">(</a><a id="3430" href="BasicFunctions.html#3430" class="Bound">a</a> <a id="3432" class="Symbol">:</a> <a id="3434" href="BasicFunctions.html#3359" class="Bound">A</a><a id="3435" class="Symbol">)</a> <a id="3437" class="Symbol">(</a><a id="3438" href="BasicFunctions.html#3438" class="Bound">b</a> <a id="3440" class="Symbol">:</a> <a id="3442" href="BasicFunctions.html#3373" class="Bound">B</a> <a id="3444" href="BasicFunctions.html#3430" class="Bound">a</a><a id="3445" class="Symbol">)</a> <a id="3447" class="Symbol">→</a> <a id="3449" href="BasicFunctions.html#3391" class="Bound">C</a> <a id="3451" href="BasicFunctions.html#3430" class="Bound">a</a> <a id="3453" href="BasicFunctions.html#3438" class="Bound">b</a><a id="3454" class="Symbol">)</a>
  <a id="3458" class="Comment">---------------------------------</a>
  <a id="3494" class="Symbol">→</a> <a id="3496" class="Symbol">(</a><a id="3497" href="BasicFunctions.html#3497" class="Bound">p</a> <a id="3499" class="Symbol">:</a> <a id="3501" href="BasicTypes.html#1497" class="Record">∑</a> <a id="3503" href="BasicFunctions.html#3359" class="Bound">A</a> <a id="3505" href="BasicFunctions.html#3373" class="Bound">B</a><a id="3506" class="Symbol">)</a> <a id="3508" class="Symbol">→</a> <a id="3510" href="BasicFunctions.html#3391" class="Bound">C</a> <a id="3512" class="Symbol">(</a><a id="3513" href="BasicTypes.html#1588" class="Field">π₁</a> <a id="3516" href="BasicFunctions.html#3497" class="Bound">p</a><a id="3517" class="Symbol">)</a> <a id="3519" class="Symbol">(</a><a id="3520" href="BasicTypes.html#1599" class="Field">π₂</a> <a id="3523" href="BasicFunctions.html#3497" class="Bound">p</a><a id="3524" class="Symbol">)</a>

<a id="3527" href="BasicFunctions.html#3346" class="Function">uncurry</a> <a id="3535" href="BasicFunctions.html#3535" class="Bound">f</a> <a id="3537" class="Symbol">(</a><a id="3538" href="BasicFunctions.html#3538" class="Bound">x</a> <a id="3540" href="BasicTypes.html#1572" class="InductiveConstructor Operator">,</a> <a id="3542" href="BasicFunctions.html#3542" class="Bound">y</a><a id="3543" class="Symbol">)</a> <a id="3545" class="Symbol">=</a> <a id="3547" href="BasicFunctions.html#3535" class="Bound">f</a> <a id="3549" href="BasicFunctions.html#3538" class="Bound">x</a> <a id="3551" href="BasicFunctions.html#3542" class="Bound">y</a>
</pre>

### Heterogeneous equality

<pre class="Agda">
<a id="3606" class="Keyword">data</a>
  <a id="HEq"></a><a id="3613" href="BasicFunctions.html#3613" class="Datatype">HEq</a> <a id="3617" class="Symbol">(</a><a id="3618" href="BasicFunctions.html#3618" class="Bound">A</a> <a id="3620" class="Symbol">:</a> <a id="3622" href="Intro.html#1803" class="Function">Type</a> <a id="3627" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="3628" class="Symbol">)</a>
    <a id="3634" class="Symbol">:</a> <a id="3636" class="Symbol">(</a><a id="3637" href="BasicFunctions.html#3637" class="Bound">B</a> <a id="3639" class="Symbol">:</a> <a id="3641" href="Intro.html#1803" class="Function">Type</a> <a id="3646" href="BasicFunctions.html#3627" class="Bound">ℓ</a><a id="3647" class="Symbol">)</a>
    <a id="3653" class="Symbol">→</a> <a id="3655" class="Symbol">(</a><a id="3656" href="BasicFunctions.html#3656" class="Bound">α</a> <a id="3658" class="Symbol">:</a> <a id="3660" href="BasicFunctions.html#3618" class="Bound">A</a> <a id="3662" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="3665" href="BasicFunctions.html#3637" class="Bound">B</a><a id="3666" class="Symbol">)</a> <a id="3668" class="Symbol">(</a><a id="3669" href="BasicFunctions.html#3669" class="Bound">a</a> <a id="3671" class="Symbol">:</a> <a id="3673" href="BasicFunctions.html#3618" class="Bound">A</a><a id="3674" class="Symbol">)</a> <a id="3676" class="Symbol">(</a><a id="3677" href="BasicFunctions.html#3677" class="Bound">b</a> <a id="3679" class="Symbol">:</a> <a id="3681" href="BasicFunctions.html#3637" class="Bound">B</a><a id="3682" class="Symbol">)</a>
    <a id="3688" class="Symbol">→</a> <a id="3690" href="Intro.html#1803" class="Function">Type</a> <a id="3695" class="Symbol">(</a><a id="3696" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="3701" href="BasicFunctions.html#3627" class="Bound">ℓ</a><a id="3702" class="Symbol">)</a>
  <a id="3706" class="Keyword">where</a>
  <a id="HEq.idp"></a><a id="3714" href="BasicFunctions.html#3714" class="InductiveConstructor">idp</a> <a id="3718" class="Symbol">:</a> <a id="3720" class="Symbol">{</a><a id="3721" href="BasicFunctions.html#3721" class="Bound">a</a> <a id="3723" class="Symbol">:</a> <a id="3725" href="BasicFunctions.html#3618" class="Bound">A</a><a id="3726" class="Symbol">}</a> <a id="3728" class="Symbol">→</a> <a id="3730" href="BasicFunctions.html#3613" class="Datatype">HEq</a> <a id="3734" href="BasicFunctions.html#3618" class="Bound">A</a> <a id="3736" href="BasicFunctions.html#3618" class="Bound">A</a> <a id="3738" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a> <a id="3742" href="BasicFunctions.html#3721" class="Bound">a</a> <a id="3744" href="BasicFunctions.html#3721" class="Bound">a</a>
</pre>

### Path functions

#### Composition of paths

{: .foldable until="6" }
<pre class="Agda">
<a id="_·_"></a><a id="3843" href="BasicFunctions.html#3843" class="Function Operator">_·_</a>
  <a id="3849" class="Symbol">:</a> <a id="3851" class="Symbol">{</a><a id="3852" href="BasicFunctions.html#3852" class="Bound">A</a> <a id="3854" class="Symbol">:</a> <a id="3856" href="Intro.html#1803" class="Function">Type</a> <a id="3861" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="3862" class="Symbol">}</a> <a id="3864" class="Symbol">{</a><a id="3865" href="BasicFunctions.html#3865" class="Bound">x</a> <a id="3867" href="BasicFunctions.html#3867" class="Bound">y</a> <a id="3869" href="BasicFunctions.html#3869" class="Bound">z</a> <a id="3871" class="Symbol">:</a> <a id="3873" href="BasicFunctions.html#3852" class="Bound">A</a><a id="3874" class="Symbol">}</a>
  <a id="3878" class="Symbol">→</a> <a id="3880" class="Symbol">(</a><a id="3881" href="BasicFunctions.html#3881" class="Bound">p</a> <a id="3883" class="Symbol">:</a> <a id="3885" href="BasicFunctions.html#3865" class="Bound">x</a> <a id="3887" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="3890" href="BasicFunctions.html#3867" class="Bound">y</a><a id="3891" class="Symbol">)</a>
  <a id="3895" class="Symbol">→</a> <a id="3897" class="Symbol">(</a><a id="3898" href="BasicFunctions.html#3898" class="Bound">q</a> <a id="3900" class="Symbol">:</a> <a id="3902" href="BasicFunctions.html#3867" class="Bound">y</a> <a id="3904" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="3907" href="BasicFunctions.html#3869" class="Bound">z</a><a id="3908" class="Symbol">)</a>
  <a id="3912" class="Comment">--------------</a>
  <a id="3929" class="Symbol">→</a> <a id="3931" href="BasicFunctions.html#3865" class="Bound">x</a> <a id="3933" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="3936" href="BasicFunctions.html#3869" class="Bound">z</a>

<a id="3939" href="BasicFunctions.html#3843" class="Function Operator">_·_</a> <a id="3943" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a> <a id="3947" href="BasicFunctions.html#3947" class="Bound">q</a> <a id="3949" class="Symbol">=</a> <a id="3951" href="BasicFunctions.html#3947" class="Bound">q</a>

<a id="3954" class="Keyword">infixl</a> <a id="3961" class="Number">50</a> <a id="3964" href="BasicFunctions.html#3843" class="Function Operator">_·_</a>
</pre>

![path](/assets/ipe-images/path-concatenation.png){: width="60%" align="right" }

#### Inverse of paths

<pre class="Agda">
<a id="inv"></a><a id="4098" href="BasicFunctions.html#4098" class="Function">inv</a>
  <a id="4104" class="Symbol">:</a> <a id="4106" class="Symbol">{</a><a id="4107" href="BasicFunctions.html#4107" class="Bound">A</a> <a id="4109" class="Symbol">:</a> <a id="4111" href="Intro.html#1803" class="Function">Type</a> <a id="4116" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="4117" class="Symbol">}</a> <a id="4119" class="Symbol">{</a><a id="4120" href="BasicFunctions.html#4120" class="Bound">a</a> <a id="4122" href="BasicFunctions.html#4122" class="Bound">b</a> <a id="4124" class="Symbol">:</a> <a id="4126" href="BasicFunctions.html#4107" class="Bound">A</a><a id="4127" class="Symbol">}</a>
  <a id="4131" class="Symbol">→</a> <a id="4133" href="BasicFunctions.html#4120" class="Bound">a</a> <a id="4135" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="4138" href="BasicFunctions.html#4122" class="Bound">b</a>
  <a id="4142" class="Comment">--------</a>
  <a id="4153" class="Symbol">→</a> <a id="4155" href="BasicFunctions.html#4122" class="Bound">b</a> <a id="4157" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="4160" href="BasicFunctions.html#4120" class="Bound">a</a>

<a id="4163" href="BasicFunctions.html#4098" class="Function">inv</a> <a id="4167" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a> <a id="4171" class="Symbol">=</a> <a id="4173" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a>
</pre>

<pre class="Agda">
<a id="4202" class="Comment">-- synonyms for inverse path</a>
<a id="_⁻¹"></a><a id="4231" href="BasicFunctions.html#4231" class="Function Operator">_⁻¹</a> <a id="4235" class="Symbol">=</a> <a id="4237" href="BasicFunctions.html#4098" class="Function">inv</a>
<a id="!_"></a><a id="4241" href="BasicFunctions.html#4241" class="Function Operator">!_</a>  <a id="4245" class="Symbol">=</a> <a id="4247" href="BasicFunctions.html#4098" class="Function">inv</a>

<a id="4252" class="Keyword">infixl</a> <a id="4259" class="Number">60</a> <a id="4262" href="BasicFunctions.html#4231" class="Function Operator">_⁻¹</a> <a id="4266" href="BasicFunctions.html#4241" class="Function Operator">!_</a>
</pre>

### Equational reasoning

Equational reasoning is a way to write readable chains of equalities like
in the following proof.

{% raw %}
```agda
  t : a ≡ e
  t =
    begin
      a ≡⟨ p ⟩
      b ≡⟨ q ⟩
      c ≡⟨ r ⟩
      d ≡⟨ s ⟩
      e
    ∎
```
{% endraw %}

where `p` is a path from `a` to `b`, `q` is a path from `b` to `c`, and so on.

<pre class="Agda">
<a id="4637" class="Keyword">module</a>
  <a id="EquationalReasoning"></a><a id="4646" href="BasicFunctions.html#4646" class="Module">EquationalReasoning</a>
  <a id="4668" class="Symbol">{</a><a id="4669" href="BasicFunctions.html#4669" class="Bound">A</a> <a id="4671" class="Symbol">:</a> <a id="4673" href="Intro.html#1803" class="Function">Type</a> <a id="4678" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="4679" class="Symbol">}</a>
  <a id="4683" class="Keyword">where</a>
</pre>

Definitional equals:

<pre class="Agda">
  <a id="EquationalReasoning._==⟨⟩_"></a><a id="4738" href="BasicFunctions.html#4738" class="Function Operator">_==⟨⟩_</a>
    <a id="4749" class="Symbol">:</a> <a id="4751" class="Symbol">∀</a> <a id="4753" class="Symbol">(</a><a id="4754" href="BasicFunctions.html#4754" class="Bound">x</a> <a id="4756" class="Symbol">{</a><a id="4757" href="BasicFunctions.html#4757" class="Bound">y</a><a id="4758" class="Symbol">}</a> <a id="4760" class="Symbol">:</a> <a id="4762" href="BasicFunctions.html#4669" class="Bound">A</a><a id="4763" class="Symbol">)</a>
    <a id="4769" class="Symbol">→</a> <a id="4771" href="BasicFunctions.html#4754" class="Bound">x</a> <a id="4773" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="4776" href="BasicFunctions.html#4757" class="Bound">y</a> <a id="4778" class="Symbol">→</a> <a id="4780" href="BasicFunctions.html#4754" class="Bound">x</a> <a id="4782" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="4785" href="BasicFunctions.html#4757" class="Bound">y</a>

  <a id="4790" class="Symbol">_</a> <a id="4792" href="BasicFunctions.html#4738" class="Function Operator">==⟨⟩</a> <a id="4797" href="BasicFunctions.html#4797" class="Bound">p</a> <a id="4799" class="Symbol">=</a> <a id="4801" href="BasicFunctions.html#4797" class="Bound">p</a>
</pre>

Synonyms for _==⟨⟩:

<pre class="Agda">
  <a id="EquationalReasoning._==⟨idp⟩_"></a><a id="4851" href="BasicFunctions.html#4851" class="Function Operator">_==⟨idp⟩_</a>  <a id="4862" class="Symbol">=</a> <a id="4864" href="BasicFunctions.html#4738" class="Function Operator">_==⟨⟩_</a>
  <a id="EquationalReasoning._==⟨refl⟩_"></a><a id="4873" href="BasicFunctions.html#4873" class="Function Operator">_==⟨refl⟩_</a> <a id="4884" class="Symbol">=</a> <a id="4886" href="BasicFunctions.html#4738" class="Function Operator">_==⟨⟩_</a>
  <a id="EquationalReasoning._≡⟨⟩_"></a><a id="4895" href="BasicFunctions.html#4895" class="Function Operator">_≡⟨⟩_</a>      <a id="4906" class="Symbol">=</a> <a id="4908" href="BasicFunctions.html#4738" class="Function Operator">_==⟨⟩_</a>

  <a id="4918" class="Keyword">infixr</a> <a id="4925" class="Number">2</a> <a id="4927" href="BasicFunctions.html#4738" class="Function Operator">_==⟨⟩_</a> <a id="4934" href="BasicFunctions.html#4851" class="Function Operator">_==⟨idp⟩_</a> <a id="4944" href="BasicFunctions.html#4873" class="Function Operator">_==⟨refl⟩_</a> <a id="4955" href="BasicFunctions.html#4895" class="Function Operator">_≡⟨⟩_</a>
</pre>

<pre class="Agda">
  <a id="4988" class="Comment">-- chain</a>
  <a id="EquationalReasoning._==⟨_⟩_"></a><a id="4999" href="BasicFunctions.html#4999" class="Function Operator">_==⟨_⟩_</a>
    <a id="5011" class="Symbol">:</a> <a id="5013" class="Symbol">(</a><a id="5014" href="BasicFunctions.html#5014" class="Bound">x</a> <a id="5016" class="Symbol">:</a> <a id="5018" href="BasicFunctions.html#4669" class="Bound">A</a><a id="5019" class="Symbol">)</a> <a id="5021" class="Symbol">{</a><a id="5022" href="BasicFunctions.html#5022" class="Bound">y</a> <a id="5024" href="BasicFunctions.html#5024" class="Bound">z</a> <a id="5026" class="Symbol">:</a> <a id="5028" href="BasicFunctions.html#4669" class="Bound">A</a><a id="5029" class="Symbol">}</a>
    <a id="5035" class="Symbol">→</a> <a id="5037" href="BasicFunctions.html#5014" class="Bound">x</a> <a id="5039" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="5042" href="BasicFunctions.html#5022" class="Bound">y</a>
    <a id="5048" class="Symbol">→</a> <a id="5050" href="BasicFunctions.html#5022" class="Bound">y</a> <a id="5052" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="5055" href="BasicFunctions.html#5024" class="Bound">z</a>
    <a id="5061" class="Symbol">→</a> <a id="5063" href="BasicFunctions.html#5014" class="Bound">x</a> <a id="5065" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="5068" href="BasicFunctions.html#5024" class="Bound">z</a>

  <a id="5073" class="Symbol">_</a> <a id="5075" href="BasicFunctions.html#4999" class="Function Operator">==⟨</a> <a id="5079" href="BasicFunctions.html#5079" class="Bound">thm</a> <a id="5083" href="BasicFunctions.html#4999" class="Function Operator">⟩</a> <a id="5085" href="BasicFunctions.html#5085" class="Bound">q</a> <a id="5087" class="Symbol">=</a> <a id="5089" href="BasicFunctions.html#5079" class="Bound">thm</a> <a id="5093" href="BasicFunctions.html#3843" class="Function Operator">·</a> <a id="5095" href="BasicFunctions.html#5085" class="Bound">q</a>

  <a id="EquationalReasoning._≡⟨_⟩_"></a><a id="5100" href="BasicFunctions.html#5100" class="Function Operator">_≡⟨_⟩_</a> <a id="5107" class="Symbol">=</a> <a id="5109" href="BasicFunctions.html#4999" class="Function Operator">_==⟨_⟩_</a>

  <a id="5120" class="Keyword">infixr</a> <a id="5127" class="Number">2</a> <a id="5129" href="BasicFunctions.html#4999" class="Function Operator">_==⟨_⟩_</a> <a id="5137" href="BasicFunctions.html#5100" class="Function Operator">_≡⟨_⟩_</a>
</pre>

<pre class="Agda">
  <a id="5171" class="Comment">-- Q.E.D</a>
  <a id="EquationalReasoning._∎"></a><a id="5182" href="BasicFunctions.html#5182" class="Function Operator">_∎</a>
    <a id="5189" class="Symbol">:</a> <a id="5191" class="Symbol">(</a><a id="5192" href="BasicFunctions.html#5192" class="Bound">x</a> <a id="5194" class="Symbol">:</a> <a id="5196" href="BasicFunctions.html#4669" class="Bound">A</a><a id="5197" class="Symbol">)</a>
    <a id="5203" class="Symbol">→</a> <a id="5205" href="BasicFunctions.html#5192" class="Bound">x</a> <a id="5207" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="5210" href="BasicFunctions.html#5192" class="Bound">x</a>

  <a id="5215" href="BasicFunctions.html#5182" class="Function Operator">_∎</a> <a id="5218" class="Symbol">=</a> <a id="5220" class="Symbol">λ</a> <a id="5222" href="BasicFunctions.html#5222" class="Bound">x</a> <a id="5224" class="Symbol">→</a> <a id="5226" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a>

  <a id="5233" class="Keyword">infix</a> <a id="5239" class="Number">3</a> <a id="5241" href="BasicFunctions.html#5182" class="Function Operator">_∎</a>
</pre>

<pre class="Agda">
  <a id="5271" class="Comment">-- Begin</a>
  <a id="5282" class="Keyword">infix</a> <a id="5288" class="Number">1</a> <a id="5290" href="BasicFunctions.html#5299" class="Function Operator">begin_</a>
  <a id="EquationalReasoning.begin_"></a><a id="5299" href="BasicFunctions.html#5299" class="Function Operator">begin_</a>
    <a id="5310" class="Symbol">:</a> <a id="5312" class="Symbol">{</a><a id="5313" href="BasicFunctions.html#5313" class="Bound">x</a> <a id="5315" href="BasicFunctions.html#5315" class="Bound">y</a> <a id="5317" class="Symbol">:</a> <a id="5319" href="BasicFunctions.html#4669" class="Bound">A</a><a id="5320" class="Symbol">}</a>
    <a id="5326" class="Symbol">→</a> <a id="5328" href="BasicFunctions.html#5313" class="Bound">x</a> <a id="5330" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="5333" href="BasicFunctions.html#5315" class="Bound">y</a>
    <a id="5339" class="Symbol">→</a> <a id="5341" href="BasicFunctions.html#5313" class="Bound">x</a> <a id="5343" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="5346" href="BasicFunctions.html#5315" class="Bound">y</a>

  <a id="5351" href="BasicFunctions.html#5299" class="Function Operator">begin_</a> <a id="5358" href="BasicFunctions.html#5358" class="Bound">p</a> <a id="5360" class="Symbol">=</a> <a id="5362" href="BasicFunctions.html#5358" class="Bound">p</a>
</pre>

<pre class="Agda">
<a id="5389" class="Keyword">open</a> <a id="5394" href="BasicFunctions.html#4646" class="Module">EquationalReasoning</a> <a id="5414" class="Keyword">public</a>
</pre>
