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

## Useful functions

### Identity functions

The identity function with implicit type.
<pre class="Agda">
<a id="id"></a><a id="386" href="BasicFunctions.html#386" class="Function">id</a>
  <a id="391" class="Symbol">:</a> <a id="393" class="Symbol">∀</a> <a id="395" class="Symbol">{</a><a id="396" href="BasicFunctions.html#396" class="Bound">A</a> <a id="398" class="Symbol">:</a> <a id="400" href="Intro.html#1720" class="Function">Type</a> <a id="405" href="Intro.html#2160" class="Generalizable">ℓ</a><a id="406" class="Symbol">}</a>
  <a id="410" class="Comment">----------------</a>
  <a id="429" class="Symbol">→</a> <a id="431" href="BasicFunctions.html#396" class="Bound">A</a> <a id="433" class="Symbol">→</a> <a id="435" href="BasicFunctions.html#396" class="Bound">A</a>

<a id="438" href="BasicFunctions.html#386" class="Function">id</a> <a id="441" class="Symbol">=</a> <a id="443" class="Symbol">λ</a> <a id="445" href="BasicFunctions.html#445" class="Bound">x</a> <a id="447" class="Symbol">→</a> <a id="449" href="BasicFunctions.html#445" class="Bound">x</a>
</pre>

The identity function on a type `A` is `idf A`.

<pre class="Agda">
<a id="idf"></a><a id="525" href="BasicFunctions.html#525" class="Function">idf</a>
  <a id="531" class="Symbol">:</a> <a id="533" class="Symbol">(</a><a id="534" href="BasicFunctions.html#534" class="Bound">A</a> <a id="536" class="Symbol">:</a> <a id="538" href="Intro.html#1720" class="Function">Type</a> <a id="543" href="Intro.html#2162" class="Generalizable">ℓᵢ</a><a id="545" class="Symbol">)</a>
  <a id="549" class="Comment">---------------</a>
  <a id="567" class="Symbol">→</a> <a id="569" class="Symbol">(</a><a id="570" href="BasicFunctions.html#534" class="Bound">A</a> <a id="572" class="Symbol">→</a> <a id="574" href="BasicFunctions.html#534" class="Bound">A</a><a id="575" class="Symbol">)</a>

<a id="578" href="BasicFunctions.html#525" class="Function">idf</a> <a id="582" href="BasicFunctions.html#582" class="Bound">A</a> <a id="584" class="Symbol">=</a> <a id="586" class="Symbol">λ</a> <a id="588" href="BasicFunctions.html#588" class="Bound">x</a> <a id="590" class="Symbol">→</a> <a id="592" href="BasicFunctions.html#588" class="Bound">x</a>
</pre>


### Constant functions

Constant function at some point `b` is `cst b`

<pre class="Agda">
<a id="cst"></a><a id="692" href="BasicFunctions.html#692" class="Function">cst</a>
  <a id="698" class="Symbol">:</a> <a id="700" class="Symbol">∀</a> <a id="702" class="Symbol">{</a><a id="703" href="BasicFunctions.html#703" class="Bound">A</a> <a id="705" class="Symbol">:</a> <a id="707" href="Intro.html#1720" class="Function">Type</a> <a id="712" href="Intro.html#2162" class="Generalizable">ℓᵢ</a><a id="714" class="Symbol">}</a> <a id="716" class="Symbol">{</a><a id="717" href="BasicFunctions.html#717" class="Bound">B</a> <a id="719" class="Symbol">:</a> <a id="721" href="Intro.html#1720" class="Function">Type</a> <a id="726" href="Intro.html#2165" class="Generalizable">ℓⱼ</a><a id="728" class="Symbol">}</a>
  <a id="732" class="Symbol">→</a> <a id="734" class="Symbol">(</a><a id="735" href="BasicFunctions.html#735" class="Bound">b</a> <a id="737" class="Symbol">:</a> <a id="739" href="BasicFunctions.html#717" class="Bound">B</a><a id="740" class="Symbol">)</a>
  <a id="744" class="Comment">---------</a>
  <a id="756" class="Symbol">→</a> <a id="758" class="Symbol">(</a><a id="759" href="BasicFunctions.html#703" class="Bound">A</a> <a id="761" class="Symbol">→</a> <a id="763" href="BasicFunctions.html#717" class="Bound">B</a><a id="764" class="Symbol">)</a>

<a id="767" href="BasicFunctions.html#692" class="Function">cst</a> <a id="771" href="BasicFunctions.html#771" class="Bound">b</a> <a id="773" class="Symbol">=</a> <a id="775" class="Symbol">λ</a> <a id="777" href="BasicFunctions.html#777" class="Bound">_</a> <a id="779" class="Symbol">→</a> <a id="781" href="BasicFunctions.html#771" class="Bound">b</a>
</pre>

### Logical negation

<pre class="Agda">
<a id="neg¬"></a><a id="830" href="BasicFunctions.html#830" class="Function">neg¬</a>
  <a id="837" class="Symbol">:</a> <a id="839" href="BasicTypes.html#3238" class="Datatype">Bool</a>
  <a id="846" class="Symbol">→</a> <a id="848" href="BasicTypes.html#3238" class="Datatype">Bool</a>
<a id="853" href="BasicFunctions.html#830" class="Function">neg¬</a> <a id="858" href="BasicTypes.html#3452" class="InductiveConstructor">tt</a> <a id="861" class="Symbol">=</a> <a id="863" href="BasicTypes.html#3433" class="InductiveConstructor">ff</a>
<a id="866" href="BasicFunctions.html#830" class="Function">neg¬</a> <a id="871" href="BasicTypes.html#3433" class="InductiveConstructor">ff</a> <a id="874" class="Symbol">=</a> <a id="876" href="BasicTypes.html#3452" class="InductiveConstructor">tt</a>
</pre>

### Composition

A more sophisticated composition function that can handle dependent functions.

{: .foldable until="6" }
<pre class="Agda">
<a id="_∘_"></a><a id="1026" href="BasicFunctions.html#1026" class="Function Operator">_∘_</a>
  <a id="1032" class="Symbol">:</a> <a id="1034" class="Symbol">∀</a> <a id="1036" class="Symbol">{</a><a id="1037" href="BasicFunctions.html#1037" class="Bound">A</a> <a id="1039" class="Symbol">:</a> <a id="1041" href="Intro.html#1720" class="Function">Type</a> <a id="1046" href="Intro.html#2162" class="Generalizable">ℓᵢ</a><a id="1048" class="Symbol">}</a> <a id="1050" class="Symbol">{</a><a id="1051" href="BasicFunctions.html#1051" class="Bound">B</a> <a id="1053" class="Symbol">:</a> <a id="1055" href="BasicFunctions.html#1037" class="Bound">A</a> <a id="1057" class="Symbol">→</a> <a id="1059" href="Intro.html#1720" class="Function">Type</a> <a id="1064" href="Intro.html#2165" class="Generalizable">ℓⱼ</a><a id="1066" class="Symbol">}</a> <a id="1068" class="Symbol">{</a><a id="1069" href="BasicFunctions.html#1069" class="Bound">C</a> <a id="1071" class="Symbol">:</a> <a id="1073" class="Symbol">(</a><a id="1074" href="BasicFunctions.html#1074" class="Bound">a</a> <a id="1076" class="Symbol">:</a> <a id="1078" href="BasicFunctions.html#1037" class="Bound">A</a><a id="1079" class="Symbol">)</a> <a id="1081" class="Symbol">→</a> <a id="1083" class="Symbol">(</a><a id="1084" href="BasicFunctions.html#1051" class="Bound">B</a> <a id="1086" href="BasicFunctions.html#1074" class="Bound">a</a> <a id="1088" class="Symbol">→</a> <a id="1090" href="Intro.html#1720" class="Function">Type</a> <a id="1095" href="Intro.html#2168" class="Generalizable">ℓₖ</a><a id="1097" class="Symbol">)}</a>
  <a id="1102" class="Symbol">→</a> <a id="1104" class="Symbol">(</a><a id="1105" href="BasicFunctions.html#1105" class="Bound">g</a> <a id="1107" class="Symbol">:</a> <a id="1109" class="Symbol">{</a><a id="1110" href="BasicFunctions.html#1110" class="Bound">a</a> <a id="1112" class="Symbol">:</a> <a id="1114" href="BasicFunctions.html#1037" class="Bound">A</a><a id="1115" class="Symbol">}</a> <a id="1117" class="Symbol">→</a> <a id="1119" href="BasicTypes.html#2032" class="Function">∏</a> <a id="1121" class="Symbol">(</a><a id="1122" href="BasicFunctions.html#1051" class="Bound">B</a> <a id="1124" href="BasicFunctions.html#1110" class="Bound">a</a><a id="1125" class="Symbol">)</a> <a id="1127" class="Symbol">(</a><a id="1128" href="BasicFunctions.html#1069" class="Bound">C</a> <a id="1130" href="BasicFunctions.html#1110" class="Bound">a</a><a id="1131" class="Symbol">))</a>
  <a id="1136" class="Symbol">→</a> <a id="1138" class="Symbol">(</a><a id="1139" href="BasicFunctions.html#1139" class="Bound">f</a> <a id="1141" class="Symbol">:</a> <a id="1143" href="BasicTypes.html#2032" class="Function">∏</a> <a id="1145" href="BasicFunctions.html#1037" class="Bound">A</a> <a id="1147" href="BasicFunctions.html#1051" class="Bound">B</a><a id="1148" class="Symbol">)</a>
  <a id="1152" class="Comment">-------------------------------</a>
  <a id="1186" class="Symbol">→</a> <a id="1188" href="BasicTypes.html#2032" class="Function">∏</a> <a id="1190" href="BasicFunctions.html#1037" class="Bound">A</a> <a id="1192" class="Symbol">(λ</a> <a id="1195" href="BasicFunctions.html#1195" class="Bound">a</a> <a id="1197" class="Symbol">→</a> <a id="1199" href="BasicFunctions.html#1069" class="Bound">C</a> <a id="1201" href="BasicFunctions.html#1195" class="Bound">a</a> <a id="1203" class="Symbol">(</a><a id="1204" href="BasicFunctions.html#1139" class="Bound">f</a> <a id="1206" href="BasicFunctions.html#1195" class="Bound">a</a><a id="1207" class="Symbol">))</a>

