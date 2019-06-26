---
layout: page
title: "Equivalence Type"
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
<a id="180" class="Symbol">{-#</a> <a id="184" class="Keyword">OPTIONS</a> <a id="192" class="Pragma">--without-K</a> <a id="204" class="Symbol">#-}</a>
<a id="208" class="Keyword">open</a> <a id="213" class="Keyword">import</a> <a id="220" href="BasicTypes.html" class="Module">BasicTypes</a>
<a id="231" class="Keyword">open</a> <a id="236" class="Keyword">import</a> <a id="243" href="HLevelTypes.html" class="Module">HLevelTypes</a>
<a id="255" class="Keyword">open</a> <a id="260" class="Keyword">import</a> <a id="267" href="FibreType.html" class="Module">FibreType</a>

<a id="278" class="Keyword">open</a> <a id="283" class="Keyword">import</a> <a id="290" href="Transport.html" class="Module">Transport</a>
<a id="300" class="Keyword">open</a> <a id="305" class="Keyword">import</a> <a id="312" href="HomotopyType.html" class="Module">HomotopyType</a>

</pre>
</div>

<pre class="Agda">
<a id="358" class="Keyword">module</a> <a id="365" href="EquivalenceType.html" class="Module">EquivalenceType</a> <a id="381" class="Keyword">where</a>

</pre>

## Equivalences

### Contractible maps

A map is *contractible* if the fiber in any point is contractible, that is, each
element has a unique preimagen.

<pre class="Agda">

<a id="isContrMap"></a><a id="568" href="EquivalenceType.html#568" class="Function">isContrMap</a>
  <a id="581" class="Symbol">:</a> <a id="583" class="Symbol">∀</a> <a id="585" class="Symbol">{</a><a id="586" href="EquivalenceType.html#586" class="Bound">A</a> <a id="588" class="Symbol">:</a> <a id="590" href="Intro.html#1803" class="Function">Type</a> <a id="595" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="597" class="Symbol">}</a> <a id="599" class="Symbol">{</a><a id="600" href="EquivalenceType.html#600" class="Bound">B</a> <a id="602" class="Symbol">:</a> <a id="604" href="Intro.html#1803" class="Function">Type</a> <a id="609" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="611" class="Symbol">}</a>
  <a id="615" class="Symbol">→</a> <a id="617" class="Symbol">(</a><a id="618" href="EquivalenceType.html#618" class="Bound">f</a> <a id="620" class="Symbol">:</a> <a id="622" href="EquivalenceType.html#586" class="Bound">A</a> <a id="624" class="Symbol">→</a> <a id="626" href="EquivalenceType.html#600" class="Bound">B</a><a id="627" class="Symbol">)</a>
  <a id="631" class="Symbol">→</a> <a id="633" href="Intro.html#1803" class="Function">Type</a> <a id="638" class="Symbol">(</a><a id="639" href="Intro.html#2245" class="Generalizable">ℓᵢ</a> <a id="642" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="644" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="646" class="Symbol">)</a>

<a id="649" href="EquivalenceType.html#568" class="Function">isContrMap</a> <a id="660" class="Symbol">{</a><a id="661" class="Argument">B</a> <a id="663" class="Symbol">=</a> <a id="665" href="EquivalenceType.html#665" class="Bound">B</a><a id="666" class="Symbol">}</a> <a id="668" href="EquivalenceType.html#668" class="Bound">f</a> <a id="670" class="Symbol">=</a> <a id="672" class="Symbol">(</a><a id="673" href="EquivalenceType.html#673" class="Bound">b</a> <a id="675" class="Symbol">:</a> <a id="677" href="EquivalenceType.html#665" class="Bound">B</a><a id="678" class="Symbol">)</a> <a id="680" class="Symbol">→</a> <a id="682" href="HLevelTypes.html#603" class="Function">isContr</a> <a id="690" class="Symbol">(</a><a id="691" href="FibreType.html#537" class="Function">fib</a> <a id="695" href="EquivalenceType.html#668" class="Bound">f</a> <a id="697" href="EquivalenceType.html#673" class="Bound">b</a><a id="698" class="Symbol">)</a>
</pre>

There exists an equivalence between two types if there exists a
contractible function between them.


<pre class="Agda">
<a id="isEquiv"></a><a id="827" href="EquivalenceType.html#827" class="Function">isEquiv</a>
  <a id="837" class="Symbol">:</a> <a id="839" class="Symbol">{</a><a id="840" href="EquivalenceType.html#840" class="Bound">A</a> <a id="842" class="Symbol">:</a> <a id="844" href="Intro.html#1803" class="Function">Type</a> <a id="849" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="851" class="Symbol">}</a> <a id="853" class="Symbol">{</a><a id="854" href="EquivalenceType.html#854" class="Bound">B</a> <a id="856" class="Symbol">:</a> <a id="858" href="Intro.html#1803" class="Function">Type</a> <a id="863" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="865" class="Symbol">}</a>
  <a id="869" class="Symbol">→</a>  <a id="872" class="Symbol">(</a><a id="873" href="EquivalenceType.html#873" class="Bound">f</a> <a id="875" class="Symbol">:</a> <a id="877" href="EquivalenceType.html#840" class="Bound">A</a> <a id="879" class="Symbol">→</a> <a id="881" href="EquivalenceType.html#854" class="Bound">B</a><a id="882" class="Symbol">)</a>
  <a id="886" class="Symbol">→</a> <a id="888" href="Intro.html#1803" class="Function">Type</a> <a id="893" class="Symbol">(</a><a id="894" href="Intro.html#2245" class="Generalizable">ℓᵢ</a> <a id="897" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="899" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="901" class="Symbol">)</a>

<a id="904" href="EquivalenceType.html#827" class="Function">isEquiv</a> <a id="912" href="EquivalenceType.html#912" class="Bound">f</a> <a id="914" class="Symbol">=</a> <a id="916" href="EquivalenceType.html#568" class="Function">isContrMap</a> <a id="927" href="EquivalenceType.html#912" class="Bound">f</a>
</pre>


### Equivalence Type

<pre class="Agda">
<a id="_≃_"></a><a id="977" href="EquivalenceType.html#977" class="Function Operator">_≃_</a>
  <a id="983" class="Symbol">:</a> <a id="985" class="Symbol">(</a><a id="986" href="EquivalenceType.html#986" class="Bound">A</a> <a id="988" class="Symbol">:</a> <a id="990" href="Intro.html#1803" class="Function">Type</a> <a id="995" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="997" class="Symbol">)</a> <a id="999" class="Symbol">(</a><a id="1000" href="EquivalenceType.html#1000" class="Bound">B</a> <a id="1002" class="Symbol">:</a> <a id="1004" href="Intro.html#1803" class="Function">Type</a> <a id="1009" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1011" class="Symbol">)</a>
  <a id="1015" class="Symbol">→</a> <a id="1017" href="Intro.html#1803" class="Function">Type</a> <a id="1022" class="Symbol">(</a><a id="1023" href="Intro.html#2245" class="Generalizable">ℓᵢ</a> <a id="1026" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="1028" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1030" class="Symbol">)</a>

<a id="1033" href="EquivalenceType.html#1033" class="Bound">A</a> <a id="1035" href="EquivalenceType.html#977" class="Function Operator">≃</a> <a id="1037" href="EquivalenceType.html#1037" class="Bound">B</a> <a id="1039" class="Symbol">=</a> <a id="1041" href="BasicTypes.html#1680" class="Function">Σ</a> <a id="1043" class="Symbol">(</a><a id="1044" href="EquivalenceType.html#1033" class="Bound">A</a> <a id="1046" class="Symbol">→</a> <a id="1048" href="EquivalenceType.html#1037" class="Bound">B</a><a id="1049" class="Symbol">)</a> <a id="1051" href="EquivalenceType.html#827" class="Function">isEquiv</a>
</pre>

<pre class="Agda">
<a id="1084" class="Keyword">module</a> <a id="EquivalenceMaps"></a><a id="1091" href="EquivalenceType.html#1091" class="Module">EquivalenceMaps</a> <a id="1107" class="Symbol">{</a><a id="1108" href="EquivalenceType.html#1108" class="Bound">A</a> <a id="1110" class="Symbol">:</a> <a id="1112" href="Intro.html#1803" class="Function">Type</a> <a id="1117" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="1119" class="Symbol">}</a> <a id="1121" class="Symbol">{</a><a id="1122" href="EquivalenceType.html#1122" class="Bound">B</a> <a id="1124" class="Symbol">:</a> <a id="1126" href="Intro.html#1803" class="Function">Type</a> <a id="1131" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1133" class="Symbol">}</a> <a id="1135" class="Keyword">where</a>
</pre>

<pre class="Agda">
  <a id="EquivalenceMaps.lemap"></a><a id="1168" href="EquivalenceType.html#1168" class="Function">lemap</a>
    <a id="1178" class="Symbol">:</a> <a id="1180" href="EquivalenceType.html#1108" class="Bound">A</a> <a id="1182" href="EquivalenceType.html#977" class="Function Operator">≃</a> <a id="1184" href="EquivalenceType.html#1122" class="Bound">B</a> <a id="1186" class="Symbol">→</a> <a id="1188" class="Symbol">(</a><a id="1189" href="EquivalenceType.html#1108" class="Bound">A</a> <a id="1191" class="Symbol">→</a> <a id="1193" href="EquivalenceType.html#1122" class="Bound">B</a><a id="1194" class="Symbol">)</a>

  <a id="1199" href="EquivalenceType.html#1168" class="Function">lemap</a> <a id="1205" class="Symbol">=</a> <a id="1207" href="BasicTypes.html#1588" class="Field">π₁</a>
</pre>

Synonyms:

<pre class="Agda">
  <a id="EquivalenceMaps.≃-to-→"></a><a id="1248" href="EquivalenceType.html#1248" class="Function">≃-to-→</a> <a id="1255" class="Symbol">=</a> <a id="1257" href="EquivalenceType.html#1168" class="Function">lemap</a>
  <a id="EquivalenceMaps.fun≃"></a><a id="1265" href="EquivalenceType.html#1265" class="Function">fun≃</a>   <a id="1272" class="Symbol">=</a> <a id="1274" href="EquivalenceType.html#1168" class="Function">lemap</a>
  <a id="EquivalenceMaps._∙"></a><a id="1282" href="EquivalenceType.html#1282" class="Function Operator">_∙</a>     <a id="1289" class="Symbol">=</a> <a id="1291" href="EquivalenceType.html#1168" class="Function">lemap</a>
  <a id="EquivalenceMaps._∙→"></a><a id="1299" href="EquivalenceType.html#1299" class="Function Operator">_∙→</a>    <a id="1306" class="Symbol">=</a> <a id="1308" href="EquivalenceType.html#1168" class="Function">lemap</a>
  <a id="EquivalenceMaps.apply"></a><a id="1316" href="EquivalenceType.html#1316" class="Function">apply</a>  <a id="1323" class="Symbol">=</a> <a id="1325" href="EquivalenceType.html#1168" class="Function">lemap</a>

  <a id="1334" class="Keyword">infixl</a> <a id="1341" class="Number">70</a> <a id="1344" href="EquivalenceType.html#1282" class="Function Operator">_∙</a> <a id="1347" href="EquivalenceType.html#1299" class="Function Operator">_∙→</a>
</pre>

<pre class="Agda">
  <a id="EquivalenceMaps.remap"></a><a id="1378" href="EquivalenceType.html#1378" class="Function">remap</a> <a id="1384" class="Symbol">:</a> <a id="1386" href="EquivalenceType.html#1108" class="Bound">A</a> <a id="1388" href="EquivalenceType.html#977" class="Function Operator">≃</a> <a id="1390" href="EquivalenceType.html#1122" class="Bound">B</a> <a id="1392" class="Symbol">→</a> <a id="1394" class="Symbol">(</a><a id="1395" href="EquivalenceType.html#1122" class="Bound">B</a> <a id="1397" class="Symbol">→</a> <a id="1399" href="EquivalenceType.html#1108" class="Bound">A</a><a id="1400" class="Symbol">)</a>
  <a id="1404" href="EquivalenceType.html#1378" class="Function">remap</a> <a id="1410" class="Symbol">(</a><a id="1411" href="EquivalenceType.html#1411" class="Bound">f</a> <a id="1413" href="BasicTypes.html#1572" class="InductiveConstructor Operator">,</a> <a id="1415" href="EquivalenceType.html#1415" class="Bound">contrf</a><a id="1421" class="Symbol">)</a> <a id="1423" href="EquivalenceType.html#1423" class="Bound">b</a> <a id="1425" class="Symbol">=</a> <a id="1427" href="BasicTypes.html#1588" class="Field">π₁</a> <a id="1430" class="Symbol">(</a><a id="1431" href="BasicTypes.html#1588" class="Field">π₁</a> <a id="1434" class="Symbol">(</a><a id="1435" href="EquivalenceType.html#1415" class="Bound">contrf</a> <a id="1442" href="EquivalenceType.html#1423" class="Bound">b</a><a id="1443" class="Symbol">))</a>
</pre>

<pre class="Agda">
  <a id="EquivalenceMaps.≃-to-←"></a><a id="1473" href="EquivalenceType.html#1473" class="Function">≃-to-←</a>  <a id="1481" class="Symbol">=</a> <a id="1483" href="EquivalenceType.html#1378" class="Function">remap</a>
  <a id="EquivalenceMaps.invfun≃"></a><a id="1491" href="EquivalenceType.html#1491" class="Function">invfun≃</a> <a id="1499" class="Symbol">=</a> <a id="1501" href="EquivalenceType.html#1378" class="Function">remap</a>
  <a id="EquivalenceMaps._∙←"></a><a id="1509" href="EquivalenceType.html#1509" class="Function Operator">_∙←</a>     <a id="1517" class="Symbol">=</a> <a id="1519" href="EquivalenceType.html#1378" class="Function">remap</a>

  <a id="1528" class="Keyword">infixl</a> <a id="1535" class="Number">70</a> <a id="1538" href="EquivalenceType.html#1509" class="Function Operator">_∙←</a>
</pre>

<pre class="Agda">
  <a id="1569" class="Comment">-- The maps of an equivalence are inverses in particular</a>
  <a id="EquivalenceMaps.lrmap-inverse"></a><a id="1628" href="EquivalenceType.html#1628" class="Function">lrmap-inverse</a>
    <a id="1646" class="Symbol">:</a> <a id="1648" class="Symbol">(</a><a id="1649" href="EquivalenceType.html#1649" class="Bound">e</a> <a id="1651" class="Symbol">:</a> <a id="1653" href="EquivalenceType.html#1108" class="Bound">A</a> <a id="1655" href="EquivalenceType.html#977" class="Function Operator">≃</a> <a id="1657" href="EquivalenceType.html#1122" class="Bound">B</a><a id="1658" class="Symbol">)</a> <a id="1660" class="Symbol">→</a> <a id="1662" class="Symbol">{</a><a id="1663" href="EquivalenceType.html#1663" class="Bound">b</a> <a id="1665" class="Symbol">:</a> <a id="1667" href="EquivalenceType.html#1122" class="Bound">B</a><a id="1668" class="Symbol">}</a>
    <a id="1674" class="Comment">-----------------------</a>
    <a id="1702" class="Symbol">→</a> <a id="1704" class="Symbol">(</a><a id="1705" href="EquivalenceType.html#1649" class="Bound">e</a> <a id="1707" href="EquivalenceType.html#1299" class="Function Operator">∙→</a><a id="1709" class="Symbol">)</a> <a id="1711" class="Symbol">((</a><a id="1713" href="EquivalenceType.html#1649" class="Bound">e</a> <a id="1715" href="EquivalenceType.html#1509" class="Function Operator">∙←</a><a id="1717" class="Symbol">)</a> <a id="1719" href="EquivalenceType.html#1663" class="Bound">b</a><a id="1720" class="Symbol">)</a> <a id="1722" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="1725" href="EquivalenceType.html#1663" class="Bound">b</a>
  <a id="1729" href="EquivalenceType.html#1628" class="Function">lrmap-inverse</a> <a id="1743" class="Symbol">(</a><a id="1744" href="EquivalenceType.html#1744" class="Bound">f</a> <a id="1746" href="BasicTypes.html#1572" class="InductiveConstructor Operator">,</a> <a id="1748" href="EquivalenceType.html#1748" class="Bound">eqf</a><a id="1751" class="Symbol">)</a> <a id="1753" class="Symbol">{</a><a id="1754" href="EquivalenceType.html#1754" class="Bound">b</a><a id="1755" class="Symbol">}</a> <a id="1757" class="Symbol">=</a> <a id="1759" href="FibreType.html#669" class="Function">fib-eq</a> <a id="1766" class="Symbol">(</a><a id="1767" href="BasicTypes.html#1588" class="Field">π₁</a> <a id="1770" class="Symbol">(</a><a id="1771" href="EquivalenceType.html#1748" class="Bound">eqf</a> <a id="1775" href="EquivalenceType.html#1754" class="Bound">b</a><a id="1776" class="Symbol">))</a>

  <a id="EquivalenceMaps.∙→∘∙←"></a><a id="1782" href="EquivalenceType.html#1782" class="Function">∙→∘∙←</a> <a id="1788" class="Symbol">=</a> <a id="1790" href="EquivalenceType.html#1628" class="Function">lrmap-inverse</a>
</pre>

<pre class="Agda">
  <a id="1831" class="Comment">-- Lem.</a>
  <a id="EquivalenceMaps.rlmap-inverse"></a><a id="1841" href="EquivalenceType.html#1841" class="Function">rlmap-inverse</a>
    <a id="1859" class="Symbol">:</a> <a id="1861" class="Symbol">(</a><a id="1862" href="EquivalenceType.html#1862" class="Bound">e</a> <a id="1864" class="Symbol">:</a> <a id="1866" href="EquivalenceType.html#1108" class="Bound">A</a> <a id="1868" href="EquivalenceType.html#977" class="Function Operator">≃</a> <a id="1870" href="EquivalenceType.html#1122" class="Bound">B</a><a id="1871" class="Symbol">)</a> <a id="1873" class="Symbol">→</a> <a id="1875" class="Symbol">{</a><a id="1876" href="EquivalenceType.html#1876" class="Bound">a</a> <a id="1878" class="Symbol">:</a> <a id="1880" href="EquivalenceType.html#1108" class="Bound">A</a><a id="1881" class="Symbol">}</a>
    <a id="1887" class="Comment">------------------------</a>
    <a id="1916" class="Symbol">→</a> <a id="1918" class="Symbol">(</a><a id="1919" href="EquivalenceType.html#1862" class="Bound">e</a> <a id="1921" href="EquivalenceType.html#1509" class="Function Operator">∙←</a><a id="1923" class="Symbol">)</a> <a id="1925" class="Symbol">((</a><a id="1927" href="EquivalenceType.html#1862" class="Bound">e</a> <a id="1929" href="EquivalenceType.html#1299" class="Function Operator">∙→</a><a id="1931" class="Symbol">)</a> <a id="1933" href="EquivalenceType.html#1876" class="Bound">a</a><a id="1934" class="Symbol">)</a> <a id="1936" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="1939" href="EquivalenceType.html#1876" class="Bound">a</a>

  <a id="1944" href="EquivalenceType.html#1841" class="Function">rlmap-inverse</a> <a id="1958" class="Symbol">(</a><a id="1959" href="EquivalenceType.html#1959" class="Bound">f</a> <a id="1961" href="BasicTypes.html#1572" class="InductiveConstructor Operator">,</a> <a id="1963" href="EquivalenceType.html#1963" class="Bound">eqf</a><a id="1966" class="Symbol">)</a> <a id="1968" class="Symbol">{</a><a id="1969" href="EquivalenceType.html#1969" class="Bound">a</a><a id="1970" class="Symbol">}</a> <a id="1972" class="Symbol">=</a> <a id="1974" href="AlgebraOnPaths.html#389" class="Function">ap</a> <a id="1977" href="BasicTypes.html#1588" class="Field">π₁</a> <a id="1980" class="Symbol">((</a><a id="1982" href="BasicTypes.html#1599" class="Field">π₂</a> <a id="1985" class="Symbol">(</a><a id="1986" href="EquivalenceType.html#1963" class="Bound">eqf</a> <a id="1990" class="Symbol">(</a><a id="1991" href="EquivalenceType.html#1959" class="Bound">f</a> <a id="1993" href="EquivalenceType.html#1969" class="Bound">a</a><a id="1994" class="Symbol">)))</a> <a id="1998" href="FibreType.html#885" class="Function">fib-image</a><a id="2007" class="Symbol">)</a>

  <a id="EquivalenceMaps.∙←∘∙→"></a><a id="2012" href="EquivalenceType.html#2012" class="Function">∙←∘∙→</a> <a id="2018" class="Symbol">=</a> <a id="2020" href="EquivalenceType.html#1841" class="Function">rlmap-inverse</a>
</pre>

<pre class="Agda">
  <a id="2061" class="Comment">-- Lem.</a>
  <a id="EquivalenceMaps.lrmap-inverse-h"></a><a id="2071" href="EquivalenceType.html#2071" class="Function">lrmap-inverse-h</a>
    <a id="2091" class="Symbol">:</a> <a id="2093" class="Symbol">(</a><a id="2094" href="EquivalenceType.html#2094" class="Bound">e</a> <a id="2096" class="Symbol">:</a> <a id="2098" href="EquivalenceType.html#1108" class="Bound">A</a> <a id="2100" href="EquivalenceType.html#977" class="Function Operator">≃</a> <a id="2102" href="EquivalenceType.html#1122" class="Bound">B</a><a id="2103" class="Symbol">)</a>
    <a id="2109" class="Comment">------------------------------</a>
    <a id="2144" class="Symbol">→</a> <a id="2146" class="Symbol">((</a><a id="2148" href="EquivalenceType.html#2094" class="Bound">e</a> <a id="2150" href="EquivalenceType.html#1299" class="Function Operator">∙→</a><a id="2152" class="Symbol">)</a> <a id="2154" href="BasicFunctions.html#1016" class="Function Operator">∘</a> <a id="2156" class="Symbol">(</a><a id="2157" href="EquivalenceType.html#2094" class="Bound">e</a> <a id="2159" href="EquivalenceType.html#1509" class="Function Operator">∙←</a><a id="2161" class="Symbol">))</a> <a id="2164" href="HomotopyType.html#989" class="Function Operator">∼</a> <a id="2166" href="BasicFunctions.html#376" class="Function">id</a>
  <a id="2171" href="EquivalenceType.html#2071" class="Function">lrmap-inverse-h</a> <a id="2187" href="EquivalenceType.html#2187" class="Bound">e</a> <a id="2189" class="Symbol">=</a> <a id="2191" class="Symbol">λ</a> <a id="2193" href="EquivalenceType.html#2193" class="Bound">x</a> <a id="2195" class="Symbol">→</a> <a id="2197" href="EquivalenceType.html#1628" class="Function">lrmap-inverse</a> <a id="2211" href="EquivalenceType.html#2187" class="Bound">e</a> <a id="2213" class="Symbol">{</a><a id="2214" href="EquivalenceType.html#2193" class="Bound">x</a><a id="2215" class="Symbol">}</a>

  <a id="EquivalenceMaps.∙→∘∙←-h"></a><a id="2220" href="EquivalenceType.html#2220" class="Function">∙→∘∙←-h</a> <a id="2228" class="Symbol">=</a> <a id="2230" href="EquivalenceType.html#2071" class="Function">lrmap-inverse-h</a>
</pre>

<pre class="Agda">
  <a id="2273" class="Comment">-- Lem.</a>
  <a id="EquivalenceMaps.rlmap-inverse-h"></a><a id="2283" href="EquivalenceType.html#2283" class="Function">rlmap-inverse-h</a>
    <a id="2303" class="Symbol">:</a> <a id="2305" class="Symbol">(</a><a id="2306" href="EquivalenceType.html#2306" class="Bound">e</a> <a id="2308" class="Symbol">:</a> <a id="2310" href="EquivalenceType.html#1108" class="Bound">A</a> <a id="2312" href="EquivalenceType.html#977" class="Function Operator">≃</a> <a id="2314" href="EquivalenceType.html#1122" class="Bound">B</a><a id="2315" class="Symbol">)</a>
    <a id="2321" class="Comment">------------------------</a>
    <a id="2350" class="Symbol">→</a> <a id="2352" class="Symbol">((</a><a id="2354" href="EquivalenceType.html#2306" class="Bound">e</a> <a id="2356" href="EquivalenceType.html#1509" class="Function Operator">∙←</a><a id="2358" class="Symbol">)</a> <a id="2360" href="BasicFunctions.html#1016" class="Function Operator">∘</a> <a id="2362" class="Symbol">(</a><a id="2363" href="EquivalenceType.html#2306" class="Bound">e</a> <a id="2365" href="EquivalenceType.html#1299" class="Function Operator">∙→</a><a id="2367" class="Symbol">))</a> <a id="2370" href="HomotopyType.html#989" class="Function Operator">∼</a> <a id="2372" href="BasicFunctions.html#376" class="Function">id</a>

  <a id="2378" href="EquivalenceType.html#2283" class="Function">rlmap-inverse-h</a> <a id="2394" href="EquivalenceType.html#2394" class="Bound">e</a> <a id="2396" class="Symbol">=</a> <a id="2398" class="Symbol">λ</a> <a id="2400" href="EquivalenceType.html#2400" class="Bound">x</a> <a id="2402" class="Symbol">→</a> <a id="2404" href="EquivalenceType.html#1841" class="Function">rlmap-inverse</a> <a id="2418" href="EquivalenceType.html#2394" class="Bound">e</a> <a id="2420" class="Symbol">{</a><a id="2421" href="EquivalenceType.html#2400" class="Bound">x</a><a id="2422" class="Symbol">}</a>

  <a id="EquivalenceMaps.∙←∘∙→-h"></a><a id="2427" href="EquivalenceType.html#2427" class="Function">∙←∘∙→-h</a> <a id="2435" class="Symbol">=</a> <a id="2437" href="EquivalenceType.html#2283" class="Function">rlmap-inverse-h</a>

<a id="2454" class="Keyword">open</a> <a id="2459" href="EquivalenceType.html#1091" class="Module">EquivalenceMaps</a> <a id="2475" class="Keyword">public</a>
</pre>
