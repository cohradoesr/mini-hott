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
<a id="245" class="Keyword">module</a> <a id="252" href="UnivalenceComposition.html" class="Module">_</a> <a id="254" class="Keyword">where</a>
<a id="260" class="Keyword">open</a> <a id="265" class="Keyword">import</a> <a id="272" href="TransportLemmas.html" class="Module">TransportLemmas</a>
<a id="288" class="Keyword">open</a> <a id="293" class="Keyword">import</a> <a id="300" href="EquivalenceType.html" class="Module">EquivalenceType</a>

<a id="317" class="Keyword">open</a> <a id="322" class="Keyword">import</a> <a id="329" href="HomotopyType.html" class="Module">HomotopyType</a>
<a id="342" class="Keyword">open</a> <a id="347" class="Keyword">import</a> <a id="354" href="FunExtAxiom.html" class="Module">FunExtAxiom</a>

<a id="367" class="Keyword">open</a> <a id="372" class="Keyword">import</a> <a id="379" href="EquivalenceType.html" class="Module">EquivalenceType</a>
<a id="395" class="Keyword">open</a> <a id="400" class="Keyword">import</a> <a id="407" href="QuasiinverseType.html" class="Module">QuasiinverseType</a>
<a id="424" class="Keyword">open</a> <a id="429" class="Keyword">import</a> <a id="436" href="QuasiinverseLemmas.html" class="Module">QuasiinverseLemmas</a>
<a id="455" class="Keyword">open</a> <a id="460" class="Keyword">import</a> <a id="467" href="UnivalenceAxiom.html" class="Module">UnivalenceAxiom</a>
<a id="483" class="Keyword">open</a> <a id="488" class="Keyword">import</a> <a id="495" href="UnivalenceTransport.html" class="Module">UnivalenceTransport</a>
<a id="515" class="Keyword">open</a> <a id="520" class="Keyword">import</a> <a id="527" href="UnivalenceLemmas.html" class="Module">UnivalenceLemmas</a>
<a id="544" class="Keyword">open</a> <a id="549" class="Keyword">import</a> <a id="556" href="HLevelLemmas.html" class="Module">HLevelLemmas</a>
</pre>
</div>

### Univalence lemmas

<pre class="Agda">
<a id="624" class="Keyword">module</a> <a id="UnivalenceComposition"></a><a id="631" href="UnivalenceComposition.html#631" class="Module">UnivalenceComposition</a> <a id="653" class="Keyword">where</a>
</pre>

