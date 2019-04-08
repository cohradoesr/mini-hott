---
layout: page
title: "Basic Functions"
category: functions
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
<a id="209" class="Symbol">{-#</a> <a id="213" class="Keyword">OPTIONS</a> <a id="221" class="Pragma">--without-K</a> <a id="233" class="Symbol">#-}</a>
<a id="237" class="Keyword">open</a> <a id="242" class="Keyword">import</a> <a id="249" href="BasicTypes.html" class="Module">BasicTypes</a> <a id="260" class="Keyword">public</a>
</pre>
</div>

### Identity function

The identity function with implicit type.
<pre class="Agda">
<a id="id"></a><a id="364" href="BasicFunctions.html#364" class="Function">id</a>
  <a id="369" class="Symbol">:</a> <a id="371" class="Symbol">∀</a> <a id="373" class="Symbol">{</a><a id="374" href="BasicFunctions.html#374" class="Bound">ℓ</a><a id="375" class="Symbol">}</a> <a id="377" class="Symbol">{</a><a id="378" href="BasicFunctions.html#378" class="Bound">A</a> <a id="380" class="Symbol">:</a> <a id="382" href="Intro.html#1442" class="Function">Type</a> <a id="387" href="BasicFunctions.html#374" class="Bound">ℓ</a><a id="388" class="Symbol">}</a>
  <a id="392" class="Symbol">→</a> <a id="394" href="BasicFunctions.html#378" class="Bound">A</a> <a id="396" class="Symbol">→</a> <a id="398" href="BasicFunctions.html#378" class="Bound">A</a>

<a id="401" href="BasicFunctions.html#364" class="Function">id</a> <a id="404" class="Symbol">=</a> <a id="406" class="Symbol">λ</a> <a id="408" href="BasicFunctions.html#408" class="Bound">x</a> <a id="410" class="Symbol">→</a> <a id="412" href="BasicFunctions.html#408" class="Bound">x</a>
</pre>

The identity function on a type `A` is `idf A`.

<pre class="Agda">
<a id="idf"></a><a id="488" href="BasicFunctions.html#488" class="Function">idf</a>
  <a id="494" class="Symbol">:</a> <a id="496" class="Symbol">∀</a> <a id="498" class="Symbol">{</a><a id="499" href="BasicFunctions.html#499" class="Bound">ℓᵢ</a><a id="501" class="Symbol">}</a>
  <a id="505" class="Symbol">→</a> <a id="507" class="Symbol">(</a><a id="508" href="BasicFunctions.html#508" class="Bound">A</a> <a id="510" class="Symbol">:</a> <a id="512" href="Intro.html#1442" class="Function">Type</a> <a id="517" href="BasicFunctions.html#499" class="Bound">ℓᵢ</a><a id="519" class="Symbol">)</a>
  <a id="523" class="Comment">---------------</a>
  <a id="541" class="Symbol">→</a> <a id="543" class="Symbol">(</a><a id="544" href="BasicFunctions.html#508" class="Bound">A</a> <a id="546" class="Symbol">→</a> <a id="548" href="BasicFunctions.html#508" class="Bound">A</a><a id="549" class="Symbol">)</a>

<a id="552" href="BasicFunctions.html#488" class="Function">idf</a> <a id="556" href="BasicFunctions.html#556" class="Bound">A</a> <a id="558" class="Symbol">=</a> <a id="560" class="Symbol">λ</a> <a id="562" href="BasicFunctions.html#562" class="Bound">x</a> <a id="564" class="Symbol">→</a> <a id="566" href="BasicFunctions.html#562" class="Bound">x</a>
</pre>

### Constant function

Constant function at some point `b` is `cst b`

<pre class="Agda">
<a id="cst"></a><a id="664" href="BasicFunctions.html#664" class="Function">cst</a>
  <a id="670" class="Symbol">:</a> <a id="672" class="Symbol">∀</a> <a id="674" class="Symbol">{</a><a id="675" href="BasicFunctions.html#675" class="Bound">ℓᵢ</a> <a id="678" href="BasicFunctions.html#678" class="Bound">ℓⱼ</a><a id="680" class="Symbol">}</a> <a id="682" class="Symbol">{</a><a id="683" href="BasicFunctions.html#683" class="Bound">A</a> <a id="685" class="Symbol">:</a> <a id="687" href="Intro.html#1442" class="Function">Type</a> <a id="692" href="BasicFunctions.html#675" class="Bound">ℓᵢ</a><a id="694" class="Symbol">}</a> <a id="696" class="Symbol">{</a><a id="697" href="BasicFunctions.html#697" class="Bound">B</a> <a id="699" class="Symbol">:</a> <a id="701" href="Intro.html#1442" class="Function">Type</a> <a id="706" href="BasicFunctions.html#678" class="Bound">ℓⱼ</a><a id="708" class="Symbol">}</a>
  <a id="712" class="Symbol">→</a> <a id="714" class="Symbol">(</a><a id="715" href="BasicFunctions.html#715" class="Bound">b</a> <a id="717" class="Symbol">:</a> <a id="719" href="BasicFunctions.html#697" class="Bound">B</a><a id="720" class="Symbol">)</a>
  <a id="724" class="Comment">---------</a>
  <a id="736" class="Symbol">→</a> <a id="738" class="Symbol">(</a><a id="739" href="BasicFunctions.html#683" class="Bound">A</a> <a id="741" class="Symbol">→</a> <a id="743" href="BasicFunctions.html#697" class="Bound">B</a><a id="744" class="Symbol">)</a>

<a id="747" href="BasicFunctions.html#664" class="Function">cst</a> <a id="751" href="BasicFunctions.html#751" class="Bound">b</a> <a id="753" class="Symbol">=</a> <a id="755" class="Symbol">λ</a> <a id="757" href="BasicFunctions.html#757" class="Bound">_</a> <a id="759" class="Symbol">→</a> <a id="761" href="BasicFunctions.html#751" class="Bound">b</a>
</pre>

### Composition

A more sophisticated composition function that can handle dependent functions.

{: .foldable until="7" }
<pre class="Agda">
<a id="_∘_"></a><a id="910" href="BasicFunctions.html#910" class="Function Operator">_∘_</a>
  <a id="916" class="Symbol">:</a> <a id="918" class="Symbol">∀</a> <a id="920" class="Symbol">{</a><a id="921" href="BasicFunctions.html#921" class="Bound">ℓᵢ</a> <a id="924" href="BasicFunctions.html#924" class="Bound">ℓⱼ</a> <a id="927" href="BasicFunctions.html#927" class="Bound">ℓₖ</a><a id="929" class="Symbol">}</a>
  <a id="933" class="Symbol">→</a> <a id="935" class="Symbol">{</a><a id="936" href="BasicFunctions.html#936" class="Bound">A</a> <a id="938" class="Symbol">:</a> <a id="940" href="Intro.html#1442" class="Function">Type</a> <a id="945" href="BasicFunctions.html#921" class="Bound">ℓᵢ</a><a id="947" class="Symbol">}</a> <a id="949" class="Symbol">{</a><a id="950" href="BasicFunctions.html#950" class="Bound">B</a> <a id="952" class="Symbol">:</a> <a id="954" href="BasicFunctions.html#936" class="Bound">A</a> <a id="956" class="Symbol">→</a> <a id="958" href="Intro.html#1442" class="Function">Type</a> <a id="963" href="BasicFunctions.html#924" class="Bound">ℓⱼ</a><a id="965" class="Symbol">}</a> <a id="967" class="Symbol">{</a><a id="968" href="BasicFunctions.html#968" class="Bound">C</a> <a id="970" class="Symbol">:</a> <a id="972" class="Symbol">(</a><a id="973" href="BasicFunctions.html#973" class="Bound">a</a> <a id="975" class="Symbol">:</a> <a id="977" href="BasicFunctions.html#936" class="Bound">A</a><a id="978" class="Symbol">)</a> <a id="980" class="Symbol">→</a> <a id="982" class="Symbol">(</a><a id="983" href="BasicFunctions.html#950" class="Bound">B</a> <a id="985" href="BasicFunctions.html#973" class="Bound">a</a> <a id="987" class="Symbol">→</a> <a id="989" href="Intro.html#1442" class="Function">Type</a> <a id="994" href="BasicFunctions.html#927" class="Bound">ℓₖ</a><a id="996" class="Symbol">)}</a>
  <a id="1001" class="Symbol">→</a> <a id="1003" class="Symbol">(</a><a id="1004" href="BasicFunctions.html#1004" class="Bound">g</a> <a id="1006" class="Symbol">:</a> <a id="1008" class="Symbol">{</a><a id="1009" href="BasicFunctions.html#1009" class="Bound">a</a> <a id="1011" class="Symbol">:</a> <a id="1013" href="BasicFunctions.html#936" class="Bound">A</a><a id="1014" class="Symbol">}</a> <a id="1016" class="Symbol">→</a> <a id="1018" href="BasicTypes.html#1730" class="Function">Π</a> <a id="1020" class="Symbol">(</a><a id="1021" href="BasicFunctions.html#950" class="Bound">B</a> <a id="1023" href="BasicFunctions.html#1009" class="Bound">a</a><a id="1024" class="Symbol">)</a> <a id="1026" class="Symbol">(</a><a id="1027" href="BasicFunctions.html#968" class="Bound">C</a> <a id="1029" href="BasicFunctions.html#1009" class="Bound">a</a><a id="1030" class="Symbol">))</a>
  <a id="1035" class="Symbol">→</a> <a id="1037" class="Symbol">(</a><a id="1038" href="BasicFunctions.html#1038" class="Bound">f</a> <a id="1040" class="Symbol">:</a> <a id="1042" href="BasicTypes.html#1730" class="Function">Π</a> <a id="1044" href="BasicFunctions.html#936" class="Bound">A</a> <a id="1046" href="BasicFunctions.html#950" class="Bound">B</a><a id="1047" class="Symbol">)</a>
  <a id="1051" class="Comment">-------------------------------</a>
  <a id="1085" class="Symbol">→</a> <a id="1087" href="BasicTypes.html#1730" class="Function">Π</a> <a id="1089" href="BasicFunctions.html#936" class="Bound">A</a> <a id="1091" class="Symbol">(λ</a> <a id="1094" href="BasicFunctions.html#1094" class="Bound">a</a> <a id="1096" class="Symbol">→</a> <a id="1098" href="BasicFunctions.html#968" class="Bound">C</a> <a id="1100" href="BasicFunctions.html#1094" class="Bound">a</a> <a id="1102" class="Symbol">(</a><a id="1103" href="BasicFunctions.html#1038" class="Bound">f</a> <a id="1105" href="BasicFunctions.html#1094" class="Bound">a</a><a id="1106" class="Symbol">))</a>

<a id="1110" href="BasicFunctions.html#1110" class="Bound">g</a> <a id="1112" href="BasicFunctions.html#910" class="Function Operator">∘</a> <a id="1114" href="BasicFunctions.html#1114" class="Bound">f</a> <a id="1116" class="Symbol">=</a> <a id="1118" class="Symbol">λ</a> <a id="1120" href="BasicFunctions.html#1120" class="Bound">x</a> <a id="1122" class="Symbol">→</a> <a id="1124" href="BasicFunctions.html#1110" class="Bound">g</a> <a id="1126" class="Symbol">(</a><a id="1127" href="BasicFunctions.html#1114" class="Bound">f</a> <a id="1129" href="BasicFunctions.html#1120" class="Bound">x</a><a id="1130" class="Symbol">)</a>
<a id="1132" class="Keyword">infixr</a> <a id="1139" class="Number">80</a> <a id="1142" href="BasicFunctions.html#910" class="Function Operator">_∘_</a>
</pre>

Synonym for composition (diagrammatic version)

<pre class="Agda">
<a id="_//_"></a><a id="1219" href="BasicFunctions.html#1219" class="Function Operator">_//_</a>
  <a id="1226" class="Symbol">:</a> <a id="1228" class="Symbol">∀</a> <a id="1230" class="Symbol">{</a><a id="1231" href="BasicFunctions.html#1231" class="Bound">ℓᵢ</a> <a id="1234" href="BasicFunctions.html#1234" class="Bound">ℓⱼ</a> <a id="1237" href="BasicFunctions.html#1237" class="Bound">ℓₖ</a><a id="1239" class="Symbol">}</a>
  <a id="1243" class="Symbol">→</a> <a id="1245" class="Symbol">{</a><a id="1246" href="BasicFunctions.html#1246" class="Bound">A</a> <a id="1248" class="Symbol">:</a> <a id="1250" href="Intro.html#1442" class="Function">Type</a> <a id="1255" href="BasicFunctions.html#1231" class="Bound">ℓᵢ</a><a id="1257" class="Symbol">}</a> <a id="1259" class="Symbol">{</a><a id="1260" href="BasicFunctions.html#1260" class="Bound">B</a> <a id="1262" class="Symbol">:</a> <a id="1264" href="BasicFunctions.html#1246" class="Bound">A</a> <a id="1266" class="Symbol">→</a> <a id="1268" href="Intro.html#1442" class="Function">Type</a> <a id="1273" href="BasicFunctions.html#1234" class="Bound">ℓⱼ</a><a id="1275" class="Symbol">}</a> <a id="1277" class="Symbol">{</a><a id="1278" href="BasicFunctions.html#1278" class="Bound">C</a> <a id="1280" class="Symbol">:</a> <a id="1282" class="Symbol">(</a><a id="1283" href="BasicFunctions.html#1283" class="Bound">a</a> <a id="1285" class="Symbol">:</a> <a id="1287" href="BasicFunctions.html#1246" class="Bound">A</a><a id="1288" class="Symbol">)</a> <a id="1290" class="Symbol">→</a> <a id="1292" class="Symbol">(</a><a id="1293" href="BasicFunctions.html#1260" class="Bound">B</a> <a id="1295" href="BasicFunctions.html#1283" class="Bound">a</a> <a id="1297" class="Symbol">→</a> <a id="1299" href="Intro.html#1442" class="Function">Type</a> <a id="1304" href="BasicFunctions.html#1237" class="Bound">ℓₖ</a><a id="1306" class="Symbol">)}</a>
  <a id="1311" class="Symbol">→</a> <a id="1313" class="Symbol">(</a><a id="1314" href="BasicFunctions.html#1314" class="Bound">f</a> <a id="1316" class="Symbol">:</a> <a id="1318" href="BasicTypes.html#1730" class="Function">Π</a> <a id="1320" href="BasicFunctions.html#1246" class="Bound">A</a> <a id="1322" href="BasicFunctions.html#1260" class="Bound">B</a><a id="1323" class="Symbol">)</a>
  <a id="1327" class="Symbol">→</a> <a id="1329" class="Symbol">(</a><a id="1330" href="BasicFunctions.html#1330" class="Bound">g</a> <a id="1332" class="Symbol">:</a> <a id="1334" class="Symbol">{</a><a id="1335" href="BasicFunctions.html#1335" class="Bound">a</a> <a id="1337" class="Symbol">:</a> <a id="1339" href="BasicFunctions.html#1246" class="Bound">A</a><a id="1340" class="Symbol">}</a> <a id="1342" class="Symbol">→</a> <a id="1344" href="BasicTypes.html#1730" class="Function">Π</a> <a id="1346" class="Symbol">(</a><a id="1347" href="BasicFunctions.html#1260" class="Bound">B</a> <a id="1349" href="BasicFunctions.html#1335" class="Bound">a</a><a id="1350" class="Symbol">)</a> <a id="1352" class="Symbol">(</a><a id="1353" href="BasicFunctions.html#1278" class="Bound">C</a> <a id="1355" href="BasicFunctions.html#1335" class="Bound">a</a><a id="1356" class="Symbol">))</a>
  <a id="1361" class="Comment">-------------------------------</a>
  <a id="1395" class="Symbol">→</a> <a id="1397" href="BasicTypes.html#1730" class="Function">Π</a> <a id="1399" href="BasicFunctions.html#1246" class="Bound">A</a> <a id="1401" class="Symbol">(λ</a> <a id="1404" href="BasicFunctions.html#1404" class="Bound">a</a> <a id="1406" class="Symbol">→</a> <a id="1408" href="BasicFunctions.html#1278" class="Bound">C</a> <a id="1410" href="BasicFunctions.html#1404" class="Bound">a</a> <a id="1412" class="Symbol">(</a><a id="1413" href="BasicFunctions.html#1314" class="Bound">f</a> <a id="1415" href="BasicFunctions.html#1404" class="Bound">a</a><a id="1416" class="Symbol">))</a>

<a id="1420" href="BasicFunctions.html#1420" class="Bound">f</a> <a id="1422" href="BasicFunctions.html#1219" class="Function Operator">//</a> <a id="1425" href="BasicFunctions.html#1425" class="Bound">g</a> <a id="1427" class="Symbol">=</a> <a id="1429" href="BasicFunctions.html#1425" class="Bound">g</a> <a id="1431" href="BasicFunctions.html#910" class="Function Operator">∘</a> <a id="1433" href="BasicFunctions.html#1420" class="Bound">f</a>


<a id="1437" class="Comment">-- _;_ = _//_</a>

</pre>

### Application

<pre class="Agda">
<a id="1494" class="Keyword">infixr</a> <a id="1501" class="Number">0</a> <a id="1503" href="BasicFunctions.html#1507" class="Function Operator">_$_</a>
<a id="_$_"></a><a id="1507" href="BasicFunctions.html#1507" class="Function Operator">_$_</a>
  <a id="1513" class="Symbol">:</a> <a id="1515" class="Symbol">∀</a> <a id="1517" class="Symbol">{</a><a id="1518" href="BasicFunctions.html#1518" class="Bound">ℓᵢ</a> <a id="1521" href="BasicFunctions.html#1521" class="Bound">ℓⱼ</a><a id="1523" class="Symbol">}</a> <a id="1525" class="Symbol">{</a><a id="1526" href="BasicFunctions.html#1526" class="Bound">A</a> <a id="1528" class="Symbol">:</a> <a id="1530" href="Intro.html#1442" class="Function">Type</a> <a id="1535" href="BasicFunctions.html#1518" class="Bound">ℓᵢ</a><a id="1537" class="Symbol">}</a> <a id="1539" class="Symbol">{</a><a id="1540" href="BasicFunctions.html#1540" class="Bound">B</a> <a id="1542" class="Symbol">:</a> <a id="1544" href="BasicFunctions.html#1526" class="Bound">A</a> <a id="1546" class="Symbol">→</a> <a id="1548" href="Intro.html#1442" class="Function">Type</a> <a id="1553" href="BasicFunctions.html#1521" class="Bound">ℓⱼ</a><a id="1555" class="Symbol">}</a>
  <a id="1559" class="Symbol">→</a> <a id="1561" class="Symbol">(∀</a> <a id="1564" href="BasicFunctions.html#1564" class="Bound">x</a> <a id="1566" class="Symbol">→</a> <a id="1568" href="BasicFunctions.html#1540" class="Bound">B</a> <a id="1570" href="BasicFunctions.html#1564" class="Bound">x</a><a id="1571" class="Symbol">)</a>
  <a id="1575" class="Comment">-------------</a>
  <a id="1591" class="Symbol">→</a> <a id="1593" class="Symbol">(∀</a> <a id="1596" href="BasicFunctions.html#1596" class="Bound">x</a> <a id="1598" class="Symbol">→</a> <a id="1600" href="BasicFunctions.html#1540" class="Bound">B</a> <a id="1602" href="BasicFunctions.html#1596" class="Bound">x</a><a id="1603" class="Symbol">)</a>

<a id="1606" href="BasicFunctions.html#1606" class="Bound">f</a> <a id="1608" href="BasicFunctions.html#1507" class="Function Operator">$</a> <a id="1610" href="BasicFunctions.html#1610" class="Bound">x</a> <a id="1612" class="Symbol">=</a> <a id="1614" href="BasicFunctions.html#1606" class="Bound">f</a> <a id="1616" href="BasicFunctions.html#1610" class="Bound">x</a>
</pre>

### Curryfication

<pre class="Agda">
<a id="curry"></a><a id="1662" href="BasicFunctions.html#1662" class="Function">curry</a>
  <a id="1670" class="Symbol">:</a> <a id="1672" class="Symbol">∀</a> <a id="1674" class="Symbol">{</a><a id="1675" href="BasicFunctions.html#1675" class="Bound">i</a> <a id="1677" href="BasicFunctions.html#1677" class="Bound">j</a> <a id="1679" href="BasicFunctions.html#1679" class="Bound">k</a><a id="1680" class="Symbol">}</a> <a id="1682" class="Symbol">{</a><a id="1683" href="BasicFunctions.html#1683" class="Bound">A</a> <a id="1685" class="Symbol">:</a> <a id="1687" href="Intro.html#1442" class="Function">Type</a> <a id="1692" href="BasicFunctions.html#1675" class="Bound">i</a><a id="1693" class="Symbol">}</a> <a id="1695" class="Symbol">{</a><a id="1696" href="BasicFunctions.html#1696" class="Bound">B</a> <a id="1698" class="Symbol">:</a> <a id="1700" href="BasicFunctions.html#1683" class="Bound">A</a> <a id="1702" class="Symbol">→</a> <a id="1704" href="Intro.html#1442" class="Function">Type</a> <a id="1709" href="BasicFunctions.html#1677" class="Bound">j</a><a id="1710" class="Symbol">}</a> <a id="1712" class="Symbol">{</a><a id="1713" href="BasicFunctions.html#1713" class="Bound">C</a> <a id="1715" class="Symbol">:</a> <a id="1717" href="BasicTypes.html#1401" class="Record">Σ</a> <a id="1719" href="BasicFunctions.html#1683" class="Bound">A</a> <a id="1721" href="BasicFunctions.html#1696" class="Bound">B</a> <a id="1723" class="Symbol">→</a> <a id="1725" href="Intro.html#1442" class="Function">Type</a> <a id="1730" href="BasicFunctions.html#1679" class="Bound">k</a><a id="1731" class="Symbol">}</a>
  <a id="1735" class="Symbol">→</a> <a id="1737" class="Symbol">(∀</a> <a id="1740" href="BasicFunctions.html#1740" class="Bound">s</a> <a id="1742" class="Symbol">→</a> <a id="1744" href="BasicFunctions.html#1713" class="Bound">C</a> <a id="1746" href="BasicFunctions.html#1740" class="Bound">s</a><a id="1747" class="Symbol">)</a>
  <a id="1751" class="Comment">---------------------</a>
  <a id="1775" class="Symbol">→</a> <a id="1777" class="Symbol">(∀</a> <a id="1780" href="BasicFunctions.html#1780" class="Bound">x</a> <a id="1782" href="BasicFunctions.html#1782" class="Bound">y</a> <a id="1784" class="Symbol">→</a> <a id="1786" href="BasicFunctions.html#1713" class="Bound">C</a> <a id="1788" class="Symbol">(</a><a id="1789" href="BasicFunctions.html#1780" class="Bound">x</a> <a id="1791" href="BasicTypes.html#1479" class="InductiveConstructor Operator">,</a> <a id="1793" href="BasicFunctions.html#1782" class="Bound">y</a><a id="1794" class="Symbol">))</a>

<a id="1798" href="BasicFunctions.html#1662" class="Function">curry</a> <a id="1804" href="BasicFunctions.html#1804" class="Bound">f</a> <a id="1806" href="BasicFunctions.html#1806" class="Bound">x</a> <a id="1808" href="BasicFunctions.html#1808" class="Bound">y</a> <a id="1810" class="Symbol">=</a> <a id="1812" href="BasicFunctions.html#1804" class="Bound">f</a> <a id="1814" class="Symbol">(</a><a id="1815" href="BasicFunctions.html#1806" class="Bound">x</a> <a id="1817" href="BasicTypes.html#1479" class="InductiveConstructor Operator">,</a> <a id="1819" href="BasicFunctions.html#1808" class="Bound">y</a><a id="1820" class="Symbol">)</a>
</pre>

### Uncurryfication

<pre class="Agda">
<a id="uncurry"></a><a id="1868" href="BasicFunctions.html#1868" class="Function">uncurry</a>
  <a id="1878" class="Symbol">:</a> <a id="1880" class="Symbol">∀</a> <a id="1882" class="Symbol">{</a><a id="1883" href="BasicFunctions.html#1883" class="Bound">i</a> <a id="1885" href="BasicFunctions.html#1885" class="Bound">j</a> <a id="1887" href="BasicFunctions.html#1887" class="Bound">k</a><a id="1888" class="Symbol">}</a> <a id="1890" class="Symbol">{</a><a id="1891" href="BasicFunctions.html#1891" class="Bound">A</a> <a id="1893" class="Symbol">:</a> <a id="1895" href="Intro.html#1442" class="Function">Type</a> <a id="1900" href="BasicFunctions.html#1883" class="Bound">i</a><a id="1901" class="Symbol">}</a> <a id="1903" class="Symbol">{</a><a id="1904" href="BasicFunctions.html#1904" class="Bound">B</a> <a id="1906" class="Symbol">:</a> <a id="1908" href="BasicFunctions.html#1891" class="Bound">A</a> <a id="1910" class="Symbol">→</a> <a id="1912" href="Intro.html#1442" class="Function">Type</a> <a id="1917" href="BasicFunctions.html#1885" class="Bound">j</a><a id="1918" class="Symbol">}</a> <a id="1920" class="Symbol">{</a><a id="1921" href="BasicFunctions.html#1921" class="Bound">C</a> <a id="1923" class="Symbol">:</a> <a id="1925" class="Symbol">∀</a> <a id="1927" href="BasicFunctions.html#1927" class="Bound">x</a> <a id="1929" class="Symbol">→</a> <a id="1931" href="BasicFunctions.html#1904" class="Bound">B</a> <a id="1933" href="BasicFunctions.html#1927" class="Bound">x</a> <a id="1935" class="Symbol">→</a> <a id="1937" href="Intro.html#1442" class="Function">Type</a> <a id="1942" href="BasicFunctions.html#1887" class="Bound">k</a><a id="1943" class="Symbol">}</a>
  <a id="1947" class="Symbol">→</a> <a id="1949" class="Symbol">(∀</a> <a id="1952" href="BasicFunctions.html#1952" class="Bound">x</a> <a id="1954" href="BasicFunctions.html#1954" class="Bound">y</a> <a id="1956" class="Symbol">→</a> <a id="1958" href="BasicFunctions.html#1921" class="Bound">C</a> <a id="1960" href="BasicFunctions.html#1952" class="Bound">x</a> <a id="1962" href="BasicFunctions.html#1954" class="Bound">y</a><a id="1963" class="Symbol">)</a>
  <a id="1967" class="Comment">-------------------------</a>
  <a id="1995" class="Symbol">→</a> <a id="1997" class="Symbol">(∀</a> <a id="2000" href="BasicFunctions.html#2000" class="Bound">s</a> <a id="2002" class="Symbol">→</a> <a id="2004" href="BasicFunctions.html#1921" class="Bound">C</a> <a id="2006" class="Symbol">(</a><a id="2007" href="BasicTypes.html#1495" class="Field">π₁</a> <a id="2010" href="BasicFunctions.html#2000" class="Bound">s</a><a id="2011" class="Symbol">)</a> <a id="2013" class="Symbol">(</a><a id="2014" href="BasicTypes.html#1506" class="Field">π₂</a> <a id="2017" href="BasicFunctions.html#2000" class="Bound">s</a><a id="2018" class="Symbol">))</a>

<a id="2022" href="BasicFunctions.html#1868" class="Function">uncurry</a> <a id="2030" href="BasicFunctions.html#2030" class="Bound">f</a> <a id="2032" class="Symbol">(</a><a id="2033" href="BasicFunctions.html#2033" class="Bound">x</a> <a id="2035" href="BasicTypes.html#1479" class="InductiveConstructor Operator">,</a> <a id="2037" href="BasicFunctions.html#2037" class="Bound">y</a><a id="2038" class="Symbol">)</a> <a id="2040" class="Symbol">=</a> <a id="2042" href="BasicFunctions.html#2030" class="Bound">f</a> <a id="2044" href="BasicFunctions.html#2033" class="Bound">x</a> <a id="2046" href="BasicFunctions.html#2037" class="Bound">y</a>
</pre>

### Instance search

<pre class="Agda">
<a id="⟨⟩"></a><a id="2094" href="BasicFunctions.html#2094" class="Function">⟨⟩</a>
  <a id="2099" class="Symbol">:</a> <a id="2101" class="Symbol">∀</a> <a id="2103" class="Symbol">{</a><a id="2104" href="BasicFunctions.html#2104" class="Bound">i</a><a id="2105" class="Symbol">}</a> <a id="2107" class="Symbol">{</a><a id="2108" href="BasicFunctions.html#2108" class="Bound">A</a> <a id="2110" class="Symbol">:</a> <a id="2112" href="Intro.html#1442" class="Function">Type</a> <a id="2117" href="BasicFunctions.html#2104" class="Bound">i</a><a id="2118" class="Symbol">}</a> <a id="2120" class="Symbol">{{</a><a id="2122" href="BasicFunctions.html#2122" class="Bound">a</a> <a id="2124" class="Symbol">:</a> <a id="2126" href="BasicFunctions.html#2108" class="Bound">A</a><a id="2127" class="Symbol">}}</a> <a id="2130" class="Symbol">→</a> <a id="2132" href="BasicFunctions.html#2108" class="Bound">A</a>

<a id="2135" href="BasicFunctions.html#2094" class="Function">⟨⟩</a> <a id="2138" class="Symbol">{{</a><a id="2140" href="BasicFunctions.html#2140" class="Bound">a</a><a id="2141" class="Symbol">}}</a> <a id="2144" class="Symbol">=</a> <a id="2146" href="BasicFunctions.html#2140" class="Bound">a</a>
</pre>
