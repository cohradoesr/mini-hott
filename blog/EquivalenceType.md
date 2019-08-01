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

## Equivalences

<pre class="Agda">
<a id="374" class="Keyword">module</a> <a id="381" href="EquivalenceType.html" class="Module">EquivalenceType</a> <a id="397" class="Keyword">where</a>
</pre>

There are three definitions to say a function is an
equivalence. All these definitions
are required to be mere propositions and to hold
the bi-implication of begin *quasi-inverse*. We show
this clearly in what follows. Nevertheless, we want to get
the following fact:

$$ \mathsf{isContr(f)} \cong \mathsf{ishae(f)} \cong \mathsf{biinv(f)} $$

### Contractible maps

A map is *contractible* if the fiber in any point is contractible, that is, each
element has a unique preimagen.

<pre class="Agda">
<a id="isContrMap"></a><a id="909" href="EquivalenceType.html#909" class="Function">isContrMap</a>
  <a id="922" class="Symbol">:</a> <a id="924" class="Symbol">{</a><a id="925" href="EquivalenceType.html#925" class="Bound">A</a> <a id="927" class="Symbol">:</a> <a id="929" href="Intro.html#2793" class="Function">Type</a> <a id="934" href="Intro.html#3375" class="Generalizable">ℓᵢ</a><a id="936" class="Symbol">}</a> <a id="938" class="Symbol">{</a><a id="939" href="EquivalenceType.html#939" class="Bound">B</a> <a id="941" class="Symbol">:</a> <a id="943" href="Intro.html#2793" class="Function">Type</a> <a id="948" href="Intro.html#3378" class="Generalizable">ℓⱼ</a><a id="950" class="Symbol">}</a>
  <a id="954" class="Symbol">→</a> <a id="956" class="Symbol">(</a><a id="957" href="EquivalenceType.html#957" class="Bound">f</a> <a id="959" class="Symbol">:</a> <a id="961" href="EquivalenceType.html#925" class="Bound">A</a> <a id="963" class="Symbol">→</a> <a id="965" href="EquivalenceType.html#939" class="Bound">B</a><a id="966" class="Symbol">)</a>
  <a id="970" class="Symbol">→</a> <a id="972" href="Intro.html#2793" class="Function">Type</a> <a id="977" class="Symbol">(</a><a id="978" href="Intro.html#3375" class="Generalizable">ℓᵢ</a> <a id="981" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="983" href="Intro.html#3378" class="Generalizable">ℓⱼ</a><a id="985" class="Symbol">)</a>

<a id="988" href="EquivalenceType.html#909" class="Function">isContrMap</a> <a id="999" class="Symbol">{</a><a id="1000" class="Argument">B</a> <a id="1002" class="Symbol">=</a> <a id="1004" href="EquivalenceType.html#1004" class="Bound">B</a><a id="1005" class="Symbol">}</a> <a id="1007" href="EquivalenceType.html#1007" class="Bound">f</a> <a id="1009" class="Symbol">=</a> <a id="1011" class="Symbol">(</a><a id="1012" href="EquivalenceType.html#1012" class="Bound">b</a> <a id="1014" class="Symbol">:</a> <a id="1016" href="EquivalenceType.html#1004" class="Bound">B</a><a id="1017" class="Symbol">)</a> <a id="1019" class="Symbol">→</a> <a id="1021" href="HLevelTypes.html#603" class="Function">isContr</a> <a id="1029" class="Symbol">(</a><a id="1030" href="FibreType.html#537" class="Function">fib</a> <a id="1034" href="EquivalenceType.html#1007" class="Bound">f</a> <a id="1036" href="EquivalenceType.html#1012" class="Bound">b</a><a id="1037" class="Symbol">)</a>
</pre>

Synomyns:
<pre class="Agda">
<a id="map-contractible"></a><a id="1074" href="EquivalenceType.html#1074" class="Function">map-contractible</a> <a id="1091" class="Symbol">=</a> <a id="1093" href="EquivalenceType.html#909" class="Function">isContrMap</a>
</pre>

