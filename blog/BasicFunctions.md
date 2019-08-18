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
<a id="id"></a><a id="376" href="BasicFunctions.html#376" class="Function">id</a>
  <a id="381" class="Symbol">:</a> <a id="383" class="Symbol">{</a><a id="384" href="BasicFunctions.html#384" class="Bound">A</a> <a id="386" class="Symbol">:</a> <a id="388" href="Intro.html#2793" class="Function">Type</a> <a id="393" href="Intro.html#3373" class="Generalizable">ℓ</a><a id="394" class="Symbol">}</a>
  <a id="398" class="Comment">----------------</a>
  <a id="417" class="Symbol">→</a> <a id="419" href="BasicFunctions.html#384" class="Bound">A</a> <a id="421" class="Symbol">→</a> <a id="423" href="BasicFunctions.html#384" class="Bound">A</a>

<a id="426" href="BasicFunctions.html#376" class="Function">id</a> <a id="429" class="Symbol">=</a> <a id="431" class="Symbol">λ</a> <a id="433" href="BasicFunctions.html#433" class="Bound">x</a> <a id="435" class="Symbol">→</a> <a id="437" href="BasicFunctions.html#433" class="Bound">x</a>
</pre>

The identity function on a type `A` is `idf A`.

<pre class="Agda">
<a id="idf"></a><a id="513" href="BasicFunctions.html#513" class="Function">idf</a>
  <a id="519" class="Symbol">:</a> <a id="521" class="Symbol">(</a><a id="522" href="BasicFunctions.html#522" class="Bound">A</a> <a id="524" class="Symbol">:</a> <a id="526" href="Intro.html#2793" class="Function">Type</a> <a id="531" href="Intro.html#3375" class="Generalizable">ℓᵢ</a><a id="533" class="Symbol">)</a>
  <a id="537" class="Comment">---------------</a>
  <a id="555" class="Symbol">→</a> <a id="557" class="Symbol">(</a><a id="558" href="BasicFunctions.html#522" class="Bound">A</a> <a id="560" class="Symbol">→</a> <a id="562" href="BasicFunctions.html#522" class="Bound">A</a><a id="563" class="Symbol">)</a>

<a id="566" href="BasicFunctions.html#513" class="Function">idf</a> <a id="570" href="BasicFunctions.html#570" class="Bound">A</a> <a id="572" class="Symbol">=</a> <a id="574" class="Symbol">λ</a> <a id="576" href="BasicFunctions.html#576" class="Bound">x</a> <a id="578" class="Symbol">→</a> <a id="580" href="BasicFunctions.html#576" class="Bound">x</a>
</pre>


### Constant functions

Constant function at some point `b` is `cst b`

<pre class="Agda">
<a id="cst"></a><a id="680" href="BasicFunctions.html#680" class="Function">cst</a>
  <a id="686" class="Symbol">:</a> <a id="688" class="Symbol">{</a><a id="689" href="BasicFunctions.html#689" class="Bound">A</a> <a id="691" class="Symbol">:</a> <a id="693" href="Intro.html#2793" class="Function">Type</a> <a id="698" href="Intro.html#3375" class="Generalizable">ℓᵢ</a><a id="700" class="Symbol">}</a> <a id="702" class="Symbol">{</a><a id="703" href="BasicFunctions.html#703" class="Bound">B</a> <a id="705" class="Symbol">:</a> <a id="707" href="Intro.html#2793" class="Function">Type</a> <a id="712" href="Intro.html#3378" class="Generalizable">ℓⱼ</a><a id="714" class="Symbol">}</a>
  <a id="718" class="Symbol">→</a> <a id="720" class="Symbol">(</a><a id="721" href="BasicFunctions.html#721" class="Bound">b</a> <a id="723" class="Symbol">:</a> <a id="725" href="BasicFunctions.html#703" class="Bound">B</a><a id="726" class="Symbol">)</a>
  <a id="730" class="Comment">---------</a>
  <a id="742" class="Symbol">→</a> <a id="744" class="Symbol">(</a><a id="745" href="BasicFunctions.html#689" class="Bound">A</a> <a id="747" class="Symbol">→</a> <a id="749" href="BasicFunctions.html#703" class="Bound">B</a><a id="750" class="Symbol">)</a>

<a id="753" href="BasicFunctions.html#680" class="Function">cst</a> <a id="757" href="BasicFunctions.html#757" class="Bound">b</a> <a id="759" class="Symbol">=</a> <a id="761" class="Symbol">λ</a> <a id="763" href="BasicFunctions.html#763" class="Bound">_</a> <a id="765" class="Symbol">→</a> <a id="767" href="BasicFunctions.html#757" class="Bound">b</a>
</pre>

### Logical negation

<pre class="Agda">
<a id="neg¬"></a><a id="816" href="BasicFunctions.html#816" class="Function">neg¬</a>
  <a id="823" class="Symbol">:</a> <a id="825" href="BasicTypes.html#3281" class="Datatype">Bool</a>
  <a id="832" class="Symbol">→</a> <a id="834" href="BasicTypes.html#3281" class="Datatype">Bool</a>

<a id="840" href="BasicFunctions.html#816" class="Function">neg¬</a> <a id="845" href="BasicTypes.html#3495" class="InductiveConstructor">tt</a> <a id="848" class="Symbol">=</a> <a id="850" href="BasicTypes.html#3476" class="InductiveConstructor">ff</a>
<a id="853" href="BasicFunctions.html#816" class="Function">neg¬</a> <a id="858" href="BasicTypes.html#3476" class="InductiveConstructor">ff</a> <a id="861" class="Symbol">=</a> <a id="863" href="BasicTypes.html#3495" class="InductiveConstructor">tt</a>
</pre>

### Composition

A more sophisticated composition function that can handle dependent functions.

{: .foldable until="6" }
<pre class="Agda">
<a id="_∘_"></a><a id="1013" href="BasicFunctions.html#1013" class="Function Operator">_∘_</a>
  <a id="1019" class="Symbol">:</a> <a id="1021" class="Symbol">{</a><a id="1022" href="BasicFunctions.html#1022" class="Bound">A</a> <a id="1024" class="Symbol">:</a> <a id="1026" href="Intro.html#2793" class="Function">Type</a> <a id="1031" href="Intro.html#3375" class="Generalizable">ℓᵢ</a><a id="1033" class="Symbol">}</a> <a id="1035" class="Symbol">{</a><a id="1036" href="BasicFunctions.html#1036" class="Bound">B</a> <a id="1038" class="Symbol">:</a> <a id="1040" href="BasicFunctions.html#1022" class="Bound">A</a> <a id="1042" class="Symbol">→</a> <a id="1044" href="Intro.html#2793" class="Function">Type</a> <a id="1049" href="Intro.html#3378" class="Generalizable">ℓⱼ</a><a id="1051" class="Symbol">}</a> <a id="1053" class="Symbol">{</a><a id="1054" href="BasicFunctions.html#1054" class="Bound">C</a> <a id="1056" class="Symbol">:</a> <a id="1058" class="Symbol">(</a><a id="1059" href="BasicFunctions.html#1059" class="Bound">a</a> <a id="1061" class="Symbol">:</a> <a id="1063" href="BasicFunctions.html#1022" class="Bound">A</a><a id="1064" class="Symbol">)</a> <a id="1066" class="Symbol">→</a> <a id="1068" class="Symbol">(</a><a id="1069" href="BasicFunctions.html#1036" class="Bound">B</a> <a id="1071" href="BasicFunctions.html#1059" class="Bound">a</a> <a id="1073" class="Symbol">→</a> <a id="1075" href="Intro.html#2793" class="Function">Type</a> <a id="1080" href="Intro.html#3381" class="Generalizable">ℓₖ</a><a id="1082" class="Symbol">)}</a>
  <a id="1087" class="Symbol">→</a> <a id="1089" class="Symbol">(</a><a id="1090" href="BasicFunctions.html#1090" class="Bound">g</a> <a id="1092" class="Symbol">:</a> <a id="1094" class="Symbol">{</a><a id="1095" href="BasicFunctions.html#1095" class="Bound">a</a> <a id="1097" class="Symbol">:</a> <a id="1099" href="BasicFunctions.html#1022" class="Bound">A</a><a id="1100" class="Symbol">}</a> <a id="1102" class="Symbol">→</a> <a id="1104" href="BasicTypes.html#2031" class="Function">∏</a> <a id="1106" class="Symbol">(</a><a id="1107" href="BasicFunctions.html#1036" class="Bound">B</a> <a id="1109" href="BasicFunctions.html#1095" class="Bound">a</a><a id="1110" class="Symbol">)</a> <a id="1112" class="Symbol">(</a><a id="1113" href="BasicFunctions.html#1054" class="Bound">C</a> <a id="1115" href="BasicFunctions.html#1095" class="Bound">a</a><a id="1116" class="Symbol">))</a>
  <a id="1121" class="Symbol">→</a> <a id="1123" class="Symbol">(</a><a id="1124" href="BasicFunctions.html#1124" class="Bound">f</a> <a id="1126" class="Symbol">:</a> <a id="1128" href="BasicTypes.html#2031" class="Function">∏</a> <a id="1130" href="BasicFunctions.html#1022" class="Bound">A</a> <a id="1132" href="BasicFunctions.html#1036" class="Bound">B</a><a id="1133" class="Symbol">)</a>
  <a id="1137" class="Comment">-------------------------------</a>
  <a id="1171" class="Symbol">→</a> <a id="1173" href="BasicTypes.html#2031" class="Function">∏</a> <a id="1175" href="BasicFunctions.html#1022" class="Bound">A</a> <a id="1177" class="Symbol">(λ</a> <a id="1180" href="BasicFunctions.html#1180" class="Bound">a</a> <a id="1182" class="Symbol">→</a> <a id="1184" href="BasicFunctions.html#1054" class="Bound">C</a> <a id="1186" href="BasicFunctions.html#1180" class="Bound">a</a> <a id="1188" class="Symbol">(</a><a id="1189" href="BasicFunctions.html#1124" class="Bound">f</a> <a id="1191" href="BasicFunctions.html#1180" class="Bound">a</a><a id="1192" class="Symbol">))</a>

