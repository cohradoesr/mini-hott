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
<a id="218" class="Keyword">open</a> <a id="223" class="Keyword">import</a> <a id="230" href="EqualityType.html" class="Module">EqualityType</a>
<a id="243" class="Keyword">open</a> <a id="248" class="Keyword">import</a> <a id="255" href="FiberType.html" class="Module">FiberType</a>
<a id="265" class="Keyword">open</a> <a id="270" class="Keyword">import</a> <a id="277" href="ContractibleType.html" class="Module">ContractibleType</a>
<a id="294" class="Keyword">open</a> <a id="299" class="Keyword">import</a> <a id="306" href="Transport.html" class="Module">Transport</a>
<a id="316" class="Keyword">open</a> <a id="321" class="Keyword">import</a> <a id="328" href="HomotopyType.html" class="Module">HomotopyType</a>
</pre>
</div>

<pre class="Agda">
<a id="373" class="Keyword">module</a> <a id="380" href="EquivalenceType.html" class="Module">EquivalenceType</a> <a id="396" class="Keyword">where</a>

  <a id="405" class="Keyword">module</a> <a id="DefinitionOfEquivalence"></a><a id="412" href="EquivalenceType.html#412" class="Module">DefinitionOfEquivalence</a>  <a id="437" class="Symbol">{</a><a id="438" href="EquivalenceType.html#438" class="Bound">ℓᵢ</a> <a id="441" href="EquivalenceType.html#441" class="Bound">ℓⱼ</a><a id="443" class="Symbol">}</a> <a id="445" class="Symbol">{</a><a id="446" href="EquivalenceType.html#446" class="Bound">A</a> <a id="448" class="Symbol">:</a> <a id="450" href="Intro.html#1442" class="Function">Type</a> <a id="455" href="EquivalenceType.html#438" class="Bound">ℓᵢ</a><a id="457" class="Symbol">}</a> <a id="459" class="Symbol">{</a><a id="460" href="EquivalenceType.html#460" class="Bound">B</a> <a id="462" class="Symbol">:</a> <a id="464" href="Intro.html#1442" class="Function">Type</a> <a id="469" href="EquivalenceType.html#441" class="Bound">ℓⱼ</a><a id="471" class="Symbol">}</a> <a id="473" class="Keyword">where</a>
</pre>

<pre class="Agda">
    <a id="508" class="Comment">-- There exists an equivalence between two types if there exists a</a>
    <a id="579" class="Comment">-- contractible function between them.</a>
    <a id="DefinitionOfEquivalence.isEquiv"></a><a id="622" href="EquivalenceType.html#622" class="Function">isEquiv</a> <a id="630" class="Symbol">:</a> <a id="632" class="Symbol">(</a><a id="633" href="EquivalenceType.html#633" class="Bound">f</a> <a id="635" class="Symbol">:</a> <a id="637" href="EquivalenceType.html#446" class="Bound">A</a> <a id="639" class="Symbol">→</a> <a id="641" href="EquivalenceType.html#460" class="Bound">B</a><a id="642" class="Symbol">)</a> <a id="644" class="Symbol">→</a> <a id="646" href="Intro.html#1442" class="Function">Type</a> <a id="651" class="Symbol">(</a><a id="652" href="EquivalenceType.html#438" class="Bound">ℓᵢ</a> <a id="655" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="657" href="EquivalenceType.html#441" class="Bound">ℓⱼ</a><a id="659" class="Symbol">)</a>
    <a id="665" href="EquivalenceType.html#622" class="Function">isEquiv</a> <a id="673" class="Symbol">=</a> <a id="675" href="ContractibleType.html#1048" class="Function">isContrMap</a>
  <a id="688" class="Keyword">open</a> <a id="693" href="EquivalenceType.html#412" class="Module">DefinitionOfEquivalence</a> <a id="717" class="Keyword">public</a>
</pre>