<a id="1211" href="BasicFunctions.html#1211" class="Bound">g</a> <a id="1213" href="BasicFunctions.html#1026" class="Function Operator">∘</a> <a id="1215" href="BasicFunctions.html#1215" class="Bound">f</a> <a id="1217" class="Symbol">=</a> <a id="1219" class="Symbol">λ</a> <a id="1221" href="BasicFunctions.html#1221" class="Bound">x</a> <a id="1223" class="Symbol">→</a> <a id="1225" href="BasicFunctions.html#1211" class="Bound">g</a> <a id="1227" class="Symbol">(</a><a id="1228" href="BasicFunctions.html#1215" class="Bound">f</a> <a id="1230" href="BasicFunctions.html#1221" class="Bound">x</a><a id="1231" class="Symbol">)</a>

<a id="1234" class="Keyword">infixr</a> <a id="1241" class="Number">80</a> <a id="1244" href="BasicFunctions.html#1026" class="Function Operator">_∘_</a>
</pre>

Synonym for composition (diagrammatic version)

{: .foldable until="7" }
<pre class="Agda">
<a id="_:&gt;_"></a><a id="1346" href="BasicFunctions.html#1346" class="Function Operator">_:&gt;_</a>
  <a id="1353" class="Symbol">:</a> <a id="1355" class="Symbol">∀</a> <a id="1357" class="Symbol">{</a><a id="1358" href="BasicFunctions.html#1358" class="Bound">ℓᵢ</a> <a id="1361" href="BasicFunctions.html#1361" class="Bound">ℓⱼ</a> <a id="1364" href="BasicFunctions.html#1364" class="Bound">ℓₖ</a><a id="1366" class="Symbol">}</a>
  <a id="1370" class="Symbol">→</a> <a id="1372" class="Symbol">{</a><a id="1373" href="BasicFunctions.html#1373" class="Bound">A</a> <a id="1375" class="Symbol">:</a> <a id="1377" href="Intro.html#1720" class="Function">Type</a> <a id="1382" href="BasicFunctions.html#1358" class="Bound">ℓᵢ</a><a id="1384" class="Symbol">}</a> <a id="1386" class="Symbol">{</a><a id="1387" href="BasicFunctions.html#1387" class="Bound">B</a> <a id="1389" class="Symbol">:</a> <a id="1391" href="BasicFunctions.html#1373" class="Bound">A</a> <a id="1393" class="Symbol">→</a> <a id="1395" href="Intro.html#1720" class="Function">Type</a> <a id="1400" href="BasicFunctions.html#1361" class="Bound">ℓⱼ</a><a id="1402" class="Symbol">}</a> <a id="1404" class="Symbol">{</a><a id="1405" href="BasicFunctions.html#1405" class="Bound">C</a> <a id="1407" class="Symbol">:</a> <a id="1409" class="Symbol">(</a><a id="1410" href="BasicFunctions.html#1410" class="Bound">a</a> <a id="1412" class="Symbol">:</a> <a id="1414" href="BasicFunctions.html#1373" class="Bound">A</a><a id="1415" class="Symbol">)</a> <a id="1417" class="Symbol">→</a> <a id="1419" class="Symbol">(</a><a id="1420" href="BasicFunctions.html#1387" class="Bound">B</a> <a id="1422" href="BasicFunctions.html#1410" class="Bound">a</a> <a id="1424" class="Symbol">→</a> <a id="1426" href="Intro.html#1720" class="Function">Type</a> <a id="1431" href="BasicFunctions.html#1364" class="Bound">ℓₖ</a><a id="1433" class="Symbol">)}</a>
  <a id="1438" class="Symbol">→</a> <a id="1440" class="Symbol">(</a><a id="1441" href="BasicFunctions.html#1441" class="Bound">f</a> <a id="1443" class="Symbol">:</a> <a id="1445" href="BasicTypes.html#1883" class="Function">Π</a> <a id="1447" href="BasicFunctions.html#1373" class="Bound">A</a> <a id="1449" href="BasicFunctions.html#1387" class="Bound">B</a><a id="1450" class="Symbol">)</a>
  <a id="1454" class="Symbol">→</a> <a id="1456" class="Symbol">(</a><a id="1457" href="BasicFunctions.html#1457" class="Bound">g</a> <a id="1459" class="Symbol">:</a> <a id="1461" class="Symbol">{</a><a id="1462" href="BasicFunctions.html#1462" class="Bound">a</a> <a id="1464" class="Symbol">:</a> <a id="1466" href="BasicFunctions.html#1373" class="Bound">A</a><a id="1467" class="Symbol">}</a> <a id="1469" class="Symbol">→</a> <a id="1471" href="BasicTypes.html#1883" class="Function">Π</a> <a id="1473" class="Symbol">(</a><a id="1474" href="BasicFunctions.html#1387" class="Bound">B</a> <a id="1476" href="BasicFunctions.html#1462" class="Bound">a</a><a id="1477" class="Symbol">)</a> <a id="1479" class="Symbol">(</a><a id="1480" href="BasicFunctions.html#1405" class="Bound">C</a> <a id="1482" href="BasicFunctions.html#1462" class="Bound">a</a><a id="1483" class="Symbol">))</a>
  <a id="1488" class="Comment">-------------------------------</a>
  <a id="1522" class="Symbol">→</a> <a id="1524" href="BasicTypes.html#1883" class="Function">Π</a> <a id="1526" href="BasicFunctions.html#1373" class="Bound">A</a> <a id="1528" class="Symbol">(λ</a> <a id="1531" href="BasicFunctions.html#1531" class="Bound">a</a> <a id="1533" class="Symbol">→</a> <a id="1535" href="BasicFunctions.html#1405" class="Bound">C</a> <a id="1537" href="BasicFunctions.html#1531" class="Bound">a</a> <a id="1539" class="Symbol">(</a><a id="1540" href="BasicFunctions.html#1441" class="Bound">f</a> <a id="1542" href="BasicFunctions.html#1531" class="Bound">a</a><a id="1543" class="Symbol">))</a>

<a id="1547" href="BasicFunctions.html#1547" class="Bound">f</a> <a id="1549" href="BasicFunctions.html#1346" class="Function Operator">:&gt;</a> <a id="1552" href="BasicFunctions.html#1552" class="Bound">g</a> <a id="1554" class="Symbol">=</a> <a id="1556" href="BasicFunctions.html#1552" class="Bound">g</a> <a id="1558" href="BasicFunctions.html#1026" class="Function Operator">∘</a> <a id="1560" href="BasicFunctions.html#1547" class="Bound">f</a>

<a id="1563" class="Keyword">infixr</a> <a id="1570" class="Number">90</a> <a id="1573" href="BasicFunctions.html#1346" class="Function Operator">_:&gt;_</a>
</pre>

#### Associativity of composition

- Left associativity

