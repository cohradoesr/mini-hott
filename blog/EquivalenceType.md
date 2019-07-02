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

<a id="isContrMap"></a><a id="911" href="EquivalenceType.html#911" class="Function">isContrMap</a>
  <a id="924" class="Symbol">:</a> <a id="926" class="Symbol">{</a><a id="927" href="EquivalenceType.html#927" class="Bound">A</a> <a id="929" class="Symbol">:</a> <a id="931" href="Intro.html#1803" class="Function">Type</a> <a id="936" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="938" class="Symbol">}</a> <a id="940" class="Symbol">{</a><a id="941" href="EquivalenceType.html#941" class="Bound">B</a> <a id="943" class="Symbol">:</a> <a id="945" href="Intro.html#1803" class="Function">Type</a> <a id="950" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="952" class="Symbol">}</a>
  <a id="956" class="Symbol">→</a> <a id="958" class="Symbol">(</a><a id="959" href="EquivalenceType.html#959" class="Bound">f</a> <a id="961" class="Symbol">:</a> <a id="963" href="EquivalenceType.html#927" class="Bound">A</a> <a id="965" class="Symbol">→</a> <a id="967" href="EquivalenceType.html#941" class="Bound">B</a><a id="968" class="Symbol">)</a>
  <a id="972" class="Symbol">→</a> <a id="974" href="Intro.html#1803" class="Function">Type</a> <a id="979" class="Symbol">(</a><a id="980" href="Intro.html#2245" class="Generalizable">ℓᵢ</a> <a id="983" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="985" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="987" class="Symbol">)</a>

<a id="990" href="EquivalenceType.html#911" class="Function">isContrMap</a> <a id="1001" class="Symbol">{</a><a id="1002" class="Argument">B</a> <a id="1004" class="Symbol">=</a> <a id="1006" href="EquivalenceType.html#1006" class="Bound">B</a><a id="1007" class="Symbol">}</a> <a id="1009" href="EquivalenceType.html#1009" class="Bound">f</a> <a id="1011" class="Symbol">=</a> <a id="1013" class="Symbol">(</a><a id="1014" href="EquivalenceType.html#1014" class="Bound">b</a> <a id="1016" class="Symbol">:</a> <a id="1018" href="EquivalenceType.html#1006" class="Bound">B</a><a id="1019" class="Symbol">)</a> <a id="1021" class="Symbol">→</a> <a id="1023" href="HLevelTypes.html#603" class="Function">isContr</a> <a id="1031" class="Symbol">(</a><a id="1032" href="FibreType.html#537" class="Function">fib</a> <a id="1036" href="EquivalenceType.html#1009" class="Bound">f</a> <a id="1038" href="EquivalenceType.html#1014" class="Bound">b</a><a id="1039" class="Symbol">)</a>
</pre>

There exists an equivalence between two types if there exists a
contractible function between them.