<pre class="Agda">
  <a id="751" class="Comment">-- Equivalence of types.</a>
  <a id="_≃_"></a><a id="778" href="EquivalenceType.html#778" class="Function Operator">_≃_</a> <a id="782" class="Symbol">:</a> <a id="784" class="Symbol">∀</a> <a id="786" class="Symbol">{</a><a id="787" href="EquivalenceType.html#787" class="Bound">ℓᵢ</a> <a id="790" href="EquivalenceType.html#790" class="Bound">ℓⱼ</a><a id="792" class="Symbol">}</a>  <a id="795" class="Symbol">(</a><a id="796" href="EquivalenceType.html#796" class="Bound">A</a> <a id="798" class="Symbol">:</a> <a id="800" href="Intro.html#1442" class="Function">Type</a> <a id="805" href="EquivalenceType.html#787" class="Bound">ℓᵢ</a><a id="807" class="Symbol">)</a> <a id="809" class="Symbol">(</a><a id="810" href="EquivalenceType.html#810" class="Bound">B</a> <a id="812" class="Symbol">:</a> <a id="814" href="Intro.html#1442" class="Function">Type</a> <a id="819" href="EquivalenceType.html#790" class="Bound">ℓⱼ</a><a id="821" class="Symbol">)</a> <a id="823" class="Symbol">→</a> <a id="825" href="Intro.html#1442" class="Function">Type</a> <a id="830" class="Symbol">(</a><a id="831" href="EquivalenceType.html#787" class="Bound">ℓᵢ</a> <a id="834" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="836" href="EquivalenceType.html#790" class="Bound">ℓⱼ</a><a id="838" class="Symbol">)</a>
  <a id="842" href="EquivalenceType.html#842" class="Bound">A</a> <a id="844" href="EquivalenceType.html#778" class="Function Operator">≃</a> <a id="846" href="EquivalenceType.html#846" class="Bound">B</a> <a id="848" class="Symbol">=</a> <a id="850" href="BasicTypes.html#1401" class="Record">Σ</a> <a id="852" class="Symbol">(</a><a id="853" href="EquivalenceType.html#842" class="Bound">A</a> <a id="855" class="Symbol">→</a> <a id="857" href="EquivalenceType.html#846" class="Bound">B</a><a id="858" class="Symbol">)</a> <a id="860" href="EquivalenceType.html#622" class="Function">isEquiv</a>
</pre>

