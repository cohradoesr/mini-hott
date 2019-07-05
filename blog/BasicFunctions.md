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
  <a id="380" class="Symbol">:</a> <a id="382" class="Symbol">{</a><a id="383" href="BasicFunctions.html#383" class="Bound">A</a> <a id="385" class="Symbol">:</a> <a id="387" href="Intro.html#2576" class="Function">Type</a> <a id="392" href="Intro.html#3128" class="Generalizable">ℓ</a><a id="393" class="Symbol">}</a>
  <a id="397" class="Comment">----------------</a>
  <a id="416" class="Symbol">→</a> <a id="418" href="BasicFunctions.html#383" class="Bound">A</a> <a id="420" class="Symbol">→</a> <a id="422" href="BasicFunctions.html#383" class="Bound">A</a>

<a id="425" href="BasicFunctions.html#375" class="Function">id</a> <a id="428" class="Symbol">=</a> <a id="430" class="Symbol">λ</a> <a id="432" href="BasicFunctions.html#432" class="Bound">x</a> <a id="434" class="Symbol">→</a> <a id="436" href="BasicFunctions.html#432" class="Bound">x</a>
</pre>

The identity function on a type `A` is `idf A`.

<pre class="Agda">
<a id="idf"></a><a id="512" href="BasicFunctions.html#512" class="Function">idf</a>
  <a id="518" class="Symbol">:</a> <a id="520" class="Symbol">(</a><a id="521" href="BasicFunctions.html#521" class="Bound">A</a> <a id="523" class="Symbol">:</a> <a id="525" href="Intro.html#2576" class="Function">Type</a> <a id="530" href="Intro.html#3130" class="Generalizable">ℓᵢ</a><a id="532" class="Symbol">)</a>
  <a id="536" class="Comment">---------------</a>
  <a id="554" class="Symbol">→</a> <a id="556" class="Symbol">(</a><a id="557" href="BasicFunctions.html#521" class="Bound">A</a> <a id="559" class="Symbol">→</a> <a id="561" href="BasicFunctions.html#521" class="Bound">A</a><a id="562" class="Symbol">)</a>

<a id="565" href="BasicFunctions.html#512" class="Function">idf</a> <a id="569" href="BasicFunctions.html#569" class="Bound">A</a> <a id="571" class="Symbol">=</a> <a id="573" class="Symbol">λ</a> <a id="575" href="BasicFunctions.html#575" class="Bound">x</a> <a id="577" class="Symbol">→</a> <a id="579" href="BasicFunctions.html#575" class="Bound">x</a>
</pre>


### Constant functions

Constant function at some point `b` is `cst b`

<pre class="Agda">
<a id="cst"></a><a id="679" href="BasicFunctions.html#679" class="Function">cst</a>
  <a id="685" class="Symbol">:</a> <a id="687" class="Symbol">{</a><a id="688" href="BasicFunctions.html#688" class="Bound">A</a> <a id="690" class="Symbol">:</a> <a id="692" href="Intro.html#2576" class="Function">Type</a> <a id="697" href="Intro.html#3130" class="Generalizable">ℓᵢ</a><a id="699" class="Symbol">}</a> <a id="701" class="Symbol">{</a><a id="702" href="BasicFunctions.html#702" class="Bound">B</a> <a id="704" class="Symbol">:</a> <a id="706" href="Intro.html#2576" class="Function">Type</a> <a id="711" href="Intro.html#3133" class="Generalizable">ℓⱼ</a><a id="713" class="Symbol">}</a>
  <a id="717" class="Symbol">→</a> <a id="719" class="Symbol">(</a><a id="720" href="BasicFunctions.html#720" class="Bound">b</a> <a id="722" class="Symbol">:</a> <a id="724" href="BasicFunctions.html#702" class="Bound">B</a><a id="725" class="Symbol">)</a>
  <a id="729" class="Comment">---------</a>
  <a id="741" class="Symbol">→</a> <a id="743" class="Symbol">(</a><a id="744" href="BasicFunctions.html#688" class="Bound">A</a> <a id="746" class="Symbol">→</a> <a id="748" href="BasicFunctions.html#702" class="Bound">B</a><a id="749" class="Symbol">)</a>

<a id="752" href="BasicFunctions.html#679" class="Function">cst</a> <a id="756" href="BasicFunctions.html#756" class="Bound">b</a> <a id="758" class="Symbol">=</a> <a id="760" class="Symbol">λ</a> <a id="762" href="BasicFunctions.html#762" class="Bound">_</a> <a id="764" class="Symbol">→</a> <a id="766" href="BasicFunctions.html#756" class="Bound">b</a>
</pre>

### Logical negation

<pre class="Agda">
<a id="neg¬"></a><a id="815" href="BasicFunctions.html#815" class="Function">neg¬</a>
  <a id="822" class="Symbol">:</a> <a id="824" href="BasicTypes.html#3281" class="Datatype">Bool</a>
  <a id="831" class="Symbol">→</a> <a id="833" href="BasicTypes.html#3281" class="Datatype">Bool</a>

<a id="839" href="BasicFunctions.html#815" class="Function">neg¬</a> <a id="844" href="BasicTypes.html#3495" class="InductiveConstructor">tt</a> <a id="847" class="Symbol">=</a> <a id="849" href="BasicTypes.html#3476" class="InductiveConstructor">ff</a>
<a id="852" href="BasicFunctions.html#815" class="Function">neg¬</a> <a id="857" href="BasicTypes.html#3476" class="InductiveConstructor">ff</a> <a id="860" class="Symbol">=</a> <a id="862" href="BasicTypes.html#3495" class="InductiveConstructor">tt</a>
</pre>

### Composition

A more sophisticated composition function that can handle dependent functions.

{: .foldable until="6" }
<pre class="Agda">
<a id="_∘_"></a><a id="1012" href="BasicFunctions.html#1012" class="Function Operator">_∘_</a>
  <a id="1018" class="Symbol">:</a> <a id="1020" class="Symbol">{</a><a id="1021" href="BasicFunctions.html#1021" class="Bound">A</a> <a id="1023" class="Symbol">:</a> <a id="1025" href="Intro.html#2576" class="Function">Type</a> <a id="1030" href="Intro.html#3130" class="Generalizable">ℓᵢ</a><a id="1032" class="Symbol">}</a> <a id="1034" class="Symbol">{</a><a id="1035" href="BasicFunctions.html#1035" class="Bound">B</a> <a id="1037" class="Symbol">:</a> <a id="1039" href="BasicFunctions.html#1021" class="Bound">A</a> <a id="1041" class="Symbol">→</a> <a id="1043" href="Intro.html#2576" class="Function">Type</a> <a id="1048" href="Intro.html#3133" class="Generalizable">ℓⱼ</a><a id="1050" class="Symbol">}</a> <a id="1052" class="Symbol">{</a><a id="1053" href="BasicFunctions.html#1053" class="Bound">C</a> <a id="1055" class="Symbol">:</a> <a id="1057" class="Symbol">(</a><a id="1058" href="BasicFunctions.html#1058" class="Bound">a</a> <a id="1060" class="Symbol">:</a> <a id="1062" href="BasicFunctions.html#1021" class="Bound">A</a><a id="1063" class="Symbol">)</a> <a id="1065" class="Symbol">→</a> <a id="1067" class="Symbol">(</a><a id="1068" href="BasicFunctions.html#1035" class="Bound">B</a> <a id="1070" href="BasicFunctions.html#1058" class="Bound">a</a> <a id="1072" class="Symbol">→</a> <a id="1074" href="Intro.html#2576" class="Function">Type</a> <a id="1079" href="Intro.html#3136" class="Generalizable">ℓₖ</a><a id="1081" class="Symbol">)}</a>
  <a id="1086" class="Symbol">→</a> <a id="1088" class="Symbol">(</a><a id="1089" href="BasicFunctions.html#1089" class="Bound">g</a> <a id="1091" class="Symbol">:</a> <a id="1093" class="Symbol">{</a><a id="1094" href="BasicFunctions.html#1094" class="Bound">a</a> <a id="1096" class="Symbol">:</a> <a id="1098" href="BasicFunctions.html#1021" class="Bound">A</a><a id="1099" class="Symbol">}</a> <a id="1101" class="Symbol">→</a> <a id="1103" href="BasicTypes.html#2031" class="Function">∏</a> <a id="1105" class="Symbol">(</a><a id="1106" href="BasicFunctions.html#1035" class="Bound">B</a> <a id="1108" href="BasicFunctions.html#1094" class="Bound">a</a><a id="1109" class="Symbol">)</a> <a id="1111" class="Symbol">(</a><a id="1112" href="BasicFunctions.html#1053" class="Bound">C</a> <a id="1114" href="BasicFunctions.html#1094" class="Bound">a</a><a id="1115" class="Symbol">))</a>
  <a id="1120" class="Symbol">→</a> <a id="1122" class="Symbol">(</a><a id="1123" href="BasicFunctions.html#1123" class="Bound">f</a> <a id="1125" class="Symbol">:</a> <a id="1127" href="BasicTypes.html#2031" class="Function">∏</a> <a id="1129" href="BasicFunctions.html#1021" class="Bound">A</a> <a id="1131" href="BasicFunctions.html#1035" class="Bound">B</a><a id="1132" class="Symbol">)</a>
  <a id="1136" class="Comment">-------------------------------</a>
  <a id="1170" class="Symbol">→</a> <a id="1172" href="BasicTypes.html#2031" class="Function">∏</a> <a id="1174" href="BasicFunctions.html#1021" class="Bound">A</a> <a id="1176" class="Symbol">(λ</a> <a id="1179" href="BasicFunctions.html#1179" class="Bound">a</a> <a id="1181" class="Symbol">→</a> <a id="1183" href="BasicFunctions.html#1053" class="Bound">C</a> <a id="1185" href="BasicFunctions.html#1179" class="Bound">a</a> <a id="1187" class="Symbol">(</a><a id="1188" href="BasicFunctions.html#1123" class="Bound">f</a> <a id="1190" href="BasicFunctions.html#1179" class="Bound">a</a><a id="1191" class="Symbol">))</a>