There exists an equivalence between two types if there exists a
contractible function between them.


<pre class="Agda">
<a id="isEquiv"></a><a id="1231" href="EquivalenceType.html#1231" class="Function">isEquiv</a>
  <a id="1241" class="Symbol">:</a> <a id="1243" class="Symbol">{</a><a id="1244" href="EquivalenceType.html#1244" class="Bound">A</a> <a id="1246" class="Symbol">:</a> <a id="1248" href="Intro.html#2793" class="Function">Type</a> <a id="1253" href="Intro.html#3375" class="Generalizable">ℓᵢ</a><a id="1255" class="Symbol">}</a> <a id="1257" class="Symbol">{</a><a id="1258" href="EquivalenceType.html#1258" class="Bound">B</a> <a id="1260" class="Symbol">:</a> <a id="1262" href="Intro.html#2793" class="Function">Type</a> <a id="1267" href="Intro.html#3378" class="Generalizable">ℓⱼ</a><a id="1269" class="Symbol">}</a>
  <a id="1273" class="Symbol">→</a>  <a id="1276" class="Symbol">(</a><a id="1277" href="EquivalenceType.html#1277" class="Bound">f</a> <a id="1279" class="Symbol">:</a> <a id="1281" href="EquivalenceType.html#1244" class="Bound">A</a> <a id="1283" class="Symbol">→</a> <a id="1285" href="EquivalenceType.html#1258" class="Bound">B</a><a id="1286" class="Symbol">)</a>
  <a id="1290" class="Symbol">→</a> <a id="1292" href="Intro.html#2793" class="Function">Type</a> <a id="1297" class="Symbol">(</a><a id="1298" href="Intro.html#3375" class="Generalizable">ℓᵢ</a> <a id="1301" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="1303" href="Intro.html#3378" class="Generalizable">ℓⱼ</a><a id="1305" class="Symbol">)</a>

<a id="1308" href="EquivalenceType.html#1231" class="Function">isEquiv</a> <a id="1316" href="EquivalenceType.html#1316" class="Bound">f</a> <a id="1318" class="Symbol">=</a> <a id="1320" href="EquivalenceType.html#909" class="Function">isContrMap</a> <a id="1331" href="EquivalenceType.html#1316" class="Bound">f</a>
</pre>

Synomyms:

<pre class="Agda">
<a id="isEquivalence"></a><a id="1369" href="EquivalenceType.html#1369" class="Function">isEquivalence</a>  <a id="1384" class="Symbol">=</a> <a id="1386" href="EquivalenceType.html#1231" class="Function">isEquiv</a>
<a id="is-equivalence"></a><a id="1394" href="EquivalenceType.html#1394" class="Function">is-equivalence</a> <a id="1409" class="Symbol">=</a> <a id="1411" href="EquivalenceType.html#1231" class="Function">isEquiv</a> 
</pre>

### Equivalence Type

<pre class="Agda">
<a id="_≃_"></a><a id="1467" href="EquivalenceType.html#1467" class="Function Operator">_≃_</a>
  <a id="1473" class="Symbol">:</a> <a id="1475" class="Symbol">(</a><a id="1476" href="EquivalenceType.html#1476" class="Bound">A</a> <a id="1478" class="Symbol">:</a> <a id="1480" href="Intro.html#2793" class="Function">Type</a> <a id="1485" href="Intro.html#3375" class="Generalizable">ℓᵢ</a><a id="1487" class="Symbol">)</a> <a id="1489" class="Symbol">(</a><a id="1490" href="EquivalenceType.html#1490" class="Bound">B</a> <a id="1492" class="Symbol">:</a> <a id="1494" href="Intro.html#2793" class="Function">Type</a> <a id="1499" href="Intro.html#3378" class="Generalizable">ℓⱼ</a><a id="1501" class="Symbol">)</a>
  <a id="1505" class="Symbol">→</a> <a id="1507" href="Intro.html#2793" class="Function">Type</a> <a id="1512" class="Symbol">(</a><a id="1513" href="Intro.html#3375" class="Generalizable">ℓᵢ</a> <a id="1516" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="1518" href="Intro.html#3378" class="Generalizable">ℓⱼ</a><a id="1520" class="Symbol">)</a>