<pre class="Agda">
  <a id="895" class="Keyword">module</a> <a id="EquivalenceMaps"></a><a id="902" href="EquivalenceType.html#902" class="Module">EquivalenceMaps</a> <a id="918" class="Symbol">{</a><a id="919" href="EquivalenceType.html#919" class="Bound">ℓᵢ</a> <a id="922" href="EquivalenceType.html#922" class="Bound">ℓⱼ</a><a id="924" class="Symbol">}</a> <a id="926" class="Symbol">{</a><a id="927" href="EquivalenceType.html#927" class="Bound">A</a> <a id="929" class="Symbol">:</a> <a id="931" href="Intro.html#1442" class="Function">Type</a> <a id="936" href="EquivalenceType.html#919" class="Bound">ℓᵢ</a><a id="938" class="Symbol">}</a> <a id="940" class="Symbol">{</a><a id="941" href="EquivalenceType.html#941" class="Bound">B</a> <a id="943" class="Symbol">:</a> <a id="945" href="Intro.html#1442" class="Function">Type</a> <a id="950" href="EquivalenceType.html#922" class="Bound">ℓⱼ</a><a id="952" class="Symbol">}</a> <a id="954" class="Keyword">where</a>

    <a id="965" class="Comment">-- Maps of an equivalence</a>
    <a id="EquivalenceMaps.lemap"></a><a id="995" href="EquivalenceType.html#995" class="Function">lemap</a> <a id="1001" class="Symbol">:</a> <a id="1003" href="EquivalenceType.html#927" class="Bound">A</a> <a id="1005" href="EquivalenceType.html#778" class="Function Operator">≃</a> <a id="1007" href="EquivalenceType.html#941" class="Bound">B</a> <a id="1009" class="Symbol">→</a> <a id="1011" class="Symbol">(</a><a id="1012" href="EquivalenceType.html#927" class="Bound">A</a> <a id="1014" class="Symbol">→</a> <a id="1016" href="EquivalenceType.html#941" class="Bound">B</a><a id="1017" class="Symbol">)</a>
    <a id="1023" href="EquivalenceType.html#995" class="Function">lemap</a> <a id="1029" class="Symbol">=</a> <a id="1031" href="BasicTypes.html#1495" class="Field">π₁</a>

    <a id="EquivalenceMaps.≃-to-→"></a><a id="1039" href="EquivalenceType.html#1039" class="Function">≃-to-→</a> <a id="1046" class="Symbol">=</a> <a id="1048" href="EquivalenceType.html#995" class="Function">lemap</a>
    <a id="EquivalenceMaps.fun≃"></a><a id="1058" href="EquivalenceType.html#1058" class="Function">fun≃</a>   <a id="1065" class="Symbol">=</a> <a id="1067" href="EquivalenceType.html#995" class="Function">lemap</a>


    <a id="1079" class="Keyword">infixl</a> <a id="1086" class="Number">70</a> <a id="1089" href="EquivalenceType.html#1096" class="Function Operator">_∙</a>
    <a id="EquivalenceMaps._∙"></a><a id="1096" href="EquivalenceType.html#1096" class="Function Operator">_∙</a> <a id="1099" class="Symbol">=</a> <a id="1101" href="EquivalenceType.html#995" class="Function">lemap</a>

    <a id="1112" class="Keyword">infixl</a> <a id="1119" class="Number">70</a> <a id="1122" href="EquivalenceType.html#1130" class="Function Operator">_∙→</a>
    <a id="EquivalenceMaps._∙→"></a><a id="1130" href="EquivalenceType.html#1130" class="Function Operator">_∙→</a> <a id="1134" class="Symbol">=</a> <a id="1136" href="EquivalenceType.html#995" class="Function">lemap</a>

    <a id="EquivalenceMaps.remap"></a><a id="1147" href="EquivalenceType.html#1147" class="Function">remap</a> <a id="1153" class="Symbol">:</a> <a id="1155" href="EquivalenceType.html#927" class="Bound">A</a> <a id="1157" href="EquivalenceType.html#778" class="Function Operator">≃</a> <a id="1159" href="EquivalenceType.html#941" class="Bound">B</a> <a id="1161" class="Symbol">→</a> <a id="1163" class="Symbol">(</a><a id="1164" href="EquivalenceType.html#941" class="Bound">B</a> <a id="1166" class="Symbol">→</a> <a id="1168" href="EquivalenceType.html#927" class="Bound">A</a><a id="1169" class="Symbol">)</a>
    <a id="1175" href="EquivalenceType.html#1147" class="Function">remap</a> <a id="1181" class="Symbol">(</a><a id="1182" href="EquivalenceType.html#1182" class="Bound">f</a> <a id="1184" href="BasicTypes.html#1479" class="InductiveConstructor Operator">,</a> <a id="1186" href="EquivalenceType.html#1186" class="Bound">contrf</a><a id="1192" class="Symbol">)</a> <a id="1194" href="EquivalenceType.html#1194" class="Bound">b</a> <a id="1196" class="Symbol">=</a> <a id="1198" href="BasicTypes.html#1495" class="Field">π₁</a> <a id="1201" class="Symbol">(</a><a id="1202" href="BasicTypes.html#1495" class="Field">π₁</a> <a id="1205" class="Symbol">(</a><a id="1206" href="EquivalenceType.html#1186" class="Bound">contrf</a> <a id="1213" href="EquivalenceType.html#1194" class="Bound">b</a><a id="1214" class="Symbol">))</a>

    <a id="EquivalenceMaps.≃-to-←"></a><a id="1222" href="EquivalenceType.html#1222" class="Function">≃-to-←</a> <a id="1229" class="Symbol">=</a> <a id="1231" href="EquivalenceType.html#1147" class="Function">remap</a>
    <a id="EquivalenceMaps.invfun≃"></a><a id="1241" href="EquivalenceType.html#1241" class="Function">invfun≃</a> <a id="1249" class="Symbol">=</a> <a id="1251" href="EquivalenceType.html#1147" class="Function">remap</a>

    <a id="1262" class="Keyword">infixl</a> <a id="1269" class="Number">70</a> <a id="1272" href="EquivalenceType.html#1280" class="Function Operator">_∙←</a>
    <a id="EquivalenceMaps._∙←"></a><a id="1280" href="EquivalenceType.html#1280" class="Function Operator">_∙←</a> <a id="1284" class="Symbol">=</a> <a id="1286" href="EquivalenceType.html#1147" class="Function">remap</a>