{: .foldable until="5" }
<pre class="Agda">
<a id="∘-lassoc"></a><a id="1685" href="BasicFunctions.html#1685" class="Function">∘-lassoc</a>
  <a id="1696" class="Symbol">:</a> <a id="1698" class="Symbol">∀</a> <a id="1700" class="Symbol">{</a><a id="1701" href="BasicFunctions.html#1701" class="Bound">ℓ</a><a id="1702" class="Symbol">}</a> <a id="1704" class="Symbol">{</a><a id="1705" href="BasicFunctions.html#1705" class="Bound">A</a> <a id="1707" href="BasicFunctions.html#1707" class="Bound">B</a> <a id="1709" href="BasicFunctions.html#1709" class="Bound">C</a> <a id="1711" href="BasicFunctions.html#1711" class="Bound">D</a> <a id="1713" class="Symbol">:</a> <a id="1715" href="Intro.html#1720" class="Function">Type</a> <a id="1720" href="BasicFunctions.html#1701" class="Bound">ℓ</a><a id="1721" class="Symbol">}</a>
  <a id="1725" class="Symbol">→</a> <a id="1727" class="Symbol">(</a><a id="1728" href="BasicFunctions.html#1728" class="Bound">h</a> <a id="1730" class="Symbol">:</a> <a id="1732" href="BasicFunctions.html#1709" class="Bound">C</a> <a id="1734" class="Symbol">→</a> <a id="1736" href="BasicFunctions.html#1711" class="Bound">D</a><a id="1737" class="Symbol">)</a> <a id="1739" class="Symbol">→</a> <a id="1741" class="Symbol">(</a><a id="1742" href="BasicFunctions.html#1742" class="Bound">g</a> <a id="1744" class="Symbol">:</a> <a id="1746" href="BasicFunctions.html#1707" class="Bound">B</a> <a id="1748" class="Symbol">→</a> <a id="1750" href="BasicFunctions.html#1709" class="Bound">C</a><a id="1751" class="Symbol">)</a> <a id="1753" class="Symbol">→</a> <a id="1755" class="Symbol">(</a><a id="1756" href="BasicFunctions.html#1756" class="Bound">f</a> <a id="1758" class="Symbol">:</a> <a id="1760" href="BasicFunctions.html#1705" class="Bound">A</a> <a id="1762" class="Symbol">→</a> <a id="1764" href="BasicFunctions.html#1707" class="Bound">B</a><a id="1765" class="Symbol">)</a>
  <a id="1769" class="Comment">-----------------------------------------</a>
  <a id="1813" class="Symbol">→</a> <a id="1815" class="Symbol">(</a><a id="1816" href="BasicFunctions.html#1728" class="Bound">h</a> <a id="1818" href="BasicFunctions.html#1026" class="Function Operator">∘</a> <a id="1820" class="Symbol">(</a><a id="1821" href="BasicFunctions.html#1742" class="Bound">g</a> <a id="1823" href="BasicFunctions.html#1026" class="Function Operator">∘</a> <a id="1825" href="BasicFunctions.html#1756" class="Bound">f</a><a id="1826" class="Symbol">))</a> <a id="1829" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="1832" class="Symbol">((</a><a id="1834" href="BasicFunctions.html#1728" class="Bound">h</a> <a id="1836" href="BasicFunctions.html#1026" class="Function Operator">∘</a> <a id="1838" href="BasicFunctions.html#1742" class="Bound">g</a><a id="1839" class="Symbol">)</a> <a id="1841" href="BasicFunctions.html#1026" class="Function Operator">∘</a> <a id="1843" href="BasicFunctions.html#1756" class="Bound">f</a><a id="1844" class="Symbol">)</a>

<a id="1847" href="BasicFunctions.html#1685" class="Function">∘-lassoc</a> <a id="1856" href="BasicFunctions.html#1856" class="Bound">h</a> <a id="1858" href="BasicFunctions.html#1858" class="Bound">g</a> <a id="1860" href="BasicFunctions.html#1860" class="Bound">f</a> <a id="1862" class="Symbol">=</a> <a id="1864" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a> <a id="1868" class="Symbol">{</a><a id="1869" class="Argument">a</a> <a id="1871" class="Symbol">=</a> <a id="1873" class="Symbol">(λ</a> <a id="1876" href="BasicFunctions.html#1876" class="Bound">x</a> <a id="1878" class="Symbol">→</a> <a id="1880" href="BasicFunctions.html#1856" class="Bound">h</a> <a id="1882" class="Symbol">(</a><a id="1883" href="BasicFunctions.html#1858" class="Bound">g</a> <a id="1885" class="Symbol">(</a><a id="1886" href="BasicFunctions.html#1860" class="Bound">f</a> <a id="1888" href="BasicFunctions.html#1876" class="Bound">x</a><a id="1889" class="Symbol">)))}</a>
</pre>

- Right associativity

{: .foldable until="5" }
<pre class="Agda">
<a id="∘-rassoc"></a><a id="1967" href="BasicFunctions.html#1967" class="Function">∘-rassoc</a>
  <a id="1978" class="Symbol">:</a> <a id="1980" class="Symbol">∀</a> <a id="1982" class="Symbol">{</a><a id="1983" href="BasicFunctions.html#1983" class="Bound">ℓ</a><a id="1984" class="Symbol">}</a> <a id="1986" class="Symbol">{</a><a id="1987" href="BasicFunctions.html#1987" class="Bound">A</a> <a id="1989" href="BasicFunctions.html#1989" class="Bound">B</a> <a id="1991" href="BasicFunctions.html#1991" class="Bound">C</a> <a id="1993" href="BasicFunctions.html#1993" class="Bound">D</a> <a id="1995" class="Symbol">:</a> <a id="1997" href="Intro.html#1720" class="Function">Type</a> <a id="2002" href="BasicFunctions.html#1983" class="Bound">ℓ</a><a id="2003" class="Symbol">}</a>
  <a id="2007" class="Symbol">→</a> <a id="2009" class="Symbol">(</a><a id="2010" href="BasicFunctions.html#2010" class="Bound">h</a> <a id="2012" class="Symbol">:</a> <a id="2014" href="BasicFunctions.html#1991" class="Bound">C</a> <a id="2016" class="Symbol">→</a> <a id="2018" href="BasicFunctions.html#1993" class="Bound">D</a><a id="2019" class="Symbol">)</a> <a id="2021" class="Symbol">→</a> <a id="2023" class="Symbol">(</a><a id="2024" href="BasicFunctions.html#2024" class="Bound">g</a> <a id="2026" class="Symbol">:</a> <a id="2028" href="BasicFunctions.html#1989" class="Bound">B</a> <a id="2030" class="Symbol">→</a> <a id="2032" href="BasicFunctions.html#1991" class="Bound">C</a><a id="2033" class="Symbol">)</a> <a id="2035" class="Symbol">→</a> <a id="2037" class="Symbol">(</a><a id="2038" href="BasicFunctions.html#2038" class="Bound">f</a> <a id="2040" class="Symbol">:</a> <a id="2042" href="BasicFunctions.html#1987" class="Bound">A</a> <a id="2044" class="Symbol">→</a> <a id="2046" href="BasicFunctions.html#1989" class="Bound">B</a><a id="2047" class="Symbol">)</a>
  <a id="2051" class="Comment">-----------------------------------------</a>
  <a id="2095" class="Symbol">→</a> <a id="2097" class="Symbol">((</a><a id="2099" href="BasicFunctions.html#2010" class="Bound">h</a> <a id="2101" href="BasicFunctions.html#1026" class="Function Operator">∘</a> <a id="2103" href="BasicFunctions.html#2024" class="Bound">g</a><a id="2104" class="Symbol">)</a> <a id="2106" href="BasicFunctions.html#1026" class="Function Operator">∘</a> <a id="2108" href="BasicFunctions.html#2038" class="Bound">f</a><a id="2109" class="Symbol">)</a> <a id="2111" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="2114" class="Symbol">(</a><a id="2115" href="BasicFunctions.html#2010" class="Bound">h</a> <a id="2117" href="BasicFunctions.html#1026" class="Function Operator">∘</a> <a id="2119" class="Symbol">(</a><a id="2120" href="BasicFunctions.html#2024" class="Bound">g</a> <a id="2122" href="BasicFunctions.html#1026" class="Function Operator">∘</a> <a id="2124" href="BasicFunctions.html#2038" class="Bound">f</a><a id="2125" class="Symbol">))</a>

<a id="2129" href="BasicFunctions.html#1967" class="Function">∘-rassoc</a> <a id="2138" href="BasicFunctions.html#2138" class="Bound">h</a> <a id="2140" href="BasicFunctions.html#2140" class="Bound">g</a> <a id="2142" href="BasicFunctions.html#2142" class="Bound">f</a> <a id="2144" class="Symbol">=</a> <a id="2146" href="BasicTypes.html#4744" class="Function">sym</a> <a id="2150" class="Symbol">(</a><a id="2151" href="BasicFunctions.html#1685" class="Function">∘-lassoc</a> <a id="2160" href="BasicFunctions.html#2138" class="Bound">h</a> <a id="2162" href="BasicFunctions.html#2140" class="Bound">g</a> <a id="2164" href="BasicFunctions.html#2142" class="Bound">f</a><a id="2165" class="Symbol">)</a>
</pre>


### Application

