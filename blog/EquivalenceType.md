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

$$\mathsf{isContr(f)} \cong \mathsf{ishae(f)} \<a id="733" class="Bound">c</a>o<a id="735" class="Bound">n</a>g \<a id="739" class="Bound">m</a>a<a id="741" class="Function">thsf{bi</a>i<a id="749" class="Bound">n</a>v(f)} $$

### Contractible maps

A map is *contractible* if the fiber in any point is contractible, that is, each
element has a unique preimagen.

<pre class="Agda">
<a id="isContrMap"></a><a id="910" href="EquivalenceType.html#910" class="Function">isContrMap</a>
  <a id="923" class="Symbol">:</a> <a id="925" class="Symbol">{</a><a id="926" href="EquivalenceType.html#926" class="Bound">A</a> <a id="928" class="Symbol">:</a> <a id="930" href="Intro.html#1803" class="Function">Type</a> <a id="935" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="937" class="Symbol">}</a> <a id="939" class="Symbol">{</a><a id="940" href="EquivalenceType.html#940" class="Bound">B</a> <a id="942" class="Symbol">:</a> <a id="944" href="Intro.html#1803" class="Function">Type</a> <a id="949" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="951" class="Symbol">}</a>
  <a id="955" class="Symbol">→</a> <a id="957" class="Symbol">(</a><a id="958" href="EquivalenceType.html#958" class="Bound">f</a> <a id="960" class="Symbol">:</a> <a id="962" href="EquivalenceType.html#926" class="Bound">A</a> <a id="964" class="Symbol">→</a> <a id="966" href="EquivalenceType.html#940" class="Bound">B</a><a id="967" class="Symbol">)</a>
  <a id="971" class="Symbol">→</a> <a id="973" href="Intro.html#1803" class="Function">Type</a> <a id="978" class="Symbol">(</a><a id="979" href="Intro.html#2245" class="Generalizable">ℓᵢ</a> <a id="982" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="984" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="986" class="Symbol">)</a>

<a id="989" href="EquivalenceType.html#910" class="Function">isContrMap</a> <a id="1000" class="Symbol">{</a><a id="1001" class="Argument">B</a> <a id="1003" class="Symbol">=</a> <a id="1005" href="EquivalenceType.html#1005" class="Bound">B</a><a id="1006" class="Symbol">}</a> <a id="1008" href="EquivalenceType.html#1008" class="Bound">f</a> <a id="1010" class="Symbol">=</a> <a id="1012" class="Symbol">(</a><a id="1013" href="EquivalenceType.html#1013" class="Bound">b</a> <a id="1015" class="Symbol">:</a> <a id="1017" href="EquivalenceType.html#1005" class="Bound">B</a><a id="1018" class="Symbol">)</a> <a id="1020" class="Symbol">→</a> <a id="1022" href="HLevelTypes.html#603" class="Function">isContr</a> <a id="1030" class="Symbol">(</a><a id="1031" href="FibreType.html#537" class="Function">fib</a> <a id="1035" href="EquivalenceType.html#1008" class="Bound">f</a> <a id="1037" href="EquivalenceType.html#1013" class="Bound">b</a><a id="1038" class="Symbol">)</a>


<a id="map-contractible"></a><a id="1042" href="EquivalenceType.html#1042" class="Function">map-contractible</a> <a id="1059" class="Symbol">=</a> <a id="1061" href="EquivalenceType.html#910" class="Function">isContrMap</a>
</pre>

There exists an equivalence between two types if there exists a
contractible function between them.