<a id="1195" href="BasicFunctions.html#1195" class="Bound">g</a> <a id="1197" href="BasicFunctions.html#1012" class="Function Operator">∘</a> <a id="1199" href="BasicFunctions.html#1199" class="Bound">f</a> <a id="1201" class="Symbol">=</a> <a id="1203" class="Symbol">λ</a> <a id="1205" href="BasicFunctions.html#1205" class="Bound">x</a> <a id="1207" class="Symbol">→</a> <a id="1209" href="BasicFunctions.html#1195" class="Bound">g</a> <a id="1211" class="Symbol">(</a><a id="1212" href="BasicFunctions.html#1199" class="Bound">f</a> <a id="1214" href="BasicFunctions.html#1205" class="Bound">x</a><a id="1215" class="Symbol">)</a>

<a id="1218" class="Keyword">infixr</a> <a id="1225" class="Number">80</a> <a id="1228" href="BasicFunctions.html#1012" class="Function Operator">_∘_</a>
</pre>

Synonym for composition (diagrammatic version)

{: .foldable until="6" }
<pre class="Agda">
<a id="_:&gt;_"></a><a id="1330" href="BasicFunctions.html#1330" class="Function Operator">_:&gt;_</a>
  <a id="1337" class="Symbol">:</a> <a id="1339" class="Symbol">{</a><a id="1340" href="BasicFunctions.html#1340" class="Bound">A</a> <a id="1342" class="Symbol">:</a> <a id="1344" href="Intro.html#2576" class="Function">Type</a> <a id="1349" href="Intro.html#3130" class="Generalizable">ℓᵢ</a><a id="1351" class="Symbol">}</a> <a id="1353" class="Symbol">{</a><a id="1354" href="BasicFunctions.html#1354" class="Bound">B</a> <a id="1356" class="Symbol">:</a> <a id="1358" href="BasicFunctions.html#1340" class="Bound">A</a> <a id="1360" class="Symbol">→</a> <a id="1362" href="Intro.html#2576" class="Function">Type</a> <a id="1367" href="Intro.html#3133" class="Generalizable">ℓⱼ</a><a id="1369" class="Symbol">}</a> <a id="1371" class="Symbol">{</a><a id="1372" href="BasicFunctions.html#1372" class="Bound">C</a> <a id="1374" class="Symbol">:</a> <a id="1376" class="Symbol">(</a><a id="1377" href="BasicFunctions.html#1377" class="Bound">a</a> <a id="1379" class="Symbol">:</a> <a id="1381" href="BasicFunctions.html#1340" class="Bound">A</a><a id="1382" class="Symbol">)</a> <a id="1384" class="Symbol">→</a> <a id="1386" class="Symbol">(</a><a id="1387" href="BasicFunctions.html#1354" class="Bound">B</a> <a id="1389" href="BasicFunctions.html#1377" class="Bound">a</a> <a id="1391" class="Symbol">→</a> <a id="1393" href="Intro.html#2576" class="Function">Type</a> <a id="1398" href="Intro.html#3136" class="Generalizable">ℓₖ</a><a id="1400" class="Symbol">)}</a>
  <a id="1405" class="Symbol">→</a> <a id="1407" class="Symbol">(</a><a id="1408" href="BasicFunctions.html#1408" class="Bound">f</a> <a id="1410" class="Symbol">:</a> <a id="1412" href="BasicTypes.html#1882" class="Function">Π</a> <a id="1414" href="BasicFunctions.html#1340" class="Bound">A</a> <a id="1416" href="BasicFunctions.html#1354" class="Bound">B</a><a id="1417" class="Symbol">)</a>
  <a id="1421" class="Symbol">→</a> <a id="1423" class="Symbol">(</a><a id="1424" href="BasicFunctions.html#1424" class="Bound">g</a> <a id="1426" class="Symbol">:</a> <a id="1428" class="Symbol">{</a><a id="1429" href="BasicFunctions.html#1429" class="Bound">a</a> <a id="1431" class="Symbol">:</a> <a id="1433" href="BasicFunctions.html#1340" class="Bound">A</a><a id="1434" class="Symbol">}</a> <a id="1436" class="Symbol">→</a> <a id="1438" href="BasicTypes.html#1882" class="Function">Π</a> <a id="1440" class="Symbol">(</a><a id="1441" href="BasicFunctions.html#1354" class="Bound">B</a> <a id="1443" href="BasicFunctions.html#1429" class="Bound">a</a><a id="1444" class="Symbol">)</a> <a id="1446" class="Symbol">(</a><a id="1447" href="BasicFunctions.html#1372" class="Bound">C</a> <a id="1449" href="BasicFunctions.html#1429" class="Bound">a</a><a id="1450" class="Symbol">))</a>
  <a id="1455" class="Comment">-------------------------------</a>
  <a id="1489" class="Symbol">→</a> <a id="1491" href="BasicTypes.html#1882" class="Function">Π</a> <a id="1493" href="BasicFunctions.html#1340" class="Bound">A</a> <a id="1495" class="Symbol">(λ</a> <a id="1498" href="BasicFunctions.html#1498" class="Bound">a</a> <a id="1500" class="Symbol">→</a> <a id="1502" href="BasicFunctions.html#1372" class="Bound">C</a> <a id="1504" href="BasicFunctions.html#1498" class="Bound">a</a> <a id="1506" class="Symbol">(</a><a id="1507" href="BasicFunctions.html#1408" class="Bound">f</a> <a id="1509" href="BasicFunctions.html#1498" class="Bound">a</a><a id="1510" class="Symbol">))</a>

<a id="1514" href="BasicFunctions.html#1514" class="Bound">f</a> <a id="1516" href="BasicFunctions.html#1330" class="Function Operator">:&gt;</a> <a id="1519" href="BasicFunctions.html#1519" class="Bound">g</a> <a id="1521" class="Symbol">=</a> <a id="1523" href="BasicFunctions.html#1519" class="Bound">g</a> <a id="1525" href="BasicFunctions.html#1012" class="Function Operator">∘</a> <a id="1527" href="BasicFunctions.html#1514" class="Bound">f</a>

<a id="1530" class="Keyword">infixr</a> <a id="1537" class="Number">90</a> <a id="1540" href="BasicFunctions.html#1330" class="Function Operator">_:&gt;_</a>
</pre>

#### Associativity of composition

- Left associativity