</pre>

<pre class="Agda">
    <a id="1321" class="Comment">-- The maps of an equivalence are inverses in particular</a>
    <a id="EquivalenceMaps.lrmap-inverse"></a><a id="1382" href="EquivalenceType.html#1382" class="Function">lrmap-inverse</a>
      <a id="1402" class="Symbol">:</a> <a id="1404" class="Symbol">(</a><a id="1405" href="EquivalenceType.html#1405" class="Bound">e</a> <a id="1407" class="Symbol">:</a> <a id="1409" href="EquivalenceType.html#927" class="Bound">A</a> <a id="1411" href="EquivalenceType.html#778" class="Function Operator">≃</a> <a id="1413" href="EquivalenceType.html#941" class="Bound">B</a><a id="1414" class="Symbol">)</a> <a id="1416" class="Symbol">→</a> <a id="1418" class="Symbol">{</a><a id="1419" href="EquivalenceType.html#1419" class="Bound">b</a> <a id="1421" class="Symbol">:</a> <a id="1423" href="EquivalenceType.html#941" class="Bound">B</a><a id="1424" class="Symbol">}</a>
      <a id="1432" class="Comment">-----------------------</a>
      <a id="1462" class="Symbol">→</a> <a id="1464" class="Symbol">(</a><a id="1465" href="EquivalenceType.html#1405" class="Bound">e</a> <a id="1467" href="EquivalenceType.html#1130" class="Function Operator">∙→</a><a id="1469" class="Symbol">)</a> <a id="1471" class="Symbol">((</a><a id="1473" href="EquivalenceType.html#1405" class="Bound">e</a> <a id="1475" href="EquivalenceType.html#1280" class="Function Operator">∙←</a><a id="1477" class="Symbol">)</a> <a id="1479" href="EquivalenceType.html#1419" class="Bound">b</a><a id="1480" class="Symbol">)</a> <a id="1482" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="1485" href="EquivalenceType.html#1419" class="Bound">b</a>
    <a id="1491" href="EquivalenceType.html#1382" class="Function">lrmap-inverse</a> <a id="1505" class="Symbol">(</a><a id="1506" href="EquivalenceType.html#1506" class="Bound">f</a> <a id="1508" href="BasicTypes.html#1479" class="InductiveConstructor Operator">,</a> <a id="1510" href="EquivalenceType.html#1510" class="Bound">eqf</a><a id="1513" class="Symbol">)</a> <a id="1515" class="Symbol">{</a><a id="1516" href="EquivalenceType.html#1516" class="Bound">b</a><a id="1517" class="Symbol">}</a> <a id="1519" class="Symbol">=</a> <a id="1521" href="FiberType.html#646" class="Function">fib-eq</a> <a id="1528" class="Symbol">(</a><a id="1529" href="BasicTypes.html#1495" class="Field">π₁</a> <a id="1532" class="Symbol">(</a><a id="1533" href="EquivalenceType.html#1510" class="Bound">eqf</a> <a id="1537" href="EquivalenceType.html#1516" class="Bound">b</a><a id="1538" class="Symbol">))</a>

    <a id="EquivalenceMaps.∙→∘∙←"></a><a id="1546" href="EquivalenceType.html#1546" class="Function">∙→∘∙←</a> <a id="1552" class="Symbol">=</a> <a id="1554" href="EquivalenceType.html#1382" class="Function">lrmap-inverse</a>
</pre>