<pre class="Agda">
<a id="isEquiv"></a><a id="1168" href="EquivalenceType.html#1168" class="Function">isEquiv</a>
  <a id="1178" class="Symbol">:</a> <a id="1180" class="Symbol">{</a><a id="1181" href="EquivalenceType.html#1181" class="Bound">A</a> <a id="1183" class="Symbol">:</a> <a id="1185" href="Intro.html#1803" class="Function">Type</a> <a id="1190" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="1192" class="Symbol">}</a> <a id="1194" class="Symbol">{</a><a id="1195" href="EquivalenceType.html#1195" class="Bound">B</a> <a id="1197" class="Symbol">:</a> <a id="1199" href="Intro.html#1803" class="Function">Type</a> <a id="1204" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1206" class="Symbol">}</a>
  <a id="1210" class="Symbol">→</a>  <a id="1213" class="Symbol">(</a><a id="1214" href="EquivalenceType.html#1214" class="Bound">f</a> <a id="1216" class="Symbol">:</a> <a id="1218" href="EquivalenceType.html#1181" class="Bound">A</a> <a id="1220" class="Symbol">→</a> <a id="1222" href="EquivalenceType.html#1195" class="Bound">B</a><a id="1223" class="Symbol">)</a>
  <a id="1227" class="Symbol">→</a> <a id="1229" href="Intro.html#1803" class="Function">Type</a> <a id="1234" class="Symbol">(</a><a id="1235" href="Intro.html#2245" class="Generalizable">ℓᵢ</a> <a id="1238" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="1240" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1242" class="Symbol">)</a>

<a id="1245" href="EquivalenceType.html#1168" class="Function">isEquiv</a> <a id="1253" href="EquivalenceType.html#1253" class="Bound">f</a> <a id="1255" class="Symbol">=</a> <a id="1257" href="EquivalenceType.html#911" class="Function">isContrMap</a> <a id="1268" href="EquivalenceType.html#1253" class="Bound">f</a>
</pre>


### Equivalence Type

<pre class="Agda">
<a id="_≃_"></a><a id="1318" href="EquivalenceType.html#1318" class="Function Operator">_≃_</a>
  <a id="1324" class="Symbol">:</a> <a id="1326" class="Symbol">(</a><a id="1327" href="EquivalenceType.html#1327" class="Bound">A</a> <a id="1329" class="Symbol">:</a> <a id="1331" href="Intro.html#1803" class="Function">Type</a> <a id="1336" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="1338" class="Symbol">)</a> <a id="1340" class="Symbol">(</a><a id="1341" href="EquivalenceType.html#1341" class="Bound">B</a> <a id="1343" class="Symbol">:</a> <a id="1345" href="Intro.html#1803" class="Function">Type</a> <a id="1350" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1352" class="Symbol">)</a>
  <a id="1356" class="Symbol">→</a> <a id="1358" href="Intro.html#1803" class="Function">Type</a> <a id="1363" class="Symbol">(</a><a id="1364" href="Intro.html#2245" class="Generalizable">ℓᵢ</a> <a id="1367" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="1369" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1371" class="Symbol">)</a>

<a id="1374" href="EquivalenceType.html#1374" class="Bound">A</a> <a id="1376" href="EquivalenceType.html#1318" class="Function Operator">≃</a> <a id="1378" href="EquivalenceType.html#1378" class="Bound">B</a> <a id="1380" class="Symbol">=</a> <a id="1382" href="BasicTypes.html#1689" class="Function">Σ</a> <a id="1384" class="Symbol">(</a><a id="1385" href="EquivalenceType.html#1374" class="Bound">A</a> <a id="1387" class="Symbol">→</a> <a id="1389" href="EquivalenceType.html#1378" class="Bound">B</a><a id="1390" class="Symbol">)</a> <a id="1392" href="EquivalenceType.html#1168" class="Function">isEquiv</a>
</pre>

<pre class="Agda">
<a id="1425" class="Keyword">module</a> <a id="EquivalenceMaps"></a><a id="1432" href="EquivalenceType.html#1432" class="Module">EquivalenceMaps</a> <a id="1448" class="Symbol">{</a><a id="1449" href="EquivalenceType.html#1449" class="Bound">A</a> <a id="1451" class="Symbol">:</a> <a id="1453" href="Intro.html#1803" class="Function">Type</a> <a id="1458" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="1460" class="Symbol">}</a> <a id="1462" class="Symbol">{</a><a id="1463" href="EquivalenceType.html#1463" class="Bound">B</a> <a id="1465" class="Symbol">:</a> <a id="1467" href="Intro.html#1803" class="Function">Type</a> <a id="1472" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1474" class="Symbol">}</a> <a id="1476" class="Keyword">where</a>
</pre>

<pre class="Agda">
  <a id="EquivalenceMaps.lemap"></a><a id="1509" href="EquivalenceType.html#1509" class="Function">lemap</a>
    <a id="1519" class="Symbol">:</a> <a id="1521" href="EquivalenceType.html#1449" class="Bound">A</a> <a id="1523" href="EquivalenceType.html#1318" class="Function Operator">≃</a> <a id="1525" href="EquivalenceType.html#1463" class="Bound">B</a>
    <a id="1531" class="Comment">-------</a>
    <a id="1543" class="Symbol">→</a> <a id="1545" class="Symbol">(</a><a id="1546" href="EquivalenceType.html#1449" class="Bound">A</a> <a id="1548" class="Symbol">→</a> <a id="1550" href="EquivalenceType.html#1463" class="Bound">B</a><a id="1551" class="Symbol">)</a>

  <a id="1556" href="EquivalenceType.html#1509" class="Function">lemap</a> <a id="1562" class="Symbol">=</a> <a id="1564" href="BasicTypes.html#1597" class="Field">π₁</a>
</pre>

Synonyms:

<pre class="Agda">
  <a id="EquivalenceMaps.≃-to-→"></a><a id="1605" href="EquivalenceType.html#1605" class="Function">≃-to-→</a> <a id="1612" class="Symbol">=</a> <a id="1614" href="EquivalenceType.html#1509" class="Function">lemap</a>
  <a id="EquivalenceMaps.fun≃"></a><a id="1622" href="EquivalenceType.html#1622" class="Function">fun≃</a>   <a id="1629" class="Symbol">=</a> <a id="1631" href="EquivalenceType.html#1509" class="Function">lemap</a>
  <a id="EquivalenceMaps._∙"></a><a id="1639" href="EquivalenceType.html#1639" class="Function Operator">_∙</a>     <a id="1646" class="Symbol">=</a> <a id="1648" href="EquivalenceType.html#1509" class="Function">lemap</a>
  <a id="EquivalenceMaps._∙→"></a><a id="1656" href="EquivalenceType.html#1656" class="Function Operator">_∙→</a>    <a id="1663" class="Symbol">=</a> <a id="1665" href="EquivalenceType.html#1509" class="Function">lemap</a>
  <a id="EquivalenceMaps.apply"></a><a id="1673" href="EquivalenceType.html#1673" class="Function">apply</a>  <a id="1680" class="Symbol">=</a> <a id="1682" href="EquivalenceType.html#1509" class="Function">lemap</a>

  <a id="1691" class="Keyword">infixl</a> <a id="1698" class="Number">70</a> <a id="1701" href="EquivalenceType.html#1639" class="Function Operator">_∙</a> <a id="1704" href="EquivalenceType.html#1656" class="Function Operator">_∙→</a>
</pre>

<pre class="Agda">
  <a id="EquivalenceMaps.remap"></a><a id="1735" href="EquivalenceType.html#1735" class="Function">remap</a>
    <a id="1745" class="Symbol">:</a> <a id="1747" href="EquivalenceType.html#1449" class="Bound">A</a> <a id="1749" href="EquivalenceType.html#1318" class="Function Operator">≃</a> <a id="1751" href="EquivalenceType.html#1463" class="Bound">B</a>
    <a id="1757" class="Comment">---------</a>
    <a id="1771" class="Symbol">→</a> <a id="1773" class="Symbol">(</a><a id="1774" href="EquivalenceType.html#1463" class="Bound">B</a> <a id="1776" class="Symbol">→</a> <a id="1778" href="EquivalenceType.html#1449" class="Bound">A</a><a id="1779" class="Symbol">)</a>

  <a id="1784" href="EquivalenceType.html#1735" class="Function">remap</a> <a id="1790" class="Symbol">(</a><a id="1791" href="EquivalenceType.html#1791" class="Bound">f</a> <a id="1793" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="1795" href="EquivalenceType.html#1795" class="Bound">contrf</a><a id="1801" class="Symbol">)</a> <a id="1803" href="EquivalenceType.html#1803" class="Bound">b</a> <a id="1805" class="Symbol">=</a> <a id="1807" href="BasicTypes.html#1597" class="Field">π₁</a> <a id="1810" class="Symbol">(</a><a id="1811" href="BasicTypes.html#1597" class="Field">π₁</a> <a id="1814" class="Symbol">(</a><a id="1815" href="EquivalenceType.html#1795" class="Bound">contrf</a> <a id="1822" href="EquivalenceType.html#1803" class="Bound">b</a><a id="1823" class="Symbol">))</a>
</pre>

<pre class="Agda">
  <a id="EquivalenceMaps.≃-to-←"></a><a id="1853" href="EquivalenceType.html#1853" class="Function">≃-to-←</a>  <a id="1861" class="Symbol">=</a> <a id="1863" href="EquivalenceType.html#1735" class="Function">remap</a>
  <a id="EquivalenceMaps.invfun≃"></a><a id="1871" href="EquivalenceType.html#1871" class="Function">invfun≃</a> <a id="1879" class="Symbol">=</a> <a id="1881" href="EquivalenceType.html#1735" class="Function">remap</a>
  <a id="EquivalenceMaps._∙←"></a><a id="1889" href="EquivalenceType.html#1889" class="Function Operator">_∙←</a>     <a id="1897" class="Symbol">=</a> <a id="1899" href="EquivalenceType.html#1735" class="Function">remap</a>

  <a id="1908" class="Keyword">infixl</a> <a id="1915" class="Number">70</a> <a id="1918" href="EquivalenceType.html#1889" class="Function Operator">_∙←</a>
</pre>

The maps of an equivalence are inverses in particular
<pre class="Agda">
  <a id="EquivalenceMaps.lrmap-inverse"></a><a id="2003" href="EquivalenceType.html#2003" class="Function">lrmap-inverse</a>
    <a id="2021" class="Symbol">:</a> <a id="2023" class="Symbol">(</a><a id="2024" href="EquivalenceType.html#2024" class="Bound">e</a> <a id="2026" class="Symbol">:</a> <a id="2028" href="EquivalenceType.html#1449" class="Bound">A</a> <a id="2030" href="EquivalenceType.html#1318" class="Function Operator">≃</a> <a id="2032" href="EquivalenceType.html#1463" class="Bound">B</a><a id="2033" class="Symbol">)</a> <a id="2035" class="Symbol">→</a> <a id="2037" class="Symbol">{</a><a id="2038" href="EquivalenceType.html#2038" class="Bound">b</a> <a id="2040" class="Symbol">:</a> <a id="2042" href="EquivalenceType.html#1463" class="Bound">B</a><a id="2043" class="Symbol">}</a>
    <a id="2049" class="Comment">-----------------------</a>
    <a id="2077" class="Symbol">→</a> <a id="2079" class="Symbol">(</a><a id="2080" href="EquivalenceType.html#2024" class="Bound">e</a> <a id="2082" href="EquivalenceType.html#1656" class="Function Operator">∙→</a><a id="2084" class="Symbol">)</a> <a id="2086" class="Symbol">((</a><a id="2088" href="EquivalenceType.html#2024" class="Bound">e</a> <a id="2090" href="EquivalenceType.html#1889" class="Function Operator">∙←</a><a id="2092" class="Symbol">)</a> <a id="2094" href="EquivalenceType.html#2038" class="Bound">b</a><a id="2095" class="Symbol">)</a> <a id="2097" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="2100" href="EquivalenceType.html#2038" class="Bound">b</a>

  <a id="2105" href="EquivalenceType.html#2003" class="Function">lrmap-inverse</a> <a id="2119" class="Symbol">(</a><a id="2120" href="EquivalenceType.html#2120" class="Bound">f</a> <a id="2122" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="2124" href="EquivalenceType.html#2124" class="Bound">eqf</a><a id="2127" class="Symbol">)</a> <a id="2129" class="Symbol">{</a><a id="2130" href="EquivalenceType.html#2130" class="Bound">b</a><a id="2131" class="Symbol">}</a> <a id="2133" class="Symbol">=</a> <a id="2135" href="FibreType.html#669" class="Function">fib-eq</a> <a id="2142" class="Symbol">(</a><a id="2143" href="BasicTypes.html#1597" class="Field">π₁</a> <a id="2146" class="Symbol">(</a><a id="2147" href="EquivalenceType.html#2124" class="Bound">eqf</a> <a id="2151" href="EquivalenceType.html#2130" class="Bound">b</a><a id="2152" class="Symbol">))</a>

  <a id="EquivalenceMaps.∙→∘∙←"></a><a id="2158" href="EquivalenceType.html#2158" class="Function">∙→∘∙←</a> <a id="2164" class="Symbol">=</a> <a id="2166" href="EquivalenceType.html#2003" class="Function">lrmap-inverse</a>
</pre>

<pre class="Agda">
  <a id="EquivalenceMaps.rlmap-inverse"></a><a id="2207" href="EquivalenceType.html#2207" class="Function">rlmap-inverse</a>
    <a id="2225" class="Symbol">:</a> <a id="2227" class="Symbol">(</a><a id="2228" href="EquivalenceType.html#2228" class="Bound">e</a> <a id="2230" class="Symbol">:</a> <a id="2232" href="EquivalenceType.html#1449" class="Bound">A</a> <a id="2234" href="EquivalenceType.html#1318" class="Function Operator">≃</a> <a id="2236" href="EquivalenceType.html#1463" class="Bound">B</a><a id="2237" class="Symbol">)</a> <a id="2239" class="Symbol">→</a> <a id="2241" class="Symbol">{</a><a id="2242" href="EquivalenceType.html#2242" class="Bound">a</a> <a id="2244" class="Symbol">:</a> <a id="2246" href="EquivalenceType.html#1449" class="Bound">A</a><a id="2247" class="Symbol">}</a>
    <a id="2253" class="Comment">------------------------</a>
    <a id="2282" class="Symbol">→</a> <a id="2284" class="Symbol">(</a><a id="2285" href="EquivalenceType.html#2228" class="Bound">e</a> <a id="2287" href="EquivalenceType.html#1889" class="Function Operator">∙←</a><a id="2289" class="Symbol">)</a> <a id="2291" class="Symbol">((</a><a id="2293" href="EquivalenceType.html#2228" class="Bound">e</a> <a id="2295" href="EquivalenceType.html#1656" class="Function Operator">∙→</a><a id="2297" class="Symbol">)</a> <a id="2299" href="EquivalenceType.html#2242" class="Bound">a</a><a id="2300" class="Symbol">)</a> <a id="2302" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="2305" href="EquivalenceType.html#2242" class="Bound">a</a>

  <a id="2310" href="EquivalenceType.html#2207" class="Function">rlmap-inverse</a> <a id="2324" class="Symbol">(</a><a id="2325" href="EquivalenceType.html#2325" class="Bound">f</a> <a id="2327" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="2329" href="EquivalenceType.html#2329" class="Bound">eqf</a><a id="2332" class="Symbol">)</a> <a id="2334" class="Symbol">{</a><a id="2335" href="EquivalenceType.html#2335" class="Bound">a</a><a id="2336" class="Symbol">}</a> <a id="2338" class="Symbol">=</a> <a id="2340" href="AlgebraOnPaths.html#389" class="Function">ap</a> <a id="2343" href="BasicTypes.html#1597" class="Field">π₁</a> <a id="2346" class="Symbol">((</a><a id="2348" href="BasicTypes.html#1608" class="Field">π₂</a> <a id="2351" class="Symbol">(</a><a id="2352" href="EquivalenceType.html#2329" class="Bound">eqf</a> <a id="2356" class="Symbol">(</a><a id="2357" href="EquivalenceType.html#2325" class="Bound">f</a> <a id="2359" href="EquivalenceType.html#2335" class="Bound">a</a><a id="2360" class="Symbol">)))</a> <a id="2364" href="FibreType.html#885" class="Function">fib-image</a><a id="2373" class="Symbol">)</a>

  <a id="EquivalenceMaps.∙←∘∙→"></a><a id="2378" href="EquivalenceType.html#2378" class="Function">∙←∘∙→</a> <a id="2384" class="Symbol">=</a> <a id="2386" href="EquivalenceType.html#2207" class="Function">rlmap-inverse</a>
</pre>

<pre class="Agda">
  <a id="EquivalenceMaps.lrmap-inverse-h"></a><a id="2427" href="EquivalenceType.html#2427" class="Function">lrmap-inverse-h</a>
    <a id="2447" class="Symbol">:</a> <a id="2449" class="Symbol">(</a><a id="2450" href="EquivalenceType.html#2450" class="Bound">e</a> <a id="2452" class="Symbol">:</a> <a id="2454" href="EquivalenceType.html#1449" class="Bound">A</a> <a id="2456" href="EquivalenceType.html#1318" class="Function Operator">≃</a> <a id="2458" href="EquivalenceType.html#1463" class="Bound">B</a><a id="2459" class="Symbol">)</a>
    <a id="2465" class="Comment">------------------------</a>
    <a id="2494" class="Symbol">→</a> <a id="2496" class="Symbol">((</a><a id="2498" href="EquivalenceType.html#2450" class="Bound">e</a> <a id="2500" href="EquivalenceType.html#1656" class="Function Operator">∙→</a><a id="2502" class="Symbol">)</a> <a id="2504" href="BasicFunctions.html#1011" class="Function Operator">∘</a> <a id="2506" class="Symbol">(</a><a id="2507" href="EquivalenceType.html#2450" class="Bound">e</a> <a id="2509" href="EquivalenceType.html#1889" class="Function Operator">∙←</a><a id="2511" class="Symbol">))</a> <a id="2514" href="HomotopyType.html#989" class="Function Operator">∼</a> <a id="2516" href="BasicFunctions.html#375" class="Function">id</a>

  <a id="2522" href="EquivalenceType.html#2427" class="Function">lrmap-inverse-h</a> <a id="2538" href="EquivalenceType.html#2538" class="Bound">e</a> <a id="2540" class="Symbol">=</a> <a id="2542" class="Symbol">λ</a> <a id="2544" href="EquivalenceType.html#2544" class="Bound">x</a> <a id="2546" class="Symbol">→</a> <a id="2548" href="EquivalenceType.html#2003" class="Function">lrmap-inverse</a> <a id="2562" href="EquivalenceType.html#2538" class="Bound">e</a> <a id="2564" class="Symbol">{</a><a id="2565" href="EquivalenceType.html#2544" class="Bound">x</a><a id="2566" class="Symbol">}</a>

  <a id="EquivalenceMaps.∙→∘∙←-h"></a><a id="2571" href="EquivalenceType.html#2571" class="Function">∙→∘∙←-h</a> <a id="2579" class="Symbol">=</a> <a id="2581" href="EquivalenceType.html#2427" class="Function">lrmap-inverse-h</a>
</pre>

<pre class="Agda">
  <a id="EquivalenceMaps.rlmap-inverse-h"></a><a id="2624" href="EquivalenceType.html#2624" class="Function">rlmap-inverse-h</a>
    <a id="2644" class="Symbol">:</a> <a id="2646" class="Symbol">(</a><a id="2647" href="EquivalenceType.html#2647" class="Bound">e</a> <a id="2649" class="Symbol">:</a> <a id="2651" href="EquivalenceType.html#1449" class="Bound">A</a> <a id="2653" href="EquivalenceType.html#1318" class="Function Operator">≃</a> <a id="2655" href="EquivalenceType.html#1463" class="Bound">B</a><a id="2656" class="Symbol">)</a>
    <a id="2662" class="Comment">------------------------</a>
    <a id="2691" class="Symbol">→</a> <a id="2693" class="Symbol">((</a><a id="2695" href="EquivalenceType.html#2647" class="Bound">e</a> <a id="2697" href="EquivalenceType.html#1889" class="Function Operator">∙←</a><a id="2699" class="Symbol">)</a> <a id="2701" href="BasicFunctions.html#1011" class="Function Operator">∘</a> <a id="2703" class="Symbol">(</a><a id="2704" href="EquivalenceType.html#2647" class="Bound">e</a> <a id="2706" href="EquivalenceType.html#1656" class="Function Operator">∙→</a><a id="2708" class="Symbol">))</a> <a id="2711" href="HomotopyType.html#989" class="Function Operator">∼</a> <a id="2713" href="BasicFunctions.html#375" class="Function">id</a>

  <a id="2719" href="EquivalenceType.html#2624" class="Function">rlmap-inverse-h</a> <a id="2735" href="EquivalenceType.html#2735" class="Bound">e</a> <a id="2737" class="Symbol">=</a> <a id="2739" class="Symbol">λ</a> <a id="2741" href="EquivalenceType.html#2741" class="Bound">x</a> <a id="2743" class="Symbol">→</a> <a id="2745" href="EquivalenceType.html#2207" class="Function">rlmap-inverse</a> <a id="2759" href="EquivalenceType.html#2735" class="Bound">e</a> <a id="2761" class="Symbol">{</a><a id="2762" href="EquivalenceType.html#2741" class="Bound">x</a><a id="2763" class="Symbol">}</a>

  <a id="EquivalenceMaps.∙←∘∙→-h"></a><a id="2768" href="EquivalenceType.html#2768" class="Function">∙←∘∙→-h</a> <a id="2776" class="Symbol">=</a> <a id="2778" href="EquivalenceType.html#2624" class="Function">rlmap-inverse-h</a>

<a id="2795" class="Keyword">open</a> <a id="2800" href="EquivalenceType.html#1432" class="Module">EquivalenceMaps</a> <a id="2816" class="Keyword">public</a>
</pre>