<a id="1523" href="EquivalenceType.html#1523" class="Bound">A</a> <a id="1525" href="EquivalenceType.html#1467" class="Function Operator">≃</a> <a id="1527" href="EquivalenceType.html#1527" class="Bound">B</a> <a id="1529" class="Symbol">=</a> <a id="1531" href="BasicTypes.html#1689" class="Function">Σ</a> <a id="1533" class="Symbol">(</a><a id="1534" href="EquivalenceType.html#1523" class="Bound">A</a> <a id="1536" class="Symbol">→</a> <a id="1538" href="EquivalenceType.html#1527" class="Bound">B</a><a id="1539" class="Symbol">)</a> <a id="1541" href="EquivalenceType.html#1231" class="Function">isEquiv</a>
</pre>

<pre class="Agda">
<a id="1574" class="Keyword">module</a> <a id="EquivalenceMaps"></a><a id="1581" href="EquivalenceType.html#1581" class="Module">EquivalenceMaps</a> <a id="1597" class="Symbol">{</a><a id="1598" href="EquivalenceType.html#1598" class="Bound">A</a> <a id="1600" class="Symbol">:</a> <a id="1602" href="Intro.html#2793" class="Function">Type</a> <a id="1607" href="Intro.html#3375" class="Generalizable">ℓᵢ</a><a id="1609" class="Symbol">}</a> <a id="1611" class="Symbol">{</a><a id="1612" href="EquivalenceType.html#1612" class="Bound">B</a> <a id="1614" class="Symbol">:</a> <a id="1616" href="Intro.html#2793" class="Function">Type</a> <a id="1621" href="Intro.html#3378" class="Generalizable">ℓⱼ</a><a id="1623" class="Symbol">}</a> <a id="1625" class="Keyword">where</a>
</pre>

{: .foldable until="4" }
<pre class="Agda">
  <a id="EquivalenceMaps.lemap"></a><a id="1683" href="EquivalenceType.html#1683" class="Function">lemap</a>
    <a id="1693" class="Symbol">:</a> <a id="1695" href="EquivalenceType.html#1598" class="Bound">A</a> <a id="1697" href="EquivalenceType.html#1467" class="Function Operator">≃</a> <a id="1699" href="EquivalenceType.html#1612" class="Bound">B</a>
    <a id="1705" class="Comment">-------</a>
    <a id="1717" class="Symbol">→</a> <a id="1719" class="Symbol">(</a><a id="1720" href="EquivalenceType.html#1598" class="Bound">A</a> <a id="1722" class="Symbol">→</a> <a id="1724" href="EquivalenceType.html#1612" class="Bound">B</a><a id="1725" class="Symbol">)</a>

  <a id="1730" href="EquivalenceType.html#1683" class="Function">lemap</a> <a id="1736" class="Symbol">=</a> <a id="1738" href="BasicTypes.html#1597" class="Field">π₁</a>
</pre>

Synonyms:

<pre class="Agda">
  <a id="EquivalenceMaps.≃-to-→"></a><a id="1779" href="EquivalenceType.html#1779" class="Function">≃-to-→</a> <a id="1786" class="Symbol">=</a> <a id="1788" href="EquivalenceType.html#1683" class="Function">lemap</a>
  <a id="EquivalenceMaps.fun≃"></a><a id="1796" href="EquivalenceType.html#1796" class="Function">fun≃</a>   <a id="1803" class="Symbol">=</a> <a id="1805" href="EquivalenceType.html#1683" class="Function">lemap</a>
  <a id="EquivalenceMaps._∙"></a><a id="1813" href="EquivalenceType.html#1813" class="Function Operator">_∙</a>     <a id="1820" class="Symbol">=</a> <a id="1822" href="EquivalenceType.html#1683" class="Function">lemap</a>
  <a id="EquivalenceMaps._∙→"></a><a id="1830" href="EquivalenceType.html#1830" class="Function Operator">_∙→</a>    <a id="1837" class="Symbol">=</a> <a id="1839" href="EquivalenceType.html#1683" class="Function">lemap</a>
  <a id="EquivalenceMaps.apply"></a><a id="1847" href="EquivalenceType.html#1847" class="Function">apply</a>  <a id="1854" class="Symbol">=</a> <a id="1856" href="EquivalenceType.html#1683" class="Function">lemap</a>

  <a id="1865" class="Keyword">infixl</a> <a id="1872" class="Number">70</a> <a id="1875" href="EquivalenceType.html#1813" class="Function Operator">_∙</a> <a id="1878" href="EquivalenceType.html#1830" class="Function Operator">_∙→</a>