<a id="1196" href="BasicFunctions.html#1196" class="Bound">g</a> <a id="1198" href="BasicFunctions.html#1013" class="Function Operator">∘</a> <a id="1200" href="BasicFunctions.html#1200" class="Bound">f</a> <a id="1202" class="Symbol">=</a> <a id="1204" class="Symbol">λ</a> <a id="1206" href="BasicFunctions.html#1206" class="Bound">x</a> <a id="1208" class="Symbol">→</a> <a id="1210" href="BasicFunctions.html#1196" class="Bound">g</a> <a id="1212" class="Symbol">(</a><a id="1213" href="BasicFunctions.html#1200" class="Bound">f</a> <a id="1215" href="BasicFunctions.html#1206" class="Bound">x</a><a id="1216" class="Symbol">)</a>

<a id="1219" class="Keyword">infixr</a> <a id="1226" class="Number">80</a> <a id="1229" href="BasicFunctions.html#1013" class="Function Operator">_∘_</a>
</pre>

Synonym for composition (diagrammatic version)

{: .foldable until="6" }
<pre class="Agda">
<a id="_:&gt;_"></a><a id="1331" href="BasicFunctions.html#1331" class="Function Operator">_:&gt;_</a>
  <a id="1338" class="Symbol">:</a> <a id="1340" class="Symbol">{</a><a id="1341" href="BasicFunctions.html#1341" class="Bound">A</a> <a id="1343" class="Symbol">:</a> <a id="1345" href="Intro.html#2793" class="Function">Type</a> <a id="1350" href="Intro.html#3375" class="Generalizable">ℓᵢ</a><a id="1352" class="Symbol">}</a> <a id="1354" class="Symbol">{</a><a id="1355" href="BasicFunctions.html#1355" class="Bound">B</a> <a id="1357" class="Symbol">:</a> <a id="1359" href="BasicFunctions.html#1341" class="Bound">A</a> <a id="1361" class="Symbol">→</a> <a id="1363" href="Intro.html#2793" class="Function">Type</a> <a id="1368" href="Intro.html#3378" class="Generalizable">ℓⱼ</a><a id="1370" class="Symbol">}</a> <a id="1372" class="Symbol">{</a><a id="1373" href="BasicFunctions.html#1373" class="Bound">C</a> <a id="1375" class="Symbol">:</a> <a id="1377" class="Symbol">(</a><a id="1378" href="BasicFunctions.html#1378" class="Bound">a</a> <a id="1380" class="Symbol">:</a> <a id="1382" href="BasicFunctions.html#1341" class="Bound">A</a><a id="1383" class="Symbol">)</a> <a id="1385" class="Symbol">→</a> <a id="1387" class="Symbol">(</a><a id="1388" href="BasicFunctions.html#1355" class="Bound">B</a> <a id="1390" href="BasicFunctions.html#1378" class="Bound">a</a> <a id="1392" class="Symbol">→</a> <a id="1394" href="Intro.html#2793" class="Function">Type</a> <a id="1399" href="Intro.html#3381" class="Generalizable">ℓₖ</a><a id="1401" class="Symbol">)}</a>
  <a id="1406" class="Symbol">→</a> <a id="1408" class="Symbol">(</a><a id="1409" href="BasicFunctions.html#1409" class="Bound">f</a> <a id="1411" class="Symbol">:</a> <a id="1413" href="BasicTypes.html#1882" class="Function">Π</a> <a id="1415" href="BasicFunctions.html#1341" class="Bound">A</a> <a id="1417" href="BasicFunctions.html#1355" class="Bound">B</a><a id="1418" class="Symbol">)</a>
  <a id="1422" class="Symbol">→</a> <a id="1424" class="Symbol">(</a><a id="1425" href="BasicFunctions.html#1425" class="Bound">g</a> <a id="1427" class="Symbol">:</a> <a id="1429" class="Symbol">{</a><a id="1430" href="BasicFunctions.html#1430" class="Bound">a</a> <a id="1432" class="Symbol">:</a> <a id="1434" href="BasicFunctions.html#1341" class="Bound">A</a><a id="1435" class="Symbol">}</a> <a id="1437" class="Symbol">→</a> <a id="1439" href="BasicTypes.html#1882" class="Function">Π</a> <a id="1441" class="Symbol">(</a><a id="1442" href="BasicFunctions.html#1355" class="Bound">B</a> <a id="1444" href="BasicFunctions.html#1430" class="Bound">a</a><a id="1445" class="Symbol">)</a> <a id="1447" class="Symbol">(</a><a id="1448" href="BasicFunctions.html#1373" class="Bound">C</a> <a id="1450" href="BasicFunctions.html#1430" class="Bound">a</a><a id="1451" class="Symbol">))</a>
  <a id="1456" class="Comment">-------------------------------</a>
  <a id="1490" class="Symbol">→</a> <a id="1492" href="BasicTypes.html#1882" class="Function">Π</a> <a id="1494" href="BasicFunctions.html#1341" class="Bound">A</a> <a id="1496" class="Symbol">(λ</a> <a id="1499" href="BasicFunctions.html#1499" class="Bound">a</a> <a id="1501" class="Symbol">→</a> <a id="1503" href="BasicFunctions.html#1373" class="Bound">C</a> <a id="1505" href="BasicFunctions.html#1499" class="Bound">a</a> <a id="1507" class="Symbol">(</a><a id="1508" href="BasicFunctions.html#1409" class="Bound">f</a> <a id="1510" href="BasicFunctions.html#1499" class="Bound">a</a><a id="1511" class="Symbol">))</a>

<a id="1515" href="BasicFunctions.html#1515" class="Bound">f</a> <a id="1517" href="BasicFunctions.html#1331" class="Function Operator">:&gt;</a> <a id="1520" href="BasicFunctions.html#1520" class="Bound">g</a> <a id="1522" class="Symbol">=</a> <a id="1524" href="BasicFunctions.html#1520" class="Bound">g</a> <a id="1526" href="BasicFunctions.html#1013" class="Function Operator">∘</a> <a id="1528" href="BasicFunctions.html#1515" class="Bound">f</a>

<a id="1531" class="Keyword">infixr</a> <a id="1538" class="Number">90</a> <a id="1541" href="BasicFunctions.html#1331" class="Function Operator">_:&gt;_</a>
</pre>

#### Associativity of composition

- Left associativity