<pre class="Agda">
<a id="isEquiv"></a><a id="1199" href="EquivalenceType.html#1199" class="Function">isEquiv</a>
  <a id="1209" class="Symbol">:</a> <a id="1211" class="Symbol">{</a><a id="1212" href="EquivalenceType.html#1212" class="Bound">A</a> <a id="1214" class="Symbol">:</a> <a id="1216" href="Intro.html#1803" class="Function">Type</a> <a id="1221" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="1223" class="Symbol">}</a> <a id="1225" class="Symbol">{</a><a id="1226" href="EquivalenceType.html#1226" class="Bound">B</a> <a id="1228" class="Symbol">:</a> <a id="1230" href="Intro.html#1803" class="Function">Type</a> <a id="1235" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1237" class="Symbol">}</a>
  <a id="1241" class="Symbol">→</a>  <a id="1244" class="Symbol">(</a><a id="1245" href="EquivalenceType.html#1245" class="Bound">f</a> <a id="1247" class="Symbol">:</a> <a id="1249" href="EquivalenceType.html#1212" class="Bound">A</a> <a id="1251" class="Symbol">→</a> <a id="1253" href="EquivalenceType.html#1226" class="Bound">B</a><a id="1254" class="Symbol">)</a>
  <a id="1258" class="Symbol">→</a> <a id="1260" href="Intro.html#1803" class="Function">Type</a> <a id="1265" class="Symbol">(</a><a id="1266" href="Intro.html#2245" class="Generalizable">ℓᵢ</a> <a id="1269" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="1271" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1273" class="Symbol">)</a>

<a id="1276" href="EquivalenceType.html#1199" class="Function">isEquiv</a> <a id="1284" href="EquivalenceType.html#1284" class="Bound">f</a> <a id="1286" class="Symbol">=</a> <a id="1288" href="EquivalenceType.html#910" class="Function">isContrMap</a> <a id="1299" href="EquivalenceType.html#1284" class="Bound">f</a>
</pre>

Synomyms:

<pre class="Agda">
<a id="isEquivalence"></a><a id="1337" href="EquivalenceType.html#1337" class="Function">isEquivalence</a>  <a id="1352" class="Symbol">=</a> <a id="1354" href="EquivalenceType.html#1199" class="Function">isEquiv</a>
<a id="is-equivalence"></a><a id="1362" href="EquivalenceType.html#1362" class="Function">is-equivalence</a> <a id="1377" class="Symbol">=</a> <a id="1379" href="EquivalenceType.html#1199" class="Function">isEquiv</a> 
</pre>

### Equivalence Type

<pre class="Agda">
<a id="_≃_"></a><a id="1435" href="EquivalenceType.html#1435" class="Function Operator">_≃_</a>
  <a id="1441" class="Symbol">:</a> <a id="1443" class="Symbol">(</a><a id="1444" href="EquivalenceType.html#1444" class="Bound">A</a> <a id="1446" class="Symbol">:</a> <a id="1448" href="Intro.html#1803" class="Function">Type</a> <a id="1453" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="1455" class="Symbol">)</a> <a id="1457" class="Symbol">(</a><a id="1458" href="EquivalenceType.html#1458" class="Bound">B</a> <a id="1460" class="Symbol">:</a> <a id="1462" href="Intro.html#1803" class="Function">Type</a> <a id="1467" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1469" class="Symbol">)</a>
  <a id="1473" class="Symbol">→</a> <a id="1475" href="Intro.html#1803" class="Function">Type</a> <a id="1480" class="Symbol">(</a><a id="1481" href="Intro.html#2245" class="Generalizable">ℓᵢ</a> <a id="1484" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="1486" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1488" class="Symbol">)</a>

<a id="1491" href="EquivalenceType.html#1491" class="Bound">A</a> <a id="1493" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="1495" href="EquivalenceType.html#1495" class="Bound">B</a> <a id="1497" class="Symbol">=</a> <a id="1499" href="BasicTypes.html#1689" class="Function">Σ</a> <a id="1501" class="Symbol">(</a><a id="1502" href="EquivalenceType.html#1491" class="Bound">A</a> <a id="1504" class="Symbol">→</a> <a id="1506" href="EquivalenceType.html#1495" class="Bound">B</a><a id="1507" class="Symbol">)</a> <a id="1509" href="EquivalenceType.html#1199" class="Function">isEquiv</a>
</pre>

<pre class="Agda">
<a id="1542" class="Keyword">module</a> <a id="EquivalenceMaps"></a><a id="1549" href="EquivalenceType.html#1549" class="Module">EquivalenceMaps</a> <a id="1565" class="Symbol">{</a><a id="1566" href="EquivalenceType.html#1566" class="Bound">A</a> <a id="1568" class="Symbol">:</a> <a id="1570" href="Intro.html#1803" class="Function">Type</a> <a id="1575" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="1577" class="Symbol">}</a> <a id="1579" class="Symbol">{</a><a id="1580" href="EquivalenceType.html#1580" class="Bound">B</a> <a id="1582" class="Symbol">:</a> <a id="1584" href="Intro.html#1803" class="Function">Type</a> <a id="1589" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1591" class="Symbol">}</a> <a id="1593" class="Keyword">where</a>
</pre>

{: .foldable until="4" }
<pre class="Agda">
  <a id="EquivalenceMaps.lemap"></a><a id="1651" href="EquivalenceType.html#1651" class="Function">lemap</a>
    <a id="1661" class="Symbol">:</a> <a id="1663" href="EquivalenceType.html#1566" class="Bound">A</a> <a id="1665" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="1667" href="EquivalenceType.html#1580" class="Bound">B</a>
    <a id="1673" class="Comment">-------</a>
    <a id="1685" class="Symbol">→</a> <a id="1687" class="Symbol">(</a><a id="1688" href="EquivalenceType.html#1566" class="Bound">A</a> <a id="1690" class="Symbol">→</a> <a id="1692" href="EquivalenceType.html#1580" class="Bound">B</a><a id="1693" class="Symbol">)</a>

  <a id="1698" href="EquivalenceType.html#1651" class="Function">lemap</a> <a id="1704" class="Symbol">=</a> <a id="1706" href="BasicTypes.html#1597" class="Field">π₁</a>
</pre>

Synonyms:

<pre class="Agda">
  <a id="EquivalenceMaps.≃-to-→"></a><a id="1747" href="EquivalenceType.html#1747" class="Function">≃-to-→</a> <a id="1754" class="Symbol">=</a> <a id="1756" href="EquivalenceType.html#1651" class="Function">lemap</a>
  <a id="EquivalenceMaps.fun≃"></a><a id="1764" href="EquivalenceType.html#1764" class="Function">fun≃</a>   <a id="1771" class="Symbol">=</a> <a id="1773" href="EquivalenceType.html#1651" class="Function">lemap</a>
  <a id="EquivalenceMaps._∙"></a><a id="1781" href="EquivalenceType.html#1781" class="Function Operator">_∙</a>     <a id="1788" class="Symbol">=</a> <a id="1790" href="EquivalenceType.html#1651" class="Function">lemap</a>
  <a id="EquivalenceMaps._∙→"></a><a id="1798" href="EquivalenceType.html#1798" class="Function Operator">_∙→</a>    <a id="1805" class="Symbol">=</a> <a id="1807" href="EquivalenceType.html#1651" class="Function">lemap</a>
  <a id="EquivalenceMaps.apply"></a><a id="1815" href="EquivalenceType.html#1815" class="Function">apply</a>  <a id="1822" class="Symbol">=</a> <a id="1824" href="EquivalenceType.html#1651" class="Function">lemap</a>

  <a id="1833" class="Keyword">infixl</a> <a id="1840" class="Number">70</a> <a id="1843" href="EquivalenceType.html#1781" class="Function Operator">_∙</a> <a id="1846" href="EquivalenceType.html#1798" class="Function Operator">_∙→</a>
</pre>

{: .foldable until="4"}
<pre class="Agda">
  <a id="EquivalenceMaps.remap"></a><a id="1901" href="EquivalenceType.html#1901" class="Function">remap</a>
    <a id="1911" class="Symbol">:</a> <a id="1913" href="EquivalenceType.html#1566" class="Bound">A</a> <a id="1915" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="1917" href="EquivalenceType.html#1580" class="Bound">B</a>
    <a id="1923" class="Comment">---------</a>
    <a id="1937" class="Symbol">→</a> <a id="1939" class="Symbol">(</a><a id="1940" href="EquivalenceType.html#1580" class="Bound">B</a> <a id="1942" class="Symbol">→</a> <a id="1944" href="EquivalenceType.html#1566" class="Bound">A</a><a id="1945" class="Symbol">)</a>

  <a id="1950" href="EquivalenceType.html#1901" class="Function">remap</a> <a id="1956" class="Symbol">(</a><a id="1957" href="EquivalenceType.html#1957" class="Bound">f</a> <a id="1959" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="1961" href="EquivalenceType.html#1961" class="Bound">contrf</a><a id="1967" class="Symbol">)</a> <a id="1969" href="EquivalenceType.html#1969" class="Bound">b</a> <a id="1971" class="Symbol">=</a> <a id="1973" href="BasicTypes.html#1597" class="Field">π₁</a> <a id="1976" class="Symbol">(</a><a id="1977" href="BasicTypes.html#1597" class="Field">π₁</a> <a id="1980" class="Symbol">(</a><a id="1981" href="EquivalenceType.html#1961" class="Bound">contrf</a> <a id="1988" href="EquivalenceType.html#1969" class="Bound">b</a><a id="1989" class="Symbol">))</a>
</pre>

<pre class="Agda">
  <a id="EquivalenceMaps.≃-to-←"></a><a id="2019" href="EquivalenceType.html#2019" class="Function">≃-to-←</a>  <a id="2027" class="Symbol">=</a> <a id="2029" href="EquivalenceType.html#1901" class="Function">remap</a>
  <a id="EquivalenceMaps.invfun≃"></a><a id="2037" href="EquivalenceType.html#2037" class="Function">invfun≃</a> <a id="2045" class="Symbol">=</a> <a id="2047" href="EquivalenceType.html#1901" class="Function">remap</a>
  <a id="EquivalenceMaps._∙←"></a><a id="2055" href="EquivalenceType.html#2055" class="Function Operator">_∙←</a>     <a id="2063" class="Symbol">=</a> <a id="2065" href="EquivalenceType.html#1901" class="Function">remap</a>

  <a id="2074" class="Keyword">infixl</a> <a id="2081" class="Number">70</a> <a id="2084" href="EquivalenceType.html#2055" class="Function Operator">_∙←</a>
</pre>

The maps of an equivalence are inverses in particular

{: .foldable until="4" }
<pre class="Agda">
  <a id="EquivalenceMaps.lrmap-inverse"></a><a id="2195" href="EquivalenceType.html#2195" class="Function">lrmap-inverse</a>
    <a id="2213" class="Symbol">:</a> <a id="2215" class="Symbol">(</a><a id="2216" href="EquivalenceType.html#2216" class="Bound">e</a> <a id="2218" class="Symbol">:</a> <a id="2220" href="EquivalenceType.html#1566" class="Bound">A</a> <a id="2222" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="2224" href="EquivalenceType.html#1580" class="Bound">B</a><a id="2225" class="Symbol">)</a> <a id="2227" class="Symbol">→</a> <a id="2229" class="Symbol">{</a><a id="2230" href="EquivalenceType.html#2230" class="Bound">b</a> <a id="2232" class="Symbol">:</a> <a id="2234" href="EquivalenceType.html#1580" class="Bound">B</a><a id="2235" class="Symbol">}</a>
    <a id="2241" class="Comment">-----------------------</a>
    <a id="2269" class="Symbol">→</a> <a id="2271" class="Symbol">(</a><a id="2272" href="EquivalenceType.html#2216" class="Bound">e</a> <a id="2274" href="EquivalenceType.html#1798" class="Function Operator">∙→</a><a id="2276" class="Symbol">)</a> <a id="2278" class="Symbol">((</a><a id="2280" href="EquivalenceType.html#2216" class="Bound">e</a> <a id="2282" href="EquivalenceType.html#2055" class="Function Operator">∙←</a><a id="2284" class="Symbol">)</a> <a id="2286" href="EquivalenceType.html#2230" class="Bound">b</a><a id="2287" class="Symbol">)</a> <a id="2289" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="2292" href="EquivalenceType.html#2230" class="Bound">b</a>

  <a id="2297" href="EquivalenceType.html#2195" class="Function">lrmap-inverse</a> <a id="2311" class="Symbol">(</a><a id="2312" href="EquivalenceType.html#2312" class="Bound">f</a> <a id="2314" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="2316" href="EquivalenceType.html#2316" class="Bound">eqf</a><a id="2319" class="Symbol">)</a> <a id="2321" class="Symbol">{</a><a id="2322" href="EquivalenceType.html#2322" class="Bound">b</a><a id="2323" class="Symbol">}</a> <a id="2325" class="Symbol">=</a> <a id="2327" href="FibreType.html#669" class="Function">fib-eq</a> <a id="2334" class="Symbol">(</a><a id="2335" href="BasicTypes.html#1597" class="Field">π₁</a> <a id="2338" class="Symbol">(</a><a id="2339" href="EquivalenceType.html#2316" class="Bound">eqf</a> <a id="2343" href="EquivalenceType.html#2322" class="Bound">b</a><a id="2344" class="Symbol">))</a>
</pre>

<pre class="Agda">
  <a id="EquivalenceMaps.∙→∘∙←"></a><a id="2374" href="EquivalenceType.html#2374" class="Function">∙→∘∙←</a> <a id="2380" class="Symbol">=</a> <a id="2382" href="EquivalenceType.html#2195" class="Function">lrmap-inverse</a>
</pre>

{: .foldable until="4" }
<pre class="Agda">
  <a id="EquivalenceMaps.rlmap-inverse"></a><a id="2448" href="EquivalenceType.html#2448" class="Function">rlmap-inverse</a>
    <a id="2466" class="Symbol">:</a> <a id="2468" class="Symbol">(</a><a id="2469" href="EquivalenceType.html#2469" class="Bound">e</a> <a id="2471" class="Symbol">:</a> <a id="2473" href="EquivalenceType.html#1566" class="Bound">A</a> <a id="2475" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="2477" href="EquivalenceType.html#1580" class="Bound">B</a><a id="2478" class="Symbol">)</a> <a id="2480" class="Symbol">→</a> <a id="2482" class="Symbol">{</a><a id="2483" href="EquivalenceType.html#2483" class="Bound">a</a> <a id="2485" class="Symbol">:</a> <a id="2487" href="EquivalenceType.html#1566" class="Bound">A</a><a id="2488" class="Symbol">}</a>
    <a id="2494" class="Comment">------------------------</a>
    <a id="2523" class="Symbol">→</a> <a id="2525" class="Symbol">(</a><a id="2526" href="EquivalenceType.html#2469" class="Bound">e</a> <a id="2528" href="EquivalenceType.html#2055" class="Function Operator">∙←</a><a id="2530" class="Symbol">)</a> <a id="2532" class="Symbol">((</a><a id="2534" href="EquivalenceType.html#2469" class="Bound">e</a> <a id="2536" href="EquivalenceType.html#1798" class="Function Operator">∙→</a><a id="2538" class="Symbol">)</a> <a id="2540" href="EquivalenceType.html#2483" class="Bound">a</a><a id="2541" class="Symbol">)</a> <a id="2543" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="2546" href="EquivalenceType.html#2483" class="Bound">a</a>

  <a id="2551" href="EquivalenceType.html#2448" class="Function">rlmap-inverse</a> <a id="2565" class="Symbol">(</a><a id="2566" href="EquivalenceType.html#2566" class="Bound">f</a> <a id="2568" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="2570" href="EquivalenceType.html#2570" class="Bound">eqf</a><a id="2573" class="Symbol">)</a> <a id="2575" class="Symbol">{</a><a id="2576" href="EquivalenceType.html#2576" class="Bound">a</a><a id="2577" class="Symbol">}</a> <a id="2579" class="Symbol">=</a> <a id="2581" href="AlgebraOnPaths.html#389" class="Function">ap</a> <a id="2584" href="BasicTypes.html#1597" class="Field">π₁</a> <a id="2587" class="Symbol">((</a><a id="2589" href="BasicTypes.html#1608" class="Field">π₂</a> <a id="2592" class="Symbol">(</a><a id="2593" href="EquivalenceType.html#2570" class="Bound">eqf</a> <a id="2597" class="Symbol">(</a><a id="2598" href="EquivalenceType.html#2566" class="Bound">f</a> <a id="2600" href="EquivalenceType.html#2576" class="Bound">a</a><a id="2601" class="Symbol">)))</a> <a id="2605" href="FibreType.html#885" class="Function">fib-image</a><a id="2614" class="Symbol">)</a>
</pre>
<pre class="Agda">
  <a id="EquivalenceMaps.∙←∘∙→"></a><a id="2642" href="EquivalenceType.html#2642" class="Function">∙←∘∙→</a> <a id="2648" class="Symbol">=</a> <a id="2650" href="EquivalenceType.html#2448" class="Function">rlmap-inverse</a>
</pre>

{: .foldable until="4" }
<pre class="Agda">
  <a id="EquivalenceMaps.lrmap-inverse-h"></a><a id="2716" href="EquivalenceType.html#2716" class="Function">lrmap-inverse-h</a>
    <a id="2736" class="Symbol">:</a> <a id="2738" class="Symbol">(</a><a id="2739" href="EquivalenceType.html#2739" class="Bound">e</a> <a id="2741" class="Symbol">:</a> <a id="2743" href="EquivalenceType.html#1566" class="Bound">A</a> <a id="2745" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="2747" href="EquivalenceType.html#1580" class="Bound">B</a><a id="2748" class="Symbol">)</a>
    <a id="2754" class="Comment">------------------------</a>
    <a id="2783" class="Symbol">→</a> <a id="2785" class="Symbol">((</a><a id="2787" href="EquivalenceType.html#2739" class="Bound">e</a> <a id="2789" href="EquivalenceType.html#1798" class="Function Operator">∙→</a><a id="2791" class="Symbol">)</a> <a id="2793" href="BasicFunctions.html#1011" class="Function Operator">∘</a> <a id="2795" class="Symbol">(</a><a id="2796" href="EquivalenceType.html#2739" class="Bound">e</a> <a id="2798" href="EquivalenceType.html#2055" class="Function Operator">∙←</a><a id="2800" class="Symbol">))</a> <a id="2803" href="HomotopyType.html#989" class="Function Operator">∼</a> <a id="2805" href="BasicFunctions.html#375" class="Function">id</a>

  <a id="2811" href="EquivalenceType.html#2716" class="Function">lrmap-inverse-h</a> <a id="2827" href="EquivalenceType.html#2827" class="Bound">e</a> <a id="2829" class="Symbol">=</a> <a id="2831" class="Symbol">λ</a> <a id="2833" href="EquivalenceType.html#2833" class="Bound">x</a> <a id="2835" class="Symbol">→</a> <a id="2837" href="EquivalenceType.html#2195" class="Function">lrmap-inverse</a> <a id="2851" href="EquivalenceType.html#2827" class="Bound">e</a> <a id="2853" class="Symbol">{</a><a id="2854" href="EquivalenceType.html#2833" class="Bound">x</a><a id="2855" class="Symbol">}</a>
</pre>

<pre class="Agda">
  <a id="EquivalenceMaps.∙→∘∙←-h"></a><a id="2884" href="EquivalenceType.html#2884" class="Function">∙→∘∙←-h</a> <a id="2892" class="Symbol">=</a> <a id="2894" href="EquivalenceType.html#2716" class="Function">lrmap-inverse-h</a>
</pre>

{: .foldable until="4" }
<pre class="Agda">
  <a id="EquivalenceMaps.rlmap-inverse-h"></a><a id="2962" href="EquivalenceType.html#2962" class="Function">rlmap-inverse-h</a>
    <a id="2982" class="Symbol">:</a> <a id="2984" class="Symbol">(</a><a id="2985" href="EquivalenceType.html#2985" class="Bound">e</a> <a id="2987" class="Symbol">:</a> <a id="2989" href="EquivalenceType.html#1566" class="Bound">A</a> <a id="2991" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="2993" href="EquivalenceType.html#1580" class="Bound">B</a><a id="2994" class="Symbol">)</a>
    <a id="3000" class="Comment">------------------------</a>
    <a id="3029" class="Symbol">→</a> <a id="3031" class="Symbol">((</a><a id="3033" href="EquivalenceType.html#2985" class="Bound">e</a> <a id="3035" href="EquivalenceType.html#2055" class="Function Operator">∙←</a><a id="3037" class="Symbol">)</a> <a id="3039" href="BasicFunctions.html#1011" class="Function Operator">∘</a> <a id="3041" class="Symbol">(</a><a id="3042" href="EquivalenceType.html#2985" class="Bound">e</a> <a id="3044" href="EquivalenceType.html#1798" class="Function Operator">∙→</a><a id="3046" class="Symbol">))</a> <a id="3049" href="HomotopyType.html#989" class="Function Operator">∼</a> <a id="3051" href="BasicFunctions.html#375" class="Function">id</a>

  <a id="3057" href="EquivalenceType.html#2962" class="Function">rlmap-inverse-h</a> <a id="3073" href="EquivalenceType.html#3073" class="Bound">e</a> <a id="3075" class="Symbol">=</a> <a id="3077" class="Symbol">λ</a> <a id="3079" href="EquivalenceType.html#3079" class="Bound">x</a> <a id="3081" class="Symbol">→</a> <a id="3083" href="EquivalenceType.html#2448" class="Function">rlmap-inverse</a> <a id="3097" href="EquivalenceType.html#3073" class="Bound">e</a> <a id="3099" class="Symbol">{</a><a id="3100" href="EquivalenceType.html#3079" class="Bound">x</a><a id="3101" class="Symbol">}</a>
</pre>

<pre class="Agda">
  <a id="EquivalenceMaps.∙←∘∙→-h"></a><a id="3130" href="EquivalenceType.html#3130" class="Function">∙←∘∙→-h</a> <a id="3138" class="Symbol">=</a> <a id="3140" href="EquivalenceType.html#2962" class="Function">rlmap-inverse-h</a>
</pre>

<pre class="Agda">
<a id="3181" class="Keyword">open</a> <a id="3186" href="EquivalenceType.html#1549" class="Module">EquivalenceMaps</a> <a id="3202" class="Keyword">public</a>
</pre>