</pre>

{: .foldable until="4"}
<pre class="Agda">
  <a id="EquivalenceMaps.remap"></a><a id="1933" href="EquivalenceType.html#1933" class="Function">remap</a>
    <a id="1943" class="Symbol">:</a> <a id="1945" href="EquivalenceType.html#1598" class="Bound">A</a> <a id="1947" href="EquivalenceType.html#1467" class="Function Operator">≃</a> <a id="1949" href="EquivalenceType.html#1612" class="Bound">B</a>
    <a id="1955" class="Comment">---------</a>
    <a id="1969" class="Symbol">→</a> <a id="1971" class="Symbol">(</a><a id="1972" href="EquivalenceType.html#1612" class="Bound">B</a> <a id="1974" class="Symbol">→</a> <a id="1976" href="EquivalenceType.html#1598" class="Bound">A</a><a id="1977" class="Symbol">)</a>

  <a id="1982" href="EquivalenceType.html#1933" class="Function">remap</a> <a id="1988" class="Symbol">(</a><a id="1989" href="EquivalenceType.html#1989" class="Bound">f</a> <a id="1991" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="1993" href="EquivalenceType.html#1993" class="Bound">contrf</a><a id="1999" class="Symbol">)</a> <a id="2001" href="EquivalenceType.html#2001" class="Bound">b</a> <a id="2003" class="Symbol">=</a> <a id="2005" href="BasicTypes.html#1597" class="Field">π₁</a> <a id="2008" class="Symbol">(</a><a id="2009" href="BasicTypes.html#1597" class="Field">π₁</a> <a id="2012" class="Symbol">(</a><a id="2013" href="EquivalenceType.html#1993" class="Bound">contrf</a> <a id="2020" href="EquivalenceType.html#2001" class="Bound">b</a><a id="2021" class="Symbol">))</a>
</pre>

<pre class="Agda">
  <a id="EquivalenceMaps.≃-to-←"></a><a id="2051" href="EquivalenceType.html#2051" class="Function">≃-to-←</a>  <a id="2059" class="Symbol">=</a> <a id="2061" href="EquivalenceType.html#1933" class="Function">remap</a>
  <a id="EquivalenceMaps.invfun≃"></a><a id="2069" href="EquivalenceType.html#2069" class="Function">invfun≃</a> <a id="2077" class="Symbol">=</a> <a id="2079" href="EquivalenceType.html#1933" class="Function">remap</a>
  <a id="EquivalenceMaps._∙←"></a><a id="2087" href="EquivalenceType.html#2087" class="Function Operator">_∙←</a>     <a id="2095" class="Symbol">=</a> <a id="2097" href="EquivalenceType.html#1933" class="Function">remap</a>

  <a id="2106" class="Keyword">infixl</a> <a id="2113" class="Number">70</a> <a id="2116" href="EquivalenceType.html#2087" class="Function Operator">_∙←</a>
</pre>

The maps of an equivalence are inverses in particular