{: .foldable until="5" }
<pre class="Agda">
<a id="∘-lassoc"></a><a id="1653" href="BasicFunctions.html#1653" class="Function">∘-lassoc</a>
  <a id="1664" class="Symbol">:</a> <a id="1666" class="Symbol">{</a><a id="1667" href="BasicFunctions.html#1667" class="Bound">A</a> <a id="1669" href="BasicFunctions.html#1669" class="Bound">B</a> <a id="1671" href="BasicFunctions.html#1671" class="Bound">C</a> <a id="1673" href="BasicFunctions.html#1673" class="Bound">D</a> <a id="1675" class="Symbol">:</a> <a id="1677" href="Intro.html#2793" class="Function">Type</a> <a id="1682" href="Intro.html#3373" class="Generalizable">ℓ</a><a id="1683" class="Symbol">}</a>
  <a id="1687" class="Symbol">→</a> <a id="1689" class="Symbol">(</a><a id="1690" href="BasicFunctions.html#1690" class="Bound">h</a> <a id="1692" class="Symbol">:</a> <a id="1694" href="BasicFunctions.html#1671" class="Bound">C</a> <a id="1696" class="Symbol">→</a> <a id="1698" href="BasicFunctions.html#1673" class="Bound">D</a><a id="1699" class="Symbol">)</a> <a id="1701" class="Symbol">→</a> <a id="1703" class="Symbol">(</a><a id="1704" href="BasicFunctions.html#1704" class="Bound">g</a> <a id="1706" class="Symbol">:</a> <a id="1708" href="BasicFunctions.html#1669" class="Bound">B</a> <a id="1710" class="Symbol">→</a> <a id="1712" href="BasicFunctions.html#1671" class="Bound">C</a><a id="1713" class="Symbol">)</a> <a id="1715" class="Symbol">→</a> <a id="1717" class="Symbol">(</a><a id="1718" href="BasicFunctions.html#1718" class="Bound">f</a> <a id="1720" class="Symbol">:</a> <a id="1722" href="BasicFunctions.html#1667" class="Bound">A</a> <a id="1724" class="Symbol">→</a> <a id="1726" href="BasicFunctions.html#1669" class="Bound">B</a><a id="1727" class="Symbol">)</a>
  <a id="1731" class="Comment">-----------------------------------------</a>
  <a id="1775" class="Symbol">→</a> <a id="1777" class="Symbol">(</a><a id="1778" href="BasicFunctions.html#1690" class="Bound">h</a> <a id="1780" href="BasicFunctions.html#1013" class="Function Operator">∘</a> <a id="1782" class="Symbol">(</a><a id="1783" href="BasicFunctions.html#1704" class="Bound">g</a> <a id="1785" href="BasicFunctions.html#1013" class="Function Operator">∘</a> <a id="1787" href="BasicFunctions.html#1718" class="Bound">f</a><a id="1788" class="Symbol">))</a> <a id="1791" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="1794" class="Symbol">((</a><a id="1796" href="BasicFunctions.html#1690" class="Bound">h</a> <a id="1798" href="BasicFunctions.html#1013" class="Function Operator">∘</a> <a id="1800" href="BasicFunctions.html#1704" class="Bound">g</a><a id="1801" class="Symbol">)</a> <a id="1803" href="BasicFunctions.html#1013" class="Function Operator">∘</a> <a id="1805" href="BasicFunctions.html#1718" class="Bound">f</a><a id="1806" class="Symbol">)</a>

<a id="1809" href="BasicFunctions.html#1653" class="Function">∘-lassoc</a> <a id="1818" href="BasicFunctions.html#1818" class="Bound">h</a> <a id="1820" href="BasicFunctions.html#1820" class="Bound">g</a> <a id="1822" href="BasicFunctions.html#1822" class="Bound">f</a> <a id="1824" class="Symbol">=</a> <a id="1826" href="BasicTypes.html#4393" class="InductiveConstructor">idp</a> <a id="1830" class="Symbol">{</a><a id="1831" class="Argument">a</a> <a id="1833" class="Symbol">=</a> <a id="1835" class="Symbol">(λ</a> <a id="1838" href="BasicFunctions.html#1838" class="Bound">x</a> <a id="1840" class="Symbol">→</a> <a id="1842" href="BasicFunctions.html#1818" class="Bound">h</a> <a id="1844" class="Symbol">(</a><a id="1845" href="BasicFunctions.html#1820" class="Bound">g</a> <a id="1847" class="Symbol">(</a><a id="1848" href="BasicFunctions.html#1822" class="Bound">f</a> <a id="1850" href="BasicFunctions.html#1838" class="Bound">x</a><a id="1851" class="Symbol">)))}</a>
</pre>

- Right associativity

{: .foldable until="5" }
<pre class="Agda">
<a id="∘-rassoc"></a><a id="1929" href="BasicFunctions.html#1929" class="Function">∘-rassoc</a>
  <a id="1940" class="Symbol">:</a> <a id="1942" class="Symbol">{</a><a id="1943" href="BasicFunctions.html#1943" class="Bound">A</a> <a id="1945" href="BasicFunctions.html#1945" class="Bound">B</a> <a id="1947" href="BasicFunctions.html#1947" class="Bound">C</a> <a id="1949" href="BasicFunctions.html#1949" class="Bound">D</a> <a id="1951" class="Symbol">:</a> <a id="1953" href="Intro.html#2793" class="Function">Type</a> <a id="1958" href="Intro.html#3373" class="Generalizable">ℓ</a><a id="1959" class="Symbol">}</a>
  <a id="1963" class="Symbol">→</a> <a id="1965" class="Symbol">(</a><a id="1966" href="BasicFunctions.html#1966" class="Bound">h</a> <a id="1968" class="Symbol">:</a> <a id="1970" href="BasicFunctions.html#1947" class="Bound">C</a> <a id="1972" class="Symbol">→</a> <a id="1974" href="BasicFunctions.html#1949" class="Bound">D</a><a id="1975" class="Symbol">)</a> <a id="1977" class="Symbol">→</a> <a id="1979" class="Symbol">(</a><a id="1980" href="BasicFunctions.html#1980" class="Bound">g</a> <a id="1982" class="Symbol">:</a> <a id="1984" href="BasicFunctions.html#1945" class="Bound">B</a> <a id="1986" class="Symbol">→</a> <a id="1988" href="BasicFunctions.html#1947" class="Bound">C</a><a id="1989" class="Symbol">)</a> <a id="1991" class="Symbol">→</a> <a id="1993" class="Symbol">(</a><a id="1994" href="BasicFunctions.html#1994" class="Bound">f</a> <a id="1996" class="Symbol">:</a> <a id="1998" href="BasicFunctions.html#1943" class="Bound">A</a> <a id="2000" class="Symbol">→</a> <a id="2002" href="BasicFunctions.html#1945" class="Bound">B</a><a id="2003" class="Symbol">)</a>
  <a id="2007" class="Comment">-----------------------------------------</a>
  <a id="2051" class="Symbol">→</a> <a id="2053" class="Symbol">((</a><a id="2055" href="BasicFunctions.html#1966" class="Bound">h</a> <a id="2057" href="BasicFunctions.html#1013" class="Function Operator">∘</a> <a id="2059" href="BasicFunctions.html#1980" class="Bound">g</a><a id="2060" class="Symbol">)</a> <a id="2062" href="BasicFunctions.html#1013" class="Function Operator">∘</a> <a id="2064" href="BasicFunctions.html#1994" class="Bound">f</a><a id="2065" class="Symbol">)</a> <a id="2067" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="2070" class="Symbol">(</a><a id="2071" href="BasicFunctions.html#1966" class="Bound">h</a> <a id="2073" href="BasicFunctions.html#1013" class="Function Operator">∘</a> <a id="2075" class="Symbol">(</a><a id="2076" href="BasicFunctions.html#1980" class="Bound">g</a> <a id="2078" href="BasicFunctions.html#1013" class="Function Operator">∘</a> <a id="2080" href="BasicFunctions.html#1994" class="Bound">f</a><a id="2081" class="Symbol">))</a>

<a id="2085" href="BasicFunctions.html#1929" class="Function">∘-rassoc</a> <a id="2094" href="BasicFunctions.html#2094" class="Bound">h</a> <a id="2096" href="BasicFunctions.html#2096" class="Bound">g</a> <a id="2098" href="BasicFunctions.html#2098" class="Bound">f</a> <a id="2100" class="Symbol">=</a> <a id="2102" href="BasicTypes.html#4788" class="Function">sym</a> <a id="2106" class="Symbol">(</a><a id="2107" href="BasicFunctions.html#1653" class="Function">∘-lassoc</a> <a id="2116" href="BasicFunctions.html#2094" class="Bound">h</a> <a id="2118" href="BasicFunctions.html#2096" class="Bound">g</a> <a id="2120" href="BasicFunctions.html#2098" class="Bound">f</a><a id="2121" class="Symbol">)</a>
</pre>


### Application

<pre class="Agda">
<a id="_$_"></a><a id="2166" href="BasicFunctions.html#2166" class="Function Operator">_$_</a>
  <a id="2172" class="Symbol">:</a> <a id="2174" class="Symbol">{</a><a id="2175" href="BasicFunctions.html#2175" class="Bound">A</a> <a id="2177" class="Symbol">:</a> <a id="2179" href="Intro.html#2793" class="Function">Type</a> <a id="2184" href="Intro.html#3375" class="Generalizable">ℓᵢ</a><a id="2186" class="Symbol">}</a> <a id="2188" class="Symbol">{</a><a id="2189" href="BasicFunctions.html#2189" class="Bound">B</a> <a id="2191" class="Symbol">:</a> <a id="2193" href="BasicFunctions.html#2175" class="Bound">A</a> <a id="2195" class="Symbol">→</a> <a id="2197" href="Intro.html#2793" class="Function">Type</a> <a id="2202" href="Intro.html#3378" class="Generalizable">ℓⱼ</a><a id="2204" class="Symbol">}</a>
  <a id="2208" class="Symbol">→</a> <a id="2210" class="Symbol">(∀</a> <a id="2213" href="BasicFunctions.html#2213" class="Bound">x</a> <a id="2215" class="Symbol">→</a> <a id="2217" href="BasicFunctions.html#2189" class="Bound">B</a> <a id="2219" href="BasicFunctions.html#2213" class="Bound">x</a><a id="2220" class="Symbol">)</a>
  <a id="2224" class="Comment">-------------</a>
  <a id="2240" class="Symbol">→</a> <a id="2242" class="Symbol">(∀</a> <a id="2245" href="BasicFunctions.html#2245" class="Bound">x</a> <a id="2247" class="Symbol">→</a> <a id="2249" href="BasicFunctions.html#2189" class="Bound">B</a> <a id="2251" href="BasicFunctions.html#2245" class="Bound">x</a><a id="2252" class="Symbol">)</a>

