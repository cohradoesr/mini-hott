---
layout: page
title: "Equivalence Type"
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
<a id="190" class="Symbol">{-#</a> <a id="194" class="Keyword">OPTIONS</a> <a id="202" class="Pragma">--without-K</a> <a id="214" class="Symbol">#-}</a>
<a id="218" class="Keyword">open</a> <a id="223" class="Keyword">import</a> <a id="230" href="BasicTypes.html" class="Module">BasicTypes</a>
<a id="241" class="Keyword">open</a> <a id="246" class="Keyword">import</a> <a id="253" href="HLevelTypes.html" class="Module">HLevelTypes</a>
<a id="265" class="Keyword">open</a> <a id="270" class="Keyword">import</a> <a id="277" href="FibreType.html" class="Module">FibreType</a>

<a id="288" class="Keyword">open</a> <a id="293" class="Keyword">import</a> <a id="300" href="Transport.html" class="Module">Transport</a>
<a id="310" class="Keyword">open</a> <a id="315" class="Keyword">import</a> <a id="322" href="HomotopyType.html" class="Module">HomotopyType</a>

</pre>
</div>

<pre class="Agda">
<a id="368" class="Keyword">module</a> <a id="375" href="EquivalenceType.html" class="Module">EquivalenceType</a> <a id="391" class="Keyword">where</a>

</pre>

## Equivalences

### Contractible maps

A map is *contractible* if the fiber in any point is contractible, that is, each
element has a unique preimagen.

<pre class="Agda">
<a id="577" class="Comment">-- Def.</a>
<a id="isContrMap"></a><a id="585" href="EquivalenceType.html#585" class="Function">isContrMap</a>
  <a id="598" class="Symbol">:</a> <a id="600" class="Symbol">∀</a> <a id="602" class="Symbol">{</a><a id="603" href="EquivalenceType.html#603" class="Bound">A</a> <a id="605" class="Symbol">:</a> <a id="607" href="Intro.html#1813" class="Function">Type</a> <a id="612" href="Intro.html#2255" class="Generalizable">ℓᵢ</a><a id="614" class="Symbol">}</a> <a id="616" class="Symbol">{</a><a id="617" href="EquivalenceType.html#617" class="Bound">B</a> <a id="619" class="Symbol">:</a> <a id="621" href="Intro.html#1813" class="Function">Type</a> <a id="626" href="Intro.html#2258" class="Generalizable">ℓⱼ</a><a id="628" class="Symbol">}</a>
  <a id="632" class="Symbol">→</a> <a id="634" class="Symbol">(</a><a id="635" href="EquivalenceType.html#635" class="Bound">f</a> <a id="637" class="Symbol">:</a> <a id="639" href="EquivalenceType.html#603" class="Bound">A</a> <a id="641" class="Symbol">→</a> <a id="643" href="EquivalenceType.html#617" class="Bound">B</a><a id="644" class="Symbol">)</a>
  <a id="648" class="Symbol">→</a> <a id="650" href="Intro.html#1813" class="Function">Type</a> <a id="655" class="Symbol">(</a><a id="656" href="Intro.html#2255" class="Generalizable">ℓᵢ</a> <a id="659" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="661" href="Intro.html#2258" class="Generalizable">ℓⱼ</a><a id="663" class="Symbol">)</a>

<a id="666" href="EquivalenceType.html#585" class="Function">isContrMap</a> <a id="677" class="Symbol">{</a><a id="678" class="Argument">B</a> <a id="680" class="Symbol">=</a> <a id="682" href="EquivalenceType.html#682" class="Bound">B</a><a id="683" class="Symbol">}</a> <a id="685" href="EquivalenceType.html#685" class="Bound">f</a> <a id="687" class="Symbol">=</a> <a id="689" class="Symbol">(</a><a id="690" href="EquivalenceType.html#690" class="Bound">b</a> <a id="692" class="Symbol">:</a> <a id="694" href="EquivalenceType.html#682" class="Bound">B</a><a id="695" class="Symbol">)</a> <a id="697" class="Symbol">→</a> <a id="699" href="HLevelTypes.html#620" class="Function">isContr</a> <a id="707" class="Symbol">(</a><a id="708" href="FibreType.html#547" class="Function">fib</a> <a id="712" href="EquivalenceType.html#685" class="Bound">f</a> <a id="714" href="EquivalenceType.html#690" class="Bound">b</a><a id="715" class="Symbol">)</a>
</pre>

There exists an equivalence between two types if there exists a
contractible function between them.


<pre class="Agda">
<a id="isEquiv"></a><a id="844" href="EquivalenceType.html#844" class="Function">isEquiv</a>
  <a id="854" class="Symbol">:</a> <a id="856" class="Symbol">{</a><a id="857" href="EquivalenceType.html#857" class="Bound">A</a> <a id="859" class="Symbol">:</a> <a id="861" href="Intro.html#1813" class="Function">Type</a> <a id="866" href="Intro.html#2255" class="Generalizable">ℓᵢ</a><a id="868" class="Symbol">}</a> <a id="870" class="Symbol">{</a><a id="871" href="EquivalenceType.html#871" class="Bound">B</a> <a id="873" class="Symbol">:</a> <a id="875" href="Intro.html#1813" class="Function">Type</a> <a id="880" href="Intro.html#2258" class="Generalizable">ℓⱼ</a><a id="882" class="Symbol">}</a>
  <a id="886" class="Symbol">→</a>  <a id="889" class="Symbol">(</a><a id="890" href="EquivalenceType.html#890" class="Bound">f</a> <a id="892" class="Symbol">:</a> <a id="894" href="EquivalenceType.html#857" class="Bound">A</a> <a id="896" class="Symbol">→</a> <a id="898" href="EquivalenceType.html#871" class="Bound">B</a><a id="899" class="Symbol">)</a>
  <a id="903" class="Symbol">→</a> <a id="905" href="Intro.html#1813" class="Function">Type</a> <a id="910" class="Symbol">(</a><a id="911" href="Intro.html#2255" class="Generalizable">ℓᵢ</a> <a id="914" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="916" href="Intro.html#2258" class="Generalizable">ℓⱼ</a><a id="918" class="Symbol">)</a>

<a id="921" href="EquivalenceType.html#844" class="Function">isEquiv</a> <a id="929" href="EquivalenceType.html#929" class="Bound">f</a> <a id="931" class="Symbol">=</a> <a id="933" href="EquivalenceType.html#585" class="Function">isContrMap</a> <a id="944" href="EquivalenceType.html#929" class="Bound">f</a>
</pre>


### Equivalence Type

<pre class="Agda">
<a id="_≃_"></a><a id="994" href="EquivalenceType.html#994" class="Function Operator">_≃_</a>
  <a id="1000" class="Symbol">:</a> <a id="1002" class="Symbol">(</a><a id="1003" href="EquivalenceType.html#1003" class="Bound">A</a> <a id="1005" class="Symbol">:</a> <a id="1007" href="Intro.html#1813" class="Function">Type</a> <a id="1012" href="Intro.html#2255" class="Generalizable">ℓᵢ</a><a id="1014" class="Symbol">)</a> <a id="1016" class="Symbol">(</a><a id="1017" href="EquivalenceType.html#1017" class="Bound">B</a> <a id="1019" class="Symbol">:</a> <a id="1021" href="Intro.html#1813" class="Function">Type</a> <a id="1026" href="Intro.html#2258" class="Generalizable">ℓⱼ</a><a id="1028" class="Symbol">)</a>
  <a id="1032" class="Symbol">→</a> <a id="1034" href="Intro.html#1813" class="Function">Type</a> <a id="1039" class="Symbol">(</a><a id="1040" href="Intro.html#2255" class="Generalizable">ℓᵢ</a> <a id="1043" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="1045" href="Intro.html#2258" class="Generalizable">ℓⱼ</a><a id="1047" class="Symbol">)</a>

<a id="1050" href="EquivalenceType.html#1050" class="Bound">A</a> <a id="1052" href="EquivalenceType.html#994" class="Function Operator">≃</a> <a id="1054" href="EquivalenceType.html#1054" class="Bound">B</a> <a id="1056" class="Symbol">=</a> <a id="1058" href="BasicTypes.html#1690" class="Function">Σ</a> <a id="1060" class="Symbol">(</a><a id="1061" href="EquivalenceType.html#1050" class="Bound">A</a> <a id="1063" class="Symbol">→</a> <a id="1065" href="EquivalenceType.html#1054" class="Bound">B</a><a id="1066" class="Symbol">)</a> <a id="1068" href="EquivalenceType.html#844" class="Function">isEquiv</a>
</pre>

<pre class="Agda">
<a id="1101" class="Keyword">module</a> <a id="EquivalenceMaps"></a><a id="1108" href="EquivalenceType.html#1108" class="Module">EquivalenceMaps</a> <a id="1124" class="Symbol">{</a><a id="1125" href="EquivalenceType.html#1125" class="Bound">A</a> <a id="1127" class="Symbol">:</a> <a id="1129" href="Intro.html#1813" class="Function">Type</a> <a id="1134" href="Intro.html#2255" class="Generalizable">ℓᵢ</a><a id="1136" class="Symbol">}</a> <a id="1138" class="Symbol">{</a><a id="1139" href="EquivalenceType.html#1139" class="Bound">B</a> <a id="1141" class="Symbol">:</a> <a id="1143" href="Intro.html#1813" class="Function">Type</a> <a id="1148" href="Intro.html#2258" class="Generalizable">ℓⱼ</a><a id="1150" class="Symbol">}</a> <a id="1152" class="Keyword">where</a>
</pre>

<pre class="Agda">
  <a id="EquivalenceMaps.lemap"></a><a id="1185" href="EquivalenceType.html#1185" class="Function">lemap</a>
    <a id="1195" class="Symbol">:</a> <a id="1197" href="EquivalenceType.html#1125" class="Bound">A</a> <a id="1199" href="EquivalenceType.html#994" class="Function Operator">≃</a> <a id="1201" href="EquivalenceType.html#1139" class="Bound">B</a> <a id="1203" class="Symbol">→</a> <a id="1205" class="Symbol">(</a><a id="1206" href="EquivalenceType.html#1125" class="Bound">A</a> <a id="1208" class="Symbol">→</a> <a id="1210" href="EquivalenceType.html#1139" class="Bound">B</a><a id="1211" class="Symbol">)</a>

  <a id="1216" href="EquivalenceType.html#1185" class="Function">lemap</a> <a id="1222" class="Symbol">=</a> <a id="1224" href="BasicTypes.html#1598" class="Field">π₁</a>
</pre>

Synonyms:

<pre class="Agda">
  <a id="EquivalenceMaps.≃-to-→"></a><a id="1265" href="EquivalenceType.html#1265" class="Function">≃-to-→</a> <a id="1272" class="Symbol">=</a> <a id="1274" href="EquivalenceType.html#1185" class="Function">lemap</a>
  <a id="EquivalenceMaps.fun≃"></a><a id="1282" href="EquivalenceType.html#1282" class="Function">fun≃</a>   <a id="1289" class="Symbol">=</a> <a id="1291" href="EquivalenceType.html#1185" class="Function">lemap</a>
  <a id="EquivalenceMaps._∙"></a><a id="1299" href="EquivalenceType.html#1299" class="Function Operator">_∙</a>     <a id="1306" class="Symbol">=</a> <a id="1308" href="EquivalenceType.html#1185" class="Function">lemap</a>
  <a id="EquivalenceMaps._∙→"></a><a id="1316" href="EquivalenceType.html#1316" class="Function Operator">_∙→</a>    <a id="1323" class="Symbol">=</a> <a id="1325" href="EquivalenceType.html#1185" class="Function">lemap</a>
  <a id="EquivalenceMaps.apply"></a><a id="1333" href="EquivalenceType.html#1333" class="Function">apply</a>  <a id="1340" class="Symbol">=</a> <a id="1342" href="EquivalenceType.html#1185" class="Function">lemap</a>

  <a id="1351" class="Keyword">infixl</a> <a id="1358" class="Number">70</a> <a id="1361" href="EquivalenceType.html#1299" class="Function Operator">_∙</a> <a id="1364" href="EquivalenceType.html#1316" class="Function Operator">_∙→</a>
</pre>

<pre class="Agda">
  <a id="EquivalenceMaps.remap"></a><a id="1395" href="EquivalenceType.html#1395" class="Function">remap</a> <a id="1401" class="Symbol">:</a> <a id="1403" href="EquivalenceType.html#1125" class="Bound">A</a> <a id="1405" href="EquivalenceType.html#994" class="Function Operator">≃</a> <a id="1407" href="EquivalenceType.html#1139" class="Bound">B</a> <a id="1409" class="Symbol">→</a> <a id="1411" class="Symbol">(</a><a id="1412" href="EquivalenceType.html#1139" class="Bound">B</a> <a id="1414" class="Symbol">→</a> <a id="1416" href="EquivalenceType.html#1125" class="Bound">A</a><a id="1417" class="Symbol">)</a>
  <a id="1421" href="EquivalenceType.html#1395" class="Function">remap</a> <a id="1427" class="Symbol">(</a><a id="1428" href="EquivalenceType.html#1428" class="Bound">f</a> <a id="1430" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="1432" href="EquivalenceType.html#1432" class="Bound">contrf</a><a id="1438" class="Symbol">)</a> <a id="1440" href="EquivalenceType.html#1440" class="Bound">b</a> <a id="1442" class="Symbol">=</a> <a id="1444" href="BasicTypes.html#1598" class="Field">π₁</a> <a id="1447" class="Symbol">(</a><a id="1448" href="BasicTypes.html#1598" class="Field">π₁</a> <a id="1451" class="Symbol">(</a><a id="1452" href="EquivalenceType.html#1432" class="Bound">contrf</a> <a id="1459" href="EquivalenceType.html#1440" class="Bound">b</a><a id="1460" class="Symbol">))</a>
</pre>

<pre class="Agda">
  <a id="EquivalenceMaps.≃-to-←"></a><a id="1490" href="EquivalenceType.html#1490" class="Function">≃-to-←</a>  <a id="1498" class="Symbol">=</a> <a id="1500" href="EquivalenceType.html#1395" class="Function">remap</a>
  <a id="EquivalenceMaps.invfun≃"></a><a id="1508" href="EquivalenceType.html#1508" class="Function">invfun≃</a> <a id="1516" class="Symbol">=</a> <a id="1518" href="EquivalenceType.html#1395" class="Function">remap</a>
  <a id="EquivalenceMaps._∙←"></a><a id="1526" href="EquivalenceType.html#1526" class="Function Operator">_∙←</a>     <a id="1534" class="Symbol">=</a> <a id="1536" href="EquivalenceType.html#1395" class="Function">remap</a>

  <a id="1545" class="Keyword">infixl</a> <a id="1552" class="Number">70</a> <a id="1555" href="EquivalenceType.html#1526" class="Function Operator">_∙←</a>
</pre>

<pre class="Agda">
  <a id="1586" class="Comment">-- The maps of an equivalence are inverses in particular</a>
  <a id="EquivalenceMaps.lrmap-inverse"></a><a id="1645" href="EquivalenceType.html#1645" class="Function">lrmap-inverse</a>
    <a id="1663" class="Symbol">:</a> <a id="1665" class="Symbol">(</a><a id="1666" href="EquivalenceType.html#1666" class="Bound">e</a> <a id="1668" class="Symbol">:</a> <a id="1670" href="EquivalenceType.html#1125" class="Bound">A</a> <a id="1672" href="EquivalenceType.html#994" class="Function Operator">≃</a> <a id="1674" href="EquivalenceType.html#1139" class="Bound">B</a><a id="1675" class="Symbol">)</a> <a id="1677" class="Symbol">→</a> <a id="1679" class="Symbol">{</a><a id="1680" href="EquivalenceType.html#1680" class="Bound">b</a> <a id="1682" class="Symbol">:</a> <a id="1684" href="EquivalenceType.html#1139" class="Bound">B</a><a id="1685" class="Symbol">}</a>
    <a id="1691" class="Comment">-----------------------</a>
    <a id="1719" class="Symbol">→</a> <a id="1721" class="Symbol">(</a><a id="1722" href="EquivalenceType.html#1666" class="Bound">e</a> <a id="1724" href="EquivalenceType.html#1316" class="Function Operator">∙→</a><a id="1726" class="Symbol">)</a> <a id="1728" class="Symbol">((</a><a id="1730" href="EquivalenceType.html#1666" class="Bound">e</a> <a id="1732" href="EquivalenceType.html#1526" class="Function Operator">∙←</a><a id="1734" class="Symbol">)</a> <a id="1736" href="EquivalenceType.html#1680" class="Bound">b</a><a id="1737" class="Symbol">)</a> <a id="1739" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="1742" href="EquivalenceType.html#1680" class="Bound">b</a>
  <a id="1746" href="EquivalenceType.html#1645" class="Function">lrmap-inverse</a> <a id="1760" class="Symbol">(</a><a id="1761" href="EquivalenceType.html#1761" class="Bound">f</a> <a id="1763" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="1765" href="EquivalenceType.html#1765" class="Bound">eqf</a><a id="1768" class="Symbol">)</a> <a id="1770" class="Symbol">{</a><a id="1771" href="EquivalenceType.html#1771" class="Bound">b</a><a id="1772" class="Symbol">}</a> <a id="1774" class="Symbol">=</a> <a id="1776" href="FibreType.html#688" class="Function">fib-eq</a> <a id="1783" class="Symbol">(</a><a id="1784" href="BasicTypes.html#1598" class="Field">π₁</a> <a id="1787" class="Symbol">(</a><a id="1788" href="EquivalenceType.html#1765" class="Bound">eqf</a> <a id="1792" href="EquivalenceType.html#1771" class="Bound">b</a><a id="1793" class="Symbol">))</a>

  <a id="EquivalenceMaps.∙→∘∙←"></a><a id="1799" href="EquivalenceType.html#1799" class="Function">∙→∘∙←</a> <a id="1805" class="Symbol">=</a> <a id="1807" href="EquivalenceType.html#1645" class="Function">lrmap-inverse</a>
</pre>

<pre class="Agda">
  <a id="1848" class="Comment">-- Lem.</a>
  <a id="EquivalenceMaps.rlmap-inverse"></a><a id="1858" href="EquivalenceType.html#1858" class="Function">rlmap-inverse</a>
    <a id="1876" class="Symbol">:</a> <a id="1878" class="Symbol">(</a><a id="1879" href="EquivalenceType.html#1879" class="Bound">e</a> <a id="1881" class="Symbol">:</a> <a id="1883" href="EquivalenceType.html#1125" class="Bound">A</a> <a id="1885" href="EquivalenceType.html#994" class="Function Operator">≃</a> <a id="1887" href="EquivalenceType.html#1139" class="Bound">B</a><a id="1888" class="Symbol">)</a> <a id="1890" class="Symbol">→</a> <a id="1892" class="Symbol">{</a><a id="1893" href="EquivalenceType.html#1893" class="Bound">a</a> <a id="1895" class="Symbol">:</a> <a id="1897" href="EquivalenceType.html#1125" class="Bound">A</a><a id="1898" class="Symbol">}</a>
    <a id="1904" class="Comment">------------------------</a>
    <a id="1933" class="Symbol">→</a> <a id="1935" class="Symbol">(</a><a id="1936" href="EquivalenceType.html#1879" class="Bound">e</a> <a id="1938" href="EquivalenceType.html#1526" class="Function Operator">∙←</a><a id="1940" class="Symbol">)</a> <a id="1942" class="Symbol">((</a><a id="1944" href="EquivalenceType.html#1879" class="Bound">e</a> <a id="1946" href="EquivalenceType.html#1316" class="Function Operator">∙→</a><a id="1948" class="Symbol">)</a> <a id="1950" href="EquivalenceType.html#1893" class="Bound">a</a><a id="1951" class="Symbol">)</a> <a id="1953" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="1956" href="EquivalenceType.html#1893" class="Bound">a</a>

  <a id="1961" href="EquivalenceType.html#1858" class="Function">rlmap-inverse</a> <a id="1975" class="Symbol">(</a><a id="1976" href="EquivalenceType.html#1976" class="Bound">f</a> <a id="1978" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="1980" href="EquivalenceType.html#1980" class="Bound">eqf</a><a id="1983" class="Symbol">)</a> <a id="1985" class="Symbol">{</a><a id="1986" href="EquivalenceType.html#1986" class="Bound">a</a><a id="1987" class="Symbol">}</a> <a id="1989" class="Symbol">=</a> <a id="1991" href="AlgebraOnPaths.html#399" class="Function">ap</a> <a id="1994" href="BasicTypes.html#1598" class="Field">π₁</a> <a id="1997" class="Symbol">((</a><a id="1999" href="BasicTypes.html#1609" class="Field">π₂</a> <a id="2002" class="Symbol">(</a><a id="2003" href="EquivalenceType.html#1980" class="Bound">eqf</a> <a id="2007" class="Symbol">(</a><a id="2008" href="EquivalenceType.html#1976" class="Bound">f</a> <a id="2010" href="EquivalenceType.html#1986" class="Bound">a</a><a id="2011" class="Symbol">)))</a> <a id="2015" href="FibreType.html#913" class="Function">fib-image</a><a id="2024" class="Symbol">)</a>

  <a id="EquivalenceMaps.∙←∘∙→"></a><a id="2029" href="EquivalenceType.html#2029" class="Function">∙←∘∙→</a> <a id="2035" class="Symbol">=</a> <a id="2037" href="EquivalenceType.html#1858" class="Function">rlmap-inverse</a>
</pre>

<pre class="Agda">
  <a id="2078" class="Comment">-- Lem.</a>
  <a id="EquivalenceMaps.lrmap-inverse-h"></a><a id="2088" href="EquivalenceType.html#2088" class="Function">lrmap-inverse-h</a>
    <a id="2108" class="Symbol">:</a> <a id="2110" class="Symbol">(</a><a id="2111" href="EquivalenceType.html#2111" class="Bound">e</a> <a id="2113" class="Symbol">:</a> <a id="2115" href="EquivalenceType.html#1125" class="Bound">A</a> <a id="2117" href="EquivalenceType.html#994" class="Function Operator">≃</a> <a id="2119" href="EquivalenceType.html#1139" class="Bound">B</a><a id="2120" class="Symbol">)</a>
    <a id="2126" class="Comment">------------------------------</a>
    <a id="2161" class="Symbol">→</a> <a id="2163" class="Symbol">((</a><a id="2165" href="EquivalenceType.html#2111" class="Bound">e</a> <a id="2167" href="EquivalenceType.html#1316" class="Function Operator">∙→</a><a id="2169" class="Symbol">)</a> <a id="2171" href="BasicFunctions.html#1026" class="Function Operator">∘</a> <a id="2173" class="Symbol">(</a><a id="2174" href="EquivalenceType.html#2111" class="Bound">e</a> <a id="2176" href="EquivalenceType.html#1526" class="Function Operator">∙←</a><a id="2178" class="Symbol">))</a> <a id="2181" href="HomotopyType.html#1023" class="Function Operator">∼</a> <a id="2183" href="BasicFunctions.html#386" class="Function">id</a>
  <a id="2188" href="EquivalenceType.html#2088" class="Function">lrmap-inverse-h</a> <a id="2204" href="EquivalenceType.html#2204" class="Bound">e</a> <a id="2206" class="Symbol">=</a> <a id="2208" class="Symbol">λ</a> <a id="2210" href="EquivalenceType.html#2210" class="Bound">x</a> <a id="2212" class="Symbol">→</a> <a id="2214" href="EquivalenceType.html#1645" class="Function">lrmap-inverse</a> <a id="2228" href="EquivalenceType.html#2204" class="Bound">e</a> <a id="2230" class="Symbol">{</a><a id="2231" href="EquivalenceType.html#2210" class="Bound">x</a><a id="2232" class="Symbol">}</a>

  <a id="EquivalenceMaps.∙→∘∙←-h"></a><a id="2237" href="EquivalenceType.html#2237" class="Function">∙→∘∙←-h</a> <a id="2245" class="Symbol">=</a> <a id="2247" href="EquivalenceType.html#2088" class="Function">lrmap-inverse-h</a>
</pre>

<pre class="Agda">
  <a id="2290" class="Comment">-- Lem.</a>
  <a id="EquivalenceMaps.rlmap-inverse-h"></a><a id="2300" href="EquivalenceType.html#2300" class="Function">rlmap-inverse-h</a>
    <a id="2320" class="Symbol">:</a> <a id="2322" class="Symbol">(</a><a id="2323" href="EquivalenceType.html#2323" class="Bound">e</a> <a id="2325" class="Symbol">:</a> <a id="2327" href="EquivalenceType.html#1125" class="Bound">A</a> <a id="2329" href="EquivalenceType.html#994" class="Function Operator">≃</a> <a id="2331" href="EquivalenceType.html#1139" class="Bound">B</a><a id="2332" class="Symbol">)</a>
    <a id="2338" class="Comment">------------------------</a>
    <a id="2367" class="Symbol">→</a> <a id="2369" class="Symbol">((</a><a id="2371" href="EquivalenceType.html#2323" class="Bound">e</a> <a id="2373" href="EquivalenceType.html#1526" class="Function Operator">∙←</a><a id="2375" class="Symbol">)</a> <a id="2377" href="BasicFunctions.html#1026" class="Function Operator">∘</a> <a id="2379" class="Symbol">(</a><a id="2380" href="EquivalenceType.html#2323" class="Bound">e</a> <a id="2382" href="EquivalenceType.html#1316" class="Function Operator">∙→</a><a id="2384" class="Symbol">))</a> <a id="2387" href="HomotopyType.html#1023" class="Function Operator">∼</a> <a id="2389" href="BasicFunctions.html#386" class="Function">id</a>

  <a id="2395" href="EquivalenceType.html#2300" class="Function">rlmap-inverse-h</a> <a id="2411" href="EquivalenceType.html#2411" class="Bound">e</a> <a id="2413" class="Symbol">=</a> <a id="2415" class="Symbol">λ</a> <a id="2417" href="EquivalenceType.html#2417" class="Bound">x</a> <a id="2419" class="Symbol">→</a> <a id="2421" href="EquivalenceType.html#1858" class="Function">rlmap-inverse</a> <a id="2435" href="EquivalenceType.html#2411" class="Bound">e</a> <a id="2437" class="Symbol">{</a><a id="2438" href="EquivalenceType.html#2417" class="Bound">x</a><a id="2439" class="Symbol">}</a>

  <a id="EquivalenceMaps.∙←∘∙→-h"></a><a id="2444" href="EquivalenceType.html#2444" class="Function">∙←∘∙→-h</a> <a id="2452" class="Symbol">=</a> <a id="2454" href="EquivalenceType.html#2300" class="Function">rlmap-inverse-h</a>

<a id="2471" class="Keyword">open</a> <a id="2476" href="EquivalenceType.html#1108" class="Module">EquivalenceMaps</a> <a id="2492" class="Keyword">public</a>
</pre>