<pre class="Agda">
    <a id="1597" class="Comment">-- Lem.</a>
    <a id="EquivalenceMaps.rlmap-inverse"></a><a id="1609" href="EquivalenceType.html#1609" class="Function">rlmap-inverse</a>
      <a id="1629" class="Symbol">:</a> <a id="1631" class="Symbol">(</a><a id="1632" href="EquivalenceType.html#1632" class="Bound">e</a> <a id="1634" class="Symbol">:</a> <a id="1636" href="EquivalenceType.html#927" class="Bound">A</a> <a id="1638" href="EquivalenceType.html#778" class="Function Operator">≃</a> <a id="1640" href="EquivalenceType.html#941" class="Bound">B</a><a id="1641" class="Symbol">)</a> <a id="1643" class="Symbol">→</a> <a id="1645" class="Symbol">{</a><a id="1646" href="EquivalenceType.html#1646" class="Bound">a</a> <a id="1648" class="Symbol">:</a> <a id="1650" href="EquivalenceType.html#927" class="Bound">A</a><a id="1651" class="Symbol">}</a>
      <a id="1659" class="Comment">------------------------</a>
      <a id="1690" class="Symbol">→</a> <a id="1692" class="Symbol">(</a><a id="1693" href="EquivalenceType.html#1632" class="Bound">e</a> <a id="1695" href="EquivalenceType.html#1280" class="Function Operator">∙←</a><a id="1697" class="Symbol">)</a> <a id="1699" class="Symbol">((</a><a id="1701" href="EquivalenceType.html#1632" class="Bound">e</a> <a id="1703" href="EquivalenceType.html#1130" class="Function Operator">∙→</a><a id="1705" class="Symbol">)</a> <a id="1707" href="EquivalenceType.html#1646" class="Bound">a</a><a id="1708" class="Symbol">)</a> <a id="1710" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="1713" href="EquivalenceType.html#1646" class="Bound">a</a>

    <a id="1720" href="EquivalenceType.html#1609" class="Function">rlmap-inverse</a> <a id="1734" class="Symbol">(</a><a id="1735" href="EquivalenceType.html#1735" class="Bound">f</a> <a id="1737" href="BasicTypes.html#1479" class="InductiveConstructor Operator">,</a> <a id="1739" href="EquivalenceType.html#1739" class="Bound">eqf</a><a id="1742" class="Symbol">)</a> <a id="1744" class="Symbol">{</a><a id="1745" href="EquivalenceType.html#1745" class="Bound">a</a><a id="1746" class="Symbol">}</a> <a id="1748" class="Symbol">=</a> <a id="1750" href="AlgebraOnPaths.html#442" class="Function">ap</a> <a id="1753" href="BasicTypes.html#1495" class="Field">π₁</a> <a id="1756" class="Symbol">((</a><a id="1758" href="BasicTypes.html#1506" class="Field">π₂</a> <a id="1761" class="Symbol">(</a><a id="1762" href="EquivalenceType.html#1739" class="Bound">eqf</a> <a id="1766" class="Symbol">(</a><a id="1767" href="EquivalenceType.html#1735" class="Bound">f</a> <a id="1769" href="EquivalenceType.html#1745" class="Bound">a</a><a id="1770" class="Symbol">)))</a> <a id="1774" href="FiberType.html#868" class="Function">fib-image</a><a id="1783" class="Symbol">)</a>

    <a id="EquivalenceMaps.∙←∘∙→"></a><a id="1790" href="EquivalenceType.html#1790" class="Function">∙←∘∙→</a> <a id="1796" class="Symbol">=</a> <a id="1798" href="EquivalenceType.html#1609" class="Function">rlmap-inverse</a>
</pre>

<pre class="Agda">
    <a id="1841" class="Comment">-- Lem.</a>
    <a id="EquivalenceMaps.lrmap-inverse-h"></a><a id="1853" href="EquivalenceType.html#1853" class="Function">lrmap-inverse-h</a>
      <a id="1875" class="Symbol">:</a> <a id="1877" class="Symbol">(</a><a id="1878" href="EquivalenceType.html#1878" class="Bound">e</a> <a id="1880" class="Symbol">:</a> <a id="1882" href="EquivalenceType.html#927" class="Bound">A</a> <a id="1884" href="EquivalenceType.html#778" class="Function Operator">≃</a> <a id="1886" href="EquivalenceType.html#941" class="Bound">B</a><a id="1887" class="Symbol">)</a>
      <a id="1895" class="Comment">------------------------------</a>
      <a id="1932" class="Symbol">→</a> <a id="1934" class="Symbol">((</a><a id="1936" href="EquivalenceType.html#1878" class="Bound">e</a> <a id="1938" href="EquivalenceType.html#1130" class="Function Operator">∙→</a><a id="1940" class="Symbol">)</a> <a id="1942" href="BasicFunctions.html#910" class="Function Operator">∘</a> <a id="1944" class="Symbol">(</a><a id="1945" href="EquivalenceType.html#1878" class="Bound">e</a> <a id="1947" href="EquivalenceType.html#1280" class="Function Operator">∙←</a><a id="1949" class="Symbol">))</a> <a id="1952" href="HomotopyType.html#987" class="Function Operator">∼</a> <a id="1954" href="BasicFunctions.html#364" class="Function">id</a>
    <a id="1961" href="EquivalenceType.html#1853" class="Function">lrmap-inverse-h</a> <a id="1977" href="EquivalenceType.html#1977" class="Bound">e</a> <a id="1979" class="Symbol">=</a> <a id="1981" class="Symbol">λ</a> <a id="1983" href="EquivalenceType.html#1983" class="Bound">x</a> <a id="1985" class="Symbol">→</a> <a id="1987" href="EquivalenceType.html#1382" class="Function">lrmap-inverse</a> <a id="2001" href="EquivalenceType.html#1977" class="Bound">e</a> <a id="2003" class="Symbol">{</a><a id="2004" href="EquivalenceType.html#1983" class="Bound">x</a><a id="2005" class="Symbol">}</a>

    <a id="EquivalenceMaps.∙→∘∙←-h"></a><a id="2012" href="EquivalenceType.html#2012" class="Function">∙→∘∙←-h</a> <a id="2020" class="Symbol">=</a> <a id="2022" href="EquivalenceType.html#1853" class="Function">lrmap-inverse-h</a>