{: .foldable until="4" }
<pre class="Agda">
  <a id="EquivalenceMaps.lrmap-inverse"></a><a id="2227" href="EquivalenceType.html#2227" class="Function">lrmap-inverse</a>
    <a id="2245" class="Symbol">:</a> <a id="2247" class="Symbol">(</a><a id="2248" href="EquivalenceType.html#2248" class="Bound">e</a> <a id="2250" class="Symbol">:</a> <a id="2252" href="EquivalenceType.html#1598" class="Bound">A</a> <a id="2254" href="EquivalenceType.html#1467" class="Function Operator">≃</a> <a id="2256" href="EquivalenceType.html#1612" class="Bound">B</a><a id="2257" class="Symbol">)</a> <a id="2259" class="Symbol">→</a> <a id="2261" class="Symbol">{</a><a id="2262" href="EquivalenceType.html#2262" class="Bound">b</a> <a id="2264" class="Symbol">:</a> <a id="2266" href="EquivalenceType.html#1612" class="Bound">B</a><a id="2267" class="Symbol">}</a>
    <a id="2273" class="Comment">-----------------------</a>
    <a id="2301" class="Symbol">→</a> <a id="2303" class="Symbol">(</a><a id="2304" href="EquivalenceType.html#2248" class="Bound">e</a> <a id="2306" href="EquivalenceType.html#1830" class="Function Operator">∙→</a><a id="2308" class="Symbol">)</a> <a id="2310" class="Symbol">((</a><a id="2312" href="EquivalenceType.html#2248" class="Bound">e</a> <a id="2314" href="EquivalenceType.html#2087" class="Function Operator">∙←</a><a id="2316" class="Symbol">)</a> <a id="2318" href="EquivalenceType.html#2262" class="Bound">b</a><a id="2319" class="Symbol">)</a> <a id="2321" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="2324" href="EquivalenceType.html#2262" class="Bound">b</a>

  <a id="2329" href="EquivalenceType.html#2227" class="Function">lrmap-inverse</a> <a id="2343" class="Symbol">(</a><a id="2344" href="EquivalenceType.html#2344" class="Bound">f</a> <a id="2346" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="2348" href="EquivalenceType.html#2348" class="Bound">eqf</a><a id="2351" class="Symbol">)</a> <a id="2353" class="Symbol">{</a><a id="2354" href="EquivalenceType.html#2354" class="Bound">b</a><a id="2355" class="Symbol">}</a> <a id="2357" class="Symbol">=</a> <a id="2359" href="FibreType.html#690" class="Function">fib-eq</a> <a id="2366" class="Symbol">(</a><a id="2367" href="BasicTypes.html#1597" class="Field">π₁</a> <a id="2370" class="Symbol">(</a><a id="2371" href="EquivalenceType.html#2348" class="Bound">eqf</a> <a id="2375" href="EquivalenceType.html#2354" class="Bound">b</a><a id="2376" class="Symbol">))</a>
</pre>

<pre class="Agda">
  <a id="EquivalenceMaps.∙→∘∙←"></a><a id="2406" href="EquivalenceType.html#2406" class="Function">∙→∘∙←</a> <a id="2412" class="Symbol">=</a> <a id="2414" href="EquivalenceType.html#2227" class="Function">lrmap-inverse</a>
</pre>

