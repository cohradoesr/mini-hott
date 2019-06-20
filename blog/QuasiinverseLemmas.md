---
layout: page
title: "Quasiinverse Type"
category: homotopy
toc: true
agda: true
gallery: true
latex: true
references: true
linkify: true
showcitation: true
home: true
---

Two functions are quasi-inverses if we can construct a function providing
`(g ∘ f) x = x` and `(f ∘ g) y = y` for any given `x` and `y`.

<div class="hide" >
<pre class="Agda">
<a id="348" class="Symbol">{-#</a> <a id="352" class="Keyword">OPTIONS</a> <a id="360" class="Pragma">--without-K</a> <a id="372" class="Symbol">#-}</a>
<a id="376" class="Keyword">open</a> <a id="381" class="Keyword">import</a> <a id="388" href="TransportLemmas.html" class="Module">TransportLemmas</a>
<a id="404" class="Keyword">open</a> <a id="409" class="Keyword">import</a> <a id="416" href="EquivalenceType.html" class="Module">EquivalenceType</a>

<a id="433" class="Keyword">open</a> <a id="438" class="Keyword">import</a> <a id="445" href="HomotopyType.html" class="Module">HomotopyType</a>
<a id="458" class="Keyword">open</a> <a id="463" class="Keyword">import</a> <a id="470" href="HomotopyLemmas.html" class="Module">HomotopyLemmas</a>


<a id="487" class="Keyword">open</a> <a id="492" class="Keyword">import</a> <a id="499" href="QuasiinverseType.html" class="Module">QuasiinverseType</a>
</pre>
</div>

## Equivalence composition

<pre class="Agda">
<a id="576" class="Keyword">module</a> <a id="583" href="QuasiinverseLemmas.html" class="Module">QuasiinverseLemmas</a> <a id="602" class="Keyword">where</a>
</pre>

The equivalence types are indeed equivalence

{: .foldable until="7" }
<pre class="Agda">
  <a id="706" class="Comment">-- Composition of quasiinverses</a>
  <a id="qinv-comp"></a><a id="740" href="QuasiinverseLemmas.html#740" class="Function">qinv-comp</a>
    <a id="754" class="Symbol">:</a> <a id="756" class="Symbol">∀</a> <a id="758" class="Symbol">{</a><a id="759" href="QuasiinverseLemmas.html#759" class="Bound">ℓ₁</a> <a id="762" href="QuasiinverseLemmas.html#762" class="Bound">ℓ₂</a> <a id="765" href="QuasiinverseLemmas.html#765" class="Bound">ℓ₃</a><a id="767" class="Symbol">}</a> <a id="769" class="Symbol">{</a><a id="770" href="QuasiinverseLemmas.html#770" class="Bound">A</a> <a id="772" class="Symbol">:</a> <a id="774" href="Intro.html#1720" class="Function">Type</a> <a id="779" href="QuasiinverseLemmas.html#759" class="Bound">ℓ₁</a><a id="781" class="Symbol">}{</a><a id="783" href="QuasiinverseLemmas.html#783" class="Bound">B</a> <a id="785" class="Symbol">:</a> <a id="787" href="Intro.html#1720" class="Function">Type</a> <a id="792" href="QuasiinverseLemmas.html#762" class="Bound">ℓ₂</a><a id="794" class="Symbol">}{</a><a id="796" href="QuasiinverseLemmas.html#796" class="Bound">C</a> <a id="798" class="Symbol">:</a> <a id="800" href="Intro.html#1720" class="Function">Type</a> <a id="805" href="QuasiinverseLemmas.html#765" class="Bound">ℓ₃</a><a id="807" class="Symbol">}</a>
    <a id="813" class="Symbol">→</a> <a id="815" href="BasicTypes.html#1690" class="Function">Σ</a> <a id="817" class="Symbol">(</a><a id="818" href="QuasiinverseLemmas.html#770" class="Bound">A</a> <a id="820" class="Symbol">→</a> <a id="822" href="QuasiinverseLemmas.html#783" class="Bound">B</a><a id="823" class="Symbol">)</a> <a id="825" href="QuasiinverseType.html#704" class="Function">qinv</a>
    <a id="834" class="Symbol">→</a> <a id="836" href="BasicTypes.html#1690" class="Function">Σ</a> <a id="838" class="Symbol">(</a><a id="839" href="QuasiinverseLemmas.html#783" class="Bound">B</a> <a id="841" class="Symbol">→</a> <a id="843" href="QuasiinverseLemmas.html#796" class="Bound">C</a><a id="844" class="Symbol">)</a> <a id="846" href="QuasiinverseType.html#704" class="Function">qinv</a>
    <a id="855" class="Comment">----------------</a>
    <a id="876" class="Symbol">→</a> <a id="878" href="BasicTypes.html#1690" class="Function">Σ</a> <a id="880" class="Symbol">(</a><a id="881" href="QuasiinverseLemmas.html#770" class="Bound">A</a> <a id="883" class="Symbol">→</a> <a id="885" href="QuasiinverseLemmas.html#796" class="Bound">C</a><a id="886" class="Symbol">)</a> <a id="888" href="QuasiinverseType.html#704" class="Function">qinv</a>

  <a id="896" href="QuasiinverseLemmas.html#740" class="Function">qinv-comp</a> <a id="906" class="Symbol">(</a><a id="907" href="QuasiinverseLemmas.html#907" class="Bound">f</a> <a id="909" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="911" class="Symbol">(</a><a id="912" href="QuasiinverseLemmas.html#912" class="Bound">if</a> <a id="915" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="917" class="Symbol">(</a><a id="918" href="QuasiinverseLemmas.html#918" class="Bound">εf</a> <a id="921" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="923" href="QuasiinverseLemmas.html#923" class="Bound">ηf</a><a id="925" class="Symbol">)))</a> <a id="929" class="Symbol">(</a><a id="930" href="QuasiinverseLemmas.html#930" class="Bound">g</a> <a id="932" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="934" class="Symbol">(</a><a id="935" href="QuasiinverseLemmas.html#935" class="Bound">ig</a> <a id="938" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="940" class="Symbol">(</a><a id="941" href="QuasiinverseLemmas.html#941" class="Bound">εg</a> <a id="944" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="946" href="QuasiinverseLemmas.html#946" class="Bound">ηg</a><a id="948" class="Symbol">)))</a> <a id="952" class="Symbol">=</a> <a id="954" class="Symbol">(</a><a id="955" href="QuasiinverseLemmas.html#930" class="Bound">g</a> <a id="957" href="BasicFunctions.html#1026" class="Function Operator">∘</a> <a id="959" href="QuasiinverseLemmas.html#907" class="Bound">f</a><a id="960" class="Symbol">)</a> <a id="962" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="964" class="Symbol">((</a><a id="966" href="QuasiinverseLemmas.html#912" class="Bound">if</a> <a id="969" href="BasicFunctions.html#1026" class="Function Operator">∘</a> <a id="971" href="QuasiinverseLemmas.html#935" class="Bound">ig</a><a id="973" class="Symbol">)</a> <a id="975" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a>
     <a id="982" class="Symbol">(</a> <a id="984" class="Symbol">(λ</a> <a id="987" href="QuasiinverseLemmas.html#987" class="Bound">x</a> <a id="989" class="Symbol">→</a> <a id="991" href="AlgebraOnPaths.html#395" class="Function">ap</a> <a id="994" href="QuasiinverseLemmas.html#930" class="Bound">g</a> <a id="996" class="Symbol">(</a><a id="997" href="QuasiinverseLemmas.html#918" class="Bound">εf</a> <a id="1000" class="Symbol">(</a><a id="1001" href="QuasiinverseLemmas.html#935" class="Bound">ig</a> <a id="1004" href="QuasiinverseLemmas.html#987" class="Bound">x</a><a id="1005" class="Symbol">))</a> <a id="1008" href="BasicFunctions.html#3710" class="Function Operator">·</a> <a id="1010" href="QuasiinverseLemmas.html#941" class="Bound">εg</a> <a id="1013" href="QuasiinverseLemmas.html#987" class="Bound">x</a><a id="1014" class="Symbol">)</a>
     <a id="1021" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a>  <a id="1024" class="Symbol">λ</a> <a id="1026" href="QuasiinverseLemmas.html#1026" class="Bound">x</a> <a id="1028" class="Symbol">→</a> <a id="1030" href="AlgebraOnPaths.html#395" class="Function">ap</a> <a id="1033" href="QuasiinverseLemmas.html#912" class="Bound">if</a> <a id="1036" class="Symbol">(</a><a id="1037" href="QuasiinverseLemmas.html#946" class="Bound">ηg</a> <a id="1040" class="Symbol">(</a><a id="1041" href="QuasiinverseLemmas.html#907" class="Bound">f</a> <a id="1043" href="QuasiinverseLemmas.html#1026" class="Bound">x</a><a id="1044" class="Symbol">))</a> <a id="1047" href="BasicFunctions.html#3710" class="Function Operator">·</a> <a id="1049" href="QuasiinverseLemmas.html#923" class="Bound">ηf</a> <a id="1052" href="QuasiinverseLemmas.html#1026" class="Bound">x</a><a id="1053" class="Symbol">))</a>
</pre>

{: .foldable until="6" }
<pre class="Agda">
  <a id="1108" class="Comment">-- Lemma.</a>
  <a id="qinv-inv"></a><a id="1120" href="QuasiinverseLemmas.html#1120" class="Function">qinv-inv</a>
    <a id="1133" class="Symbol">:</a> <a id="1135" class="Symbol">∀</a> <a id="1137" class="Symbol">{</a><a id="1138" href="QuasiinverseLemmas.html#1138" class="Bound">ℓ₁</a> <a id="1141" href="QuasiinverseLemmas.html#1141" class="Bound">ℓ₂</a><a id="1143" class="Symbol">}</a> <a id="1145" class="Symbol">{</a><a id="1146" href="QuasiinverseLemmas.html#1146" class="Bound">A</a> <a id="1148" class="Symbol">:</a> <a id="1150" href="Intro.html#1720" class="Function">Type</a> <a id="1155" href="QuasiinverseLemmas.html#1138" class="Bound">ℓ₁</a><a id="1157" class="Symbol">}{</a><a id="1159" href="QuasiinverseLemmas.html#1159" class="Bound">B</a> <a id="1161" class="Symbol">:</a> <a id="1163" href="Intro.html#1720" class="Function">Type</a> <a id="1168" href="QuasiinverseLemmas.html#1141" class="Bound">ℓ₂</a><a id="1170" class="Symbol">}</a>
    <a id="1176" class="Symbol">→</a> <a id="1178" href="BasicTypes.html#1690" class="Function">Σ</a> <a id="1180" class="Symbol">(</a><a id="1181" href="QuasiinverseLemmas.html#1146" class="Bound">A</a> <a id="1183" class="Symbol">→</a> <a id="1185" href="QuasiinverseLemmas.html#1159" class="Bound">B</a><a id="1186" class="Symbol">)</a> <a id="1188" href="QuasiinverseType.html#704" class="Function">qinv</a>
    <a id="1197" class="Comment">----------------</a>
    <a id="1218" class="Symbol">→</a> <a id="1220" href="BasicTypes.html#1690" class="Function">Σ</a> <a id="1222" class="Symbol">(</a><a id="1223" href="QuasiinverseLemmas.html#1159" class="Bound">B</a> <a id="1225" class="Symbol">→</a> <a id="1227" href="QuasiinverseLemmas.html#1146" class="Bound">A</a><a id="1228" class="Symbol">)</a> <a id="1230" href="QuasiinverseType.html#704" class="Function">qinv</a>

  <a id="1238" href="QuasiinverseLemmas.html#1120" class="Function">qinv-inv</a> <a id="1247" class="Symbol">(</a><a id="1248" href="QuasiinverseLemmas.html#1248" class="Bound">f</a> <a id="1250" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="1252" class="Symbol">(</a><a id="1253" href="QuasiinverseLemmas.html#1253" class="Bound">g</a> <a id="1255" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="1257" class="Symbol">(</a><a id="1258" href="QuasiinverseLemmas.html#1258" class="Bound">ε</a> <a id="1260" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="1262" href="QuasiinverseLemmas.html#1262" class="Bound">η</a><a id="1263" class="Symbol">)))</a> <a id="1267" class="Symbol">=</a> <a id="1269" href="QuasiinverseLemmas.html#1253" class="Bound">g</a> <a id="1271" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="1273" class="Symbol">(</a><a id="1274" href="QuasiinverseLemmas.html#1248" class="Bound">f</a> <a id="1276" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="1278" class="Symbol">(</a><a id="1279" href="QuasiinverseLemmas.html#1262" class="Bound">η</a> <a id="1281" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="1283" href="QuasiinverseLemmas.html#1258" class="Bound">ε</a><a id="1284" class="Symbol">))</a>
</pre>

Equivalence types are equivalence relations.

{: .foldable until="4" }
<pre class="Agda">
  <a id="idEqv"></a><a id="1385" href="QuasiinverseLemmas.html#1385" class="Function">idEqv</a>
    <a id="1395" class="Symbol">:</a> <a id="1397" class="Symbol">∀</a> <a id="1399" class="Symbol">{</a><a id="1400" href="QuasiinverseLemmas.html#1400" class="Bound">ℓ</a><a id="1401" class="Symbol">}</a> <a id="1403" class="Symbol">{</a><a id="1404" href="QuasiinverseLemmas.html#1404" class="Bound">A</a> <a id="1406" class="Symbol">:</a> <a id="1408" href="Intro.html#1720" class="Function">Type</a> <a id="1413" href="QuasiinverseLemmas.html#1400" class="Bound">ℓ</a><a id="1414" class="Symbol">}</a>
    <a id="1420" class="Comment">-------</a>
    <a id="1432" class="Symbol">→</a> <a id="1434" href="QuasiinverseLemmas.html#1404" class="Bound">A</a> <a id="1436" href="EquivalenceType.html#1095" class="Function Operator">≃</a> <a id="1438" href="QuasiinverseLemmas.html#1404" class="Bound">A</a>

  <a id="1443" href="QuasiinverseLemmas.html#1385" class="Function">idEqv</a> <a id="1449" class="Symbol">=</a> <a id="1451" href="BasicFunctions.html#386" class="Function">id</a> <a id="1454" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="1456" class="Symbol">λ</a> <a id="1458" href="QuasiinverseLemmas.html#1458" class="Bound">a</a> <a id="1460" class="Symbol">→</a> <a id="1462" class="Symbol">(</a><a id="1463" href="QuasiinverseLemmas.html#1458" class="Bound">a</a> <a id="1465" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="1467" href="BasicTypes.html#4573" class="Function">refl</a> <a id="1472" href="QuasiinverseLemmas.html#1458" class="Bound">a</a><a id="1473" class="Symbol">)</a> <a id="1475" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="1477" class="Symbol">λ</a> <a id="1479" class="Symbol">{</a> <a id="1481" class="Symbol">(_</a> <a id="1484" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="1486" href="BasicTypes.html#4336" class="InductiveConstructor">idp</a><a id="1489" class="Symbol">)</a> <a id="1491" class="Symbol">→</a> <a id="1493" href="BasicTypes.html#4573" class="Function">refl</a> <a id="1498" class="Symbol">(</a><a id="1499" href="QuasiinverseLemmas.html#1458" class="Bound">a</a> <a id="1501" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="1503" href="BasicTypes.html#4573" class="Function">refl</a> <a id="1508" href="QuasiinverseLemmas.html#1458" class="Bound">a</a><a id="1509" class="Symbol">)</a> <a id="1511" class="Symbol">}</a>

  <a id="1516" class="Comment">-- Synonyms</a>
  <a id="≃-refl"></a><a id="1530" href="QuasiinverseLemmas.html#1530" class="Function">≃-refl</a> <a id="1537" class="Symbol">=</a> <a id="1539" href="QuasiinverseLemmas.html#1385" class="Function">idEqv</a>
  <a id="A≃A"></a><a id="1547" href="QuasiinverseLemmas.html#1547" class="Function">A≃A</a>    <a id="1554" class="Symbol">=</a> <a id="1556" href="QuasiinverseLemmas.html#1385" class="Function">idEqv</a>
</pre>

{: .foldable until="7"}
<pre class="Agda">
  <a id="1613" class="Comment">-- Lemma.</a>
  <a id="≃-trans"></a><a id="1625" href="QuasiinverseLemmas.html#1625" class="Function">≃-trans</a>
    <a id="1637" class="Symbol">:</a> <a id="1639" class="Symbol">∀</a> <a id="1641" class="Symbol">{</a><a id="1642" href="QuasiinverseLemmas.html#1642" class="Bound">ℓ₁</a> <a id="1645" href="QuasiinverseLemmas.html#1645" class="Bound">ℓ₂</a> <a id="1648" href="QuasiinverseLemmas.html#1648" class="Bound">ℓ₃</a><a id="1650" class="Symbol">}</a> <a id="1652" class="Symbol">{</a><a id="1653" href="QuasiinverseLemmas.html#1653" class="Bound">A</a> <a id="1655" class="Symbol">:</a> <a id="1657" href="Intro.html#1720" class="Function">Type</a> <a id="1662" href="QuasiinverseLemmas.html#1642" class="Bound">ℓ₁</a><a id="1664" class="Symbol">}{</a><a id="1666" href="QuasiinverseLemmas.html#1666" class="Bound">B</a> <a id="1668" class="Symbol">:</a> <a id="1670" href="Intro.html#1720" class="Function">Type</a> <a id="1675" href="QuasiinverseLemmas.html#1645" class="Bound">ℓ₂</a><a id="1677" class="Symbol">}{</a><a id="1679" href="QuasiinverseLemmas.html#1679" class="Bound">C</a> <a id="1681" class="Symbol">:</a> <a id="1683" href="Intro.html#1720" class="Function">Type</a> <a id="1688" href="QuasiinverseLemmas.html#1648" class="Bound">ℓ₃</a><a id="1690" class="Symbol">}</a>
    <a id="1696" class="Symbol">→</a> <a id="1698" href="QuasiinverseLemmas.html#1653" class="Bound">A</a> <a id="1700" href="EquivalenceType.html#1095" class="Function Operator">≃</a> <a id="1702" href="QuasiinverseLemmas.html#1666" class="Bound">B</a>
    <a id="1708" class="Symbol">→</a> <a id="1710" href="QuasiinverseLemmas.html#1666" class="Bound">B</a> <a id="1712" href="EquivalenceType.html#1095" class="Function Operator">≃</a> <a id="1714" href="QuasiinverseLemmas.html#1679" class="Bound">C</a>
    <a id="1720" class="Comment">-------</a>
    <a id="1732" class="Symbol">→</a> <a id="1734" href="QuasiinverseLemmas.html#1653" class="Bound">A</a> <a id="1736" href="EquivalenceType.html#1095" class="Function Operator">≃</a> <a id="1738" href="QuasiinverseLemmas.html#1679" class="Bound">C</a>

  <a id="1743" href="QuasiinverseLemmas.html#1625" class="Function">≃-trans</a> <a id="1751" class="Symbol">{</a><a id="1752" class="Argument">A</a> <a id="1754" class="Symbol">=</a> <a id="1756" href="QuasiinverseLemmas.html#1756" class="Bound">A</a><a id="1757" class="Symbol">}</a> <a id="1759" class="Symbol">{</a><a id="1760" class="Argument">C</a> <a id="1762" class="Symbol">=</a> <a id="1764" href="QuasiinverseLemmas.html#1764" class="Bound">C</a><a id="1765" class="Symbol">}</a> <a id="1767" href="QuasiinverseLemmas.html#1767" class="Bound">eq-f</a> <a id="1772" href="QuasiinverseLemmas.html#1772" class="Bound">eq-g</a> <a id="1777" class="Symbol">=</a> <a id="1779" href="QuasiinverseType.html#3107" class="Function">qinv-≃</a> <a id="1786" class="Symbol">(</a><a id="1787" href="BasicTypes.html#1598" class="Field">π₁</a> <a id="1790" href="QuasiinverseLemmas.html#1822" class="Function">qcomp</a><a id="1795" class="Symbol">)</a> <a id="1797" class="Symbol">(</a><a id="1798" href="BasicTypes.html#1609" class="Field">π₂</a> <a id="1801" href="QuasiinverseLemmas.html#1822" class="Function">qcomp</a><a id="1806" class="Symbol">)</a>
   <a id="1811" class="Keyword">where</a>
     <a id="1822" href="QuasiinverseLemmas.html#1822" class="Function">qcomp</a> <a id="1828" class="Symbol">:</a> <a id="1830" href="BasicTypes.html#1690" class="Function">Σ</a> <a id="1832" class="Symbol">(</a><a id="1833" href="QuasiinverseLemmas.html#1756" class="Bound">A</a> <a id="1835" class="Symbol">→</a> <a id="1837" href="QuasiinverseLemmas.html#1764" class="Bound">C</a><a id="1838" class="Symbol">)</a> <a id="1840" href="QuasiinverseType.html#704" class="Function">qinv</a>
     <a id="1850" href="QuasiinverseLemmas.html#1822" class="Function">qcomp</a> <a id="1856" class="Symbol">=</a> <a id="1858" href="QuasiinverseLemmas.html#740" class="Function">qinv-comp</a> <a id="1868" class="Symbol">(</a><a id="1869" href="QuasiinverseType.html#3182" class="Function">≃-qinv</a> <a id="1876" href="QuasiinverseLemmas.html#1767" class="Bound">eq-f</a><a id="1880" class="Symbol">)</a> <a id="1882" class="Symbol">(</a><a id="1883" href="QuasiinverseType.html#3182" class="Function">≃-qinv</a> <a id="1890" href="QuasiinverseLemmas.html#1772" class="Bound">eq-g</a><a id="1894" class="Symbol">)</a>

  <a id="1899" class="Comment">-- Synonyms</a>
  <a id="compEqv"></a><a id="1913" href="QuasiinverseLemmas.html#1913" class="Function">compEqv</a> <a id="1921" class="Symbol">=</a> <a id="1923" href="QuasiinverseLemmas.html#1625" class="Function">≃-trans</a>
</pre>

{: .foldable until="5"}
<pre class="Agda">
  <a id="≃-sym"></a><a id="1982" href="QuasiinverseLemmas.html#1982" class="Function">≃-sym</a>
    <a id="1992" class="Symbol">:</a> <a id="1994" class="Symbol">∀</a> <a id="1996" class="Symbol">{</a><a id="1997" href="QuasiinverseLemmas.html#1997" class="Bound">ℓ₁</a> <a id="2000" href="QuasiinverseLemmas.html#2000" class="Bound">ℓ₂</a><a id="2002" class="Symbol">}</a> <a id="2004" class="Symbol">{</a><a id="2005" href="QuasiinverseLemmas.html#2005" class="Bound">A</a> <a id="2007" class="Symbol">:</a> <a id="2009" href="Intro.html#1720" class="Function">Type</a> <a id="2014" href="QuasiinverseLemmas.html#1997" class="Bound">ℓ₁</a><a id="2016" class="Symbol">}{</a><a id="2018" href="QuasiinverseLemmas.html#2018" class="Bound">B</a> <a id="2020" class="Symbol">:</a> <a id="2022" href="Intro.html#1720" class="Function">Type</a> <a id="2027" href="QuasiinverseLemmas.html#2000" class="Bound">ℓ₂</a><a id="2029" class="Symbol">}</a>
    <a id="2035" class="Symbol">→</a> <a id="2037" href="QuasiinverseLemmas.html#2005" class="Bound">A</a> <a id="2039" href="EquivalenceType.html#1095" class="Function Operator">≃</a> <a id="2041" href="QuasiinverseLemmas.html#2018" class="Bound">B</a>
    <a id="2047" class="Comment">-------</a>
    <a id="2059" class="Symbol">→</a> <a id="2061" href="QuasiinverseLemmas.html#2018" class="Bound">B</a> <a id="2063" href="EquivalenceType.html#1095" class="Function Operator">≃</a> <a id="2065" href="QuasiinverseLemmas.html#2005" class="Bound">A</a>

  <a id="2070" href="QuasiinverseLemmas.html#1982" class="Function">≃-sym</a> <a id="2076" class="Symbol">{</a><a id="2077" href="QuasiinverseLemmas.html#2077" class="Bound">ℓ</a><a id="2078" class="Symbol">}{_}</a> <a id="2083" class="Symbol">{</a><a id="2084" href="QuasiinverseLemmas.html#2084" class="Bound">A</a><a id="2085" class="Symbol">}</a> <a id="2087" class="Symbol">{</a><a id="2088" href="QuasiinverseLemmas.html#2088" class="Bound">B</a><a id="2089" class="Symbol">}</a> <a id="2091" href="QuasiinverseLemmas.html#2091" class="Bound">eq-f</a> <a id="2096" class="Symbol">=</a> <a id="2098" href="QuasiinverseType.html#3107" class="Function">qinv-≃</a> <a id="2105" class="Symbol">(</a><a id="2106" href="BasicTypes.html#1598" class="Field">π₁</a> <a id="2109" href="QuasiinverseLemmas.html#2141" class="Function">qcinv</a><a id="2114" class="Symbol">)</a> <a id="2116" class="Symbol">(</a><a id="2117" href="BasicTypes.html#1609" class="Field">π₂</a> <a id="2120" href="QuasiinverseLemmas.html#2141" class="Function">qcinv</a><a id="2125" class="Symbol">)</a>
   <a id="2130" class="Keyword">where</a>
     <a id="2141" href="QuasiinverseLemmas.html#2141" class="Function">qcinv</a> <a id="2147" class="Symbol">:</a> <a id="2149" href="BasicTypes.html#1690" class="Function">Σ</a> <a id="2151" class="Symbol">(</a><a id="2152" href="QuasiinverseLemmas.html#2088" class="Bound">B</a> <a id="2154" class="Symbol">→</a> <a id="2156" href="QuasiinverseLemmas.html#2084" class="Bound">A</a><a id="2157" class="Symbol">)</a> <a id="2159" href="QuasiinverseType.html#704" class="Function">qinv</a>
     <a id="2169" href="QuasiinverseLemmas.html#2141" class="Function">qcinv</a> <a id="2175" class="Symbol">=</a> <a id="2177" href="QuasiinverseLemmas.html#1120" class="Function">qinv-inv</a> <a id="2186" class="Symbol">(</a><a id="2187" href="QuasiinverseType.html#3182" class="Function">≃-qinv</a> <a id="2194" href="QuasiinverseLemmas.html#2091" class="Bound">eq-f</a><a id="2198" class="Symbol">)</a>

  <a id="2203" class="Comment">-- Synonyms</a>
  <a id="invEqv"></a><a id="2217" href="QuasiinverseLemmas.html#2217" class="Function">invEqv</a> <a id="2224" class="Symbol">=</a> <a id="2226" href="QuasiinverseLemmas.html#1982" class="Function">≃-sym</a>
  <a id="≃-flip"></a><a id="2234" href="QuasiinverseLemmas.html#2234" class="Function">≃-flip</a> <a id="2241" class="Symbol">=</a> <a id="2243" href="QuasiinverseLemmas.html#1982" class="Function">≃-sym</a>
</pre>