{: .foldable until="5" }
<pre class="Agda">
<a id="∘-lassoc"></a><a id="1652" href="BasicFunctions.html#1652" class="Function">∘-lassoc</a>
  <a id="1663" class="Symbol">:</a> <a id="1665" class="Symbol">{</a><a id="1666" href="BasicFunctions.html#1666" class="Bound">A</a> <a id="1668" href="BasicFunctions.html#1668" class="Bound">B</a> <a id="1670" href="BasicFunctions.html#1670" class="Bound">C</a> <a id="1672" href="BasicFunctions.html#1672" class="Bound">D</a> <a id="1674" class="Symbol">:</a> <a id="1676" href="Intro.html#2576" class="Function">Type</a> <a id="1681" href="Intro.html#3128" class="Generalizable">ℓ</a><a id="1682" class="Symbol">}</a>
  <a id="1686" class="Symbol">→</a> <a id="1688" class="Symbol">(</a><a id="1689" href="BasicFunctions.html#1689" class="Bound">h</a> <a id="1691" class="Symbol">:</a> <a id="1693" href="BasicFunctions.html#1670" class="Bound">C</a> <a id="1695" class="Symbol">→</a> <a id="1697" href="BasicFunctions.html#1672" class="Bound">D</a><a id="1698" class="Symbol">)</a> <a id="1700" class="Symbol">→</a> <a id="1702" class="Symbol">(</a><a id="1703" href="BasicFunctions.html#1703" class="Bound">g</a> <a id="1705" class="Symbol">:</a> <a id="1707" href="BasicFunctions.html#1668" class="Bound">B</a> <a id="1709" class="Symbol">→</a> <a id="1711" href="BasicFunctions.html#1670" class="Bound">C</a><a id="1712" class="Symbol">)</a> <a id="1714" class="Symbol">→</a> <a id="1716" class="Symbol">(</a><a id="1717" href="BasicFunctions.html#1717" class="Bound">f</a> <a id="1719" class="Symbol">:</a> <a id="1721" href="BasicFunctions.html#1666" class="Bound">A</a> <a id="1723" class="Symbol">→</a> <a id="1725" href="BasicFunctions.html#1668" class="Bound">B</a><a id="1726" class="Symbol">)</a>
  <a id="1730" class="Comment">-----------------------------------------</a>
  <a id="1774" class="Symbol">→</a> <a id="1776" class="Symbol">(</a><a id="1777" href="BasicFunctions.html#1689" class="Bound">h</a> <a id="1779" href="BasicFunctions.html#1012" class="Function Operator">∘</a> <a id="1781" class="Symbol">(</a><a id="1782" href="BasicFunctions.html#1703" class="Bound">g</a> <a id="1784" href="BasicFunctions.html#1012" class="Function Operator">∘</a> <a id="1786" href="BasicFunctions.html#1717" class="Bound">f</a><a id="1787" class="Symbol">))</a> <a id="1790" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="1793" class="Symbol">((</a><a id="1795" href="BasicFunctions.html#1689" class="Bound">h</a> <a id="1797" href="BasicFunctions.html#1012" class="Function Operator">∘</a> <a id="1799" href="BasicFunctions.html#1703" class="Bound">g</a><a id="1800" class="Symbol">)</a> <a id="1802" href="BasicFunctions.html#1012" class="Function Operator">∘</a> <a id="1804" href="BasicFunctions.html#1717" class="Bound">f</a><a id="1805" class="Symbol">)</a>

<a id="1808" href="BasicFunctions.html#1652" class="Function">∘-lassoc</a> <a id="1817" href="BasicFunctions.html#1817" class="Bound">h</a> <a id="1819" href="BasicFunctions.html#1819" class="Bound">g</a> <a id="1821" href="BasicFunctions.html#1821" class="Bound">f</a> <a id="1823" class="Symbol">=</a> <a id="1825" href="BasicTypes.html#4393" class="InductiveConstructor">idp</a> <a id="1829" class="Symbol">{</a><a id="1830" class="Argument">a</a> <a id="1832" class="Symbol">=</a> <a id="1834" class="Symbol">(λ</a> <a id="1837" href="BasicFunctions.html#1837" class="Bound">x</a> <a id="1839" class="Symbol">→</a> <a id="1841" href="BasicFunctions.html#1817" class="Bound">h</a> <a id="1843" class="Symbol">(</a><a id="1844" href="BasicFunctions.html#1819" class="Bound">g</a> <a id="1846" class="Symbol">(</a><a id="1847" href="BasicFunctions.html#1821" class="Bound">f</a> <a id="1849" href="BasicFunctions.html#1837" class="Bound">x</a><a id="1850" class="Symbol">)))}</a>
</pre>

- Right associativity

{: .foldable until="5" }
<pre class="Agda">
<a id="∘-rassoc"></a><a id="1928" href="BasicFunctions.html#1928" class="Function">∘-rassoc</a>
  <a id="1939" class="Symbol">:</a> <a id="1941" class="Symbol">{</a><a id="1942" href="BasicFunctions.html#1942" class="Bound">A</a> <a id="1944" href="BasicFunctions.html#1944" class="Bound">B</a> <a id="1946" href="BasicFunctions.html#1946" class="Bound">C</a> <a id="1948" href="BasicFunctions.html#1948" class="Bound">D</a> <a id="1950" class="Symbol">:</a> <a id="1952" href="Intro.html#2576" class="Function">Type</a> <a id="1957" href="Intro.html#3128" class="Generalizable">ℓ</a><a id="1958" class="Symbol">}</a>
  <a id="1962" class="Symbol">→</a> <a id="1964" class="Symbol">(</a><a id="1965" href="BasicFunctions.html#1965" class="Bound">h</a> <a id="1967" class="Symbol">:</a> <a id="1969" href="BasicFunctions.html#1946" class="Bound">C</a> <a id="1971" class="Symbol">→</a> <a id="1973" href="BasicFunctions.html#1948" class="Bound">D</a><a id="1974" class="Symbol">)</a> <a id="1976" class="Symbol">→</a> <a id="1978" class="Symbol">(</a><a id="1979" href="BasicFunctions.html#1979" class="Bound">g</a> <a id="1981" class="Symbol">:</a> <a id="1983" href="BasicFunctions.html#1944" class="Bound">B</a> <a id="1985" class="Symbol">→</a> <a id="1987" href="BasicFunctions.html#1946" class="Bound">C</a><a id="1988" class="Symbol">)</a> <a id="1990" class="Symbol">→</a> <a id="1992" class="Symbol">(</a><a id="1993" href="BasicFunctions.html#1993" class="Bound">f</a> <a id="1995" class="Symbol">:</a> <a id="1997" href="BasicFunctions.html#1942" class="Bound">A</a> <a id="1999" class="Symbol">→</a> <a id="2001" href="BasicFunctions.html#1944" class="Bound">B</a><a id="2002" class="Symbol">)</a>
  <a id="2006" class="Comment">-----------------------------------------</a>
  <a id="2050" class="Symbol">→</a> <a id="2052" class="Symbol">((</a><a id="2054" href="BasicFunctions.html#1965" class="Bound">h</a> <a id="2056" href="BasicFunctions.html#1012" class="Function Operator">∘</a> <a id="2058" href="BasicFunctions.html#1979" class="Bound">g</a><a id="2059" class="Symbol">)</a> <a id="2061" href="BasicFunctions.html#1012" class="Function Operator">∘</a> <a id="2063" href="BasicFunctions.html#1993" class="Bound">f</a><a id="2064" class="Symbol">)</a> <a id="2066" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="2069" class="Symbol">(</a><a id="2070" href="BasicFunctions.html#1965" class="Bound">h</a> <a id="2072" href="BasicFunctions.html#1012" class="Function Operator">∘</a> <a id="2074" class="Symbol">(</a><a id="2075" href="BasicFunctions.html#1979" class="Bound">g</a> <a id="2077" href="BasicFunctions.html#1012" class="Function Operator">∘</a> <a id="2079" href="BasicFunctions.html#1993" class="Bound">f</a><a id="2080" class="Symbol">))</a>

<a id="2084" href="BasicFunctions.html#1928" class="Function">∘-rassoc</a> <a id="2093" href="BasicFunctions.html#2093" class="Bound">h</a> <a id="2095" href="BasicFunctions.html#2095" class="Bound">g</a> <a id="2097" href="BasicFunctions.html#2097" class="Bound">f</a> <a id="2099" class="Symbol">=</a> <a id="2101" href="BasicTypes.html#4788" class="Function">sym</a> <a id="2105" class="Symbol">(</a><a id="2106" href="BasicFunctions.html#1652" class="Function">∘-lassoc</a> <a id="2115" href="BasicFunctions.html#2093" class="Bound">h</a> <a id="2117" href="BasicFunctions.html#2095" class="Bound">g</a> <a id="2119" href="BasicFunctions.html#2097" class="Bound">f</a><a id="2120" class="Symbol">)</a>
</pre>


### Application

<pre class="Agda">
<a id="_$_"></a><a id="2165" href="BasicFunctions.html#2165" class="Function Operator">_$_</a>
  <a id="2171" class="Symbol">:</a> <a id="2173" class="Symbol">{</a><a id="2174" href="BasicFunctions.html#2174" class="Bound">A</a> <a id="2176" class="Symbol">:</a> <a id="2178" href="Intro.html#2576" class="Function">Type</a> <a id="2183" href="Intro.html#3130" class="Generalizable">ℓᵢ</a><a id="2185" class="Symbol">}</a> <a id="2187" class="Symbol">{</a><a id="2188" href="BasicFunctions.html#2188" class="Bound">B</a> <a id="2190" class="Symbol">:</a> <a id="2192" href="BasicFunctions.html#2174" class="Bound">A</a> <a id="2194" class="Symbol">→</a> <a id="2196" href="Intro.html#2576" class="Function">Type</a> <a id="2201" href="Intro.html#3133" class="Generalizable">ℓⱼ</a><a id="2203" class="Symbol">}</a>
  <a id="2207" class="Symbol">→</a> <a id="2209" class="Symbol">(∀</a> <a id="2212" href="BasicFunctions.html#2212" class="Bound">x</a> <a id="2214" class="Symbol">→</a> <a id="2216" href="BasicFunctions.html#2188" class="Bound">B</a> <a id="2218" href="BasicFunctions.html#2212" class="Bound">x</a><a id="2219" class="Symbol">)</a>
  <a id="2223" class="Comment">-------------</a>
  <a id="2239" class="Symbol">→</a> <a id="2241" class="Symbol">(∀</a> <a id="2244" href="BasicFunctions.html#2244" class="Bound">x</a> <a id="2246" class="Symbol">→</a> <a id="2248" href="BasicFunctions.html#2188" class="Bound">B</a> <a id="2250" href="BasicFunctions.html#2244" class="Bound">x</a><a id="2251" class="Symbol">)</a>