<pre class="Agda">
<a id="_$_"></a><a id="2210" href="BasicFunctions.html#2210" class="Function Operator">_$_</a>
  <a id="2216" class="Symbol">:</a> <a id="2218" class="Symbol">∀</a> <a id="2220" class="Symbol">{</a><a id="2221" href="BasicFunctions.html#2221" class="Bound">A</a> <a id="2223" class="Symbol">:</a> <a id="2225" href="Intro.html#1720" class="Function">Type</a> <a id="2230" href="Intro.html#2162" class="Generalizable">ℓᵢ</a><a id="2232" class="Symbol">}</a> <a id="2234" class="Symbol">{</a><a id="2235" href="BasicFunctions.html#2235" class="Bound">B</a> <a id="2237" class="Symbol">:</a> <a id="2239" href="BasicFunctions.html#2221" class="Bound">A</a> <a id="2241" class="Symbol">→</a> <a id="2243" href="Intro.html#1720" class="Function">Type</a> <a id="2248" href="Intro.html#2165" class="Generalizable">ℓⱼ</a><a id="2250" class="Symbol">}</a>
  <a id="2254" class="Symbol">→</a> <a id="2256" class="Symbol">(∀</a> <a id="2259" href="BasicFunctions.html#2259" class="Bound">x</a> <a id="2261" class="Symbol">→</a> <a id="2263" href="BasicFunctions.html#2235" class="Bound">B</a> <a id="2265" href="BasicFunctions.html#2259" class="Bound">x</a><a id="2266" class="Symbol">)</a>
  <a id="2270" class="Comment">-------------</a>
  <a id="2286" class="Symbol">→</a> <a id="2288" class="Symbol">(∀</a> <a id="2291" href="BasicFunctions.html#2291" class="Bound">x</a> <a id="2293" class="Symbol">→</a> <a id="2295" href="BasicFunctions.html#2235" class="Bound">B</a> <a id="2297" href="BasicFunctions.html#2291" class="Bound">x</a><a id="2298" class="Symbol">)</a>

<a id="2301" href="BasicFunctions.html#2301" class="Bound">f</a> <a id="2303" href="BasicFunctions.html#2210" class="Function Operator">$</a> <a id="2305" href="BasicFunctions.html#2305" class="Bound">x</a> <a id="2307" class="Symbol">=</a> <a id="2309" href="BasicFunctions.html#2301" class="Bound">f</a> <a id="2311" href="BasicFunctions.html#2305" class="Bound">x</a>

<a id="2314" class="Keyword">infixr</a> <a id="2321" class="Number">0</a> <a id="2323" href="BasicFunctions.html#2210" class="Function Operator">_$_</a>
</pre>

### Coproduct manipulation

Functions handy to manipulate coproducts:

<pre class="Agda">
<a id="+-map"></a><a id="2423" href="BasicFunctions.html#2423" class="Function">+-map</a>
  <a id="2431" class="Symbol">:</a> <a id="2433" class="Symbol">∀</a> <a id="2435" class="Symbol">{</a><a id="2436" href="BasicFunctions.html#2436" class="Bound">i</a> <a id="2438" href="BasicFunctions.html#2438" class="Bound">j</a> <a id="2440" href="BasicFunctions.html#2440" class="Bound">k</a> <a id="2442" href="BasicFunctions.html#2442" class="Bound">l</a><a id="2443" class="Symbol">}</a> <a id="2445" class="Symbol">{</a><a id="2446" href="BasicFunctions.html#2446" class="Bound">A</a> <a id="2448" class="Symbol">:</a> <a id="2450" href="Intro.html#1720" class="Function">Type</a> <a id="2455" href="BasicFunctions.html#2436" class="Bound">i</a><a id="2456" class="Symbol">}</a> <a id="2458" class="Symbol">{</a><a id="2459" href="BasicFunctions.html#2459" class="Bound">B</a> <a id="2461" class="Symbol">:</a> <a id="2463" href="Intro.html#1720" class="Function">Type</a> <a id="2468" href="BasicFunctions.html#2438" class="Bound">j</a><a id="2469" class="Symbol">}</a> <a id="2471" class="Symbol">{</a><a id="2472" href="BasicFunctions.html#2472" class="Bound">A&#39;</a> <a id="2475" class="Symbol">:</a> <a id="2477" href="Intro.html#1720" class="Function">Type</a> <a id="2482" href="BasicFunctions.html#2440" class="Bound">k</a><a id="2483" class="Symbol">}</a> <a id="2485" class="Symbol">{</a><a id="2486" href="BasicFunctions.html#2486" class="Bound">B&#39;</a> <a id="2489" class="Symbol">:</a> <a id="2491" href="Intro.html#1720" class="Function">Type</a> <a id="2496" href="BasicFunctions.html#2442" class="Bound">l</a><a id="2497" class="Symbol">}</a>
  <a id="2501" class="Symbol">→</a> <a id="2503" class="Symbol">(</a><a id="2504" href="BasicFunctions.html#2446" class="Bound">A</a> <a id="2506" class="Symbol">→</a> <a id="2508" href="BasicFunctions.html#2472" class="Bound">A&#39;</a><a id="2510" class="Symbol">)</a>
  <a id="2514" class="Symbol">→</a> <a id="2516" class="Symbol">(</a><a id="2517" href="BasicFunctions.html#2459" class="Bound">B</a> <a id="2519" class="Symbol">→</a> <a id="2521" href="BasicFunctions.html#2486" class="Bound">B&#39;</a><a id="2523" class="Symbol">)</a>
  <a id="2527" class="Symbol">→</a> <a id="2529" href="BasicFunctions.html#2446" class="Bound">A</a> <a id="2531" href="BasicTypes.html#2352" class="Datatype Operator">+</a> <a id="2533" href="BasicFunctions.html#2459" class="Bound">B</a> <a id="2535" class="Symbol">→</a> <a id="2537" href="BasicFunctions.html#2472" class="Bound">A&#39;</a> <a id="2540" href="BasicTypes.html#2352" class="Datatype Operator">+</a> <a id="2542" href="BasicFunctions.html#2486" class="Bound">B&#39;</a>

<a id="2546" href="BasicFunctions.html#2423" class="Function">+-map</a> <a id="2552" href="BasicFunctions.html#2552" class="Bound">f</a> <a id="2554" href="BasicFunctions.html#2554" class="Bound">g</a> <a id="2556" class="Symbol">=</a> <a id="2558" href="BasicTypes.html#2815" class="Function">cases</a> <a id="2564" class="Symbol">(</a><a id="2565" href="BasicFunctions.html#2552" class="Bound">f</a> <a id="2567" href="BasicFunctions.html#1346" class="Function Operator">:&gt;</a> <a id="2570" href="BasicTypes.html#2521" class="InductiveConstructor">left</a><a id="2574" class="Symbol">)</a> <a id="2576" class="Symbol">(</a><a id="2577" href="BasicFunctions.html#2554" class="Bound">g</a> <a id="2579" href="BasicFunctions.html#1346" class="Function Operator">:&gt;</a> <a id="2582" href="BasicTypes.html#2541" class="InductiveConstructor">right</a><a id="2587" class="Symbol">)</a>

<a id="2590" class="Keyword">syntax</a> <a id="2597" href="BasicFunctions.html#2423" class="Function">+-map</a> <a id="2603" class="Bound">f</a> <a id="2605" class="Bound">g</a> <a id="2607" class="Symbol">=</a> <a id="2609" class="Function">〈</a> <a id="2611" class="Bound">f</a> <a id="2613" class="Function">⊕</a> <a id="2615" class="Bound">g</a> <a id="2617" class="Function">〉</a>  <a id="2620" class="Comment">-- Obs: Note the space after the left bracket.</a>
</pre>

<pre class="Agda">
<a id="parallell"></a><a id="2692" href="BasicFunctions.html#2692" class="Function">parallell</a>
  <a id="2704" class="Symbol">:</a> <a id="2706" class="Symbol">∀</a> <a id="2708" class="Symbol">{</a><a id="2709" href="BasicFunctions.html#2709" class="Bound">A</a> <a id="2711" class="Symbol">:</a> <a id="2713" href="Intro.html#1720" class="Function">Type</a> <a id="2718" href="Intro.html#2162" class="Generalizable">ℓᵢ</a><a id="2720" class="Symbol">}</a> <a id="2722" class="Symbol">{</a><a id="2723" href="BasicFunctions.html#2723" class="Bound">B</a> <a id="2725" class="Symbol">:</a> <a id="2727" href="BasicFunctions.html#2709" class="Bound">A</a> <a id="2729" class="Symbol">→</a> <a id="2731" href="Intro.html#1720" class="Function">Type</a> <a id="2736" href="Intro.html#2165" class="Generalizable">ℓⱼ</a><a id="2738" class="Symbol">}</a> <a id="2740" class="Symbol">{</a><a id="2741" href="BasicFunctions.html#2741" class="Bound">C</a> <a id="2743" class="Symbol">:</a> <a id="2745" class="Symbol">(</a><a id="2746" href="BasicFunctions.html#2746" class="Bound">a</a> <a id="2748" class="Symbol">:</a> <a id="2750" href="BasicFunctions.html#2709" class="Bound">A</a><a id="2751" class="Symbol">)</a> <a id="2753" class="Symbol">→</a> <a id="2755" href="BasicFunctions.html#2723" class="Bound">B</a> <a id="2757" href="BasicFunctions.html#2746" class="Bound">a</a> <a id="2759" class="Symbol">→</a> <a id="2761" href="Intro.html#1720" class="Function">Type</a> <a id="2766" href="Intro.html#2168" class="Generalizable">ℓₖ</a><a id="2768" class="Symbol">}</a>
  <a id="2772" class="Symbol">→</a> <a id="2774" class="Symbol">(</a><a id="2775" href="BasicFunctions.html#2775" class="Bound">f</a> <a id="2777" class="Symbol">:</a> <a id="2779" class="Symbol">(</a><a id="2780" href="BasicFunctions.html#2780" class="Bound">a</a> <a id="2782" class="Symbol">:</a> <a id="2784" href="BasicFunctions.html#2709" class="Bound">A</a><a id="2785" class="Symbol">)</a> <a id="2787" class="Symbol">→</a> <a id="2789" href="BasicFunctions.html#2723" class="Bound">B</a> <a id="2791" href="BasicFunctions.html#2780" class="Bound">a</a><a id="2792" class="Symbol">)</a>
  <a id="2796" class="Symbol">→</a> <a id="2798" class="Symbol">((</a><a id="2800" href="BasicFunctions.html#2800" class="Bound">a</a> <a id="2802" class="Symbol">:</a> <a id="2804" href="BasicFunctions.html#2709" class="Bound">A</a><a id="2805" class="Symbol">)</a> <a id="2807" class="Symbol">→</a> <a id="2809" href="BasicFunctions.html#2741" class="Bound">C</a> <a id="2811" href="BasicFunctions.html#2800" class="Bound">a</a> <a id="2813" class="Symbol">(</a><a id="2814" href="BasicFunctions.html#2775" class="Bound">f</a> <a id="2816" href="BasicFunctions.html#2800" class="Bound">a</a><a id="2817" class="Symbol">))</a>
  <a id="2822" class="Comment">----------------------</a><a id="2844" class="Comment">-</a><a id="2845" class="Comment">-</a><a id="2846" class="Comment">-</a>
  <a id="2850" class="Symbol">→</a> <a id="2852" class="Symbol">(</a><a id="2853" href="BasicFunctions.html#2853" class="Bound">a</a><a id="2854" class="Function"> </a><a id="2855" class="Symbol">:</a><a id="2856" class="Bound"> </a><a id="2857" href="BasicFunctions.html#2709" class="Bound">A</a><a id="2858" class="Symbol">)</a> <a id="2860" class="Symbol">→</a> <a id="2862" href="BasicTypes.html#1507" class="Record">∑</a> <a id="2864" class="Symbol">(</a><a id="2865" href="BasicFunctions.html#2723" class="Bound">B</a> <a id="2867" href="BasicFunctions.html#2853" class="Bound">a</a><a id="2868" class="Symbol">)</a> <a id="2870" class="Symbol">(</a><a id="2871" href="BasicFunctions.html#2741" class="Bound">C</a> <a id="2873" href="BasicFunctions.html#2853" class="Bound">a</a><a id="2874" class="Symbol">)</a>

<a id="2877" href="BasicFunctions.html#2692" class="Function">parallell</a> <a id="2887" href="BasicFunctions.html#2887" class="Bound">f</a> <a id="2889" href="BasicFunctions.html#2889" class="Bound">g</a> <a id="2891" href="BasicFunctions.html#2891" class="Bound">a</a> <a id="2893" class="Symbol">=</a> <a id="2895" class="Symbol">(</a><a id="2896" href="BasicFunctions.html#2887" class="Bound">f</a> <a id="2898" href="BasicFunctions.html#2891" class="Bound">a</a> <a id="2900" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="2902" href="BasicFunctions.html#2889" class="Bound">g</a> <a id="2904" href="BasicFunctions.html#2891" class="Bound">a</a><a id="2905" class="Symbol">)</a>

<a id="2908" class="Keyword">syntax</a> <a id="2915" href="BasicFunctions.html#2692" class="Function">parallell</a> <a id="2925" class="Bound">f</a> <a id="2927" class="Bound">g</a> <a id="2929" class="Symbol">=</a> <a id="2931" class="Function">〈</a> <a id="2933" class="Bound">f</a> <a id="2935" class="Function">×</a> <a id="2937" class="Bound">g</a> <a id="2939" class="Function">〉</a>
</pre>

### Curryfication

<pre class="Agda">
<a id="curry"></a><a id="2985" href="BasicFunctions.html#2985" class="Function">curry</a>
  <a id="2993" class="Symbol">:</a> <a id="2995" class="Symbol">∀</a> <a id="2997" class="Symbol">{</a><a id="2998" href="BasicFunctions.html#2998" class="Bound">A</a> <a id="3000" class="Symbol">:</a> <a id="3002" href="Intro.html#1720" class="Function">Type</a> <a id="3007" href="Intro.html#2162" class="Generalizable">ℓᵢ</a><a id="3009" class="Symbol">}</a> <a id="3011" class="Symbol">{</a><a id="3012" href="BasicFunctions.html#3012" class="Bound">B</a> <a id="3014" class="Symbol">:</a> <a id="3016" href="BasicFunctions.html#2998" class="Bound">A</a> <a id="3018" class="Symbol">→</a> <a id="3020" href="Intro.html#1720" class="Function">Type</a> <a id="3025" href="Intro.html#2165" class="Generalizable">ℓⱼ</a><a id="3027" class="Symbol">}</a> <a id="3029" class="Symbol">{</a><a id="3030" href="BasicFunctions.html#3030" class="Bound">C</a> <a id="3032" class="Symbol">:</a> <a id="3034" href="BasicTypes.html#1690" class="Function">Σ</a> <a id="3036" href="BasicFunctions.html#2998" class="Bound">A</a> <a id="3038" href="BasicFunctions.html#3012" class="Bound">B</a> <a id="3040" class="Symbol">→</a> <a id="3042" href="Intro.html#1720" class="Function">Type</a> <a id="3047" href="Intro.html#2168" class="Generalizable">ℓₖ</a><a id="3049" class="Symbol">}</a>
  <a id="3053" class="Symbol">→</a> <a id="3055" class="Symbol">((</a><a id="3057" href="BasicFunctions.html#3057" class="Bound">s</a> <a id="3059" class="Symbol">:</a> <a id="3061" href="BasicTypes.html#1507" class="Record">∑</a> <a id="3063" href="BasicFunctions.html#2998" class="Bound">A</a> <a id="3065" href="BasicFunctions.html#3012" class="Bound">B</a><a id="3066" class="Symbol">)</a> <a id="3068" class="Symbol">→</a> <a id="3070" href="BasicFunctions.html#3030" class="Bound">C</a> <a id="3072" href="BasicFunctions.html#3057" class="Bound">s</a><a id="3073" class="Symbol">)</a>
  <a id="3077" class="Comment">---------------------</a>
  <a id="3101" class="Symbol">→</a> <a id="3103" class="Symbol">((</a><a id="3105" href="BasicFunctions.html#3105" class="Bound">x</a> <a id="3107" class="Symbol">:</a> <a id="3109" href="BasicFunctions.html#2998" class="Bound">A</a><a id="3110" class="Symbol">)(</a><a id="3112" href="BasicFunctions.html#3112" class="Bound">y</a> <a id="3114" class="Symbol">:</a> <a id="3116" href="BasicFunctions.html#3012" class="Bound">B</a> <a id="3118" href="BasicFunctions.html#3105" class="Bound">x</a><a id="3119" class="Symbol">)</a> <a id="3121" class="Symbol">→</a> <a id="3123" href="BasicFunctions.html#3030" class="Bound">C</a> <a id="3125" class="Symbol">(</a><a id="3126" href="BasicFunctions.html#3105" class="Bound">x</a> <a id="3128" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="3130" href="BasicFunctions.html#3112" class="Bound">y</a><a id="3131" class="Symbol">))</a>

<a id="3135" href="BasicFunctions.html#2985" class="Function">curry</a> <a id="3141" href="BasicFunctions.html#3141" class="Bound">f</a> <a id="3143" href="BasicFunctions.html#3143" class="Bound">x</a> <a id="3145" href="BasicFunctions.html#3145" class="Bound">y</a> <a id="3147" class="Symbol">=</a> <a id="3149" href="BasicFunctions.html#3141" class="Bound">f</a> <a id="3151" class="Symbol">(</a><a id="3152" href="BasicFunctions.html#3143" class="Bound">x</a> <a id="3154" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="3156" href="BasicFunctions.html#3145" class="Bound">y</a><a id="3157" class="Symbol">)</a>
</pre>

### Uncurryfication

<pre class="Agda">
<a id="unCurry"></a><a id="3205" href="BasicFunctions.html#3205" class="Function">unCurry</a>
  <a id="3215" class="Symbol">:</a> <a id="3217" class="Symbol">{</a><a id="3218" href="BasicFunctions.html#3218" class="Bound">A</a> <a id="3220" class="Symbol">:</a> <a id="3222" href="Intro.html#1720" class="Function">Type</a> <a id="3227" href="Intro.html#2162" class="Generalizable">ℓᵢ</a><a id="3229" class="Symbol">}{</a><a id="3231" href="BasicFunctions.html#3231" class="Bound">B</a> <a id="3233" class="Symbol">:</a> <a id="3235" href="BasicFunctions.html#3218" class="Bound">A</a> <a id="3237" class="Symbol">→</a> <a id="3239" href="Intro.html#1720" class="Function">Type</a> <a id="3244" href="Intro.html#2165" class="Generalizable">ℓⱼ</a><a id="3246" class="Symbol">}{</a><a id="3248" href="BasicFunctions.html#3248" class="Bound">C</a> <a id="3250" class="Symbol">:</a> <a id="3252" href="Intro.html#1720" class="Function">Type</a> <a id="3257" href="Intro.html#2168" class="Generalizable">ℓₖ</a><a id="3259" class="Symbol">}</a>
  <a id="3263" class="Symbol">→</a> <a id="3265" class="Symbol">(</a><a id="3266" href="BasicFunctions.html#3266" class="Bound">D</a> <a id="3268" class="Symbol">:</a> <a id="3270" class="Symbol">(</a><a id="3271" href="BasicFunctions.html#3271" class="Bound">a</a> <a id="3273" class="Symbol">:</a> <a id="3275" href="BasicFunctions.html#3218" class="Bound">A</a><a id="3276" class="Symbol">)</a> <a id="3278" class="Symbol">→</a> <a id="3280" href="BasicFunctions.html#3231" class="Bound">B</a> <a id="3282" href="BasicFunctions.html#3271" class="Bound">a</a> <a id="3284" class="Symbol">→</a> <a id="3286" href="BasicFunctions.html#3248" class="Bound">C</a><a id="3287" class="Symbol">)</a>
  <a id="3291" class="Comment">------------------------</a>
  <a id="3318" class="Symbol">→</a> <a id="3320" class="Symbol">(</a><a id="3321" href="BasicFunctions.html#3321" class="Bound">p</a> <a id="3323" class="Symbol">:</a> <a id="3325" href="BasicTypes.html#1507" class="Record">∑</a> <a id="3327" href="BasicFunctions.html#3218" class="Bound">A</a> <a id="3329" href="BasicFunctions.html#3231" class="Bound">B</a><a id="3330" class="Symbol">)</a> <a id="3332" class="Symbol">→</a> <a id="3334" href="BasicFunctions.html#3248" class="Bound">C</a>

<a id="3337" href="BasicFunctions.html#3205" class="Function">unCurry</a> <a id="3345" href="BasicFunctions.html#3345" class="Bound">D</a> <a id="3347" href="BasicFunctions.html#3347" class="Bound">p</a> <a id="3349" class="Symbol">=</a> <a id="3351" href="BasicFunctions.html#3345" class="Bound">D</a> <a id="3353" class="Symbol">(</a><a id="3354" href="BasicTypes.html#1764" class="Function">proj₁</a> <a id="3360" href="BasicFunctions.html#3347" class="Bound">p</a><a id="3361" class="Symbol">)</a> <a id="3363" class="Symbol">(</a><a id="3364" href="BasicTypes.html#1775" class="Function">proj₂</a> <a id="3370" href="BasicFunctions.html#3347" class="Bound">p</a><a id="3371" class="Symbol">)</a>
</pre>

<pre class="Agda">
<a id="uncurry"></a><a id="3398" href="BasicFunctions.html#3398" class="Function">uncurry</a>
  <a id="3408" class="Symbol">:</a> <a id="3410" class="Symbol">∀</a> <a id="3412" class="Symbol">{</a><a id="3413" href="BasicFunctions.html#3413" class="Bound">A</a> <a id="3415" class="Symbol">:</a> <a id="3417" href="Intro.html#1720" class="Function">Type</a> <a id="3422" href="Intro.html#2162" class="Generalizable">ℓᵢ</a><a id="3424" class="Symbol">}</a> <a id="3426" class="Symbol">{</a><a id="3427" href="BasicFunctions.html#3427" class="Bound">B</a> <a id="3429" class="Symbol">:</a> <a id="3431" href="BasicFunctions.html#3413" class="Bound">A</a> <a id="3433" class="Symbol">→</a> <a id="3435" href="Intro.html#1720" class="Function">Type</a> <a id="3440" href="Intro.html#2165" class="Generalizable">ℓⱼ</a><a id="3442" class="Symbol">}</a> <a id="3444" class="Symbol">{</a><a id="3445" href="BasicFunctions.html#3445" class="Bound">C</a> <a id="3447" class="Symbol">:</a> <a id="3449" class="Symbol">(</a><a id="3450" href="BasicFunctions.html#3450" class="Bound">a</a> <a id="3452" class="Symbol">:</a> <a id="3454" href="BasicFunctions.html#3413" class="Bound">A</a><a id="3455" class="Symbol">)</a> <a id="3457" class="Symbol">→</a> <a id="3459" href="BasicFunctions.html#3427" class="Bound">B</a> <a id="3461" href="BasicFunctions.html#3450" class="Bound">a</a> <a id="3463" class="Symbol">→</a> <a id="3465" href="Intro.html#1720" class="Function">Type</a> <a id="3470" href="Intro.html#2168" class="Generalizable">ℓₖ</a><a id="3472" class="Symbol">}</a>
  <a id="3476" class="Symbol">→</a> <a id="3478" class="Symbol">(</a><a id="3479" href="BasicFunctions.html#3479" class="Bound">f</a> <a id="3481" class="Symbol">:</a> <a id="3483" class="Symbol">(</a><a id="3484" href="BasicFunctions.html#3484" class="Bound">a</a> <a id="3486" class="Symbol">:</a> <a id="3488" href="BasicFunctions.html#3413" class="Bound">A</a><a id="3489" class="Symbol">)</a> <a id="3491" class="Symbol">(</a><a id="3492" href="BasicFunctions.html#3492" class="Bound">b</a> <a id="3494" class="Symbol">:</a> <a id="3496" href="BasicFunctions.html#3427" class="Bound">B</a> <a id="3498" href="BasicFunctions.html#3484" class="Bound">a</a><a id="3499" class="Symbol">)</a> <a id="3501" class="Symbol">→</a> <a id="3503" href="BasicFunctions.html#3445" class="Bound">C</a> <a id="3505" href="BasicFunctions.html#3484" class="Bound">a</a> <a id="3507" href="BasicFunctions.html#3492" class="Bound">b</a><a id="3508" class="Symbol">)</a>
  <a id="3512" class="Comment">---------------------------------</a>
  <a id="3548" class="Symbol">→</a> <a id="3550" class="Symbol">(</a><a id="3551" href="BasicFunctions.html#3551" class="Bound">p</a> <a id="3553" class="Symbol">:</a> <a id="3555" href="BasicTypes.html#1507" class="Record">∑</a> <a id="3557" href="BasicFunctions.html#3413" class="Bound">A</a> <a id="3559" href="BasicFunctions.html#3427" class="Bound">B</a><a id="3560" class="Symbol">)</a> <a id="3562" class="Symbol">→</a> <a id="3564" href="BasicFunctions.html#3445" class="Bound">C</a> <a id="3566" class="Symbol">(</a><a id="3567" href="BasicTypes.html#1598" class="Field">π₁</a> <a id="3570" href="BasicFunctions.html#3551" class="Bound">p</a><a id="3571" class="Symbol">)</a> <a id="3573" class="Symbol">(</a><a id="3574" href="BasicTypes.html#1609" class="Field">π₂</a> <a id="3577" href="BasicFunctions.html#3551" class="Bound">p</a><a id="3578" class="Symbol">)</a>

<a id="3581" href="BasicFunctions.html#3398" class="Function">uncurry</a> <a id="3589" href="BasicFunctions.html#3589" class="Bound">f</a> <a id="3591" class="Symbol">(</a><a id="3592" href="BasicFunctions.html#3592" class="Bound">x</a> <a id="3594" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="3596" href="BasicFunctions.html#3596" class="Bound">y</a><a id="3597" class="Symbol">)</a> <a id="3599" class="Symbol">=</a> <a id="3601" href="BasicFunctions.html#3589" class="Bound">f</a> <a id="3603" href="BasicFunctions.html#3592" class="Bound">x</a> <a id="3605" href="BasicFunctions.html#3596" class="Bound">y</a>
</pre>

### Heterogeneous equality

<pre class="Agda">
<a id="3660" class="Keyword">data</a>
  <a id="HEq"></a><a id="3667" href="BasicFunctions.html#3667" class="Datatype">HEq</a> <a id="3671" class="Symbol">{</a><a id="3672" href="BasicFunctions.html#3672" class="Bound">ℓ</a><a id="3673" class="Symbol">}</a> <a id="3675" class="Symbol">(</a><a id="3676" href="BasicFunctions.html#3676" class="Bound">A</a> <a id="3678" class="Symbol">:</a> <a id="3680" href="Intro.html#1720" class="Function">Type</a> <a id="3685" href="BasicFunctions.html#3672" class="Bound">ℓ</a><a id="3686" class="Symbol">)</a>
    <a id="3692" class="Symbol">:</a> <a id="3694" class="Symbol">(</a><a id="3695" href="BasicFunctions.html#3695" class="Bound">B</a> <a id="3697" class="Symbol">:</a> <a id="3699" href="Intro.html#1720" class="Function">Type</a> <a id="3704" href="BasicFunctions.html#3672" class="Bound">ℓ</a><a id="3705" class="Symbol">)</a>
    <a id="3711" class="Symbol">→</a> <a id="3713" class="Symbol">(</a><a id="3714" href="BasicFunctions.html#3714" class="Bound">α</a> <a id="3716" class="Symbol">:</a> <a id="3718" href="BasicFunctions.html#3676" class="Bound">A</a> <a id="3720" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="3723" href="BasicFunctions.html#3695" class="Bound">B</a><a id="3724" class="Symbol">)</a> <a id="3726" class="Symbol">(</a><a id="3727" href="BasicFunctions.html#3727" class="Bound">a</a> <a id="3729" class="Symbol">:</a> <a id="3731" href="BasicFunctions.html#3676" class="Bound">A</a><a id="3732" class="Symbol">)</a> <a id="3734" class="Symbol">(</a><a id="3735" href="BasicFunctions.html#3735" class="Bound">b</a> <a id="3737" class="Symbol">:</a> <a id="3739" href="BasicFunctions.html#3695" class="Bound">B</a><a id="3740" class="Symbol">)</a>
    <a id="3746" class="Symbol">→</a> <a id="3748" href="Intro.html#1720" class="Function">Type</a> <a id="3753" class="Symbol">(</a><a id="3754" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="3759" href="BasicFunctions.html#3672" class="Bound">ℓ</a><a id="3760" class="Symbol">)</a>
  <a id="3764" class="Keyword">where</a>
  <a id="HEq.idp"></a><a id="3772" href="BasicFunctions.html#3772" class="InductiveConstructor">idp</a> <a id="3776" class="Symbol">:</a> <a id="3778" class="Symbol">∀</a> <a id="3780" class="Symbol">{</a><a id="3781" href="BasicFunctions.html#3781" class="Bound">a</a> <a id="3783" class="Symbol">:</a> <a id="3785" href="BasicFunctions.html#3676" class="Bound">A</a><a id="3786" class="Symbol">}</a> <a id="3788" class="Symbol">→</a> <a id="3790" href="BasicFunctions.html#3667" class="Datatype">HEq</a> <a id="3794" href="BasicFunctions.html#3676" class="Bound">A</a> <a id="3796" href="BasicFunctions.html#3676" class="Bound">A</a> <a id="3798" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a> <a id="3802" href="BasicFunctions.html#3781" class="Bound">a</a> <a id="3804" href="BasicFunctions.html#3781" class="Bound">a</a>
</pre>

### Path functions

#### Composition of paths

{: .foldable until="6" }
<pre class="Agda">
<a id="_·_"></a><a id="3903" href="BasicFunctions.html#3903" class="Function Operator">_·_</a>
  <a id="3909" class="Symbol">:</a> <a id="3911" class="Symbol">∀</a> <a id="3913" class="Symbol">{</a><a id="3914" href="BasicFunctions.html#3914" class="Bound">A</a> <a id="3916" class="Symbol">:</a> <a id="3918" href="Intro.html#1720" class="Function">Type</a> <a id="3923" href="Intro.html#2160" class="Generalizable">ℓ</a><a id="3924" class="Symbol">}</a> <a id="3926" class="Symbol">{</a><a id="3927" href="BasicFunctions.html#3927" class="Bound">x</a> <a id="3929" href="BasicFunctions.html#3929" class="Bound">y</a> <a id="3931" href="BasicFunctions.html#3931" class="Bound">z</a> <a id="3933" class="Symbol">:</a> <a id="3935" href="BasicFunctions.html#3914" class="Bound">A</a><a id="3936" class="Symbol">}</a>
  <a id="3940" class="Symbol">→</a> <a id="3942" class="Symbol">(</a><a id="3943" href="BasicFunctions.html#3943" class="Bound">p</a> <a id="3945" class="Symbol">:</a> <a id="3947" href="BasicFunctions.html#3927" class="Bound">x</a> <a id="3949" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="3952" href="BasicFunctions.html#3929" class="Bound">y</a><a id="3953" class="Symbol">)</a>
  <a id="3957" class="Symbol">→</a> <a id="3959" class="Symbol">(</a><a id="3960" href="BasicFunctions.html#3960" class="Bound">q</a> <a id="3962" class="Symbol">:</a> <a id="3964" href="BasicFunctions.html#3929" class="Bound">y</a> <a id="3966" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="3969" href="BasicFunctions.html#3931" class="Bound">z</a><a id="3970" class="Symbol">)</a>
  <a id="3974" class="Comment">--------------</a>
  <a id="3991" class="Symbol">→</a> <a id="3993" href="BasicFunctions.html#3927" class="Bound">x</a> <a id="3995" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="3998" href="BasicFunctions.html#3931" class="Bound">z</a>

<a id="4001" href="BasicFunctions.html#3903" class="Function Operator">_·_</a> <a id="4005" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a> <a id="4009" href="BasicFunctions.html#4009" class="Bound">q</a> <a id="4011" class="Symbol">=</a> <a id="4013" href="BasicFunctions.html#4009" class="Bound">q</a>

<a id="4016" class="Keyword">infixl</a> <a id="4023" class="Number">50</a> <a id="4026" href="BasicFunctions.html#3903" class="Function Operator">_·_</a>
</pre>

![path](/assets/ipe-images/path-concatenation.png){: width="60%" align="right" }

#### Inverse of paths

<pre class="Agda">
<a id="inv"></a><a id="4160" href="BasicFunctions.html#4160" class="Function">inv</a>
  <a id="4166" class="Symbol">:</a> <a id="4168" class="Symbol">∀</a> <a id="4170" class="Symbol">{</a><a id="4171" href="BasicFunctions.html#4171" class="Bound">ℓ</a><a id="4172" class="Symbol">}</a> <a id="4174" class="Symbol">{</a><a id="4175" href="BasicFunctions.html#4175" class="Bound">A</a> <a id="4177" class="Symbol">:</a> <a id="4179" href="Intro.html#1720" class="Function">Type</a> <a id="4184" href="BasicFunctions.html#4171" class="Bound">ℓ</a><a id="4185" class="Symbol">}</a> <a id="4187" class="Symbol">{</a><a id="4188" href="BasicFunctions.html#4188" class="Bound">a</a> <a id="4190" href="BasicFunctions.html#4190" class="Bound">b</a> <a id="4192" class="Symbol">:</a> <a id="4194" href="BasicFunctions.html#4175" class="Bound">A</a><a id="4195" class="Symbol">}</a>
  <a id="4199" class="Symbol">→</a> <a id="4201" href="BasicFunctions.html#4188" class="Bound">a</a> <a id="4203" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="4206" href="BasicFunctions.html#4190" class="Bound">b</a>
  <a id="4210" class="Comment">--------</a>
  <a id="4221" class="Symbol">→</a> <a id="4223" href="BasicFunctions.html#4190" class="Bound">b</a> <a id="4225" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="4228" href="BasicFunctions.html#4188" class="Bound">a</a>

<a id="4231" href="BasicFunctions.html#4160" class="Function">inv</a> <a id="4235" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a> <a id="4239" class="Symbol">=</a> <a id="4241" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a>
</pre>

<pre class="Agda">
<a id="4270" class="Comment">-- synonyms for inverse path</a>
<a id="_⁻¹"></a><a id="4299" href="BasicFunctions.html#4299" class="Function Operator">_⁻¹</a> <a id="4303" class="Symbol">=</a> <a id="4305" href="BasicFunctions.html#4160" class="Function">inv</a>
<a id="!_"></a><a id="4309" href="BasicFunctions.html#4309" class="Function Operator">!_</a>  <a id="4313" class="Symbol">=</a> <a id="4315" href="BasicFunctions.html#4160" class="Function">inv</a>

<a id="4320" class="Keyword">infixl</a> <a id="4327" class="Number">60</a> <a id="4330" href="BasicFunctions.html#4299" class="Function Operator">_⁻¹</a> <a id="4334" href="BasicFunctions.html#4309" class="Function Operator">!_</a>
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
<a id="4705" class="Keyword">module</a>
  <a id="EquationalReasoning"></a><a id="4714" href="BasicFunctions.html#4714" class="Module">EquationalReasoning</a>
  <a id="4736" class="Symbol">{</a><a id="4737" href="BasicFunctions.html#4737" class="Bound">A</a> <a id="4739" class="Symbol">:</a> <a id="4741" href="Intro.html#1720" class="Function">Type</a> <a id="4746" href="Intro.html#2162" class="Generalizable">ℓᵢ</a><a id="4748" class="Symbol">}</a>
  <a id="4752" class="Keyword">where</a>
</pre>

Definitional equals:

<pre class="Agda">
  <a id="EquationalReasoning._==⟨⟩_"></a><a id="4807" href="BasicFunctions.html#4807" class="Function Operator">_==⟨⟩_</a>
    <a id="4818" class="Symbol">:</a> <a id="4820" class="Symbol">∀</a> <a id="4822" class="Symbol">(</a><a id="4823" href="BasicFunctions.html#4823" class="Bound">x</a> <a id="4825" class="Symbol">{</a><a id="4826" href="BasicFunctions.html#4826" class="Bound">y</a><a id="4827" class="Symbol">}</a> <a id="4829" class="Symbol">:</a> <a id="4831" href="BasicFunctions.html#4737" class="Bound">A</a><a id="4832" class="Symbol">)</a>
  <a id="4836" class="Bound"> </a> <a id="4838" class="Symbol">→</a> <a id="4840" href="BasicFunctions.html#4823" class="Bound">x</a> <a id="4842" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="4845" href="BasicFunctions.html#4826" class="Bound">y</a> <a id="4847" class="Symbol">→</a> <a id="4849" href="BasicFunctions.html#4823" class="Bound">x</a> <a id="4851" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="4854" href="BasicFunctions.html#4826" class="Bound">y</a>

  <a id="4859" class="Symbol">_</a> <a id="4861" href="BasicFunctions.html#4807" class="Function Operator">==⟨⟩</a> <a id="4866" href="BasicFunctions.html#4866" class="Bound">p</a> <a id="4868" class="Symbol">=</a> <a id="4870" href="BasicFunctions.html#4866" class="Bound">p</a>
</pre>

Synonyms for _==⟨⟩:

<pre class="Agda">
  <a id="EquationalReasoning._==⟨idp⟩_"></a><a id="4920" href="BasicFunctions.html#4920" class="Function Operator">_==⟨idp⟩_</a>  <a id="4931" class="Symbol">=</a> <a id="4933" href="BasicFunctions.html#4807" class="Function Operator">_==⟨⟩_</a>
  <a id="EquationalReasoning._==⟨refl⟩_"></a><a id="4942" href="BasicFunctions.html#4942" class="Function Operator">_==⟨refl⟩_</a> <a id="4953" class="Symbol">=</a> <a id="4955" href="BasicFunctions.html#4807" class="Function Operator">_==⟨⟩_</a>
  <a id="EquationalReasoning._≡⟨⟩_"></a><a id="4964" href="BasicFunctions.html#4964" class="Function Operator">_≡⟨⟩_</a>      <a id="4975" class="Symbol">=</a> <a id="4977" href="BasicFunctions.html#4807" class="Function Operator">_==⟨⟩_</a>

  <a id="4987" class="Keyword">infixr</a> <a id="4994" class="Number">2</a> <a id="4996" href="BasicFunctions.html#4807" class="Function Operator">_==⟨⟩_</a> <a id="5003" href="BasicFunctions.html#4920" class="Function Operator">_==⟨idp⟩_</a> <a id="5013" href="BasicFunctions.html#4942" class="Function Operator">_==⟨refl⟩_</a> <a id="5024" href="BasicFunctions.html#4964" class="Function Operator">_≡⟨⟩_</a>
</pre>

<pre class="Agda">
  <a id="5057" class="Comment">-- chain</a>
  <a id="EquationalReasoning._==⟨_⟩_"></a><a id="5068" href="BasicFunctions.html#5068" class="Function Operator">_==⟨_⟩_</a>
    <a id="5080" class="Symbol">:</a> <a id="5082" class="Symbol">(</a><a id="5083" href="BasicFunctions.html#5083" class="Bound">x</a> <a id="5085" class="Symbol">:</a> <a id="5087" href="BasicFunctions.html#4737" class="Bound">A</a><a id="5088" class="Symbol">)</a> <a id="5090" class="Symbol">{</a><a id="5091" href="BasicFunctions.html#5091" class="Bound">y</a> <a id="5093" href="BasicFunctions.html#5093" class="Bound">z</a> <a id="5095" class="Symbol">:</a> <a id="5097" href="BasicFunctions.html#4737" class="Bound">A</a><a id="5098" class="Symbol">}</a>
    <a id="5104" class="Symbol">→</a> <a id="5106" href="BasicFunctions.html#5083" class="Bound">x</a> <a id="5108" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="5111" href="BasicFunctions.html#5091" class="Bound">y</a>
    <a id="5117" class="Symbol">→</a> <a id="5119" href="BasicFunctions.html#5091" class="Bound">y</a> <a id="5121" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="5124" href="BasicFunctions.html#5093" class="Bound">z</a>
    <a id="5130" class="Symbol">→</a> <a id="5132" href="BasicFunctions.html#5083" class="Bound">x</a> <a id="5134" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="5137" href="BasicFunctions.html#5093" class="Bound">z</a>

  <a id="5142" class="Symbol">_</a> <a id="5144" href="BasicFunctions.html#5068" class="Function Operator">==⟨</a> <a id="5148" href="BasicFunctions.html#5148" class="Bound">thm</a> <a id="5152" href="BasicFunctions.html#5068" class="Function Operator">⟩</a> <a id="5154" href="BasicFunctions.html#5154" class="Bound">q</a> <a id="5156" class="Symbol">=</a> <a id="5158" href="BasicFunctions.html#5148" class="Bound">thm</a> <a id="5162" href="BasicFunctions.html#3903" class="Function Operator">·</a> <a id="5164" href="BasicFunctions.html#5154" class="Bound">q</a>

  <a id="EquationalReasoning._≡⟨_⟩_"></a><a id="5169" href="BasicFunctions.html#5169" class="Function Operator">_≡⟨_⟩_</a> <a id="5176" class="Symbol">=</a> <a id="5178" href="BasicFunctions.html#5068" class="Function Operator">_==⟨_⟩_</a>

  <a id="5189" class="Keyword">infixr</a> <a id="5196" class="Number">2</a> <a id="5198" href="BasicFunctions.html#5068" class="Function Operator">_==⟨_⟩_</a> <a id="5206" href="BasicFunctions.html#5169" class="Function Operator">_≡⟨_⟩_</a>
</pre>

<pre class="Agda">
  <a id="5240" class="Comment">-- Q.E.D</a>
  <a id="EquationalReasoning._∎"></a><a id="5251" href="BasicFunctions.html#5251" class="Function Operator">_∎</a>
    <a id="5258" class="Symbol">:</a> <a id="5260" class="Symbol">(</a><a id="5261" href="BasicFunctions.html#5261" class="Bound">x</a> <a id="5263" class="Symbol">:</a> <a id="5265" href="BasicFunctions.html#4737" class="Bound">A</a><a id="5266" class="Symbol">)</a>
    <a id="5272" class="Symbol">→</a> <a id="5274" href="BasicFunctions.html#5261" class="Bound">x</a> <a id="5276" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="5279" href="BasicFunctions.html#5261" class="Bound">x</a>

  <a id="5284" href="BasicFunctions.html#5251" class="Function Operator">_∎</a> <a id="5287" class="Symbol">=</a> <a id="5289" class="Symbol">λ</a> <a id="5291" href="BasicFunctions.html#5291" class="Bound">x</a> <a id="5293" class="Symbol">→</a> <a id="5295" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a>

  <a id="5302" class="Keyword">infix</a> <a id="5308" class="Number">3</a> <a id="5310" href="BasicFunctions.html#5251" class="Function Operator">_∎</a>
</pre>

<pre class="Agda">
  <a id="5340" class="Comment">-- Begin</a>
  <a id="5351" class="Keyword">infix</a> <a id="5357" class="Number">1</a> <a id="5359" href="BasicFunctions.html#5368" class="Function Operator">begin_</a>
  <a id="EquationalReasoning.begin_"></a><a id="5368" href="BasicFunctions.html#5368" class="Function Operator">begin_</a>
    <a id="5379" class="Symbol">:</a> <a id="5381" class="Symbol">{</a><a id="5382" href="BasicFunctions.html#5382" class="Bound">x</a> <a id="5384" href="BasicFunctions.html#5384" class="Bound">y</a> <a id="5386" class="Symbol">:</a> <a id="5388" href="BasicFunctions.html#4737" class="Bound">A</a><a id="5389" class="Symbol">}</a>
    <a id="5395" class="Symbol">→</a> <a id="5397" href="BasicFunctions.html#5382" class="Bound">x</a> <a id="5399" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="5402" href="BasicFunctions.html#5384" class="Bound">y</a>
    <a id="5408" class="Symbol">→</a> <a id="5410" href="BasicFunctions.html#5382" class="Bound">x</a> <a id="5412" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="5415" href="BasicFunctions.html#5384" class="Bound">y</a>

  <a id="5420" href="BasicFunctions.html#5368" class="Function Operator">begin_</a> <a id="5427" href="BasicFunctions.html#5427" class="Bound">p</a> <a id="5429" class="Symbol">=</a> <a id="5431" href="BasicFunctions.html#5427" class="Bound">p</a>
</pre>

<pre class="Agda">
<a id="5458" class="Keyword">open</a> <a id="5463" href="BasicFunctions.html#4714" class="Module">EquationalReasoning</a> <a id="5483" class="Keyword">public</a>
</pre>