</pre>

<pre class="Agda">
    <a id="2067" class="Comment">-- Lem.</a>
    <a id="EquivalenceMaps.rlmap-inverse-h"></a><a id="2079" href="EquivalenceType.html#2079" class="Function">rlmap-inverse-h</a>
      <a id="2101" class="Symbol">:</a> <a id="2103" class="Symbol">(</a><a id="2104" href="EquivalenceType.html#2104" class="Bound">e</a> <a id="2106" class="Symbol">:</a> <a id="2108" href="EquivalenceType.html#927" class="Bound">A</a> <a id="2110" href="EquivalenceType.html#778" class="Function Operator">≃</a> <a id="2112" href="EquivalenceType.html#941" class="Bound">B</a><a id="2113" class="Symbol">)</a>
      <a id="2121" class="Comment">------------------------</a>
      <a id="2152" class="Symbol">→</a> <a id="2154" class="Symbol">((</a><a id="2156" href="EquivalenceType.html#2104" class="Bound">e</a> <a id="2158" href="EquivalenceType.html#1280" class="Function Operator">∙←</a><a id="2160" class="Symbol">)</a> <a id="2162" href="BasicFunctions.html#910" class="Function Operator">∘</a> <a id="2164" class="Symbol">(</a><a id="2165" href="EquivalenceType.html#2104" class="Bound">e</a> <a id="2167" href="EquivalenceType.html#1130" class="Function Operator">∙→</a><a id="2169" class="Symbol">))</a> <a id="2172" href="HomotopyType.html#987" class="Function Operator">∼</a> <a id="2174" href="BasicFunctions.html#364" class="Function">id</a>

    <a id="2182" href="EquivalenceType.html#2079" class="Function">rlmap-inverse-h</a> <a id="2198" href="EquivalenceType.html#2198" class="Bound">e</a> <a id="2200" class="Symbol">=</a> <a id="2202" class="Symbol">λ</a> <a id="2204" href="EquivalenceType.html#2204" class="Bound">x</a> <a id="2206" class="Symbol">→</a> <a id="2208" href="EquivalenceType.html#1609" class="Function">rlmap-inverse</a> <a id="2222" href="EquivalenceType.html#2198" class="Bound">e</a> <a id="2224" class="Symbol">{</a><a id="2225" href="EquivalenceType.html#2204" class="Bound">x</a><a id="2226" class="Symbol">}</a>

    <a id="EquivalenceMaps.∙←∘∙→-h"></a><a id="2233" href="EquivalenceType.html#2233" class="Function">∙←∘∙→-h</a> <a id="2241" class="Symbol">=</a> <a id="2243" href="EquivalenceType.html#2079" class="Function">rlmap-inverse-h</a>

  <a id="2262" class="Keyword">open</a> <a id="2267" href="EquivalenceType.html#902" class="Module">EquivalenceMaps</a> <a id="2283" class="Keyword">public</a>
</pre>