<a id="2254" href="BasicFunctions.html#2254" class="Bound">f</a> <a id="2256" href="BasicFunctions.html#2165" class="Function Operator">$</a> <a id="2258" href="BasicFunctions.html#2258" class="Bound">x</a> <a id="2260" class="Symbol">=</a> <a id="2262" href="BasicFunctions.html#2254" class="Bound">f</a> <a id="2264" href="BasicFunctions.html#2258" class="Bound">x</a>

<a id="2267" class="Keyword">infixr</a> <a id="2274" class="Number">0</a> <a id="2276" href="BasicFunctions.html#2165" class="Function Operator">_$_</a>
</pre>

### Coproduct manipulation

Functions handy to manipulate coproducts:

<pre class="Agda">
<a id="+-map"></a><a id="2376" href="BasicFunctions.html#2376" class="Function">+-map</a>
  <a id="2384" class="Symbol">:</a> <a id="2386" class="Symbol">∀</a> <a id="2388" class="Symbol">{</a><a id="2389" href="BasicFunctions.html#2389" class="Bound">i</a> <a id="2391" href="BasicFunctions.html#2391" class="Bound">j</a> <a id="2393" href="BasicFunctions.html#2393" class="Bound">k</a> <a id="2395" href="BasicFunctions.html#2395" class="Bound">l</a><a id="2396" class="Symbol">}</a> <a id="2398" class="Symbol">{</a><a id="2399" href="BasicFunctions.html#2399" class="Bound">A</a> <a id="2401" class="Symbol">:</a> <a id="2403" href="Intro.html#2576" class="Function">Type</a> <a id="2408" href="BasicFunctions.html#2389" class="Bound">i</a><a id="2409" class="Symbol">}</a> <a id="2411" class="Symbol">{</a><a id="2412" href="BasicFunctions.html#2412" class="Bound">B</a> <a id="2414" class="Symbol">:</a> <a id="2416" href="Intro.html#2576" class="Function">Type</a> <a id="2421" href="BasicFunctions.html#2391" class="Bound">j</a><a id="2422" class="Symbol">}</a> <a id="2424" class="Symbol">{</a><a id="2425" href="BasicFunctions.html#2425" class="Bound">A&#39;</a> <a id="2428" class="Symbol">:</a> <a id="2430" href="Intro.html#2576" class="Function">Type</a> <a id="2435" href="BasicFunctions.html#2393" class="Bound">k</a><a id="2436" class="Symbol">}</a> <a id="2438" class="Symbol">{</a><a id="2439" href="BasicFunctions.html#2439" class="Bound">B&#39;</a> <a id="2442" class="Symbol">:</a> <a id="2444" href="Intro.html#2576" class="Function">Type</a> <a id="2449" href="BasicFunctions.html#2395" class="Bound">l</a><a id="2450" class="Symbol">}</a>
  <a id="2454" class="Symbol">→</a> <a id="2456" class="Symbol">(</a><a id="2457" href="BasicFunctions.html#2399" class="Bound">A</a> <a id="2459" class="Symbol">→</a> <a id="2461" href="BasicFunctions.html#2425" class="Bound">A&#39;</a><a id="2463" class="Symbol">)</a>
  <a id="2467" class="Symbol">→</a> <a id="2469" class="Symbol">(</a><a id="2470" href="BasicFunctions.html#2412" class="Bound">B</a> <a id="2472" class="Symbol">→</a> <a id="2474" href="BasicFunctions.html#2439" class="Bound">B&#39;</a><a id="2476" class="Symbol">)</a>
  <a id="2480" class="Symbol">→</a> <a id="2482" href="BasicFunctions.html#2399" class="Bound">A</a> <a id="2484" href="BasicTypes.html#2351" class="Datatype Operator">+</a> <a id="2486" href="BasicFunctions.html#2412" class="Bound">B</a> <a id="2488" class="Symbol">→</a> <a id="2490" href="BasicFunctions.html#2425" class="Bound">A&#39;</a> <a id="2493" href="BasicTypes.html#2351" class="Datatype Operator">+</a> <a id="2495" href="BasicFunctions.html#2439" class="Bound">B&#39;</a>

<a id="2499" href="BasicFunctions.html#2376" class="Function">+-map</a> <a id="2505" href="BasicFunctions.html#2505" class="Bound">f</a> <a id="2507" href="BasicFunctions.html#2507" class="Bound">g</a> <a id="2509" class="Symbol">=</a> <a id="2511" href="BasicTypes.html#2858" class="Function">cases</a> <a id="2517" class="Symbol">(</a><a id="2518" href="BasicFunctions.html#2505" class="Bound">f</a> <a id="2520" href="BasicFunctions.html#1330" class="Function Operator">:&gt;</a> <a id="2523" href="BasicTypes.html#2520" class="InductiveConstructor">left</a><a id="2527" class="Symbol">)</a> <a id="2529" class="Symbol">(</a><a id="2530" href="BasicFunctions.html#2507" class="Bound">g</a> <a id="2532" href="BasicFunctions.html#1330" class="Function Operator">:&gt;</a> <a id="2535" href="BasicTypes.html#2584" class="InductiveConstructor">right</a><a id="2540" class="Symbol">)</a>

<a id="2543" class="Keyword">syntax</a> <a id="2550" href="BasicFunctions.html#2376" class="Function">+-map</a> <a id="2556" class="Bound">f</a> <a id="2558" class="Bound">g</a> <a id="2560" class="Symbol">=</a> <a id="2562" class="Function">〈</a> <a id="2564" class="Bound">f</a> <a id="2566" class="Function">⊕</a> <a id="2568" class="Bound">g</a> <a id="2570" class="Function">〉</a>  <a id="2573" class="Comment">-- Obs: Note the space after the left bracket.</a>
</pre>

<pre class="Agda">
<a id="parallell"></a><a id="2645" href="BasicFunctions.html#2645" class="Function">parallell</a>
  <a id="2657" class="Symbol">:</a> <a id="2659" class="Symbol">{</a><a id="2660" href="BasicFunctions.html#2660" class="Bound">A</a> <a id="2662" class="Symbol">:</a> <a id="2664" href="Intro.html#2576" class="Function">Type</a> <a id="2669" href="Intro.html#3130" class="Generalizable">ℓᵢ</a><a id="2671" class="Symbol">}</a> <a id="2673" class="Symbol">{</a><a id="2674" href="BasicFunctions.html#2674" class="Bound">B</a> <a id="2676" class="Symbol">:</a> <a id="2678" href="BasicFunctions.html#2660" class="Bound">A</a> <a id="2680" class="Symbol">→</a> <a id="2682" href="Intro.html#2576" class="Function">Type</a> <a id="2687" href="Intro.html#3133" class="Generalizable">ℓⱼ</a><a id="2689" class="Symbol">}</a> <a id="2691" class="Symbol">{</a><a id="2692" href="BasicFunctions.html#2692" class="Bound">C</a> <a id="2694" class="Symbol">:</a> <a id="2696" class="Symbol">(</a><a id="2697" href="BasicFunctions.html#2697" class="Bound">a</a> <a id="2699" class="Symbol">:</a> <a id="2701" href="BasicFunctions.html#2660" class="Bound">A</a><a id="2702" class="Symbol">)</a> <a id="2704" class="Symbol">→</a> <a id="2706" href="BasicFunctions.html#2674" class="Bound">B</a> <a id="2708" href="BasicFunctions.html#2697" class="Bound">a</a> <a id="2710" class="Symbol">→</a> <a id="2712" href="Intro.html#2576" class="Function">Type</a> <a id="2717" href="Intro.html#3136" class="Generalizable">ℓₖ</a><a id="2719" class="Symbol">}</a>
  <a id="2723" class="Symbol">→</a> <a id="2725" class="Symbol">(</a><a id="2726" href="BasicFunctions.html#2726" class="Bound">f</a> <a id="2728" class="Symbol">:</a> <a id="2730" class="Symbol">(</a><a id="2731" href="BasicFunctions.html#2731" class="Bound">a</a> <a id="2733" class="Symbol">:</a> <a id="2735" href="BasicFunctions.html#2660" class="Bound">A</a><a id="2736" class="Symbol">)</a> <a id="2738" class="Symbol">→</a> <a id="2740" href="BasicFunctions.html#2674" class="Bound">B</a> <a id="2742" href="BasicFunctions.html#2731" class="Bound">a</a><a id="2743" class="Symbol">)</a>
  <a id="2747" class="Symbol">→</a> <a id="2749" class="Symbol">((</a><a id="2751" href="BasicFunctions.html#2751" class="Bound">a</a> <a id="2753" class="Symbol">:</a> <a id="2755" href="BasicFunctions.html#2660" class="Bound">A</a><a id="2756" class="Symbol">)</a> <a id="2758" class="Symbol">→</a> <a id="2760" href="BasicFunctions.html#2692" class="Bound">C</a> <a id="2762" href="BasicFunctions.html#2751" class="Bound">a</a> <a id="2764" class="Symbol">(</a><a id="2765" href="BasicFunctions.html#2726" class="Bound">f</a> <a id="2767" href="BasicFunctions.html#2751" class="Bound">a</a><a id="2768" class="Symbol">))</a>
  <a id="2773" class="Comment">-------------------------</a>
  <a id="2801" class="Symbol">→</a> <a id="2803" class="Symbol">(</a><a id="2804" href="BasicFunctions.html#2804" class="Bound">a</a> <a id="2806" class="Symbol">:</a> <a id="2808" href="BasicFunctions.html#2660" class="Bound">A</a><a id="2809" class="Symbol">)</a> <a id="2811" class="Symbol">→</a> <a id="2813" href="BasicTypes.html#1497" class="Record">∑</a> <a id="2815" class="Symbol">(</a><a id="2816" href="BasicFunctions.html#2674" class="Bound">B</a> <a id="2818" href="BasicFunctions.html#2804" class="Bound">a</a><a id="2819" class="Symbol">)</a> <a id="2821" class="Symbol">(</a><a id="2822" href="BasicFunctions.html#2692" class="Bound">C</a> <a id="2824" href="BasicFunctions.html#2804" class="Bound">a</a><a id="2825" class="Symbol">)</a>

<a id="2828" href="BasicFunctions.html#2645" class="Function">parallell</a> <a id="2838" href="BasicFunctions.html#2838" class="Bound">f</a> <a id="2840" href="BasicFunctions.html#2840" class="Bound">g</a> <a id="2842" href="BasicFunctions.html#2842" class="Bound">a</a> <a id="2844" class="Symbol">=</a> <a id="2846" class="Symbol">(</a><a id="2847" href="BasicFunctions.html#2838" class="Bound">f</a> <a id="2849" href="BasicFunctions.html#2842" class="Bound">a</a> <a id="2851" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="2853" href="BasicFunctions.html#2840" class="Bound">g</a> <a id="2855" href="BasicFunctions.html#2842" class="Bound">a</a><a id="2856" class="Symbol">)</a>

<a id="2859" class="Keyword">syntax</a> <a id="2866" href="BasicFunctions.html#2645" class="Function">parallell</a> <a id="2876" class="Bound">f</a> <a id="2878" class="Bound">g</a> <a id="2880" class="Symbol">=</a> <a id="2882" class="Function">〈</a> <a id="2884" class="Bound">f</a> <a id="2886" class="Function">×</a><a id="2887" class="Bound"> g </a><a id="2890" class="Function">〉</a>
</pre><a id="2893" class="Function">e</a><pre class="Agda"><a id="2895" class="Bound">d</a></pre><a id="2897" class="Function">c</a><pre class="Agda"><a id="2899" class="Bound">d</a></pre><a id="2901" class="Function">}</a>

### Curryfication

<pre class="Agda">
<a id="curry"></a><a id="2936" href="BasicFunctions.html#2936" class="Function">curry</a>
  <a id="2944" class="Symbol">:</a> <a id="2946" class="Symbol">{</a><a id="2947" href="BasicFunctions.html#2947" class="Bound">A</a> <a id="2949" class="Symbol">:</a> <a id="2951" href="Intro.html#2576" class="Function">Type</a> <a id="2956" href="Intro.html#3130" class="Generalizable">ℓᵢ</a><a id="2958" class="Symbol">}</a> <a id="2960" class="Symbol">{</a><a id="2961" href="BasicFunctions.html#2961" class="Bound">B</a> <a id="2963" class="Symbol">:</a> <a id="2965" href="BasicFunctions.html#2947" class="Bound">A</a> <a id="2967" class="Symbol">→</a> <a id="2969" href="Intro.html#2576" class="Function">Type</a> <a id="2974" href="Intro.html#3133" class="Generalizable">ℓⱼ</a><a id="2976" class="Symbol">}</a> <a id="2978" class="Symbol">{</a><a id="2979" href="BasicFunctions.html#2979" class="Bound">C</a> <a id="2981" class="Symbol">:</a> <a id="2983" href="BasicTypes.html#1689" class="Function">Σ</a> <a id="2985" href="BasicFunctions.html#2947" class="Bound">A</a> <a id="2987" href="BasicFunctions.html#2961" class="Bound">B</a> <a id="2989" class="Symbol">→</a> <a id="2991" href="Intro.html#2576" class="Function">Type</a> <a id="2996" href="Intro.html#3136" class="Generalizable">ℓₖ</a><a id="2998" class="Symbol">}</a>
  <a id="3002" class="Symbol">→</a> <a id="3004" class="Symbol">((</a><a id="3006" href="BasicFunctions.html#3006" class="Bound">s</a> <a id="3008" class="Symbol">:</a> <a id="3010" href="BasicTypes.html#1497" class="Record">∑</a> <a id="3012" href="BasicFunctions.html#2947" class="Bound">A</a> <a id="3014" href="BasicFunctions.html#2961" class="Bound">B</a><a id="3015" class="Symbol">)</a> <a id="3017" class="Symbol">→</a> <a id="3019" href="BasicFunctions.html#2979" class="Bound">C</a> <a id="3021" href="BasicFunctions.html#3006" class="Bound">s</a><a id="3022" class="Symbol">)</a>
  <a id="3026" class="Comment">-------------------------------</a>
  <a id="3060" class="Symbol">→</a> <a id="3062" class="Symbol">((</a><a id="3064" href="BasicFunctions.html#3064" class="Bound">x</a> <a id="3066" class="Symbol">:</a> <a id="3068" href="BasicFunctions.html#2947" class="Bound">A</a><a id="3069" class="Symbol">)(</a><a id="3071" href="BasicFunctions.html#3071" class="Bound">y</a> <a id="3073" class="Symbol">:</a> <a id="3075" href="BasicFunctions.html#2961" class="Bound">B</a> <a id="3077" href="BasicFunctions.html#3064" class="Bound">x</a><a id="3078" class="Symbol">)</a> <a id="3080" class="Symbol">→</a> <a id="3082" href="BasicFunctions.html#2979" class="Bound">C</a> <a id="3084" class="Symbol">(</a><a id="3085" href="BasicFunctions.html#3064" class="Bound">x</a> <a id="3087" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="3089" href="BasicFunctions.html#3071" class="Bound">y</a><a id="3090" class="Symbol">))</a>

<a id="3094" href="BasicFunctions.html#2936" class="Function">curry</a> <a id="3100" href="BasicFunctions.html#3100" class="Bound">f</a> <a id="3102" href="BasicFunctions.html#3102" class="Bound">x</a> <a id="3104" href="BasicFunctions.html#3104" class="Bound">y</a> <a id="3106" class="Symbol">=</a> <a id="3108" href="BasicFunctions.html#3100" class="Bound">f</a> <a id="3110" class="Symbol">(</a><a id="3111" href="BasicFunctions.html#3102" class="Bound">x</a> <a id="3113" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="3115" href="BasicFunctions.html#3104" class="Bound">y</a><a id="3116" class="Symbol">)</a>
</pre>

### Uncurryfication

<pre class="Agda">
<a id="unCurry"></a><a id="3164" href="BasicFunctions.html#3164" class="Function">unCurry</a>
  <a id="3174" class="Symbol">:</a> <a id="3176" class="Symbol">{</a><a id="3177" href="BasicFunctions.html#3177" class="Bound">A</a> <a id="3179" class="Symbol">:</a> <a id="3181" href="Intro.html#2576" class="Function">Type</a> <a id="3186" href="Intro.html#3130" class="Generalizable">ℓᵢ</a><a id="3188" class="Symbol">}{</a><a id="3190" href="BasicFunctions.html#3190" class="Bound">B</a> <a id="3192" class="Symbol">:</a> <a id="3194" href="BasicFunctions.html#3177" class="Bound">A</a> <a id="3196" class="Symbol">→</a> <a id="3198" href="Intro.html#2576" class="Function">Type</a> <a id="3203" href="Intro.html#3133" class="Generalizable">ℓⱼ</a><a id="3205" class="Symbol">}{</a><a id="3207" href="BasicFunctions.html#3207" class="Bound">C</a> <a id="3209" class="Symbol">:</a> <a id="3211" href="Intro.html#2576" class="Function">Type</a> <a id="3216" href="Intro.html#3136" class="Generalizable">ℓₖ</a><a id="3218" class="Symbol">}</a>
  <a id="3222" class="Symbol">→</a> <a id="3224" class="Symbol">(</a><a id="3225" href="BasicFunctions.html#3225" class="Bound">D</a> <a id="3227" class="Symbol">:</a> <a id="3229" class="Symbol">(</a><a id="3230" href="BasicFunctions.html#3230" class="Bound">a</a> <a id="3232" class="Symbol">:</a> <a id="3234" href="BasicFunctions.html#3177" class="Bound">A</a><a id="3235" class="Symbol">)</a> <a id="3237" class="Symbol">→</a> <a id="3239" href="BasicFunctions.html#3190" class="Bound">B</a> <a id="3241" href="BasicFunctions.html#3230" class="Bound">a</a> <a id="3243" class="Symbol">→</a> <a id="3245" href="BasicFunctions.html#3207" class="Bound">C</a><a id="3246" class="Symbol">)</a>
  <a id="3250" class="Comment">------------------------</a>
  <a id="3277" class="Symbol">→</a> <a id="3279" class="Symbol">(</a><a id="3280" href="BasicFunctions.html#3280" class="Bound">p</a> <a id="3282" class="Symbol">:</a> <a id="3284" href="BasicTypes.html#1497" class="Record">∑</a> <a id="3286" href="BasicFunctions.html#3177" class="Bound">A</a> <a id="3288" href="BasicFunctions.html#3190" class="Bound">B</a><a id="3289" class="Symbol">)</a> <a id="3291" class="Symbol">→</a> <a id="3293" href="BasicFunctions.html#3207" class="Bound">C</a>

<a id="3296" href="BasicFunctions.html#3164" class="Function">unCurry</a> <a id="3304" href="BasicFunctions.html#3304" class="Bound">D</a> <a id="3306" href="BasicFunctions.html#3306" class="Bound">p</a> <a id="3308" class="Symbol">=</a> <a id="3310" href="BasicFunctions.html#3304" class="Bound">D</a> <a id="3312" class="Symbol">(</a><a id="3313" href="BasicTypes.html#1763" class="Function">proj₁</a> <a id="3319" href="BasicFunctions.html#3306" class="Bound">p</a><a id="3320" class="Symbol">)</a> <a id="3322" class="Symbol">(</a><a id="3323" href="BasicTypes.html#1774" class="Function">proj₂</a> <a id="3329" href="BasicFunctions.html#3306" class="Bound">p</a><a id="3330" class="Symbol">)</a>
</pre>

<pre class="Agda">
<a id="uncurry"></a><a id="3357" href="BasicFunctions.html#3357" class="Function">uncurry</a>
  <a id="3367" class="Symbol">:</a> <a id="3369" class="Symbol">{</a><a id="3370" href="BasicFunctions.html#3370" class="Bound">A</a> <a id="3372" class="Symbol">:</a> <a id="3374" href="Intro.html#2576" class="Function">Type</a> <a id="3379" href="Intro.html#3130" class="Generalizable">ℓᵢ</a><a id="3381" class="Symbol">}</a> <a id="3383" class="Symbol">{</a><a id="3384" href="BasicFunctions.html#3384" class="Bound">B</a> <a id="3386" class="Symbol">:</a> <a id="3388" href="BasicFunctions.html#3370" class="Bound">A</a> <a id="3390" class="Symbol">→</a> <a id="3392" href="Intro.html#2576" class="Function">Type</a> <a id="3397" href="Intro.html#3133" class="Generalizable">ℓⱼ</a><a id="3399" class="Symbol">}</a> <a id="3401" class="Symbol">{</a><a id="3402" href="BasicFunctions.html#3402" class="Bound">C</a> <a id="3404" class="Symbol">:</a> <a id="3406" class="Symbol">(</a><a id="3407" href="BasicFunctions.html#3407" class="Bound">a</a> <a id="3409" class="Symbol">:</a> <a id="3411" href="BasicFunctions.html#3370" class="Bound">A</a><a id="3412" class="Symbol">)</a> <a id="3414" class="Symbol">→</a> <a id="3416" href="BasicFunctions.html#3384" class="Bound">B</a> <a id="3418" href="BasicFunctions.html#3407" class="Bound">a</a> <a id="3420" class="Symbol">→</a> <a id="3422" href="Intro.html#2576" class="Function">Type</a> <a id="3427" href="Intro.html#3136" class="Generalizable">ℓₖ</a><a id="3429" class="Symbol">}</a>
  <a id="3433" class="Symbol">→</a> <a id="3435" class="Symbol">(</a><a id="3436" href="BasicFunctions.html#3436" class="Bound">f</a> <a id="3438" class="Symbol">:</a> <a id="3440" class="Symbol">(</a><a id="3441" href="BasicFunctions.html#3441" class="Bound">a</a> <a id="3443" class="Symbol">:</a> <a id="3445" href="BasicFunctions.html#3370" class="Bound">A</a><a id="3446" class="Symbol">)</a> <a id="3448" class="Symbol">(</a><a id="3449" href="BasicFunctions.html#3449" class="Bound">b</a> <a id="3451" class="Symbol">:</a> <a id="3453" href="BasicFunctions.html#3384" class="Bound">B</a> <a id="3455" href="BasicFunctions.html#3441" class="Bound">a</a><a id="3456" class="Symbol">)</a> <a id="3458" class="Symbol">→</a> <a id="3460" href="BasicFunctions.html#3402" class="Bound">C</a> <a id="3462" href="BasicFunctions.html#3441" class="Bound">a</a> <a id="3464" href="BasicFunctions.html#3449" class="Bound">b</a><a id="3465" class="Symbol">)</a>
  <a id="3469" class="Comment">---------------------------------</a>
  <a id="3505" class="Symbol">→</a> <a id="3507" class="Symbol">(</a><a id="3508" href="BasicFunctions.html#3508" class="Bound">p</a> <a id="3510" class="Symbol">:</a> <a id="3512" href="BasicTypes.html#1497" class="Record">∑</a> <a id="3514" href="BasicFunctions.html#3370" class="Bound">A</a> <a id="3516" href="BasicFunctions.html#3384" class="Bound">B</a><a id="3517" class="Symbol">)</a> <a id="3519" class="Symbol">→</a> <a id="3521" href="BasicFunctions.html#3402" class="Bound">C</a> <a id="3523" class="Symbol">(</a><a id="3524" href="BasicTypes.html#1597" class="Field">π₁</a> <a id="3527" href="BasicFunctions.html#3508" class="Bound">p</a><a id="3528" class="Symbol">)</a> <a id="3530" class="Symbol">(</a><a id="3531" href="BasicTypes.html#1608" class="Field">π₂</a> <a id="3534" href="BasicFunctions.html#3508" class="Bound">p</a><a id="3535" class="Symbol">)</a>

<a id="3538" href="BasicFunctions.html#3357" class="Function">uncurry</a> <a id="3546" href="BasicFunctions.html#3546" class="Bound">f</a> <a id="3548" class="Symbol">(</a><a id="3549" href="BasicFunctions.html#3549" class="Bound">x</a> <a id="3551" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="3553" href="BasicFunctions.html#3553" class="Bound">y</a><a id="3554" class="Symbol">)</a> <a id="3556" class="Symbol">=</a> <a id="3558" href="BasicFunctions.html#3546" class="Bound">f</a> <a id="3560" href="BasicFunctions.html#3549" class="Bound">x</a> <a id="3562" href="BasicFunctions.html#3553" class="Bound">y</a>
</pre>

### Heterogeneous equality

<pre class="Agda">
<a id="3617" class="Keyword">data</a>
  <a id="HEq"></a><a id="3624" href="BasicFunctions.html#3624" class="Datatype">HEq</a> <a id="3628" class="Symbol">(</a><a id="3629" href="BasicFunctions.html#3629" class="Bound">A</a> <a id="3631" class="Symbol">:</a> <a id="3633" href="Intro.html#2576" class="Function">Type</a> <a id="3638" href="Intro.html#3128" class="Generalizable">ℓ</a><a id="3639" class="Symbol">)</a>
    <a id="3645" class="Symbol">:</a> <a id="3647" class="Symbol">(</a><a id="3648" href="BasicFunctions.html#3648" class="Bound">B</a> <a id="3650" class="Symbol">:</a> <a id="3652" href="Intro.html#2576" class="Function">Type</a> <a id="3657" href="BasicFunctions.html#3638" class="Bound">ℓ</a><a id="3658" class="Symbol">)</a>
    <a id="3664" class="Symbol">→</a> <a id="3666" class="Symbol">(</a><a id="3667" href="BasicFunctions.html#3667" class="Bound">α</a> <a id="3669" class="Symbol">:</a> <a id="3671" href="BasicFunctions.html#3629" class="Bound">A</a> <a id="3673" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="3676" href="BasicFunctions.html#3648" class="Bound">B</a><a id="3677" class="Symbol">)</a> <a id="3679" class="Symbol">(</a><a id="3680" href="BasicFunctions.html#3680" class="Bound">a</a> <a id="3682" class="Symbol">:</a> <a id="3684" href="BasicFunctions.html#3629" class="Bound">A</a><a id="3685" class="Symbol">)</a> <a id="3687" class="Symbol">(</a><a id="3688" href="BasicFunctions.html#3688" class="Bound">b</a> <a id="3690" class="Symbol">:</a> <a id="3692" href="BasicFunctions.html#3648" class="Bound">B</a><a id="3693" class="Symbol">)</a>
    <a id="3699" class="Symbol">→</a> <a id="3701" href="Intro.html#2576" class="Function">Type</a> <a id="3706" class="Symbol">(</a><a id="3707" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="3712" href="BasicFunctions.html#3638" class="Bound">ℓ</a><a id="3713" class="Symbol">)</a>
  <a id="3717" class="Keyword">where</a>
  <a id="HEq.idp"></a><a id="3725" href="BasicFunctions.html#3725" class="InductiveConstructor">idp</a> <a id="3729" class="Symbol">:</a> <a id="3731" class="Symbol">{</a><a id="3732" href="BasicFunctions.html#3732" class="Bound">a</a> <a id="3734" class="Symbol">:</a> <a id="3736" href="BasicFunctions.html#3629" class="Bound">A</a><a id="3737" class="Symbol">}</a> <a id="3739" class="Symbol">→</a> <a id="3741" href="BasicFunctions.html#3624" class="Datatype">HEq</a> <a id="3745" href="BasicFunctions.html#3629" class="Bound">A</a> <a id="3747" href="BasicFunctions.html#3629" class="Bound">A</a> <a id="3749" href="BasicTypes.html#4393" class="InductiveConstructor">idp</a> <a id="3753" href="BasicFunctions.html#3732" class="Bound">a</a> <a id="3755" href="BasicFunctions.html#3732" class="Bound">a</a>
</pre>

### Path functions

#### Composition of paths

{: .foldable until="6" }
<pre class="Agda">
<a id="_·_"></a><a id="3854" href="BasicFunctions.html#3854" class="Function Operator">_·_</a>
  <a id="3860" class="Symbol">:</a> <a id="3862" class="Symbol">{</a><a id="3863" href="BasicFunctions.html#3863" class="Bound">A</a> <a id="3865" class="Symbol">:</a> <a id="3867" href="Intro.html#2576" class="Function">Type</a> <a id="3872" href="Intro.html#3128" class="Generalizable">ℓ</a><a id="3873" class="Symbol">}</a> <a id="3875" class="Symbol">{</a><a id="3876" href="BasicFunctions.html#3876" class="Bound">x</a> <a id="3878" href="BasicFunctions.html#3878" class="Bound">y</a> <a id="3880" href="BasicFunctions.html#3880" class="Bound">z</a> <a id="3882" class="Symbol">:</a> <a id="3884" href="BasicFunctions.html#3863" class="Bound">A</a><a id="3885" class="Symbol">}</a>
  <a id="3889" class="Symbol">→</a> <a id="3891" class="Symbol">(</a><a id="3892" href="BasicFunctions.html#3892" class="Bound">p</a> <a id="3894" class="Symbol">:</a> <a id="3896" href="BasicFunctions.html#3876" class="Bound">x</a> <a id="3898" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="3901" href="BasicFunctions.html#3878" class="Bound">y</a><a id="3902" class="Symbol">)</a>
  <a id="3906" class="Symbol">→</a> <a id="3908" class="Symbol">(</a><a id="3909" href="BasicFunctions.html#3909" class="Bound">q</a> <a id="3911" class="Symbol">:</a> <a id="3913" href="BasicFunctions.html#3878" class="Bound">y</a> <a id="3915" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="3918" href="BasicFunctions.html#3880" class="Bound">z</a><a id="3919" class="Symbol">)</a>
  <a id="3923" class="Comment">--------------</a>
  <a id="3940" class="Symbol">→</a> <a id="3942" href="BasicFunctions.html#3876" class="Bound">x</a> <a id="3944" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="3947" href="BasicFunctions.html#3880" class="Bound">z</a>

<a id="3950" href="BasicFunctions.html#3854" class="Function Operator">_·_</a> <a id="3954" href="BasicTypes.html#4393" class="InductiveConstructor">idp</a> <a id="3958" href="BasicFunctions.html#3958" class="Bound">q</a> <a id="3960" class="Symbol">=</a> <a id="3962" href="BasicFunctions.html#3958" class="Bound">q</a>

<a id="3965" class="Keyword">infixl</a> <a id="3972" class="Number">50</a> <a id="3975" href="BasicFunctions.html#3854" class="Function Operator">_·_</a>
</pre>

![path](/assets/ipe-images/path-concatenation.png){: width="60%" align="right" }

#### Inverse of paths

<pre class="Agda">
<a id="inv"></a><a id="4109" href="BasicFunctions.html#4109" class="Function">inv</a>
  <a id="4115" class="Symbol">:</a> <a id="4117" class="Symbol">{</a><a id="4118" href="BasicFunctions.html#4118" class="Bound">A</a> <a id="4120" class="Symbol">:</a> <a id="4122" href="Intro.html#2576" class="Function">Type</a> <a id="4127" href="Intro.html#3128" class="Generalizable">ℓ</a><a id="4128" class="Symbol">}</a> <a id="4130" class="Symbol">{</a><a id="4131" href="BasicFunctions.html#4131" class="Bound">a</a> <a id="4133" href="BasicFunctions.html#4133" class="Bound">b</a> <a id="4135" class="Symbol">:</a> <a id="4137" href="BasicFunctions.html#4118" class="Bound">A</a><a id="4138" class="Symbol">}</a>
  <a id="4142" class="Symbol">→</a> <a id="4144" href="BasicFunctions.html#4131" class="Bound">a</a> <a id="4146" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="4149" href="BasicFunctions.html#4133" class="Bound">b</a>
  <a id="4153" class="Comment">--------</a>
  <a id="4164" class="Symbol">→</a> <a id="4166" href="BasicFunctions.html#4133" class="Bound">b</a> <a id="4168" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="4171" href="BasicFunctions.html#4131" class="Bound">a</a>

<a id="4174" href="BasicFunctions.html#4109" class="Function">inv</a> <a id="4178" href="BasicTypes.html#4393" class="InductiveConstructor">idp</a> <a id="4182" class="Symbol">=</a> <a id="4184" href="BasicTypes.html#4393" class="InductiveConstructor">idp</a>
</pre>

Synonyms for inverse path
<pre class="Agda">
<a id="_⁻¹"></a><a id="4239" href="BasicFunctions.html#4239" class="Function Operator">_⁻¹</a> <a id="4243" class="Symbol">=</a> <a id="4245" href="BasicFunctions.html#4109" class="Function">inv</a>
<a id="!_"></a><a id="4249" href="BasicFunctions.html#4249" class="Function Operator">!_</a>  <a id="4253" class="Symbol">=</a> <a id="4255" href="BasicFunctions.html#4109" class="Function">inv</a>

<a id="4260" class="Keyword">infixl</a> <a id="4267" class="Number">60</a> <a id="4270" href="BasicFunctions.html#4239" class="Function Operator">_⁻¹</a> <a id="4274" href="BasicFunctions.html#4249" class="Function Operator">!_</a>
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
<a id="4645" class="Keyword">module</a>
  <a id="EquationalReasoning"></a><a id="4654" href="BasicFunctions.html#4654" class="Module">EquationalReasoning</a> <a id="4674" class="Symbol">{</a><a id="4675" href="BasicFunctions.html#4675" class="Bound">A</a> <a id="4677" class="Symbol">:</a> <a id="4679" href="Intro.html#2576" class="Function">Type</a> <a id="4684" href="Intro.html#3128" class="Generalizable">ℓ</a><a id="4685" class="Symbol">}</a>
  <a id="4689" class="Keyword">where</a>
</pre>

Definitional equals:

{: .foldable until="4" }
<pre class="Agda">
  <a id="EquationalReasoning._==⟨⟩_"></a><a id="4769" href="BasicFunctions.html#4769" class="Function Operator">_==⟨⟩_</a>
    <a id="4780" class="Symbol">:</a> <a id="4782" class="Symbol">∀</a> <a id="4784" class="Symbol">(</a><a id="4785" href="BasicFunctions.html#4785" class="Bound">x</a> <a id="4787" class="Symbol">{</a><a id="4788" href="BasicFunctions.html#4788" class="Bound">y</a><a id="4789" class="Symbol">}</a> <a id="4791" class="Symbol">:</a> <a id="4793" href="BasicFunctions.html#4675" class="Bound">A</a><a id="4794" class="Symbol">)</a>
    <a id="4800" class="Comment">-----------------</a>
    <a id="4822" class="Symbol">→</a> <a id="4824" href="BasicFunctions.html#4785" class="Bound">x</a> <a id="4826" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="4829" href="BasicFunctions.html#4788" class="Bound">y</a> <a id="4831" class="Symbol">→</a> <a id="4833" href="BasicFunctions.html#4785" class="Bound">x</a> <a id="4835" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="4838" href="BasicFunctions.html#4788" class="Bound">y</a>

  <a id="4843" class="Symbol">_</a> <a id="4845" href="BasicFunctions.html#4769" class="Function Operator">==⟨⟩</a> <a id="4850" href="BasicFunctions.html#4850" class="Bound">p</a> <a id="4852" class="Symbol">=</a> <a id="4854" href="BasicFunctions.html#4850" class="Bound">p</a>
</pre>

Synonyms:

<pre class="Agda"></pre><pre class="Agda"></pre><pre class="Agda"></pre><pre class="Agda">
  <a id="EquationalReasoning._==⟨idp⟩_"></a><a id="4894" href="BasicFunctions.html#4894" class="Function Operator">_==⟨idp⟩_</a>  <a id="4905" class="Symbol">=</a> <a id="4907" href="BasicFunctions.html#4769" class="Function Operator">_==⟨⟩_</a>
  <a id="EquationalReasoning._==⟨refl⟩_"></a><a id="4916" href="BasicFunctions.html#4916" class="Function Operator">_==⟨refl⟩_</a> <a id="4927" class="Symbol">=</a> <a id="4929" href="BasicFunctions.html#4769" class="Function Operator">_==⟨⟩_</a>
  <a id="EquationalReasoning._≡⟨⟩_"></a><a id="4938" href="BasicFunctions.html#4938" class="Function Operator">_≡⟨⟩_</a>      <a id="4949" class="Symbol">=</a> <a id="4951" href="BasicFunctions.html#4769" class="Function Operator">_==⟨⟩_</a>

  <a id="4961" class="Keyword">infixr</a> <a id="4968" class="Number">2</a> <a id="4970" href="BasicFunctions.html#4769" class="Function Operator">_==⟨⟩_</a> <a id="4977" href="BasicFunctions.html#4894" class="Function Operator">_==⟨idp⟩_</a> <a id="4987" href="BasicFunctions.html#4916" class="Function Operator">_==⟨refl⟩_</a> <a id="4998" href="BasicFunctions.html#4938" class="Function Operator">_≡⟨⟩_</a>
</pre>

Chain:

{: .foldable until="6" }
<pre class="Agda">
  <a id="EquationalReasoning._==⟨_⟩_"></a><a id="5064" href="BasicFunctions.html#5064" class="Function Operator">_==⟨_⟩_</a>
    <a id="5076" class="Symbol">:</a> <a id="5078" class="Symbol">(</a><a id="5079" href="BasicFunctions.html#5079" class="Bound">x</a> <a id="5081" class="Symbol">:</a> <a id="5083" href="BasicFunctions.html#4675" class="Bound">A</a><a id="5084" class="Symbol">)</a> <a id="5086" class="Symbol">{</a><a id="5087" href="BasicFunctions.html#5087" class="Bound">y</a> <a id="5089" href="BasicFunctions.html#5089" class="Bound">z</a> <a id="5091" class="Symbol">:</a> <a id="5093" href="BasicFunctions.html#4675" class="Bound">A</a><a id="5094" class="Symbol">}</a>
    <a id="5100" class="Symbol">→</a> <a id="5102" href="BasicFunctions.html#5079" class="Bound">x</a> <a id="5104" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="5107" href="BasicFunctions.html#5087" class="Bound">y</a>
    <a id="5113" class="Symbol">→</a> <a id="5115" href="BasicFunctions.html#5087" class="Bound">y</a> <a id="5117" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="5120" href="BasicFunctions.html#5089" class="Bound">z</a>
    <a id="5126" class="Comment">--------</a>
    <a id="5139" class="Symbol">→</a> <a id="5141" href="BasicFunctions.html#5079" class="Bound">x</a> <a id="5143" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="5146" href="BasicFunctions.html#5089" class="Bound">z</a>

  <a id="5151" class="Symbol">_</a> <a id="5153" href="BasicFunctions.html#5064" class="Function Operator">==⟨</a> <a id="5157" href="BasicFunctions.html#5157" class="Bound">thm</a> <a id="5161" href="BasicFunctions.html#5064" class="Function Operator">⟩</a> <a id="5163" href="BasicFunctions.html#5163" class="Bound">q</a> <a id="5165" class="Symbol">=</a> <a id="5167" href="BasicFunctions.html#5157" class="Bound">thm</a> <a id="5171" href="BasicFunctions.html#3854" class="Function Operator">·</a> <a id="5173" href="BasicFunctions.html#5163" class="Bound">q</a>
</pre>

Synomyms:
<pre class="Agda">
  <a id="EquationalReasoning._≡⟨_⟩_"></a><a id="5212" href="BasicFunctions.html#5212" class="Function Operator">_≡⟨_⟩_</a> <a id="5219" class="Symbol">=</a> <a id="5221" href="BasicFunctions.html#5064" class="Function Operator">_==⟨_⟩_</a>

  <a id="5232" class="Keyword">infixr</a> <a id="5239" class="Number">2</a> <a id="5241" href="BasicFunctions.html#5064" class="Function Operator">_==⟨_⟩_</a> <a id="5249" href="BasicFunctions.html#5212" class="Function Operator">_≡⟨_⟩_</a>
</pre>

Q.E.D:
<pre class="Agda">
  <a id="EquationalReasoning._∎"></a><a id="5290" href="BasicFunctions.html#5290" class="Function Operator">_∎</a>
    <a id="5297" class="Symbol">:</a> <a id="5299" class="Symbol">(</a><a id="5300" href="BasicFunctions.html#5300" class="Bound">x</a> <a id="5302" class="Symbol">:</a> <a id="5304" href="BasicFunctions.html#4675" class="Bound">A</a><a id="5305" class="Symbol">)</a>
    <a id="5311" class="Symbol">→</a> <a id="5313" href="BasicFunctions.html#5300" class="Bound">x</a> <a id="5315" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="5318" href="BasicFunctions.html#5300" class="Bound">x</a>

  <a id="5323" href="BasicFunctions.html#5290" class="Function Operator">_∎</a> <a id="5326" class="Symbol">=</a> <a id="5328" class="Symbol">λ</a> <a id="5330" href="BasicFunctions.html#5330" class="Bound">x</a> <a id="5332" class="Symbol">→</a> <a id="5334" href="BasicTypes.html#4393" class="InductiveConstructor">idp</a>

  <a id="5341" class="Keyword">infix</a> <a id="5347" class="Number">3</a> <a id="5349" href="BasicFunctions.html#5290" class="Function Operator">_∎</a>
</pre>

The begining of a proof:

<pre class="Agda">
  <a id="EquationalReasoning.begin_"></a><a id="5405" href="BasicFunctions.html#5405" class="Function Operator">begin_</a>
    <a id="5416" class="Symbol">:</a> <a id="5418" class="Symbol">{</a><a id="5419" href="BasicFunctions.html#5419" class="Bound">x</a> <a id="5421" href="BasicFunctions.html#5421" class="Bound">y</a> <a id="5423" class="Symbol">:</a> <a id="5425" href="BasicFunctions.html#4675" class="Bound">A</a><a id="5426" class="Symbol">}</a>
    <a id="5432" class="Symbol">→</a> <a id="5434" href="BasicFunctions.html#5419" class="Bound">x</a> <a id="5436" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="5439" href="BasicFunctions.html#5421" class="Bound">y</a>
    <a id="5445" class="Symbol">→</a> <a id="5447" href="BasicFunctions.html#5419" class="Bound">x</a> <a id="5449" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="5452" href="BasicFunctions.html#5421" class="Bound">y</a>

  <a id="5457" href="BasicFunctions.html#5405" class="Function Operator">begin_</a> <a id="5464" href="BasicFunctions.html#5464" class="Bound">p</a> <a id="5466" class="Symbol">=</a> <a id="5468" href="BasicFunctions.html#5464" class="Bound">p</a>

  <a id="5473" class="Keyword">infix</a> <a id="5479" class="Number">1</a> <a id="5481" href="BasicFunctions.html#5405" class="Function Operator">begin_</a>
</pre>

<pre class="Agda">
<a id="5513" class="Keyword">open</a> <a id="5518" href="BasicFunctions.html#4654" class="Module">EquationalReasoning</a> <a id="5538" class="Keyword">public</a>
</pre>
