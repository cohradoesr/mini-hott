---
layout: page
title: "Univalence Lemmas"
category: lemmas functions homotopy
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
<a id="217" class="Symbol">{-#</a> <a id="221" class="Keyword">OPTIONS</a> <a id="229" class="Pragma">--without-K</a> <a id="241" class="Symbol">#-}</a>
<a id="245" class="Keyword">module</a> <a id="252" href="UnivalenceLemmas.html" class="Module">_</a> <a id="254" class="Keyword">where</a>
<a id="260" class="Keyword">open</a> <a id="265" class="Keyword">import</a> <a id="272" href="TransportLemmas.html" class="Module">TransportLemmas</a>
<a id="288" class="Keyword">open</a> <a id="293" class="Keyword">import</a> <a id="300" href="EquivalenceType.html" class="Module">EquivalenceType</a>

<a id="317" class="Keyword">open</a> <a id="322" class="Keyword">import</a> <a id="329" href="HomotopyType.html" class="Module">HomotopyType</a>
<a id="342" class="Keyword">open</a> <a id="347" class="Keyword">import</a> <a id="354" href="FunExtAxiom.html" class="Module">FunExtAxiom</a>

<a id="367" class="Keyword">open</a> <a id="372" class="Keyword">import</a> <a id="379" href="EquivalenceType.html" class="Module">EquivalenceType</a>
<a id="395" class="Keyword">open</a> <a id="400" class="Keyword">import</a> <a id="407" href="QuasiinverseType.html" class="Module">QuasiinverseType</a>
<a id="424" class="Keyword">open</a> <a id="429" class="Keyword">import</a> <a id="436" href="QuasiinverseLemmas.html" class="Module">QuasiinverseLemmas</a>
<a id="455" class="Keyword">open</a> <a id="460" class="Keyword">import</a> <a id="467" href="UnivalenceAxiom.html" class="Module">UnivalenceAxiom</a>
<a id="483" class="Keyword">open</a> <a id="488" class="Keyword">import</a> <a id="495" href="UnivalenceTransport.html" class="Module">UnivalenceTransport</a>
<a id="515" class="Keyword">open</a> <a id="520" class="Keyword">import</a> <a id="527" href="UnivalenceIdEquiv.html" class="Module">UnivalenceIdEquiv</a>
<a id="545" class="Keyword">open</a> <a id="550" class="Keyword">import</a> <a id="557" href="HLevelLemmas.html" class="Module">HLevelLemmas</a>
</pre>
</div>

### Univalence lemmas

<pre class="Agda">
<a id="625" class="Keyword">module</a> <a id="UnivalenceComposition"></a><a id="632" href="UnivalenceLemmas.html#632" class="Module">UnivalenceComposition</a> <a id="654" class="Keyword">where</a>
</pre>


{: .foldable until="6" }
<pre class="Agda">
  <a id="UnivalenceComposition.ua-comp"></a><a id="713" href="UnivalenceLemmas.html#713" class="Function">ua-comp</a>
    <a id="725" class="Symbol">:</a> <a id="727" class="Symbol">{</a><a id="728" href="UnivalenceLemmas.html#728" class="Bound">A</a> <a id="730" href="UnivalenceLemmas.html#730" class="Bound">B</a> <a id="732" href="UnivalenceLemmas.html#732" class="Bound">C</a> <a id="734" class="Symbol">:</a> <a id="736" href="Intro.html#2793" class="Function">Type</a> <a id="741" href="Intro.html#3373" class="Generalizable">ℓ</a><a id="742" class="Symbol">}</a>
    <a id="748" class="Symbol">→</a> <a id="750" class="Symbol">(</a><a id="751" href="UnivalenceLemmas.html#751" class="Bound">α</a> <a id="753" class="Symbol">:</a> <a id="755" href="UnivalenceLemmas.html#728" class="Bound">A</a> <a id="757" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="759" href="UnivalenceLemmas.html#730" class="Bound">B</a><a id="760" class="Symbol">)</a>
    <a id="766" class="Symbol">→</a> <a id="768" class="Symbol">(</a><a id="769" href="UnivalenceLemmas.html#769" class="Bound">β</a> <a id="771" class="Symbol">:</a> <a id="773" href="UnivalenceLemmas.html#730" class="Bound">B</a> <a id="775" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="777" href="UnivalenceLemmas.html#732" class="Bound">C</a><a id="778" class="Symbol">)</a>
    <a id="784" class="Comment">---------------------------------</a>
    <a id="822" class="Symbol">→</a> <a id="824" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="827" class="Symbol">(</a><a id="828" href="UnivalenceLemmas.html#751" class="Bound">α</a> <a id="830" href="QuasiinverseLemmas.html#1962" class="Function Operator">∘≃</a> <a id="833" href="UnivalenceLemmas.html#769" class="Bound">β</a><a id="834" class="Symbol">)</a> <a id="836" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="839" class="Symbol">(</a><a id="840" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="843" href="UnivalenceLemmas.html#751" class="Bound">α</a><a id="844" class="Symbol">)</a> <a id="846" href="BasicFunctions.html#3854" class="Function Operator">·</a> <a id="848" class="Symbol">(</a><a id="849" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="852" href="UnivalenceLemmas.html#769" class="Bound">β</a><a id="853" class="Symbol">)</a>

  <a id="858" href="UnivalenceLemmas.html#713" class="Function">ua-comp</a> <a id="866" href="UnivalenceLemmas.html#866" class="Bound">α</a> <a id="868" href="UnivalenceLemmas.html#868" class="Bound">β</a>  <a id="871" class="Symbol">=</a>
   <a id="876" href="BasicFunctions.html#5405" class="Function Operator">begin</a>
     <a id="887" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="890" class="Symbol">(</a><a id="891" href="UnivalenceLemmas.html#866" class="Bound">α</a> <a id="893" href="QuasiinverseLemmas.html#1962" class="Function Operator">∘≃</a> <a id="896" href="UnivalenceLemmas.html#868" class="Bound">β</a><a id="897" class="Symbol">)</a>
       <a id="906" href="BasicFunctions.html#5212" class="Function Operator">≡⟨</a> <a id="909" href="AlgebraOnPaths.html#389" class="Function">ap</a> <a id="912" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="915" class="Symbol">(</a><a id="916" href="UnivalenceTransport.html#3189" class="Postulate">∘≃-ite-ua</a> <a id="926" href="UnivalenceLemmas.html#866" class="Bound">α</a> <a id="928" href="UnivalenceLemmas.html#868" class="Bound">β</a><a id="929" class="Symbol">)</a> <a id="931" href="BasicFunctions.html#5212" class="Function Operator">⟩</a>
     <a id="938" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="941" class="Symbol">(</a><a id="942" href="UnivalenceAxiom.html#935" class="Function">ite</a> <a id="946" class="Symbol">(</a><a id="947" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="950" href="UnivalenceLemmas.html#866" class="Bound">α</a> <a id="952" href="BasicFunctions.html#3854" class="Function Operator">·</a> <a id="954" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="957" href="UnivalenceLemmas.html#868" class="Bound">β</a><a id="958" class="Symbol">))</a>
       <a id="968" href="BasicFunctions.html#5212" class="Function Operator">≡⟨</a> <a id="971" href="UnivalenceAxiom.html#3003" class="Function">ua-η</a> <a id="976" class="Symbol">((</a><a id="978" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="981" href="UnivalenceLemmas.html#866" class="Bound">α</a><a id="982" class="Symbol">)</a> <a id="984" href="BasicFunctions.html#3854" class="Function Operator">·</a> <a id="986" class="Symbol">(</a><a id="987" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="990" href="UnivalenceLemmas.html#868" class="Bound">β</a><a id="991" class="Symbol">))</a> <a id="994" href="BasicFunctions.html#5212" class="Function Operator">⟩</a>
     <a id="1001" class="Symbol">(</a><a id="1002" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1005" href="UnivalenceLemmas.html#866" class="Bound">α</a><a id="1006" class="Symbol">)</a> <a id="1008" href="BasicFunctions.html#3854" class="Function Operator">·</a> <a id="1010" class="Symbol">(</a><a id="1011" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1014" href="UnivalenceLemmas.html#868" class="Bound">β</a><a id="1015" class="Symbol">)</a>
   <a id="1020" href="BasicFunctions.html#5290" class="Function Operator">∎</a>
</pre>

Inverses are preserved (Type-check this takes ~30min)

{: .foldable until="6"}
<pre class="Agda">
  <a id="1128" class="Keyword">postulate</a>
   <a id="UnivalenceComposition.ua-inv-r"></a><a id="1141" href="UnivalenceLemmas.html#1141" class="Postulate">ua-inv-r</a>
    <a id="1154" class="Symbol">:</a> <a id="1156" class="Symbol">{</a><a id="1157" href="UnivalenceLemmas.html#1157" class="Bound">A</a> <a id="1159" href="UnivalenceLemmas.html#1159" class="Bound">B</a> <a id="1161" class="Symbol">:</a> <a id="1163" href="Intro.html#2793" class="Function">Type</a> <a id="1168" href="Intro.html#3373" class="Generalizable">ℓ</a><a id="1169" class="Symbol">}</a>
    <a id="1175" class="Symbol">→</a> <a id="1177" class="Symbol">(</a><a id="1178" href="UnivalenceLemmas.html#1178" class="Bound">α</a> <a id="1180" class="Symbol">:</a> <a id="1182" href="UnivalenceLemmas.html#1157" class="Bound">A</a> <a id="1184" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="1186" href="UnivalenceLemmas.html#1159" class="Bound">B</a><a id="1187" class="Symbol">)</a>
    <a id="1193" class="Comment">-------------------------------</a>
    <a id="1229" class="Symbol">→</a> <a id="1231" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1234" href="UnivalenceLemmas.html#1178" class="Bound">α</a> <a id="1236" href="BasicFunctions.html#3854" class="Function Operator">·</a> <a id="1238" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1241" class="Symbol">(</a><a id="1242" href="QuasiinverseLemmas.html#2029" class="Function">≃-sym</a> <a id="1248" href="UnivalenceLemmas.html#1178" class="Bound">α</a><a id="1249" class="Symbol">)</a> <a id="1251" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="1254" href="BasicTypes.html#4630" class="Function">refl</a> <a id="1259" href="UnivalenceLemmas.html#1157" class="Bound">A</a>

  <a id="1264" class="Comment">{-
  ua-inv-r {A = A} α =
    begin
      ua α · ua (≃-sym α)
        ==⟨ ! (ua-comp α (≃-sym α)) ⟩
      ua (≃-trans α (≃-sym α))
        ==⟨ ap ua (≃-trans-inv α) ⟩
      ua idEqv
        ==⟨ UnivalenceLemmas.ua-id ⟩
      refl A
    ∎
  -}</a>
</pre>

{: .foldable until="5" }
<pre class="Agda">
  <a id="UnivalenceComposition.ua-inv"></a><a id="1559" href="UnivalenceLemmas.html#1559" class="Function">ua-inv</a>
    <a id="1570" class="Symbol">:</a> <a id="1572" class="Symbol">{</a><a id="1573" href="UnivalenceLemmas.html#1573" class="Bound">A</a> <a id="1575" href="UnivalenceLemmas.html#1575" class="Bound">B</a> <a id="1577" class="Symbol">:</a> <a id="1579" href="Intro.html#2793" class="Function">Type</a> <a id="1584" href="Intro.html#3373" class="Generalizable">ℓ</a><a id="1585" class="Symbol">}</a>
    <a id="1591" class="Symbol">→</a> <a id="1593" class="Symbol">(</a><a id="1594" href="UnivalenceLemmas.html#1594" class="Bound">α</a> <a id="1596" class="Symbol">:</a> <a id="1598" href="UnivalenceLemmas.html#1573" class="Bound">A</a> <a id="1600" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="1602" href="UnivalenceLemmas.html#1575" class="Bound">B</a><a id="1603" class="Symbol">)</a>
    <a id="1609" class="Comment">-------------------------</a>
    <a id="1639" class="Symbol">→</a> <a id="1641" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1644" class="Symbol">(</a><a id="1645" href="QuasiinverseLemmas.html#2029" class="Function">≃-sym</a> <a id="1651" href="UnivalenceLemmas.html#1594" class="Bound">α</a><a id="1652" class="Symbol">)</a> <a id="1654" href="BasicTypes.html#4524" class="Function Operator">≡</a> <a id="1656" href="BasicFunctions.html#4249" class="Function Operator">!</a> <a id="1658" class="Symbol">(</a><a id="1659" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1662" href="UnivalenceLemmas.html#1594" class="Bound">α</a><a id="1663" class="Symbol">)</a>

  <a id="1668" href="UnivalenceLemmas.html#1559" class="Function">ua-inv</a> <a id="1675" href="UnivalenceLemmas.html#1675" class="Bound">α</a> <a id="1677" class="Symbol">=</a>
    <a id="1683" href="BasicFunctions.html#5405" class="Function Operator">begin</a>
      <a id="1695" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1698" class="Symbol">(</a><a id="1699" href="QuasiinverseLemmas.html#2029" class="Function">≃-sym</a> <a id="1705" href="UnivalenceLemmas.html#1675" class="Bound">α</a><a id="1706" class="Symbol">)</a>
        <a id="1716" href="BasicFunctions.html#5212" class="Function Operator">≡⟨</a> <a id="1719" href="AlgebraOnPaths.html#389" class="Function">ap</a> <a id="1722" class="Symbol">(</a><a id="1723" href="BasicFunctions.html#3854" class="Function Operator">_·</a> <a id="1726" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1729" class="Symbol">(</a><a id="1730" href="QuasiinverseLemmas.html#2029" class="Function">≃-sym</a> <a id="1736" href="UnivalenceLemmas.html#1675" class="Bound">α</a><a id="1737" class="Symbol">))</a> <a id="1740" class="Symbol">(</a><a id="1741" href="BasicFunctions.html#4249" class="Function Operator">!</a> <a id="1743" class="Symbol">(</a><a id="1744" href="AlgebraOnPaths.html#3012" class="Function">·-linv</a> <a id="1751" class="Symbol">(</a><a id="1752" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1755" href="UnivalenceLemmas.html#1675" class="Bound">α</a><a id="1756" class="Symbol">)))</a> <a id="1760" href="BasicFunctions.html#5212" class="Function Operator">⟩</a>
      <a id="1768" href="BasicFunctions.html#4249" class="Function Operator">!</a> <a id="1770" class="Symbol">(</a><a id="1771" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1774" href="UnivalenceLemmas.html#1675" class="Bound">α</a><a id="1775" class="Symbol">)</a> <a id="1777" href="BasicFunctions.html#3854" class="Function Operator">·</a> <a id="1779" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1782" href="UnivalenceLemmas.html#1675" class="Bound">α</a> <a id="1784" href="BasicFunctions.html#3854" class="Function Operator">·</a> <a id="1786" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1789" class="Symbol">(</a><a id="1790" href="QuasiinverseLemmas.html#2029" class="Function">≃-sym</a> <a id="1796" href="UnivalenceLemmas.html#1675" class="Bound">α</a><a id="1797" class="Symbol">)</a>
        <a id="1807" href="BasicFunctions.html#5212" class="Function Operator">≡⟨</a> <a id="1810" href="AlgebraOnPaths.html#3552" class="Function">·-assoc</a> <a id="1818" class="Symbol">(</a><a id="1819" href="BasicFunctions.html#4249" class="Function Operator">!</a> <a id="1821" class="Symbol">(</a><a id="1822" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1825" href="UnivalenceLemmas.html#1675" class="Bound">α</a><a id="1826" class="Symbol">))</a> <a id="1829" class="Symbol">_</a> <a id="1831" class="Symbol">_</a> <a id="1833" href="BasicFunctions.html#5212" class="Function Operator">⟩</a>
      <a id="1841" href="BasicFunctions.html#4249" class="Function Operator">!</a> <a id="1843" class="Symbol">(</a><a id="1844" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1847" href="UnivalenceLemmas.html#1675" class="Bound">α</a><a id="1848" class="Symbol">)</a> <a id="1850" href="BasicFunctions.html#3854" class="Function Operator">·</a> <a id="1852" class="Symbol">(</a><a id="1853" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1856" href="UnivalenceLemmas.html#1675" class="Bound">α</a> <a id="1858" href="BasicFunctions.html#3854" class="Function Operator">·</a> <a id="1860" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1863" class="Symbol">(</a><a id="1864" href="QuasiinverseLemmas.html#2029" class="Function">≃-sym</a> <a id="1870" href="UnivalenceLemmas.html#1675" class="Bound">α</a><a id="1871" class="Symbol">))</a>
        <a id="1882" href="BasicFunctions.html#5212" class="Function Operator">≡⟨</a> <a id="1885" href="AlgebraOnPaths.html#389" class="Function">ap</a> <a id="1888" class="Symbol">(</a><a id="1889" href="BasicFunctions.html#4249" class="Function Operator">!</a> <a id="1891" class="Symbol">(</a><a id="1892" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1895" href="UnivalenceLemmas.html#1675" class="Bound">α</a><a id="1896" class="Symbol">)</a> <a id="1898" href="BasicFunctions.html#3854" class="Function Operator">·_</a><a id="1900" class="Symbol">)</a> <a id="1902" class="Symbol">(</a><a id="1903" href="UnivalenceLemmas.html#1141" class="Postulate">ua-inv-r</a> <a id="1912" href="UnivalenceLemmas.html#1675" class="Bound">α</a><a id="1913" class="Symbol">)</a> <a id="1915" href="BasicFunctions.html#5212" class="Function Operator">⟩</a>
      <a id="1923" href="BasicFunctions.html#4249" class="Function Operator">!</a> <a id="1925" class="Symbol">(</a><a id="1926" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1929" href="UnivalenceLemmas.html#1675" class="Bound">α</a><a id="1930" class="Symbol">)</a> <a id="1932" href="BasicFunctions.html#3854" class="Function Operator">·</a> <a id="1934" href="BasicTypes.html#4630" class="Function">refl</a> <a id="1939" class="Symbol">_</a>
        <a id="1949" href="BasicFunctions.html#5212" class="Function Operator">≡⟨</a> <a id="1952" href="BasicFunctions.html#4249" class="Function Operator">!</a> <a id="1954" class="Symbol">(</a><a id="1955" href="AlgebraOnPaths.html#2698" class="Function">·-runit</a> <a id="1963" class="Symbol">(</a><a id="1964" href="BasicFunctions.html#4249" class="Function Operator">!</a> <a id="1966" class="Symbol">((</a><a id="1968" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1971" href="UnivalenceLemmas.html#1675" class="Bound">α</a><a id="1972" class="Symbol">))))</a> <a id="1977" href="BasicFunctions.html#5212" class="Function Operator">⟩</a>
      <a id="1985" href="BasicFunctions.html#4249" class="Function Operator">!</a> <a id="1987" class="Symbol">(</a><a id="1988" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1991" href="UnivalenceLemmas.html#1675" class="Bound">α</a><a id="1992" class="Symbol">)</a>
    <a id="1998" href="BasicFunctions.html#5290" class="Function Operator">∎</a>
</pre>