{: .foldable until="4" }
<pre class="Agda">
  <a id="EquivalenceMaps.rlmap-inverse"></a><a id="2480" href="EquivalenceType.html#2480" class="Function">rlmap-inverse</a>
    <a id="2498" class="Symbol">:</a> <a id="2500" class="Symbol">(</a><a id="2501" href="EquivalenceType.html#2501" class="Bound">e</a> <a id="2503" class="Symbol">:</a> <a id="2505" href="EquivalenceType.html#1598" class="Bound">A</a> <a id="2507" href="EquivalenceType.html#1467" class="Function Operator">≃</a> <a id="2509" href="EquivalenceType.html#1612" class="Bound">B</a><a id="2510" class="Symbol">)</a> <a id="2512" class="Symbol">→</a> <a id="2514" class="Symbol">{</a><a id="2515" href="EquivalenceType.html#2515" class="Bound">a</a> <a id="2517" class="Symbol">:</a> <a id="2519" href="EquivalenceType.html#1598" class="Bound">A</a><a id="2520" class="Symbol">}</a>
    <a id="2526" class="Comment">------------------------</a>
    <a id="2555" class="Symbol">→</a> <a id="2557" class="Symbol">(</a><a id="2558" href="EquivalenceType.html#2501" class="Bound">e</a> <a id="2560" href="EquivalenceType.html#2087" class="Function Operator">∙←</a><a id="2562" class="Symbol">)</a> <a id="2564" class="Symbol">((</a><a id="2566" href="EquivalenceType.html#2501" class="Bound">e</a> <a id="2568" href="EquivalenceType.html#1830" class="Function Operator">∙→</a><a id="2570" class="Symbol">)</a> <a id="2572" href="EquivalenceType.html#2515" class="Bound">a</a><a id="2573" class="Symbol">)</a> <a id="2575" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="2578" href="EquivalenceType.html#2515" class="Bound">a</a>

  <a id="2583" href="EquivalenceType.html#2480" class="Function">rlmap-inverse</a> <a id="2597" class="Symbol">(</a><a id="2598" href="EquivalenceType.html#2598" class="Bound">f</a> <a id="2600" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="2602" href="EquivalenceType.html#2602" class="Bound">eqf</a><a id="2605" class="Symbol">)</a> <a id="2607" class="Symbol">{</a><a id="2608" href="EquivalenceType.html#2608" class="Bound">a</a><a id="2609" class="Symbol">}</a> <a id="2611" class="Symbol">=</a> <a id="2613" href="AlgebraOnPaths.html#389" class="Function">ap</a> <a id="2616" href="BasicTypes.html#1597" class="Field">π₁</a> <a id="2619" class="Symbol">((</a><a id="2621" href="BasicTypes.html#1608" class="Field">π₂</a> <a id="2624" class="Symbol">(</a><a id="2625" href="EquivalenceType.html#2602" class="Bound">eqf</a> <a id="2629" class="Symbol">(</a><a id="2630" href="EquivalenceType.html#2598" class="Bound">f</a> <a id="2632" href="EquivalenceType.html#2608" class="Bound">a</a><a id="2633" class="Symbol">)))</a> <a id="2637" href="FibreType.html#906" class="Function">fib-image</a><a id="2646" class="Symbol">)</a>
</pre>
<pre class="Agda">
  <a id="EquivalenceMaps.∙←∘∙→"></a><a id="2674" href="EquivalenceType.html#2674" class="Function">∙←∘∙→</a> <a id="2680" class="Symbol">=</a> <a id="2682" href="EquivalenceType.html#2480" class="Function">rlmap-inverse</a>
</pre>

{: .foldable until="4" }
<pre class="Agda">
  <a id="EquivalenceMaps.lrmap-inverse-h"></a><a id="2748" href="EquivalenceType.html#2748" class="Function">lrmap-inverse-h</a>
    <a id="2768" class="Symbol">:</a> <a id="2770" class="Symbol">(</a><a id="2771" href="EquivalenceType.html#2771" class="Bound">e</a> <a id="2773" class="Symbol">:</a> <a id="2775" href="EquivalenceType.html#1598" class="Bound">A</a> <a id="2777" href="EquivalenceType.html#1467" class="Function Operator">≃</a> <a id="2779" href="EquivalenceType.html#1612" class="Bound">B</a><a id="2780" class="Symbol">)</a>
    <a id="2786" class="Comment">------------------------</a>
    <a id="2815" class="Symbol">→</a> <a id="2817" class="Symbol">((</a><a id="2819" href="EquivalenceType.html#2771" class="Bound">e</a> <a id="2821" href="EquivalenceType.html#1830" class="Function Operator">∙→</a><a id="2823" class="Symbol">)</a> <a id="2825" href="BasicFunctions.html#1012" class="Function Operator">∘</a> <a id="2827" class="Symbol">(</a><a id="2828" href="EquivalenceType.html#2771" class="Bound">e</a> <a id="2830" href="EquivalenceType.html#2087" class="Function Operator">∙←</a><a id="2832" class="Symbol">))</a> <a id="2835" href="HomotopyType.html#989" class="Function Operator">∼</a> <a id="2837" href="BasicFunctions.html#375" class="Function">id</a>

  <a id="2843" href="EquivalenceType.html#2748" class="Function">lrmap-inverse-h</a> <a id="2859" href="EquivalenceType.html#2859" class="Bound">e</a> <a id="2861" class="Symbol">=</a> <a id="2863" class="Symbol">λ</a> <a id="2865" href="EquivalenceType.html#2865" class="Bound">x</a> <a id="2867" class="Symbol">→</a> <a id="2869" href="EquivalenceType.html#2227" class="Function">lrmap-inverse</a> <a id="2883" href="EquivalenceType.html#2859" class="Bound">e</a> <a id="2885" class="Symbol">{</a><a id="2886" href="EquivalenceType.html#2865" class="Bound">x</a><a id="2887" class="Symbol">}</a>
