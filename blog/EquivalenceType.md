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

There are three definitions to say a function is an
equivalence. All these definitions
are required to be mere propositions and to hold
the bi-implication of begin *quasi-inverse*. We show
this clearly in what follows. Nevertheless, we want to get
the following fact:

$$\mathsf{isContr(f)} \cong \mathsf{ishae(f)} \cong \mathsf{biinv(f)} $$

### Contractible maps

A map is *contractible* if the fiber in any point is contractible, that is, each
element has a unique preimagen.

<pre class="Agda">

<a id="isContrMap"></a><a id="911" href="EquivalenceType.html#911" class="Function">isContrMap</a>
  <a id="924" class="Symbol">:</a> <a id="926" class="Symbol">∀</a> <a id="928" class="Symbol">{</a><a id="929" href="EquivalenceType.html#929" class="Bound">A</a> <a id="931" class="Symbol">:</a> <a id="933" href="Intro.html#1803" class="Function">Type</a> <a id="938" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="940" class="Symbol">}</a> <a id="942" class="Symbol">{</a><a id="943" href="EquivalenceType.html#943" class="Bound">B</a> <a id="945" class="Symbol">:</a> <a id="947" href="Intro.html#1803" class="Function">Type</a> <a id="952" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="954" class="Symbol">}</a>
  <a id="958" class="Symbol">→</a> <a id="960" class="Symbol">(</a><a id="961" href="EquivalenceType.html#961" class="Bound">f</a> <a id="963" class="Symbol">:</a> <a id="965" href="EquivalenceType.html#929" class="Bound">A</a> <a id="967" class="Symbol">→</a> <a id="969" href="EquivalenceType.html#943" class="Bound">B</a><a id="970" class="Symbol">)</a>
  <a id="974" class="Symbol">→</a> <a id="976" href="Intro.html#1803" class="Function">Type</a> <a id="981" class="Symbol">(</a><a id="982" href="Intro.html#2245" class="Generalizable">ℓᵢ</a> <a id="985" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="987" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="989" class="Symbol">)</a>

<a id="992" href="EquivalenceType.html#911" class="Function">isContrMap</a> <a id="1003" class="Symbol">{</a><a id="1004" class="Argument">B</a> <a id="1006" class="Symbol">=</a> <a id="1008" href="EquivalenceType.html#1008" class="Bound">B</a><a id="1009" class="Symbol">}</a> <a id="1011" href="EquivalenceType.html#1011" class="Bound">f</a> <a id="1013" class="Symbol">=</a> <a id="1015" class="Symbol">(</a><a id="1016" href="EquivalenceType.html#1016" class="Bound">b</a> <a id="1018" class="Symbol">:</a> <a id="1020" href="EquivalenceType.html#1008" class="Bound">B</a><a id="1021" class="Symbol">)</a> <a id="1023" class="Symbol">→</a> <a id="1025" href="HLevelTypes.html#603" class="Function">isContr</a> <a id="1033" class="Symbol">(</a><a id="1034" href="FibreType.html#537" class="Function">fib</a> <a id="1038" href="EquivalenceType.html#1011" class="Bound">f</a> <a id="1040" href="EquivalenceType.html#1016" class="Bound">b</a><a id="1041" class="Symbol">)</a>
</pre>

There exists an equivalence between two types if there exists a
contractible function between them.