-
{: .foldable until="6" }
<pre class="Agda">
  <a id="UnivalenceComposition.ua-comp"></a><a id="713" href="UnivalenceComposition.html#713" class="Function">ua-comp</a>
    <a id="725" class="Symbol">:</a> <a id="727" class="Symbol">{</a><a id="728" href="UnivalenceComposition.html#728" class="Bound">A</a> <a id="730" href="UnivalenceComposition.html#730" class="Bound">B</a> <a id="732" href="UnivalenceComposition.html#732" class="Bound">C</a> <a id="734" class="Symbol">:</a> <a id="736" href="Intro.html#2793" class="Function">Type</a> <a id="741" href="Intro.html#3373" class="Generalizable">ℓ</a><a id="742" class="Symbol">}</a>
    <a id="748" class="Symbol">→</a> <a id="750" class="Symbol">(</a><a id="751" href="UnivalenceComposition.html#751" class="Bound">α</a> <a id="753" class="Symbol">:</a> <a id="755" href="UnivalenceComposition.html#728" class="Bound">A</a> <a id="757" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="759" href="UnivalenceComposition.html#730" class="Bound">B</a><a id="760" class="Symbol">)</a>
    <a id="766" class="Symbol">→</a> <a id="768" class="Symbol">(</a><a id="769" href="UnivalenceComposition.html#769" class="Bound">β</a> <a id="771" class="Symbol">:</a> <a id="773" href="UnivalenceComposition.html#730" class="Bound">B</a> <a id="775" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="777" href="UnivalenceComposition.html#732" class="Bound">C</a><a id="778" class="Symbol">)</a>
    <a id="784" class="Comment">---------------------------------</a>
    <a id="822" class="Symbol">→</a> <a id="824" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="827" class="Symbol">(</a><a id="828" href="UnivalenceComposition.html#751" class="Bound">α</a> <a id="830" href="QuasiinverseLemmas.html#1962" class="Function Operator">∘≃</a> <a id="833" href="UnivalenceComposition.html#769" class="Bound">β</a><a id="834" class="Symbol">)</a> <a id="836" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="839" class="Symbol">(</a><a id="840" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="843" href="UnivalenceComposition.html#751" class="Bound">α</a><a id="844" class="Symbol">)</a> <a id="846" href="BasicFunctions.html#3854" class="Function Operator">·</a> <a id="848" class="Symbol">(</a><a id="849" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="852" href="UnivalenceComposition.html#769" class="Bound">β</a><a id="853" class="Symbol">)</a>

  <a id="858" href="UnivalenceComposition.html#713" class="Function">ua-comp</a> <a id="866" href="UnivalenceComposition.html#866" class="Bound">α</a> <a id="868" href="UnivalenceComposition.html#868" class="Bound">β</a>  <a id="871" class="Symbol">=</a>
   <a id="876" href="BasicFunctions.html#5405" class="Function Operator">begin</a>
     <a id="887" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="890" class="Symbol">(</a><a id="891" href="UnivalenceComposition.html#866" class="Bound">α</a> <a id="893" href="QuasiinverseLemmas.html#1962" class="Function Operator">∘≃</a> <a id="896" href="UnivalenceComposition.html#868" class="Bound">β</a><a id="897" class="Symbol">)</a>
       <a id="906" href="BasicFunctions.html#5212" class="Function Operator">≡⟨</a> <a id="909" href="AlgebraOnPaths.html#389" class="Function">ap</a> <a id="912" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="915" class="Symbol">(</a><a id="916" href="UnivalenceTransport.html#3189" class="Postulate">∘≃-ite-ua</a> <a id="926" href="UnivalenceComposition.html#866" class="Bound">α</a> <a id="928" href="UnivalenceComposition.html#868" class="Bound">β</a><a id="929" class="Symbol">)</a> <a id="931" href="BasicFunctions.html#5212" class="Function Operator">⟩</a>
     <a id="938" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="941" class="Symbol">(</a><a id="942" href="UnivalenceAxiom.html#935" class="Function">ite</a> <a id="946" class="Symbol">(</a><a id="947" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="950" href="UnivalenceComposition.html#866" class="Bound">α</a> <a id="952" href="BasicFunctions.html#3854" class="Function Operator">·</a> <a id="954" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="957" href="UnivalenceComposition.html#868" class="Bound">β</a><a id="958" class="Symbol">))</a>
       <a id="968" href="BasicFunctions.html#5212" class="Function Operator">≡⟨</a> <a id="971" href="UnivalenceAxiom.html#3003" class="Function">ua-η</a> <a id="976" class="Symbol">((</a><a id="978" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="981" href="UnivalenceComposition.html#866" class="Bound">α</a><a id="982" class="Symbol">)</a> <a id="984" href="BasicFunctions.html#3854" class="Function Operator">·</a> <a id="986" class="Symbol">(</a><a id="987" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="990" href="UnivalenceComposition.html#868" class="Bound">β</a><a id="991" class="Symbol">))</a> <a id="994" href="BasicFunctions.html#5212" class="Function Operator">⟩</a>
     <a id="1001" class="Symbol">(</a><a id="1002" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1005" href="UnivalenceComposition.html#866" class="Bound">α</a><a id="1006" class="Symbol">)</a> <a id="1008" href="BasicFunctions.html#3854" class="Function Operator">·</a> <a id="1010" class="Symbol">(</a><a id="1011" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1014" href="UnivalenceComposition.html#868" class="Bound">β</a><a id="1015" class="Symbol">)</a>
   <a id="1020" href="BasicFunctions.html#5290" class="Function Operator">∎</a>
</pre>

- Inverses are preserved (Typechecking of this takes ~30min)

{: .foldable until="5"}
<pre class="Agda">
  <a id="1135" class="Keyword">postulate</a>
   <a id="UnivalenceComposition.ua-inv-r"></a><a id="1148" href="UnivalenceComposition.html#1148" class="Postulate">ua-inv-r</a>
    <a id="1161" class="Symbol">:</a> <a id="1163" class="Symbol">{</a><a id="1164" href="UnivalenceComposition.html#1164" class="Bound">A</a> <a id="1166" href="UnivalenceComposition.html#1166" class="Bound">B</a> <a id="1168" class="Symbol">:</a> <a id="1170" href="Intro.html#2793" class="Function">Type</a> <a id="1175" href="Intro.html#3373" class="Generalizable">ℓ</a><a id="1176" class="Symbol">}</a>
    <a id="1182" class="Symbol">→</a> <a id="1184" class="Symbol">(</a><a id="1185" href="UnivalenceComposition.html#1185" class="Bound">α</a> <a id="1187" class="Symbol">:</a> <a id="1189" href="UnivalenceComposition.html#1164" class="Bound">A</a> <a id="1191" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="1193" href="UnivalenceComposition.html#1166" class="Bound">B</a><a id="1194" class="Symbol">)</a>
    <a id="1200" class="Comment">-------------------------------</a>
    <a id="1236" class="Symbol">→</a> <a id="1238" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1241" href="UnivalenceComposition.html#1185" class="Bound">α</a> <a id="1243" href="BasicFunctions.html#3854" class="Function Operator">·</a> <a id="1245" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1248" class="Symbol">(</a><a id="1249" href="QuasiinverseLemmas.html#2029" class="Function">≃-sym</a> <a id="1255" href="UnivalenceComposition.html#1185" class="Bound">α</a><a id="1256" class="Symbol">)</a> <a id="1258" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="1261" href="BasicTypes.html#4630" class="Function">refl</a> <a id="1266" href="UnivalenceComposition.html#1164" class="Bound">A</a>
    
  <a id="1275" class="Comment">{-
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

- 
{: .foldable until="5"}
<pre class="Agda">
  <a id="UnivalenceComposition.ua-inv"></a><a id="1597" href="UnivalenceComposition.html#1597" class="Function">ua-inv</a>
    <a id="1608" class="Symbol">:</a> <a id="1610" class="Symbol">{</a><a id="1611" href="UnivalenceComposition.html#1611" class="Bound">A</a> <a id="1613" href="UnivalenceComposition.html#1613" class="Bound">B</a> <a id="1615" class="Symbol">:</a> <a id="1617" href="Intro.html#2793" class="Function">Type</a> <a id="1622" href="Intro.html#3373" class="Generalizable">ℓ</a><a id="1623" class="Symbol">}</a>
    <a id="1629" class="Symbol">→</a> <a id="1631" class="Symbol">(</a><a id="1632" href="UnivalenceComposition.html#1632" class="Bound">α</a> <a id="1634" class="Symbol">:</a> <a id="1636" href="UnivalenceComposition.html#1611" class="Bound">A</a> <a id="1638" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="1640" href="UnivalenceComposition.html#1613" class="Bound">B</a><a id="1641" class="Symbol">)</a>
    <a id="1647" class="Comment">-------------------------</a>
    <a id="1677" class="Symbol">→</a> <a id="1679" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1682" class="Symbol">(</a><a id="1683" href="QuasiinverseLemmas.html#2029" class="Function">≃-sym</a> <a id="1689" href="UnivalenceComposition.html#1632" class="Bound">α</a><a id="1690" class="Symbol">)</a> <a id="1692" href="BasicTypes.html#4524" class="Function Operator">≡</a> <a id="1694" href="BasicFunctions.html#4249" class="Function Operator">!</a> <a id="1696" class="Symbol">(</a><a id="1697" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1700" href="UnivalenceComposition.html#1632" class="Bound">α</a><a id="1701" class="Symbol">)</a>
    
  <a id="1710" href="UnivalenceComposition.html#1597" class="Function">ua-inv</a> <a id="1717" href="UnivalenceComposition.html#1717" class="Bound">α</a> <a id="1719" class="Symbol">=</a>
    <a id="1725" href="BasicFunctions.html#5405" class="Function Operator">begin</a>
      <a id="1737" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1740" class="Symbol">(</a><a id="1741" href="QuasiinverseLemmas.html#2029" class="Function">≃-sym</a> <a id="1747" href="UnivalenceComposition.html#1717" class="Bound">α</a><a id="1748" class="Symbol">)</a>
        <a id="1758" href="BasicFunctions.html#5212" class="Function Operator">≡⟨</a> <a id="1761" href="AlgebraOnPaths.html#389" class="Function">ap</a> <a id="1764" class="Symbol">(</a><a id="1765" href="BasicFunctions.html#3854" class="Function Operator">_·</a> <a id="1768" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1771" class="Symbol">(</a><a id="1772" href="QuasiinverseLemmas.html#2029" class="Function">≃-sym</a> <a id="1778" href="UnivalenceComposition.html#1717" class="Bound">α</a><a id="1779" class="Symbol">))</a> <a id="1782" class="Symbol">(</a><a id="1783" href="BasicFunctions.html#4249" class="Function Operator">!</a> <a id="1785" class="Symbol">(</a><a id="1786" href="AlgebraOnPaths.html#3012" class="Function">·-linv</a> <a id="1793" class="Symbol">(</a><a id="1794" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1797" href="UnivalenceComposition.html#1717" class="Bound">α</a><a id="1798" class="Symbol">)))</a> <a id="1802" href="BasicFunctions.html#5212" class="Function Operator">⟩</a>
      <a id="1810" href="BasicFunctions.html#4249" class="Function Operator">!</a> <a id="1812" class="Symbol">(</a><a id="1813" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1816" href="UnivalenceComposition.html#1717" class="Bound">α</a><a id="1817" class="Symbol">)</a> <a id="1819" href="BasicFunctions.html#3854" class="Function Operator">·</a> <a id="1821" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1824" href="UnivalenceComposition.html#1717" class="Bound">α</a> <a id="1826" href="BasicFunctions.html#3854" class="Function Operator">·</a> <a id="1828" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1831" class="Symbol">(</a><a id="1832" href="QuasiinverseLemmas.html#2029" class="Function">≃-sym</a> <a id="1838" href="UnivalenceComposition.html#1717" class="Bound">α</a><a id="1839" class="Symbol">)</a>
        <a id="1849" href="BasicFunctions.html#5212" class="Function Operator">≡⟨</a> <a id="1852" href="AlgebraOnPaths.html#3552" class="Function">·-assoc</a> <a id="1860" class="Symbol">(</a><a id="1861" href="BasicFunctions.html#4249" class="Function Operator">!</a> <a id="1863" class="Symbol">(</a><a id="1864" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1867" href="UnivalenceComposition.html#1717" class="Bound">α</a><a id="1868" class="Symbol">))</a> <a id="1871" class="Symbol">_</a> <a id="1873" class="Symbol">_</a> <a id="1875" href="BasicFunctions.html#5212" class="Function Operator">⟩</a>
      <a id="1883" href="BasicFunctions.html#4249" class="Function Operator">!</a> <a id="1885" class="Symbol">(</a><a id="1886" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1889" href="UnivalenceComposition.html#1717" class="Bound">α</a><a id="1890" class="Symbol">)</a> <a id="1892" href="BasicFunctions.html#3854" class="Function Operator">·</a> <a id="1894" class="Symbol">(</a><a id="1895" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1898" href="UnivalenceComposition.html#1717" class="Bound">α</a> <a id="1900" href="BasicFunctions.html#3854" class="Function Operator">·</a> <a id="1902" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1905" class="Symbol">(</a><a id="1906" href="QuasiinverseLemmas.html#2029" class="Function">≃-sym</a> <a id="1912" href="UnivalenceComposition.html#1717" class="Bound">α</a><a id="1913" class="Symbol">))</a>
        <a id="1924" href="BasicFunctions.html#5212" class="Function Operator">≡⟨</a> <a id="1927" href="AlgebraOnPaths.html#389" class="Function">ap</a> <a id="1930" class="Symbol">(</a><a id="1931" href="BasicFunctions.html#4249" class="Function Operator">!</a> <a id="1933" class="Symbol">(</a><a id="1934" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1937" href="UnivalenceComposition.html#1717" class="Bound">α</a><a id="1938" class="Symbol">)</a> <a id="1940" href="BasicFunctions.html#3854" class="Function Operator">·_</a><a id="1942" class="Symbol">)</a> <a id="1944" class="Symbol">(</a><a id="1945" href="UnivalenceComposition.html#1148" class="Postulate">ua-inv-r</a> <a id="1954" href="UnivalenceComposition.html#1717" class="Bound">α</a><a id="1955" class="Symbol">)</a> <a id="1957" href="BasicFunctions.html#5212" class="Function Operator">⟩</a>
      <a id="1965" href="BasicFunctions.html#4249" class="Function Operator">!</a> <a id="1967" class="Symbol">(</a><a id="1968" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="1971" href="UnivalenceComposition.html#1717" class="Bound">α</a><a id="1972" class="Symbol">)</a> <a id="1974" href="BasicFunctions.html#3854" class="Function Operator">·</a> <a id="1976" href="BasicTypes.html#4630" class="Function">refl</a> <a id="1981" class="Symbol">_</a>
        <a id="1991" href="BasicFunctions.html#5212" class="Function Operator">≡⟨</a> <a id="1994" href="BasicFunctions.html#4249" class="Function Operator">!</a> <a id="1996" class="Symbol">(</a><a id="1997" href="AlgebraOnPaths.html#2698" class="Function">·-runit</a> <a id="2005" class="Symbol">(</a><a id="2006" href="BasicFunctions.html#4249" class="Function Operator">!</a> <a id="2008" class="Symbol">((</a><a id="2010" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="2013" href="UnivalenceComposition.html#1717" class="Bound">α</a><a id="2014" class="Symbol">))))</a> <a id="2019" href="BasicFunctions.html#5212" class="Function Operator">⟩</a>
      <a id="2027" href="BasicFunctions.html#4249" class="Function Operator">!</a> <a id="2029" class="Symbol">(</a><a id="2030" href="UnivalenceAxiom.html#2626" class="Function">ua</a> <a id="2033" href="UnivalenceComposition.html#1717" class="Bound">α</a><a id="2034" class="Symbol">)</a>
    <a id="2040" href="BasicFunctions.html#5290" class="Function Operator">∎</a>
</pre>