</pre>

<pre class="Agda">
  <a id="EquivalenceMaps.∙→∘∙←-h"></a><a id="2916" href="EquivalenceType.html#2916" class="Function">∙→∘∙←-h</a> <a id="2924" class="Symbol">=</a> <a id="2926" href="EquivalenceType.html#2748" class="Function">lrmap-inverse-h</a>
</pre>

{: .foldable until="4" }
<pre class="Agda">
  <a id="EquivalenceMaps.rlmap-inverse-h"></a><a id="2994" href="EquivalenceType.html#2994" class="Function">rlmap-inverse-h</a>
    <a id="3014" class="Symbol">:</a> <a id="3016" class="Symbol">(</a><a id="3017" href="EquivalenceType.html#3017" class="Bound">e</a> <a id="3019" class="Symbol">:</a> <a id="3021" href="EquivalenceType.html#1598" class="Bound">A</a> <a id="3023" href="EquivalenceType.html#1467" class="Function Operator">≃</a> <a id="3025" href="EquivalenceType.html#1612" class="Bound">B</a><a id="3026" class="Symbol">)</a>
    <a id="3032" class="Comment">------------------------</a>
    <a id="3061" class="Symbol">→</a> <a id="3063" class="Symbol">((</a><a id="3065" href="EquivalenceType.html#3017" class="Bound">e</a> <a id="3067" href="EquivalenceType.html#2087" class="Function Operator">∙←</a><a id="3069" class="Symbol">)</a> <a id="3071" href="BasicFunctions.html#1012" class="Function Operator">∘</a> <a id="3073" class="Symbol">(</a><a id="3074" href="EquivalenceType.html#3017" class="Bound">e</a> <a id="3076" href="EquivalenceType.html#1830" class="Function Operator">∙→</a><a id="3078" class="Symbol">))</a> <a id="3081" href="HomotopyType.html#989" class="Function Operator">∼</a> <a id="3083" href="BasicFunctions.html#375" class="Function">id</a>

  <a id="3089" href="EquivalenceType.html#2994" class="Function">rlmap-inverse-h</a> <a id="3105" href="EquivalenceType.html#3105" class="Bound">e</a> <a id="3107" class="Symbol">=</a> <a id="3109" class="Symbol">λ</a> <a id="3111" href="EquivalenceType.html#3111" class="Bound">x</a> <a id="3113" class="Symbol">→</a> <a id="3115" href="EquivalenceType.html#2480" class="Function">rlmap-inverse</a> <a id="3129" href="EquivalenceType.html#3105" class="Bound">e</a> <a id="3131" class="Symbol">{</a><a id="3132" href="EquivalenceType.html#3111" class="Bound">x</a><a id="3133" class="Symbol">}</a>
</pre>

<pre class="Agda">
  <a id="EquivalenceMaps.∙←∘∙→-h"></a><a id="3162" href="EquivalenceType.html#3162" class="Function">∙←∘∙→-h</a> <a id="3170" class="Symbol">=</a> <a id="3172" href="EquivalenceType.html#2994" class="Function">rlmap-inverse-h</a>
</pre>

<pre class="Agda">
<a id="3213" class="Keyword">open</a> <a id="3218" href="EquivalenceType.html#1581" class="Module">EquivalenceMaps</a> <a id="3234" class="Keyword">public</a>
</pre>