<pre class="Agda">
<a id="isEquiv"></a><a id="1170" href="EquivalenceType.html#1170" class="Function">isEquiv</a>
  <a id="1180" class="Symbol">:</a> <a id="1182" class="Symbol">{</a><a id="1183" href="EquivalenceType.html#1183" class="Bound">A</a> <a id="1185" class="Symbol">:</a> <a id="1187" href="Intro.html#1803" class="Function">Type</a> <a id="1192" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="1194" class="Symbol">}</a> <a id="1196" class="Symbol">{</a><a id="1197" href="EquivalenceType.html#1197" class="Bound">B</a> <a id="1199" class="Symbol">:</a> <a id="1201" href="Intro.html#1803" class="Function">Type</a> <a id="1206" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1208" class="Symbol">}</a>
  <a id="1212" class="Symbol">→</a>  <a id="1215" class="Symbol">(</a><a id="1216" href="EquivalenceType.html#1216" class="Bound">f</a> <a id="1218" class="Symbol">:</a> <a id="1220" href="EquivalenceType.html#1183" class="Bound">A</a> <a id="1222" class="Symbol">→</a> <a id="1224" href="EquivalenceType.html#1197" class="Bound">B</a><a id="1225" class="Symbol">)</a>
  <a id="1229" class="Symbol">→</a> <a id="1231" href="Intro.html#1803" class="Function">Type</a> <a id="1236" class="Symbol">(</a><a id="1237" href="Intro.html#2245" class="Generalizable">ℓᵢ</a> <a id="1240" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="1242" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1244" class="Symbol">)</a>

<a id="1247" href="EquivalenceType.html#1170" class="Function">isEquiv</a> <a id="1255" href="EquivalenceType.html#1255" class="Bound">f</a> <a id="1257" class="Symbol">=</a> <a id="1259" href="EquivalenceType.html#911" class="Function">isContrMap</a> <a id="1270" href="EquivalenceType.html#1255" class="Bound">f</a>
</pre>


### Equivalence Type

<pre class="Agda">
<a id="_≃_"></a><a id="1320" href="EquivalenceType.html#1320" class="Function Operator">_≃_</a>
  <a id="1326" class="Symbol">:</a> <a id="1328" class="Symbol">(</a><a id="1329" href="EquivalenceType.html#1329" class="Bound">A</a> <a id="1331" class="Symbol">:</a> <a id="1333" href="Intro.html#1803" class="Function">Type</a> <a id="1338" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="1340" class="Symbol">)</a> <a id="1342" class="Symbol">(</a><a id="1343" href="EquivalenceType.html#1343" class="Bound">B</a> <a id="1345" class="Symbol">:</a> <a id="1347" href="Intro.html#1803" class="Function">Type</a> <a id="1352" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1354" class="Symbol">)</a>
  <a id="1358" class="Symbol">→</a> <a id="1360" href="Intro.html#1803" class="Function">Type</a> <a id="1365" class="Symbol">(</a><a id="1366" href="Intro.html#2245" class="Generalizable">ℓᵢ</a> <a id="1369" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="1371" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1373" class="Symbol">)</a>

<a id="1376" href="EquivalenceType.html#1376" class="Bound">A</a> <a id="1378" href="EquivalenceType.html#1320" class="Function Operator">≃</a> <a id="1380" href="EquivalenceType.html#1380" class="Bound">B</a> <a id="1382" class="Symbol">=</a> <a id="1384" href="BasicTypes.html#1680" class="Function">Σ</a> <a id="1386" class="Symbol">(</a><a id="1387" href="EquivalenceType.html#1376" class="Bound">A</a> <a id="1389" class="Symbol">→</a> <a id="1391" href="EquivalenceType.html#1380" class="Bound">B</a><a id="1392" class="Symbol">)</a> <a id="1394" href="EquivalenceType.html#1170" class="Function">isEquiv</a>
</pre>

<pre class="Agda">
<a id="1427" class="Keyword">module</a> <a id="EquivalenceMaps"></a><a id="1434" href="EquivalenceType.html#1434" class="Module">EquivalenceMaps</a> <a id="1450" class="Symbol">{</a><a id="1451" href="EquivalenceType.html#1451" class="Bound">A</a> <a id="1453" class="Symbol">:</a> <a id="1455" href="Intro.html#1803" class="Function">Type</a> <a id="1460" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="1462" class="Symbol">}</a> <a id="1464" class="Symbol">{</a><a id="1465" href="EquivalenceType.html#1465" class="Bound">B</a> <a id="1467" class="Symbol">:</a> <a id="1469" href="Intro.html#1803" class="Function">Type</a> <a id="1474" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1476" class="Symbol">}</a> <a id="1478" class="Keyword">where</a>
</pre>

<pre class="Agda">
  <a id="EquivalenceMaps.lemap"></a><a id="1511" href="EquivalenceType.html#1511" class="Function">lemap</a>
    <a id="1521" class="Symbol">:</a> <a id="1523" href="EquivalenceType.html#1451" class="Bound">A</a> <a id="1525" href="EquivalenceType.html#1320" class="Function Operator">≃</a> <a id="1527" href="EquivalenceType.html#1465" class="Bound">B</a> <a id="1529" class="Symbol">→</a> <a id="1531" class="Symbol">(</a><a id="1532" href="EquivalenceType.html#1451" class="Bound">A</a> <a id="1534" class="Symbol">→</a> <a id="1536" href="EquivalenceType.html#1465" class="Bound">B</a><a id="1537" class="Symbol">)</a>

  <a id="1542" href="EquivalenceType.html#1511" class="Function">lemap</a> <a id="1548" class="Symbol">=</a> <a id="1550" href="BasicTypes.html#1588" class="Field">π₁</a>
</pre>

Synonyms:

<pre class="Agda">
  <a id="EquivalenceMaps.≃-to-→"></a><a id="1591" href="EquivalenceType.html#1591" class="Function">≃-to-→</a> <a id="1598" class="Symbol">=</a> <a id="1600" href="EquivalenceType.html#1511" class="Function">lemap</a>
  <a id="EquivalenceMaps.fun≃"></a><a id="1608" href="EquivalenceType.html#1608" class="Function">fun≃</a>   <a id="1615" class="Symbol">=</a> <a id="1617" href="EquivalenceType.html#1511" class="Function">lemap</a>
  <a id="EquivalenceMaps._∙"></a><a id="1625" href="EquivalenceType.html#1625" class="Function Operator">_∙</a>     <a id="1632" class="Symbol">=</a> <a id="1634" href="EquivalenceType.html#1511" class="Function">lemap</a>
  <a id="EquivalenceMaps._∙→"></a><a id="1642" href="EquivalenceType.html#1642" class="Function Operator">_∙→</a>    <a id="1649" class="Symbol">=</a> <a id="1651" href="EquivalenceType.html#1511" class="Function">lemap</a>
  <a id="EquivalenceMaps.apply"></a><a id="1659" href="EquivalenceType.html#1659" class="Function">apply</a>  <a id="1666" class="Symbol">=</a> <a id="1668" href="EquivalenceType.html#1511" class="Function">lemap</a>

  <a id="1677" class="Keyword">infixl</a> <a id="1684" class="Number">70</a> <a id="1687" href="EquivalenceType.html#1625" class="Function Operator">_∙</a> <a id="1690" href="EquivalenceType.html#1642" class="Function Operator">_∙→</a>
</pre>

<pre class="Agda">
  <a id="EquivalenceMaps.remap"></a><a id="1721" href="EquivalenceType.html#1721" class="Function">remap</a> <a id="1727" class="Symbol">:</a> <a id="1729" href="EquivalenceType.html#1451" class="Bound">A</a> <a id="1731" href="EquivalenceType.html#1320" class="Function Operator">≃</a> <a id="1733" href="EquivalenceType.html#1465" class="Bound">B</a> <a id="1735" class="Symbol">→</a> <a id="1737" class="Symbol">(</a><a id="1738" href="EquivalenceType.html#1465" class="Bound">B</a> <a id="1740" class="Symbol">→</a> <a id="1742" href="EquivalenceType.html#1451" class="Bound">A</a><a id="1743" class="Symbol">)</a>
  <a id="1747" href="EquivalenceType.html#1721" class="Function">remap</a> <a id="1753" class="Symbol">(</a><a id="1754" href="EquivalenceType.html#1754" class="Bound">f</a> <a id="1756" href="BasicTypes.html#1572" class="InductiveConstructor Operator">,</a> <a id="1758" href="EquivalenceType.html#1758" class="Bound">contrf</a><a id="1764" class="Symbol">)</a> <a id="1766" href="EquivalenceType.html#1766" class="Bound">b</a> <a id="1768" class="Symbol">=</a> <a id="1770" href="BasicTypes.html#1588" class="Field">π₁</a> <a id="1773" class="Symbol">(</a><a id="1774" href="BasicTypes.html#1588" class="Field">π₁</a> <a id="1777" class="Symbol">(</a><a id="1778" href="EquivalenceType.html#1758" class="Bound">contrf</a> <a id="1785" href="EquivalenceType.html#1766" class="Bound">b</a><a id="1786" class="Symbol">))</a>
</pre>

<pre class="Agda">
  <a id="EquivalenceMaps.≃-to-←"></a><a id="1816" href="EquivalenceType.html#1816" class="Function">≃-to-←</a>  <a id="1824" class="Symbol">=</a> <a id="1826" href="EquivalenceType.html#1721" class="Function">remap</a>
  <a id="EquivalenceMaps.invfun≃"></a><a id="1834" href="EquivalenceType.html#1834" class="Function">invfun≃</a> <a id="1842" class="Symbol">=</a> <a id="1844" href="EquivalenceType.html#1721" class="Function">remap</a>
  <a id="EquivalenceMaps._∙←"></a><a id="1852" href="EquivalenceType.html#1852" class="Function Operator">_∙←</a>     <a id="1860" class="Symbol">=</a> <a id="1862" href="EquivalenceType.html#1721" class="Function">remap</a>

  <a id="1871" class="Keyword">infixl</a> <a id="1878" class="Number">70</a> <a id="1881" href="EquivalenceType.html#1852" class="Function Operator">_∙←</a>
</pre>

<pre class="Agda">
  <a id="1912" class="Comment">-- The maps of an equivalence are inverses in particular</a>
  <a id="EquivalenceMaps.lrmap-inverse"></a><a id="1971" href="EquivalenceType.html#1971" class="Function">lrmap-inverse</a>
    <a id="1989" class="Symbol">:</a> <a id="1991" class="Symbol">(</a><a id="1992" href="EquivalenceType.html#1992" class="Bound">e</a> <a id="1994" class="Symbol">:</a> <a id="1996" href="EquivalenceType.html#1451" class="Bound">A</a> <a id="1998" href="EquivalenceType.html#1320" class="Function Operator">≃</a> <a id="2000" href="EquivalenceType.html#1465" class="Bound">B</a><a id="2001" class="Symbol">)</a> <a id="2003" class="Symbol">→</a> <a id="2005" class="Symbol">{</a><a id="2006" href="EquivalenceType.html#2006" class="Bound">b</a> <a id="2008" class="Symbol">:</a> <a id="2010" href="EquivalenceType.html#1465" class="Bound">B</a><a id="2011" class="Symbol">}</a>
    <a id="2017" class="Comment">-----------------------</a>
    <a id="2045" class="Symbol">→</a> <a id="2047" class="Symbol">(</a><a id="2048" href="EquivalenceType.html#1992" class="Bound">e</a> <a id="2050" href="EquivalenceType.html#1642" class="Function Operator">∙→</a><a id="2052" class="Symbol">)</a> <a id="2054" class="Symbol">((</a><a id="2056" href="EquivalenceType.html#1992" class="Bound">e</a> <a id="2058" href="EquivalenceType.html#1852" class="Function Operator">∙←</a><a id="2060" class="Symbol">)</a> <a id="2062" href="EquivalenceType.html#2006" class="Bound">b</a><a id="2063" class="Symbol">)</a> <a id="2065" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="2068" href="EquivalenceType.html#2006" class="Bound">b</a>
  <a id="2072" href="EquivalenceType.html#1971" class="Function">lrmap-inverse</a> <a id="2086" class="Symbol">(</a><a id="2087" href="EquivalenceType.html#2087" class="Bound">f</a> <a id="2089" href="BasicTypes.html#1572" class="InductiveConstructor Operator">,</a> <a id="2091" href="EquivalenceType.html#2091" class="Bound">eqf</a><a id="2094" class="Symbol">)</a> <a id="2096" class="Symbol">{</a><a id="2097" href="EquivalenceType.html#2097" class="Bound">b</a><a id="2098" class="Symbol">}</a> <a id="2100" class="Symbol">=</a> <a id="2102" href="FibreType.html#669" class="Function">fib-eq</a> <a id="2109" class="Symbol">(</a><a id="2110" href="BasicTypes.html#1588" class="Field">π₁</a> <a id="2113" class="Symbol">(</a><a id="2114" href="EquivalenceType.html#2091" class="Bound">eqf</a> <a id="2118" href="EquivalenceType.html#2097" class="Bound">b</a><a id="2119" class="Symbol">))</a>

  <a id="EquivalenceMaps.∙→∘∙←"></a><a id="2125" href="EquivalenceType.html#2125" class="Function">∙→∘∙←</a> <a id="2131" class="Symbol">=</a> <a id="2133" href="EquivalenceType.html#1971" class="Function">lrmap-inverse</a>
</pre>

<pre class="Agda">
  <a id="2174" class="Comment">-- Lem.</a>
  <a id="EquivalenceMaps.rlmap-inverse"></a><a id="2184" href="EquivalenceType.html#2184" class="Function">rlmap-inverse</a>
    <a id="2202" class="Symbol">:</a> <a id="2204" class="Symbol">(</a><a id="2205" href="EquivalenceType.html#2205" class="Bound">e</a> <a id="2207" class="Symbol">:</a> <a id="2209" href="EquivalenceType.html#1451" class="Bound">A</a> <a id="2211" href="EquivalenceType.html#1320" class="Function Operator">≃</a> <a id="2213" href="EquivalenceType.html#1465" class="Bound">B</a><a id="2214" class="Symbol">)</a> <a id="2216" class="Symbol">→</a> <a id="2218" class="Symbol">{</a><a id="2219" href="EquivalenceType.html#2219" class="Bound">a</a> <a id="2221" class="Symbol">:</a> <a id="2223" href="EquivalenceType.html#1451" class="Bound">A</a><a id="2224" class="Symbol">}</a>
    <a id="2230" class="Comment">------------------------</a>
    <a id="2259" class="Symbol">→</a> <a id="2261" class="Symbol">(</a><a id="2262" href="EquivalenceType.html#2205" class="Bound">e</a> <a id="2264" href="EquivalenceType.html#1852" class="Function Operator">∙←</a><a id="2266" class="Symbol">)</a> <a id="2268" class="Symbol">((</a><a id="2270" href="EquivalenceType.html#2205" class="Bound">e</a> <a id="2272" href="EquivalenceType.html#1642" class="Function Operator">∙→</a><a id="2274" class="Symbol">)</a> <a id="2276" href="EquivalenceType.html#2219" class="Bound">a</a><a id="2277" class="Symbol">)</a> <a id="2279" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="2282" href="EquivalenceType.html#2219" class="Bound">a</a>

  <a id="2287" href="EquivalenceType.html#2184" class="Function">rlmap-inverse</a> <a id="2301" class="Symbol">(</a><a id="2302" href="EquivalenceType.html#2302" class="Bound">f</a> <a id="2304" href="BasicTypes.html#1572" class="InductiveConstructor Operator">,</a> <a id="2306" href="EquivalenceType.html#2306" class="Bound">eqf</a><a id="2309" class="Symbol">)</a> <a id="2311" class="Symbol">{</a><a id="2312" href="EquivalenceType.html#2312" class="Bound">a</a><a id="2313" class="Symbol">}</a> <a id="2315" class="Symbol">=</a> <a id="2317" href="AlgebraOnPaths.html#389" class="Function">ap</a> <a id="2320" href="BasicTypes.html#1588" class="Field">π₁</a> <a id="2323" class="Symbol">((</a><a id="2325" href="BasicTypes.html#1599" class="Field">π₂</a> <a id="2328" class="Symbol">(</a><a id="2329" href="EquivalenceType.html#2306" class="Bound">eqf</a> <a id="2333" class="Symbol">(</a><a id="2334" href="EquivalenceType.html#2302" class="Bound">f</a> <a id="2336" href="EquivalenceType.html#2312" class="Bound">a</a><a id="2337" class="Symbol">)))</a> <a id="2341" href="FibreType.html#885" class="Function">fib-image</a><a id="2350" class="Symbol">)</a>

  <a id="EquivalenceMaps.∙←∘∙→"></a><a id="2355" href="EquivalenceType.html#2355" class="Function">∙←∘∙→</a> <a id="2361" class="Symbol">=</a> <a id="2363" href="EquivalenceType.html#2184" class="Function">rlmap-inverse</a>
</pre>

<pre class="Agda">
  <a id="2404" class="Comment">-- Lem.</a>
  <a id="EquivalenceMaps.lrmap-inverse-h"></a><a id="2414" href="EquivalenceType.html#2414" class="Function">lrmap-inverse-h</a>
    <a id="2434" class="Symbol">:</a> <a id="2436" class="Symbol">(</a><a id="2437" href="EquivalenceType.html#2437" class="Bound">e</a> <a id="2439" class="Symbol">:</a> <a id="2441" href="EquivalenceType.html#1451" class="Bound">A</a> <a id="2443" href="EquivalenceType.html#1320" class="Function Operator">≃</a> <a id="2445" href="EquivalenceType.html#1465" class="Bound">B</a><a id="2446" class="Symbol">)</a>
    <a id="2452" class="Comment">------------------------------</a>
    <a id="2487" class="Symbol">→</a> <a id="2489" class="Symbol">((</a><a id="2491" href="EquivalenceType.html#2437" class="Bound">e</a> <a id="2493" href="EquivalenceType.html#1642" class="Function Operator">∙→</a><a id="2495" class="Symbol">)</a> <a id="2497" href="BasicFunctions.html#1016" class="Function Operator">∘</a> <a id="2499" class="Symbol">(</a><a id="2500" href="EquivalenceType.html#2437" class="Bound">e</a> <a id="2502" href="EquivalenceType.html#1852" class="Function Operator">∙←</a><a id="2504" class="Symbol">))</a> <a id="2507" href="HomotopyType.html#989" class="Function Operator">∼</a> <a id="2509" href="BasicFunctions.html#376" class="Function">id</a>
  <a id="2514" href="EquivalenceType.html#2414" class="Function">lrmap-inverse-h</a> <a id="2530" href="EquivalenceType.html#2530" class="Bound">e</a> <a id="2532" class="Symbol">=</a> <a id="2534" class="Symbol">λ</a> <a id="2536" href="EquivalenceType.html#2536" class="Bound">x</a> <a id="2538" class="Symbol">→</a> <a id="2540" href="EquivalenceType.html#1971" class="Function">lrmap-inverse</a> <a id="2554" href="EquivalenceType.html#2530" class="Bound">e</a> <a id="2556" class="Symbol">{</a><a id="2557" href="EquivalenceType.html#2536" class="Bound">x</a><a id="2558" class="Symbol">}</a>

  <a id="EquivalenceMaps.∙→∘∙←-h"></a><a id="2563" href="EquivalenceType.html#2563" class="Function">∙→∘∙←-h</a> <a id="2571" class="Symbol">=</a> <a id="2573" href="EquivalenceType.html#2414" class="Function">lrmap-inverse-h</a>
</pre>

<pre class="Agda">
  <a id="2616" class="Comment">-- Lem.</a>
  <a id="EquivalenceMaps.rlmap-inverse-h"></a><a id="2626" href="EquivalenceType.html#2626" class="Function">rlmap-inverse-h</a>
    <a id="2646" class="Symbol">:</a> <a id="2648" class="Symbol">(</a><a id="2649" href="EquivalenceType.html#2649" class="Bound">e</a> <a id="2651" class="Symbol">:</a> <a id="2653" href="EquivalenceType.html#1451" class="Bound">A</a> <a id="2655" href="EquivalenceType.html#1320" class="Function Operator">≃</a> <a id="2657" href="EquivalenceType.html#1465" class="Bound">B</a><a id="2658" class="Symbol">)</a>
    <a id="2664" class="Comment">------------------------</a>
    <a id="2693" class="Symbol">→</a> <a id="2695" class="Symbol">((</a><a id="2697" href="EquivalenceType.html#2649" class="Bound">e</a> <a id="2699" href="EquivalenceType.html#1852" class="Function Operator">∙←</a><a id="2701" class="Symbol">)</a> <a id="2703" href="BasicFunctions.html#1016" class="Function Operator">∘</a> <a id="2705" class="Symbol">(</a><a id="2706" href="EquivalenceType.html#2649" class="Bound">e</a> <a id="2708" href="EquivalenceType.html#1642" class="Function Operator">∙→</a><a id="2710" class="Symbol">))</a> <a id="2713" href="HomotopyType.html#989" class="Function Operator">∼</a> <a id="2715" href="BasicFunctions.html#376" class="Function">id</a>

  <a id="2721" href="EquivalenceType.html#2626" class="Function">rlmap-inverse-h</a> <a id="2737" href="EquivalenceType.html#2737" class="Bound">e</a> <a id="2739" class="Symbol">=</a> <a id="2741" class="Symbol">λ</a> <a id="2743" href="EquivalenceType.html#2743" class="Bound">x</a> <a id="2745" class="Symbol">→</a> <a id="2747" href="EquivalenceType.html#2184" class="Function">rlmap-inverse</a> <a id="2761" href="EquivalenceType.html#2737" class="Bound">e</a> <a id="2763" class="Symbol">{</a><a id="2764" href="EquivalenceType.html#2743" class="Bound">x</a><a id="2765" class="Symbol">}</a>

  <a id="EquivalenceMaps.∙←∘∙→-h"></a><a id="2770" href="EquivalenceType.html#2770" class="Function">∙←∘∙→-h</a> <a id="2778" class="Symbol">=</a> <a id="2780" href="EquivalenceType.html#2626" class="Function">rlmap-inverse-h</a>

<a id="2797" class="Keyword">open</a> <a id="2802" href="EquivalenceType.html#1434" class="Module">EquivalenceMaps</a> <a id="2818" class="Keyword">public</a>
</pre>