<a id="2255" href="BasicFunctions.html#2255" class="Bound">f</a> <a id="2257" href="BasicFunctions.html#2166" class="Function Operator">$</a> <a id="2259" href="BasicFunctions.html#2259" class="Bound">x</a> <a id="2261" class="Symbol">=</a> <a id="2263" href="BasicFunctions.html#2255" class="Bound">f</a> <a id="2265" href="BasicFunctions.html#2259" class="Bound">x</a>

<a id="2268" class="Keyword">infixr</a> <a id="2275" class="Number">0</a> <a id="2277" href="BasicFunctions.html#2166" class="Function Operator">_$_</a>
</pre>

### Coproduct manipulation

Functions handy to manipulate coproducts:

<pre class="Agda">
<a id="+-map"></a><a id="2377" href="BasicFunctions.html#2377" class="Function">+-map</a>
  <a id="2385" class="Symbol">:</a> <a id="2387" class="Symbol">∀</a> <a id="2389" class="Symbol">{</a><a id="2390" href="BasicFunctions.html#2390" class="Bound">i</a> <a id="2392" href="BasicFunctions.html#2392" class="Bound">j</a> <a id="2394" href="BasicFunctions.html#2394" class="Bound">k</a> <a id="2396" href="BasicFunctions.html#2396" class="Bound">l</a><a id="2397" class="Symbol">}</a> <a id="2399" class="Symbol">{</a><a id="2400" href="BasicFunctions.html#2400" class="Bound">A</a> <a id="2402" class="Symbol">:</a> <a id="2404" href="Intro.html#2793" class="Function">Type</a> <a id="2409" href="BasicFunctions.html#2390" class="Bound">i</a><a id="2410" class="Symbol">}</a> <a id="2412" class="Symbol">{</a><a id="2413" href="BasicFunctions.html#2413" class="Bound">B</a> <a id="2415" class="Symbol">:</a> <a id="2417" href="Intro.html#2793" class="Function">Type</a> <a id="2422" href="BasicFunctions.html#2392" class="Bound">j</a><a id="2423" class="Symbol">}</a> <a id="2425" class="Symbol">{</a><a id="2426" href="BasicFunctions.html#2426" class="Bound">A&#39;</a> <a id="2429" class="Symbol">:</a> <a id="2431" href="Intro.html#2793" class="Function">Type</a> <a id="2436" href="BasicFunctions.html#2394" class="Bound">k</a><a id="2437" class="Symbol">}</a> <a id="2439" class="Symbol">{</a><a id="2440" href="BasicFunctions.html#2440" class="Bound">B&#39;</a> <a id="2443" class="Symbol">:</a> <a id="2445" href="Intro.html#2793" class="Function">Type</a> <a id="2450" href="BasicFunctions.html#2396" class="Bound">l</a><a id="2451" class="Symbol">}</a>
  <a id="2455" class="Symbol">→</a> <a id="2457" class="Symbol">(</a><a id="2458" href="BasicFunctions.html#2400" class="Bound">A</a> <a id="2460" class="Symbol">→</a> <a id="2462" href="BasicFunctions.html#2426" class="Bound">A&#39;</a><a id="2464" class="Symbol">)</a>
  <a id="2468" class="Symbol">→</a> <a id="2470" class="Symbol">(</a><a id="2471" href="BasicFunctions.html#2413" class="Bound">B</a> <a id="2473" class="Symbol">→</a> <a id="2475" href="BasicFunctions.html#2440" class="Bound">B&#39;</a><a id="2477" class="Symbol">)</a>
  <a id="2481" class="Symbol">→</a> <a id="2483" href="BasicFunctions.html#2400" class="Bound">A</a> <a id="2485" href="BasicTypes.html#2351" class="Datatype Operator">+</a> <a id="2487" href="BasicFunctions.html#2413" class="Bound">B</a> <a id="2489" class="Symbol">→</a> <a id="2491" href="BasicFunctions.html#2426" class="Bound">A&#39;</a> <a id="2494" href="BasicTypes.html#2351" class="Datatype Operator">+</a> <a id="2496" href="BasicFunctions.html#2440" class="Bound">B&#39;</a>

<a id="2500" href="BasicFunctions.html#2377" class="Function">+-map</a> <a id="2506" href="BasicFunctions.html#2506" class="Bound">f</a> <a id="2508" href="BasicFunctions.html#2508" class="Bound">g</a> <a id="2510" class="Symbol">=</a> <a id="2512" href="BasicTypes.html#2858" class="Function">cases</a> <a id="2518" class="Symbol">(</a><a id="2519" href="BasicFunctions.html#2506" class="Bound">f</a> <a id="2521" href="BasicFunctions.html#1331" class="Function Operator">:&gt;</a> <a id="2524" href="BasicTypes.html#2520" class="InductiveConstructor">left</a><a id="2528" class="Symbol">)</a> <a id="2530" class="Symbol">(</a><a id="2531" href="BasicFunctions.html#2508" class="Bound">g</a> <a id="2533" href="BasicFunctions.html#1331" class="Function Operator">:&gt;</a> <a id="2536" href="BasicTypes.html#2584" class="InductiveConstructor">right</a><a id="2541" class="Symbol">)</a>

<a id="2544" class="Keyword">syntax</a> <a id="2551" href="BasicFunctions.html#2377" class="Function">+-map</a> <a id="2557" class="Bound">f</a> <a id="2559" class="Bound">g</a> <a id="2561" class="Symbol">=</a> <a id="2563" class="Function">〈</a> <a id="2565" class="Bound">f</a> <a id="2567" class="Function">⊕</a> <a id="2569" class="Bound">g</a> <a id="2571" class="Function">〉</a>
</pre>


<pre class="Agda">
<a id="parallell"></a><a id="2599" href="BasicFunctions.html#2599" class="Function">parallell</a>
  <a id="2611" class="Symbol">:</a> <a id="2613" class="Symbol">{</a><a id="2614" href="BasicFunctions.html#2614" class="Bound">A</a> <a id="2616" class="Symbol">:</a> <a id="2618" href="Intro.html#2793" class="Function">Type</a> <a id="2623" href="Intro.html#3375" class="Generalizable">ℓᵢ</a><a id="2625" class="Symbol">}</a> <a id="2627" class="Symbol">{</a><a id="2628" href="BasicFunctions.html#2628" class="Bound">B</a> <a id="2630" class="Symbol">:</a> <a id="2632" href="BasicFunctions.html#2614" class="Bound">A</a> <a id="2634" class="Symbol">→</a> <a id="2636" href="Intro.html#2793" class="Function">Type</a> <a id="2641" href="Intro.html#3378" class="Generalizable">ℓⱼ</a><a id="2643" class="Symbol">}</a> <a id="2645" class="Symbol">{</a><a id="2646" href="BasicFunctions.html#2646" class="Bound">C</a> <a id="2648" class="Symbol">:</a> <a id="2650" class="Symbol">(</a><a id="2651" href="BasicFunctions.html#2651" class="Bound">a</a> <a id="2653" class="Symbol">:</a> <a id="2655" href="BasicFunctions.html#2614" class="Bound">A</a><a id="2656" class="Symbol">)</a> <a id="2658" class="Symbol">→</a> <a id="2660" href="BasicFunctions.html#2628" class="Bound">B</a> <a id="2662" href="BasicFunctions.html#2651" class="Bound">a</a> <a id="2664" class="Symbol">→</a> <a id="2666" href="Intro.html#2793" class="Function">Type</a> <a id="2671" href="Intro.html#3381" class="Generalizable">ℓₖ</a><a id="2673" class="Symbol">}</a>
  <a id="2677" class="Symbol">→</a> <a id="2679" class="Symbol">(</a><a id="2680" href="BasicFunctions.html#2680" class="Bound">f</a> <a id="2682" class="Symbol">:</a> <a id="2684" class="Symbol">(</a><a id="2685" href="BasicFunctions.html#2685" class="Bound">a</a> <a id="2687" class="Symbol">:</a> <a id="2689" href="BasicFunctions.html#2614" class="Bound">A</a><a id="2690" class="Symbol">)</a> <a id="2692" class="Symbol">→</a> <a id="2694" href="BasicFunctions.html#2628" class="Bound">B</a> <a id="2696" href="BasicFunctions.html#2685" class="Bound">a</a><a id="2697" class="Symbol">)</a>
  <a id="2701" class="Symbol">→</a> <a id="2703" class="Symbol">((</a><a id="2705" href="BasicFunctions.html#2705" class="Bound">a</a> <a id="2707" class="Symbol">:</a> <a id="2709" href="BasicFunctions.html#2614" class="Bound">A</a><a id="2710" class="Symbol">)</a> <a id="2712" class="Symbol">→</a> <a id="2714" href="BasicFunctions.html#2646" class="Bound">C</a> <a id="2716" href="BasicFunctions.html#2705" class="Bound">a</a> <a id="2718" class="Symbol">(</a><a id="2719" href="BasicFunctions.html#2680" class="Bound">f</a> <a id="2721" href="BasicFunctions.html#2705" class="Bound">a</a><a id="2722" class="Symbol">))</a>
  <a id="2727" class="Comment">-------------------------</a>
  <a id="2755" class="Symbol">→</a> <a id="2757" class="Symbol">(</a><a id="2758" href="BasicFunctions.html#2758" class="Bound">a</a> <a id="2760" class="Symbol">:</a> <a id="2762" href="BasicFunctions.html#2614" class="Bound">A</a><a id="2763" class="Symbol">)</a> <a id="2765" class="Symbol">→</a> <a id="2767" href="BasicTypes.html#1497" class="Record">∑</a> <a id="2769" class="Symbol">(</a><a id="2770" href="BasicFunctions.html#2628" class="Bound">B</a> <a id="2772" href="BasicFunctions.html#2758" class="Bound">a</a><a id="2773" class="Symbol">)</a> <a id="2775" class="Symbol">(</a><a id="2776" href="BasicFunctions.html#2646" class="Bound">C</a> <a id="2778" href="BasicFunctions.html#2758" class="Bound">a</a><a id="2779" class="Symbol">)</a>

<a id="2782" href="BasicFunctions.html#2599" class="Function">parallell</a> <a id="2792" href="BasicFunctions.html#2792" class="Bound">f</a> <a id="2794" href="BasicFunctions.html#2794" class="Bound">g</a> <a id="2796" href="BasicFunctions.html#2796" class="Bound">a</a> <a id="2798" class="Symbol">=</a> <a id="2800" class="Symbol">(</a><a id="2801" href="BasicFunctions.html#2792" class="Bound">f</a> <a id="2803" href="BasicFunctions.html#2796" class="Bound">a</a> <a id="2805" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="2807" href="BasicFunctions.html#2794" class="Bound">g</a> <a id="2809" href="BasicFunctions.html#2796" class="Bound">a</a><a id="2810" class="Symbol">)</a>

<a id="2813" class="Keyword">syntax</a> <a id="2820" href="BasicFunctions.html#2599" class="Function">parallell</a> <a id="2830" class="Bound">f</a> <a id="2832" class="Bound">g</a> <a id="2834" class="Symbol">=</a> <a id="2836" class="Function">〈</a> <a id="2838" class="Bound">f</a> <a id="2840" class="Function">×</a> <a id="2842" class="Bound">g</a> <a id="2844" class="Function">〉</a>
</pre>



### Curryfication


<pre class="Agda"><a id="2887" class="Bound">c</a></pre><a id="2889" class="Bound">d</a><pre class="Agda">
<a id="curry"></a><a id="2893" href="BasicFunctions.html#2893" class="Function">curry</a>
<a id="2899" class="Bound"> </a> <a id="2901" class="Symbol">:</a> <a id="2903" class="Symbol">{</a><a id="2904" href="BasicFunctions.html#2904" class="Bound">A</a> <a id="2906" class="Symbol">:</a> <a id="2908" href="Intro.html#2793" class="Function">Type</a> <a id="2913" href="Intro.html#3375" class="Generalizable">ℓᵢ</a><a id="2915" class="Symbol">}</a> <a id="2917" class="Symbol">{</a><a id="2918" href="BasicFunctions.html#2918" class="Bound">B</a> <a id="2920" class="Symbol">:</a> <a id="2922" href="BasicFunctions.html#2904" class="Bound">A</a> <a id="2924" class="Symbol">→</a> <a id="2926" href="Intro.html#2793" class="Function">Type</a> <a id="2931" href="Intro.html#3378" class="Generalizable">ℓⱼ</a><a id="2933" class="Symbol">}</a> <a id="2935" class="Symbol">{</a><a id="2936" href="BasicFunctions.html#2936" class="Bound">C</a> <a id="2938" class="Symbol">:</a> <a id="2940" href="BasicTypes.html#1689" class="Function">Σ</a> <a id="2942" href="BasicFunctions.html#2904" class="Bound">A</a> <a id="2944" href="BasicFunctions.html#2918" class="Bound">B</a> <a id="2946" class="Symbol">→</a> <a id="2948" href="Intro.html#2793" class="Function">Type</a> <a id="2953" href="Intro.html#3381" class="Generalizable">ℓₖ</a><a id="2955" class="Symbol">}</a>
  <a id="2959" class="Symbol">→</a> <a id="2961" class="Symbol">((</a><a id="2963" href="BasicFunctions.html#2963" class="Bound">s</a> <a id="2965" class="Symbol">:</a> <a id="2967" href="BasicTypes.html#1497" class="Record">∑</a> <a id="2969" href="BasicFunctions.html#2904" class="Bound">A</a> <a id="2971" href="BasicFunctions.html#2918" class="Bound">B</a><a id="2972" class="Symbol">)</a> <a id="2974" class="Symbol">→</a> <a id="2976" href="BasicFunctions.html#2936" class="Bound">C</a> <a id="2978" href="BasicFunctions.html#2963" class="Bound">s</a><a id="2979" class="Symbol">)</a>
  <a id="2983" class="Comment">-------------------------------</a>
  <a id="3017" class="Symbol">→</a> <a id="3019" class="Symbol">((</a><a id="3021" href="BasicFunctions.html#3021" class="Bound">x</a> <a id="3023" class="Symbol">:</a> <a id="3025" href="BasicFunctions.html#2904" class="Bound">A</a><a id="3026" class="Symbol">)(</a><a id="3028" href="BasicFunctions.html#3028" class="Bound">y</a> <a id="3030" class="Symbol">:</a> <a id="3032" href="BasicFunctions.html#2918" class="Bound">B</a> <a id="3034" href="BasicFunctions.html#3021" class="Bound">x</a><a id="3035" class="Symbol">)</a> <a id="3037" class="Symbol">→</a> <a id="3039" href="BasicFunctions.html#2936" class="Bound">C</a> <a id="3041" class="Symbol">(</a><a id="3042" href="BasicFunctions.html#3021" class="Bound">x</a> <a id="3044" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="3046" href="BasicFunctions.html#3028" class="Bound">y</a><a id="3047" class="Symbol">))</a>

<a id="3051" href="BasicFunctions.html#2893" class="Function">curry</a> <a id="3057" href="BasicFunctions.html#3057" class="Bound">f</a> <a id="3059" href="BasicFunctions.html#3059" class="Bound">x</a> <a id="3061" href="BasicFunctions.html#3061" class="Bound">y</a> <a id="3063" class="Symbol">=</a> <a id="3065" href="BasicFunctions.html#3057" class="Bound">f</a> <a id="3067" class="Symbol">(</a><a id="3068" href="BasicFunctions.html#3059" class="Bound">x</a> <a id="3070" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="3072" href="BasicFunctions.html#3061" class="Bound">y</a><a id="3073" class="Symbol">)</a>
</pre>

### Uncurryfication

<pre class="Agda">
<a id="unCurry"></a><a id="3121" href="BasicFunctions.html#3121" class="Function">unCurry</a>
  <a id="3131" class="Symbol">:</a> <a id="3133" class="Symbol">{</a><a id="3134" href="BasicFunctions.html#3134" class="Bound">A</a> <a id="3136" class="Symbol">:</a> <a id="3138" href="Intro.html#2793" class="Function">Type</a> <a id="3143" href="Intro.html#3375" class="Generalizable">ℓᵢ</a><a id="3145" class="Symbol">}{</a><a id="3147" href="BasicFunctions.html#3147" class="Bound">B</a> <a id="3149" class="Symbol">:</a> <a id="3151" href="BasicFunctions.html#3134" class="Bound">A</a> <a id="3153" class="Symbol">→</a> <a id="3155" href="Intro.html#2793" class="Function">Type</a> <a id="3160" href="Intro.html#3378" class="Generalizable">ℓⱼ</a><a id="3162" class="Symbol">}{</a><a id="3164" href="BasicFunctions.html#3164" class="Bound">C</a> <a id="3166" class="Symbol">:</a> <a id="3168" href="Intro.html#2793" class="Function">Type</a> <a id="3173" href="Intro.html#3381" class="Generalizable">ℓₖ</a><a id="3175" class="Symbol">}</a>
  <a id="3179" class="Symbol">→</a> <a id="3181" class="Symbol">(</a><a id="3182" href="BasicFunctions.html#3182" class="Bound">D</a> <a id="3184" class="Symbol">:</a> <a id="3186" class="Symbol">(</a><a id="3187" href="BasicFunctions.html#3187" class="Bound">a</a> <a id="3189" class="Symbol">:</a> <a id="3191" href="BasicFunctions.html#3134" class="Bound">A</a><a id="3192" class="Symbol">)</a> <a id="3194" class="Symbol">→</a> <a id="3196" href="BasicFunctions.html#3147" class="Bound">B</a> <a id="3198" href="BasicFunctions.html#3187" class="Bound">a</a> <a id="3200" class="Symbol">→</a> <a id="3202" href="BasicFunctions.html#3164" class="Bound">C</a><a id="3203" class="Symbol">)</a>
  <a id="3207" class="Comment">------------------------</a>
  <a id="3234" class="Symbol">→</a> <a id="3236" class="Symbol">(</a><a id="3237" href="BasicFunctions.html#3237" class="Bound">p</a> <a id="3239" class="Symbol">:</a> <a id="3241" href="BasicTypes.html#1497" class="Record">∑</a> <a id="3243" href="BasicFunctions.html#3134" class="Bound">A</a> <a id="3245" href="BasicFunctions.html#3147" class="Bound">B</a><a id="3246" class="Symbol">)</a> <a id="3248" class="Symbol">→</a> <a id="3250" href="BasicFunctions.html#3164" class="Bound">C</a>

<a id="3253" href="BasicFunctions.html#3121" class="Function">unCurry</a> <a id="3261" href="BasicFunctions.html#3261" class="Bound">D</a> <a id="3263" href="BasicFunctions.html#3263" class="Bound">p</a> <a id="3265" class="Symbol">=</a> <a id="3267" href="BasicFunctions.html#3261" class="Bound">D</a> <a id="3269" class="Symbol">(</a><a id="3270" href="BasicTypes.html#1763" class="Function">proj₁</a> <a id="3276" href="BasicFunctions.html#3263" class="Bound">p</a><a id="3277" class="Symbol">)</a> <a id="3279" class="Symbol">(</a><a id="3280" href="BasicTypes.html#1774" class="Function">proj₂</a> <a id="3286" href="BasicFunctions.html#3263" class="Bound">p</a><a id="3287" class="Symbol">)</a>
</pre>

<pre class="Agda">
<a id="uncurry"></a><a id="3314" href="BasicFunctions.html#3314" class="Function">uncurry</a>
  <a id="3324" class="Symbol">:</a> <a id="3326" class="Symbol">{</a><a id="3327" href="BasicFunctions.html#3327" class="Bound">A</a> <a id="3329" class="Symbol">:</a> <a id="3331" href="Intro.html#2793" class="Function">Type</a> <a id="3336" href="Intro.html#3375" class="Generalizable">ℓᵢ</a><a id="3338" class="Symbol">}</a> <a id="3340" class="Symbol">{</a><a id="3341" href="BasicFunctions.html#3341" class="Bound">B</a> <a id="3343" class="Symbol">:</a> <a id="3345" href="BasicFunctions.html#3327" class="Bound">A</a> <a id="3347" class="Symbol">→</a> <a id="3349" href="Intro.html#2793" class="Function">Type</a> <a id="3354" href="Intro.html#3378" class="Generalizable">ℓⱼ</a><a id="3356" class="Symbol">}</a> <a id="3358" class="Symbol">{</a><a id="3359" href="BasicFunctions.html#3359" class="Bound">C</a> <a id="3361" class="Symbol">:</a> <a id="3363" class="Symbol">(</a><a id="3364" href="BasicFunctions.html#3364" class="Bound">a</a> <a id="3366" class="Symbol">:</a> <a id="3368" href="BasicFunctions.html#3327" class="Bound">A</a><a id="3369" class="Symbol">)</a> <a id="3371" class="Symbol">→</a> <a id="3373" href="BasicFunctions.html#3341" class="Bound">B</a> <a id="3375" href="BasicFunctions.html#3364" class="Bound">a</a> <a id="3377" class="Symbol">→</a> <a id="3379" href="Intro.html#2793" class="Function">Type</a> <a id="3384" href="Intro.html#3381" class="Generalizable">ℓₖ</a><a id="3386" class="Symbol">}</a>
  <a id="3390" class="Symbol">→</a> <a id="3392" class="Symbol">(</a><a id="3393" href="BasicFunctions.html#3393" class="Bound">f</a> <a id="3395" class="Symbol">:</a> <a id="3397" class="Symbol">(</a><a id="3398" href="BasicFunctions.html#3398" class="Bound">a</a> <a id="3400" class="Symbol">:</a> <a id="3402" href="BasicFunctions.html#3327" class="Bound">A</a><a id="3403" class="Symbol">)</a> <a id="3405" class="Symbol">(</a><a id="3406" href="BasicFunctions.html#3406" class="Bound">b</a> <a id="3408" class="Symbol">:</a> <a id="3410" href="BasicFunctions.html#3341" class="Bound">B</a> <a id="3412" href="BasicFunctions.html#3398" class="Bound">a</a><a id="3413" class="Symbol">)</a> <a id="3415" class="Symbol">→</a> <a id="3417" href="BasicFunctions.html#3359" class="Bound">C</a> <a id="3419" href="BasicFunctions.html#3398" class="Bound">a</a> <a id="3421" href="BasicFunctions.html#3406" class="Bound">b</a><a id="3422" class="Symbol">)</a>
  <a id="3426" class="Comment">---------------------------------</a>
  <a id="3462" class="Symbol">→</a> <a id="3464" class="Symbol">(</a><a id="3465" href="BasicFunctions.html#3465" class="Bound">p</a> <a id="3467" class="Symbol">:</a> <a id="3469" href="BasicTypes.html#1497" class="Record">∑</a> <a id="3471" href="BasicFunctions.html#3327" class="Bound">A</a> <a id="3473" href="BasicFunctions.html#3341" class="Bound">B</a><a id="3474" class="Symbol">)</a> <a id="3476" class="Symbol">→</a> <a id="3478" href="BasicFunctions.html#3359" class="Bound">C</a> <a id="3480" class="Symbol">(</a><a id="3481" href="BasicTypes.html#1597" class="Field">π₁</a> <a id="3484" href="BasicFunctions.html#3465" class="Bound">p</a><a id="3485" class="Symbol">)</a> <a id="3487" class="Symbol">(</a><a id="3488" href="BasicTypes.html#1608" class="Field">π₂</a> <a id="3491" href="BasicFunctions.html#3465" class="Bound">p</a><a id="3492" class="Symbol">)</a>

<a id="3495" href="BasicFunctions.html#3314" class="Function">uncurry</a> <a id="3503" href="BasicFunctions.html#3503" class="Bound">f</a> <a id="3505" class="Symbol">(</a><a id="3506" href="BasicFunctions.html#3506" class="Bound">x</a> <a id="3508" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="3510" href="BasicFunctions.html#3510" class="Bound">y</a><a id="3511" class="Symbol">)</a> <a id="3513" class="Symbol">=</a> <a id="3515" href="BasicFunctions.html#3503" class="Bound">f</a> <a id="3517" href="BasicFunctions.html#3506" class="Bound">x</a> <a id="3519" href="BasicFunctions.html#3510" class="Bound">y</a>
</pre>

### Heterogeneous equality

<pre class="Agda">
<a id="3574" class="Keyword">data</a>
  <a id="HEq"></a><a id="3581" href="BasicFunctions.html#3581" class="Datatype">HEq</a> <a id="3585" class="Symbol">(</a><a id="3586" href="BasicFunctions.html#3586" class="Bound">A</a> <a id="3588" class="Symbol">:</a> <a id="3590" href="Intro.html#2793" class="Function">Type</a> <a id="3595" href="Intro.html#3373" class="Generalizable">ℓ</a><a id="3596" class="Symbol">)</a>
    <a id="3602" class="Symbol">:</a> <a id="3604" class="Symbol">(</a><a id="3605" href="BasicFunctions.html#3605" class="Bound">B</a> <a id="3607" class="Symbol">:</a> <a id="3609" href="Intro.html#2793" class="Function">Type</a> <a id="3614" href="BasicFunctions.html#3595" class="Bound">ℓ</a><a id="3615" class="Symbol">)</a>
    <a id="3621" class="Symbol">→</a> <a id="3623" class="Symbol">(</a><a id="3624" href="BasicFunctions.html#3624" class="Bound">α</a> <a id="3626" class="Symbol">:</a> <a id="3628" href="BasicFunctions.html#3586" class="Bound">A</a> <a id="3630" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="3633" href="BasicFunctions.html#3605" class="Bound">B</a><a id="3634" class="Symbol">)</a> <a id="3636" class="Symbol">(</a><a id="3637" href="BasicFunctions.html#3637" class="Bound">a</a> <a id="3639" class="Symbol">:</a> <a id="3641" href="BasicFunctions.html#3586" class="Bound">A</a><a id="3642" class="Symbol">)</a> <a id="3644" class="Symbol">(</a><a id="3645" href="BasicFunctions.html#3645" class="Bound">b</a> <a id="3647" class="Symbol">:</a> <a id="3649" href="BasicFunctions.html#3605" class="Bound">B</a><a id="3650" class="Symbol">)</a>
    <a id="3656" class="Symbol">→</a> <a id="3658" href="Intro.html#2793" class="Function">Type</a> <a id="3663" class="Symbol">(</a><a id="3664" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="3669" href="BasicFunctions.html#3595" class="Bound">ℓ</a><a id="3670" class="Symbol">)</a>
  <a id="3674" class="Keyword">where</a>
  <a id="HEq.idp"></a><a id="3682" href="BasicFunctions.html#3682" class="InductiveConstructor">idp</a> <a id="3686" class="Symbol">:</a> <a id="3688" class="Symbol">{</a><a id="3689" href="BasicFunctions.html#3689" class="Bound">a</a> <a id="3691" class="Symbol">:</a> <a id="3693" href="BasicFunctions.html#3586" class="Bound">A</a><a id="3694" class="Symbol">}</a> <a id="3696" class="Symbol">→</a> <a id="3698" href="BasicFunctions.html#3581" class="Datatype">HEq</a> <a id="3702" href="BasicFunctions.html#3586" class="Bound">A</a> <a id="3704" href="BasicFunctions.html#3586" class="Bound">A</a> <a id="3706" href="BasicTypes.html#4393" class="InductiveConstructor">idp</a> <a id="3710" href="BasicFunctions.html#3689" class="Bound">a</a> <a id="3712" href="BasicFunctions.html#3689" class="Bound">a</a>
</pre>

### Path functions

#### Composition of paths

{: .foldable until="6" }
<pre class="Agda">
<a id="_·_"></a><a id="3811" href="BasicFunctions.html#3811" class="Function Operator">_·_</a>
  <a id="3817" class="Symbol">:</a> <a id="3819" class="Symbol">{</a><a id="3820" href="BasicFunctions.html#3820" class="Bound">A</a> <a id="3822" class="Symbol">:</a> <a id="3824" href="Intro.html#2793" class="Function">Type</a> <a id="3829" href="Intro.html#3373" class="Generalizable">ℓ</a><a id="3830" class="Symbol">}</a> <a id="3832" class="Symbol">{</a><a id="3833" href="BasicFunctions.html#3833" class="Bound">x</a> <a id="3835" href="BasicFunctions.html#3835" class="Bound">y</a> <a id="3837" href="BasicFunctions.html#3837" class="Bound">z</a> <a id="3839" class="Symbol">:</a> <a id="3841" href="BasicFunctions.html#3820" class="Bound">A</a><a id="3842" class="Symbol">}</a>
  <a id="3846" class="Symbol">→</a> <a id="3848" class="Symbol">(</a><a id="3849" href="BasicFunctions.html#3849" class="Bound">p</a> <a id="3851" class="Symbol">:</a> <a id="3853" href="BasicFunctions.html#3833" class="Bound">x</a> <a id="3855" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="3858" href="BasicFunctions.html#3835" class="Bound">y</a><a id="3859" class="Symbol">)</a>
  <a id="3863" class="Symbol">→</a> <a id="3865" class="Symbol">(</a><a id="3866" href="BasicFunctions.html#3866" class="Bound">q</a> <a id="3868" class="Symbol">:</a> <a id="3870" href="BasicFunctions.html#3835" class="Bound">y</a> <a id="3872" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="3875" href="BasicFunctions.html#3837" class="Bound">z</a><a id="3876" class="Symbol">)</a>
  <a id="3880" class="Comment">--------------</a>
  <a id="3897" class="Symbol">→</a> <a id="3899" href="BasicFunctions.html#3833" class="Bound">x</a> <a id="3901" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="3904" href="BasicFunctions.html#3837" class="Bound">z</a>

<a id="3907" href="BasicFunctions.html#3811" class="Function Operator">_·_</a> <a id="3911" href="BasicTypes.html#4393" class="InductiveConstructor">idp</a> <a id="3915" href="BasicFunctions.html#3915" class="Bound">q</a> <a id="3917" class="Symbol">=</a> <a id="3919" href="BasicFunctions.html#3915" class="Bound">q</a>

<a id="3922" class="Keyword">infixl</a> <a id="3929" class="Number">50</a> <a id="3932" href="BasicFunctions.html#3811" class="Function Operator">_·_</a>
</pre>

![path](/assets/ipe-images/path-concatenation.png){: width="60%" align="right" }

#### Inverse of paths

<pre class="Agda">
<a id="inv"></a><a id="4066" href="BasicFunctions.html#4066" class="Function">inv</a>
  <a id="4072" class="Symbol">:</a> <a id="4074" class="Symbol">{</a><a id="4075" href="BasicFunctions.html#4075" class="Bound">A</a> <a id="4077" class="Symbol">:</a> <a id="4079" href="Intro.html#2793" class="Function">Type</a> <a id="4084" href="Intro.html#3373" class="Generalizable">ℓ</a><a id="4085" class="Symbol">}</a> <a id="4087" class="Symbol">{</a><a id="4088" href="BasicFunctions.html#4088" class="Bound">a</a> <a id="4090" href="BasicFunctions.html#4090" class="Bound">b</a> <a id="4092" class="Symbol">:</a> <a id="4094" href="BasicFunctions.html#4075" class="Bound">A</a><a id="4095" class="Symbol">}</a>
  <a id="4099" class="Symbol">→</a> <a id="4101" href="BasicFunctions.html#4088" class="Bound">a</a> <a id="4103" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="4106" href="BasicFunctions.html#4090" class="Bound">b</a>
  <a id="4110" class="Comment">--------</a>
  <a id="4121" class="Symbol">→</a> <a id="4123" href="BasicFunctions.html#4090" class="Bound">b</a> <a id="4125" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="4128" href="BasicFunctions.html#4088" class="Bound">a</a>

<a id="4131" href="BasicFunctions.html#4066" class="Function">inv</a> <a id="4135" href="BasicTypes.html#4393" class="InductiveConstructor">idp</a> <a id="4139" class="Symbol">=</a> <a id="4141" href="BasicTypes.html#4393" class="InductiveConstructor">idp</a>
</pre>

Synonyms for inverse path
<pre class="Agda">
<a id="_⁻¹"></a><a id="4196" href="BasicFunctions.html#4196" class="Function Operator">_⁻¹</a> <a id="4200" class="Symbol">=</a> <a id="4202" href="BasicFunctions.html#4066" class="Function">inv</a>
<a id="!_"></a><a id="4206" href="BasicFunctions.html#4206" class="Function Operator">!_</a>  <a id="4210" class="Symbol">=</a> <a id="4212" href="BasicFunctions.html#4066" class="Function">inv</a>

<a id="4217" class="Keyword">infixl</a> <a id="4224" class="Number">60</a> <a id="4227" href="BasicFunctions.html#4196" class="Function Operator">_⁻¹</a> <a id="4231" href="BasicFunctions.html#4206" class="Function Operator">!_</a>
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
<a id="4602" class="Keyword">module</a>
  <a id="EquationalReasoning"></a><a id="4611" href="BasicFunctions.html#4611" class="Module">EquationalReasoning</a> <a id="4631" class="Symbol">{</a><a id="4632" href="BasicFunctions.html#4632" class="Bound">A</a> <a id="4634" class="Symbol">:</a> <a id="4636" href="Intro.html#2793" class="Function">Type</a> <a id="4641" href="Intro.html#3373" class="Generalizable">ℓ</a><a id="4642" class="Symbol">}</a>
  <a id="4646" class="Keyword">where</a>
</pre>

Definitional equals:

{: .foldable until="4" }
<pre class="Agda">
  <a id="EquationalReasoning._==⟨⟩_"></a><a id="4726" href="BasicFunctions.html#4726" class="Function Operator">_==⟨⟩_</a>
    <a id="4737" class="Symbol">:</a> <a id="4739" class="Symbol">∀</a> <a id="4741" class="Symbol">(</a><a id="4742" href="BasicFunctions.html#4742" class="Bound">x</a> <a id="4744" class="Symbol">{</a><a id="4745" href="BasicFunctions.html#4745" class="Bound">y</a><a id="4746" class="Symbol">}</a> <a id="4748" class="Symbol">:</a> <a id="4750" href="BasicFunctions.html#4632" class="Bound">A</a><a id="4751" class="Symbol">)</a>
    <a id="4757" class="Comment">-----------------</a>
    <a id="4779" class="Symbol">→</a> <a id="4781" href="BasicFunctions.html#4742" class="Bound">x</a> <a id="4783" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="4786" href="BasicFunctions.html#4745" class="Bound">y</a> <a id="4788" class="Symbol">→</a> <a id="4790" href="BasicFunctions.html#4742" class="Bound">x</a> <a id="4792" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="4795" href="BasicFunctions.html#4745" class="Bound">y</a>

  <a id="4800" class="Symbol">_</a> <a id="4802" href="BasicFunctions.html#4726" class="Function Operator">==⟨⟩</a> <a id="4807" href="BasicFunctions.html#4807" class="Bound">p</a> <a id="4809" class="Symbol">=</a> <a id="4811" href="BasicFunctions.html#4807" class="Bound">p</a>
</pre>

Synonyms:

<pre class="Agda">
  <a id="EquationalReasoning._==⟨idp⟩_"></a><a id="4851" href="BasicFunctions.html#4851" class="Function Operator">_==⟨idp⟩_</a>  <a id="4862" class="Symbol">=</a> <a id="4864" href="BasicFunctions.html#4726" class="Function Operator">_==⟨⟩_</a>
  <a id="EquationalReasoning._==⟨refl⟩_"></a><a id="4873" href="BasicFunctions.html#4873" class="Function Operator">_==⟨refl⟩_</a> <a id="4884" class="Symbol">=</a> <a id="4886" href="BasicFunctions.html#4726" class="Function Operator">_==⟨⟩_</a>
  <a id="EquationalReasoning._≡⟨⟩_"></a><a id="4895" href="BasicFunctions.html#4895" class="Function Operator">_≡⟨⟩_</a>      <a id="4906" class="Symbol">=</a> <a id="4908" href="BasicFunctions.html#4726" class="Function Operator">_==⟨⟩_</a>

  <a id="4918" class="Keyword">infixr</a> <a id="4925" class="Number">2</a> <a id="4927" href="BasicFunctions.html#4726" class="Function Operator">_==⟨⟩_</a> <a id="4934" href="BasicFunctions.html#4851" class="Function Operator">_==⟨idp⟩_</a> <a id="4944" href="BasicFunctions.html#4873" class="Function Operator">_==⟨refl⟩_</a> <a id="4955" href="BasicFunctions.html#4895" class="Function Operator">_≡⟨⟩_</a>
</pre>

Chain:

{: .foldable until="6" }
<pre class="Agda">
  <a id="EquationalReasoning._==⟨_⟩_"></a><a id="5021" href="BasicFunctions.html#5021" class="Function Operator">_==⟨_⟩_</a>
    <a id="5033" class="Symbol">:</a> <a id="5035" class="Symbol">(</a><a id="5036" href="BasicFunctions.html#5036" class="Bound">x</a> <a id="5038" class="Symbol">:</a> <a id="5040" href="BasicFunctions.html#4632" class="Bound">A</a><a id="5041" class="Symbol">)</a> <a id="5043" class="Symbol">{</a><a id="5044" href="BasicFunctions.html#5044" class="Bound">y</a> <a id="5046" href="BasicFunctions.html#5046" class="Bound">z</a> <a id="5048" class="Symbol">:</a> <a id="5050" href="BasicFunctions.html#4632" class="Bound">A</a><a id="5051" class="Symbol">}</a>
    <a id="5057" class="Symbol">→</a> <a id="5059" href="BasicFunctions.html#5036" class="Bound">x</a> <a id="5061" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="5064" href="BasicFunctions.html#5044" class="Bound">y</a>
    <a id="5070" class="Symbol">→</a> <a id="5072" href="BasicFunctions.html#5044" class="Bound">y</a> <a id="5074" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="5077" href="BasicFunctions.html#5046" class="Bound">z</a>
    <a id="5083" class="Comment">--------</a>
    <a id="5096" class="Symbol">→</a> <a id="5098" href="BasicFunctions.html#5036" class="Bound">x</a> <a id="5100" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="5103" href="BasicFunctions.html#5046" class="Bound">z</a>

  <a id="5108" class="Symbol">_</a> <a id="5110" href="BasicFunctions.html#5021" class="Function Operator">==⟨</a> <a id="5114" href="BasicFunctions.html#5114" class="Bound">thm</a> <a id="5118" href="BasicFunctions.html#5021" class="Function Operator">⟩</a> <a id="5120" href="BasicFunctions.html#5120" class="Bound">q</a> <a id="5122" class="Symbol">=</a> <a id="5124" href="BasicFunctions.html#5114" class="Bound">thm</a> <a id="5128" href="BasicFunctions.html#3811" class="Function Operator">·</a> <a id="5130" href="BasicFunctions.html#5120" class="Bound">q</a>
</pre>

Synomyms:
<pre class="Agda">
  <a id="EquationalReasoning._≡⟨_⟩_"></a><a id="5169" href="BasicFunctions.html#5169" class="Function Operator">_≡⟨_⟩_</a> <a id="5176" class="Symbol">=</a> <a id="5178" href="BasicFunctions.html#5021" class="Function Operator">_==⟨_⟩_</a>

  <a id="5189" class="Keyword">infixr</a> <a id="5196" class="Number">2</a> <a id="5198" href="BasicFunctions.html#5021" class="Function Operator">_==⟨_⟩_</a> <a id="5206" href="BasicFunctions.html#5169" class="Function Operator">_≡⟨_⟩_</a>
</pre>

Q.E.D:
<pre class="Agda">
  <a id="EquationalReasoning._∎"></a><a id="5247" href="BasicFunctions.html#5247" class="Function Operator">_∎</a>
    <a id="5254" class="Symbol">:</a> <a id="5256" class="Symbol">(</a><a id="5257" href="BasicFunctions.html#5257" class="Bound">x</a> <a id="5259" class="Symbol">:</a> <a id="5261" href="BasicFunctions.html#4632" class="Bound">A</a><a id="5262" class="Symbol">)</a>
    <a id="5268" class="Symbol">→</a> <a id="5270" href="BasicFunctions.html#5257" class="Bound">x</a> <a id="5272" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="5275" href="BasicFunctions.html#5257" class="Bound">x</a>

  <a id="5280" href="BasicFunctions.html#5247" class="Function Operator">_∎</a> <a id="5283" class="Symbol">=</a> <a id="5285" class="Symbol">λ</a> <a id="5287" href="BasicFunctions.html#5287" class="Bound">x</a> <a id="5289" class="Symbol">→</a> <a id="5291" href="BasicTypes.html#4393" class="InductiveConstructor">idp</a>

  <a id="5298" class="Keyword">infix</a> <a id="5304" class="Number">3</a> <a id="5306" href="BasicFunctions.html#5247" class="Function Operator">_∎</a>
</pre>

The begining of a proof:

<pre class="Agda">
  <a id="EquationalReasoning.begin_"></a><a id="5362" href="BasicFunctions.html#5362" class="Function Operator">begin_</a>
    <a id="5373" class="Symbol">:</a> <a id="5375" class="Symbol">{</a><a id="5376" href="BasicFunctions.html#5376" class="Bound">x</a> <a id="5378" href="BasicFunctions.html#5378" class="Bound">y</a> <a id="5380" class="Symbol">:</a> <a id="5382" href="BasicFunctions.html#4632" class="Bound">A</a><a id="5383" class="Symbol">}</a>
    <a id="5389" class="Symbol">→</a> <a id="5391" href="BasicFunctions.html#5376" class="Bound">x</a> <a id="5393" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="5396" href="BasicFunctions.html#5378" class="Bound">y</a>
    <a id="5402" class="Symbol">→</a> <a id="5404" href="BasicFunctions.html#5376" class="Bound">x</a> <a id="5406" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="5409" href="BasicFunctions.html#5378" class="Bound">y</a>

  <a id="5414" href="BasicFunctions.html#5362" class="Function Operator">begin_</a> <a id="5421" href="BasicFunctions.html#5421" class="Bound">p</a> <a id="5423" class="Symbol">=</a> <a id="5425" href="BasicFunctions.html#5421" class="Bound">p</a>

  <a id="5430" class="Keyword">infix</a> <a id="5436" class="Number">1</a> <a id="5438" href="BasicFunctions.html#5362" class="Function Operator">begin_</a>
</pre>

<pre class="Agda">
<a id="5470" class="Keyword">open</a> <a id="5475" href="BasicFunctions.html#4611" class="Module">EquationalReasoning</a> <a id="5495" class="Keyword">public</a>
</pre>
