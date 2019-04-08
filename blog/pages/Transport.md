---
layout: page
title: "Transport"
category: lemmas functions transport
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
<a id="220" class="Symbol">{-#</a> <a id="224" class="Keyword">OPTIONS</a> <a id="232" class="Pragma">--without-K</a> <a id="244" class="Symbol">#-}</a>
<a id="248" class="Keyword">open</a> <a id="253" class="Keyword">import</a> <a id="260" href="EqualityType.html" class="Module">EqualityType</a> <a id="273" class="Keyword">public</a>
<a id="280" class="Keyword">open</a> <a id="285" class="Keyword">import</a> <a id="292" href="AlgebraOnPaths.html" class="Module">AlgebraOnPaths</a> <a id="307" class="Keyword">public</a>
</pre>
</div>

## Transport

![path](/assets/ipe-images/transport-fiber-minihott.png){: width="50%" align="right" }

{: .foldable until="6" }
<pre class="Agda">
<a id="transport"></a><a id="473" href="Transport.html#473" class="Function">transport</a>
  <a id="485" class="Symbol">:</a> <a id="487" class="Symbol">∀</a> <a id="489" class="Symbol">{</a><a id="490" href="Transport.html#490" class="Bound">ℓᵢ</a> <a id="493" href="Transport.html#493" class="Bound">ℓⱼ</a><a id="495" class="Symbol">}</a> <a id="497" class="Symbol">{</a><a id="498" href="Transport.html#498" class="Bound">A</a> <a id="500" class="Symbol">:</a> <a id="502" href="Intro.html#1442" class="Function">Type</a> <a id="507" href="Transport.html#490" class="Bound">ℓᵢ</a><a id="509" class="Symbol">}</a>
  <a id="513" class="Symbol">→</a> <a id="515" class="Symbol">(</a><a id="516" href="Transport.html#516" class="Bound">C</a> <a id="518" class="Symbol">:</a> <a id="520" href="Transport.html#498" class="Bound">A</a> <a id="522" class="Symbol">→</a> <a id="524" href="Intro.html#1442" class="Function">Type</a> <a id="529" href="Transport.html#493" class="Bound">ℓⱼ</a><a id="531" class="Symbol">)</a> <a id="533" class="Symbol">{</a><a id="534" href="Transport.html#534" class="Bound">a₁</a> <a id="537" href="Transport.html#537" class="Bound">a₂</a> <a id="540" class="Symbol">:</a> <a id="542" href="Transport.html#498" class="Bound">A</a><a id="543" class="Symbol">}</a>
  <a id="547" class="Symbol">→</a> <a id="549" class="Symbol">(</a><a id="550" href="Transport.html#550" class="Bound">p</a> <a id="552" class="Symbol">:</a> <a id="554" href="Transport.html#534" class="Bound">a₁</a> <a id="557" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="560" href="Transport.html#537" class="Bound">a₂</a><a id="562" class="Symbol">)</a>
  <a id="566" class="Comment">-------------------------------</a>
  <a id="600" class="Symbol">→</a> <a id="602" class="Symbol">(</a><a id="603" href="Transport.html#516" class="Bound">C</a> <a id="605" href="Transport.html#534" class="Bound">a₁</a> <a id="608" class="Symbol">→</a> <a id="610" href="Transport.html#516" class="Bound">C</a> <a id="612" href="Transport.html#537" class="Bound">a₂</a><a id="614" class="Symbol">)</a>

<a id="617" href="Transport.html#473" class="Function">transport</a> <a id="627" href="Transport.html#627" class="Bound">C</a> <a id="629" href="EqualityType.html#985" class="InductiveConstructor">idp</a> <a id="633" class="Symbol">=</a> <a id="635" class="Symbol">(λ</a> <a id="638" href="Transport.html#638" class="Bound">x</a> <a id="640" class="Symbol">→</a> <a id="642" href="Transport.html#638" class="Bound">x</a><a id="643" class="Symbol">)</a>
</pre>

<pre class="Agda">
<a id="670" class="Comment">-- synonyms</a>
<a id="tr"></a><a id="682" href="Transport.html#682" class="Function">tr</a>     <a id="689" class="Symbol">=</a> <a id="691" href="Transport.html#473" class="Function">transport</a>
<a id="transp"></a><a id="701" href="Transport.html#701" class="Function">transp</a> <a id="708" class="Symbol">=</a> <a id="710" href="Transport.html#473" class="Function">transport</a>
</pre>

Star notation for transport

{: .foldable until="5" }
<pre class="Agda">
<a id="_✶"></a><a id="799" href="Transport.html#799" class="Function Operator">_✶</a>
  <a id="804" class="Symbol">:</a> <a id="806" class="Symbol">∀</a> <a id="808" class="Symbol">{</a><a id="809" href="Transport.html#809" class="Bound">ℓᵢ</a> <a id="812" href="Transport.html#812" class="Bound">ℓⱼ</a><a id="814" class="Symbol">}</a> <a id="816" class="Symbol">{</a><a id="817" href="Transport.html#817" class="Bound">A</a> <a id="819" class="Symbol">:</a> <a id="821" href="Intro.html#1442" class="Function">Type</a> <a id="826" href="Transport.html#809" class="Bound">ℓᵢ</a><a id="828" class="Symbol">}</a> <a id="830" class="Symbol">{</a><a id="831" href="Transport.html#831" class="Bound">C</a> <a id="833" class="Symbol">:</a> <a id="835" href="Transport.html#817" class="Bound">A</a> <a id="837" class="Symbol">→</a> <a id="839" href="Intro.html#1442" class="Function">Type</a> <a id="844" href="Transport.html#812" class="Bound">ℓⱼ</a><a id="846" class="Symbol">}</a> <a id="848" class="Symbol">{</a><a id="849" href="Transport.html#849" class="Bound">a₁</a> <a id="852" href="Transport.html#852" class="Bound">a₂</a> <a id="855" class="Symbol">:</a> <a id="857" href="Transport.html#817" class="Bound">A</a><a id="858" class="Symbol">}</a>
  <a id="862" class="Symbol">→</a> <a id="864" class="Symbol">(</a><a id="865" href="Transport.html#865" class="Bound">p</a> <a id="867" class="Symbol">:</a> <a id="869" href="Transport.html#849" class="Bound">a₁</a> <a id="872" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="875" href="Transport.html#852" class="Bound">a₂</a><a id="877" class="Symbol">)</a>
  <a id="881" class="Comment">----------------</a>
  <a id="900" class="Symbol">→</a> <a id="902" class="Symbol">(</a><a id="903" href="Transport.html#831" class="Bound">C</a> <a id="905" href="Transport.html#849" class="Bound">a₁</a> <a id="908" class="Symbol">→</a> <a id="910" href="Transport.html#831" class="Bound">C</a> <a id="912" href="Transport.html#852" class="Bound">a₂</a><a id="914" class="Symbol">)</a>

<a id="917" href="Transport.html#799" class="Function Operator">_✶</a> <a id="920" class="Symbol">{</a><a id="921" href="Transport.html#921" class="Bound">ℓᵢ</a><a id="923" class="Symbol">}{</a><a id="925" href="Transport.html#925" class="Bound">ℓⱼ</a><a id="927" class="Symbol">}{</a><a id="929" class="Argument">C</a> <a id="931" class="Symbol">=</a> <a id="933" href="Transport.html#933" class="Bound">C</a><a id="934" class="Symbol">}</a> <a id="936" class="Symbol">=</a> <a id="938" href="Transport.html#473" class="Function">transport</a> <a id="948" class="Symbol">{</a><a id="949" class="Argument">ℓᵢ</a> <a id="952" class="Symbol">=</a> <a id="954" href="Transport.html#921" class="Bound">ℓᵢ</a><a id="956" class="Symbol">}</a> <a id="958" class="Symbol">{</a><a id="959" class="Argument">ℓⱼ</a> <a id="962" class="Symbol">=</a> <a id="964" href="Transport.html#925" class="Bound">ℓⱼ</a><a id="966" class="Symbol">}</a> <a id="968" href="Transport.html#933" class="Bound">C</a>
</pre>

{: .foldable until="5" }
<pre class="Agda">
<a id="coe"></a><a id="1020" href="Transport.html#1020" class="Function">coe</a>
  <a id="1026" class="Symbol">:</a> <a id="1028" class="Symbol">∀</a> <a id="1030" class="Symbol">{</a><a id="1031" href="Transport.html#1031" class="Bound">ℓ</a><a id="1032" class="Symbol">}</a> <a id="1034" class="Symbol">{</a><a id="1035" href="Transport.html#1035" class="Bound">A</a> <a id="1037" href="Transport.html#1037" class="Bound">B</a> <a id="1039" class="Symbol">:</a> <a id="1041" href="Intro.html#1442" class="Function">Type</a> <a id="1046" href="Transport.html#1031" class="Bound">ℓ</a><a id="1047" class="Symbol">}</a>
  <a id="1051" class="Symbol">→</a> <a id="1053" href="Transport.html#1035" class="Bound">A</a> <a id="1055" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="1058" href="Transport.html#1037" class="Bound">B</a>
  <a id="1062" class="Comment">---------</a>
  <a id="1074" class="Symbol">→</a> <a id="1076" class="Symbol">(</a><a id="1077" href="Transport.html#1035" class="Bound">A</a> <a id="1079" class="Symbol">→</a> <a id="1081" href="Transport.html#1037" class="Bound">B</a><a id="1082" class="Symbol">)</a>

<a id="1085" href="Transport.html#1020" class="Function">coe</a> <a id="1089" href="Transport.html#1089" class="Bound">p</a> <a id="1091" href="Transport.html#1091" class="Bound">a</a> <a id="1093" class="Symbol">=</a> <a id="1095" href="Transport.html#473" class="Function">transport</a> <a id="1105" class="Symbol">(λ</a> <a id="1108" href="Transport.html#1108" class="Bound">X</a> <a id="1110" class="Symbol">→</a> <a id="1112" href="Transport.html#1108" class="Bound">X</a><a id="1113" class="Symbol">)</a> <a id="1115" href="Transport.html#1089" class="Bound">p</a> <a id="1117" href="Transport.html#1091" class="Bound">a</a>
</pre>

{: .foldable until="11"}
<pre class="Agda">
<a id="tr₂"></a><a id="1169" href="Transport.html#1169" class="Function">tr₂</a>
  <a id="1175" class="Symbol">:</a> <a id="1177" class="Symbol">{</a><a id="1178" href="Transport.html#1178" class="Bound">i</a> <a id="1180" href="Transport.html#1180" class="Bound">j</a> <a id="1182" href="Transport.html#1182" class="Bound">k</a> <a id="1184" class="Symbol">:</a> <a id="1186" href="Agda.Primitive.html#408" class="Postulate">Level</a><a id="1191" class="Symbol">}</a>
  <a id="1195" class="Symbol">→</a> <a id="1197" class="Symbol">(</a><a id="1198" href="Transport.html#1198" class="Bound">A</a> <a id="1200" class="Symbol">:</a> <a id="1202" href="Intro.html#1442" class="Function">Type</a> <a id="1207" href="Transport.html#1178" class="Bound">i</a><a id="1208" class="Symbol">)</a>
  <a id="1212" class="Symbol">→</a> <a id="1214" class="Symbol">(</a><a id="1215" href="Transport.html#1215" class="Bound">B</a> <a id="1217" class="Symbol">:</a> <a id="1219" href="Transport.html#1198" class="Bound">A</a> <a id="1221" class="Symbol">→</a> <a id="1223" href="Intro.html#1442" class="Function">Type</a> <a id="1228" href="Transport.html#1180" class="Bound">j</a><a id="1229" class="Symbol">)</a>
  <a id="1233" class="Symbol">→</a> <a id="1235" class="Symbol">(</a><a id="1236" href="Transport.html#1236" class="Bound">C</a> <a id="1238" class="Symbol">:</a> <a id="1240" class="Symbol">(</a><a id="1241" href="Transport.html#1241" class="Bound">x</a> <a id="1243" class="Symbol">:</a> <a id="1245" href="Transport.html#1198" class="Bound">A</a><a id="1246" class="Symbol">)</a> <a id="1248" class="Symbol">→</a> <a id="1250" class="Symbol">(</a><a id="1251" href="Transport.html#1251" class="Bound">b</a> <a id="1253" class="Symbol">:</a> <a id="1255" href="Transport.html#1215" class="Bound">B</a> <a id="1257" href="Transport.html#1241" class="Bound">x</a><a id="1258" class="Symbol">)</a> <a id="1260" class="Symbol">→</a> <a id="1262" href="Intro.html#1442" class="Function">Type</a> <a id="1267" href="Transport.html#1182" class="Bound">k</a><a id="1268" class="Symbol">)</a>
  <a id="1272" class="Symbol">→</a> <a id="1274" class="Symbol">∀</a> <a id="1276" class="Symbol">{</a><a id="1277" href="Transport.html#1277" class="Bound">a₁</a> <a id="1280" href="Transport.html#1280" class="Bound">a₂</a> <a id="1283" class="Symbol">:</a> <a id="1285" href="Transport.html#1198" class="Bound">A</a><a id="1286" class="Symbol">}{</a><a id="1288" href="Transport.html#1288" class="Bound">b₁</a> <a id="1291" class="Symbol">:</a> <a id="1293" href="Transport.html#1215" class="Bound">B</a> <a id="1295" href="Transport.html#1277" class="Bound">a₁</a><a id="1297" class="Symbol">}{</a><a id="1299" href="Transport.html#1299" class="Bound">b₂</a> <a id="1302" class="Symbol">:</a> <a id="1304" href="Transport.html#1215" class="Bound">B</a> <a id="1306" href="Transport.html#1280" class="Bound">a₂</a><a id="1308" class="Symbol">}</a>
  <a id="1312" class="Symbol">→</a> <a id="1314" class="Symbol">(</a><a id="1315" href="Transport.html#1315" class="Bound">p</a> <a id="1317" class="Symbol">:</a> <a id="1319" href="Transport.html#1277" class="Bound">a₁</a> <a id="1322" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="1325" href="Transport.html#1280" class="Bound">a₂</a><a id="1327" class="Symbol">)</a>
  <a id="1331" class="Symbol">→</a> <a id="1333" class="Symbol">(</a><a id="1334" href="Transport.html#1334" class="Bound">q</a> <a id="1336" class="Symbol">:</a> <a id="1338" href="Transport.html#682" class="Function">tr</a> <a id="1341" href="Transport.html#1215" class="Bound">B</a> <a id="1343" href="Transport.html#1315" class="Bound">p</a> <a id="1345" href="Transport.html#1288" class="Bound">b₁</a> <a id="1348" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="1351" href="Transport.html#1299" class="Bound">b₂</a><a id="1353" class="Symbol">)</a>
  <a id="1357" class="Symbol">→</a> <a id="1359" href="Transport.html#1236" class="Bound">C</a> <a id="1361" href="Transport.html#1277" class="Bound">a₁</a> <a id="1364" href="Transport.html#1288" class="Bound">b₁</a>
  <a id="1369" class="Comment">-----------------------</a>
  <a id="1395" class="Symbol">→</a> <a id="1397" href="Transport.html#1236" class="Bound">C</a> <a id="1399" href="Transport.html#1280" class="Bound">a₂</a> <a id="1402" href="Transport.html#1299" class="Bound">b₂</a>

<a id="1406" href="Transport.html#1169" class="Function">tr₂</a> <a id="1410" href="Transport.html#1410" class="Bound">A</a> <a id="1412" href="Transport.html#1412" class="Bound">B</a> <a id="1414" href="Transport.html#1414" class="Bound">C</a> <a id="1416" href="EqualityType.html#985" class="InductiveConstructor">idp</a> <a id="1420" href="EqualityType.html#985" class="InductiveConstructor">idp</a> <a id="1424" class="Symbol">=</a> <a id="1426" href="BasicFunctions.html#364" class="Function">id</a>
</pre>

### Pathover

Let be `A : Type`, `a₁, a₂ : A`, `C : A → Type`, `c₁ : C a₁` and `c₂ : C a₂`.
Using the same notation from {% cite hottbook %}, one of the definitions for the
Pathover type is as the shorthand for the path between the transport along a
path `α : a₁ = a₂` of the point `c₁ : C a₁` and the point `c₂` in the fiber `C
a₂`. That is, a pathover is a term that inhabit the type `transport C α c₁ = c₂`
also denoted by `PathOver C α c₁ c₂`.

![path](/assets/ipe-images/pathover-3-minihott.png){: width="45%" align="right" }

<pre class="Agda">
<a id="PathOver"></a><a id="1986" href="Transport.html#1986" class="Function">PathOver</a>
  <a id="1997" class="Symbol">:</a> <a id="1999" class="Symbol">∀</a> <a id="2001" class="Symbol">{</a><a id="2002" href="Transport.html#2002" class="Bound">ℓᵢ</a> <a id="2005" href="Transport.html#2005" class="Bound">ℓⱼ</a><a id="2007" class="Symbol">}</a> <a id="2009" class="Symbol">{</a><a id="2010" href="Transport.html#2010" class="Bound">A</a> <a id="2012" class="Symbol">:</a> <a id="2014" href="Intro.html#1442" class="Function">Type</a> <a id="2019" href="Transport.html#2002" class="Bound">ℓᵢ</a><a id="2021" class="Symbol">}</a>
  <a id="2025" class="Symbol">→</a> <a id="2027" class="Symbol">(</a><a id="2028" href="Transport.html#2028" class="Bound">C</a> <a id="2030" class="Symbol">:</a> <a id="2032" href="Transport.html#2010" class="Bound">A</a> <a id="2034" class="Symbol">→</a> <a id="2036" href="Intro.html#1442" class="Function">Type</a> <a id="2041" href="Transport.html#2005" class="Bound">ℓⱼ</a><a id="2043" class="Symbol">)</a> <a id="2045" class="Symbol">{</a><a id="2046" href="Transport.html#2046" class="Bound">a₁</a> <a id="2049" href="Transport.html#2049" class="Bound">a₂</a> <a id="2052" class="Symbol">:</a> <a id="2054" href="Transport.html#2010" class="Bound">A</a><a id="2055" class="Symbol">}</a>
  <a id="2059" class="Symbol">→</a> <a id="2061" class="Symbol">(</a><a id="2062" href="Transport.html#2062" class="Bound">α</a> <a id="2064" class="Symbol">:</a> <a id="2066" href="Transport.html#2046" class="Bound">a₁</a> <a id="2069" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="2072" href="Transport.html#2049" class="Bound">a₂</a><a id="2074" class="Symbol">)</a>
  <a id="2078" class="Symbol">→</a> <a id="2080" class="Symbol">(</a><a id="2081" href="Transport.html#2081" class="Bound">c₁</a> <a id="2084" class="Symbol">:</a> <a id="2086" href="Transport.html#2028" class="Bound">C</a> <a id="2088" href="Transport.html#2046" class="Bound">a₁</a><a id="2090" class="Symbol">)</a> <a id="2092" class="Symbol">→</a> <a id="2094" class="Symbol">(</a><a id="2095" href="Transport.html#2095" class="Bound">c₂</a> <a id="2098" class="Symbol">:</a> <a id="2100" href="Transport.html#2028" class="Bound">C</a> <a id="2102" href="Transport.html#2049" class="Bound">a₂</a><a id="2104" class="Symbol">)</a>
  <a id="2108" class="Comment">------------------------------</a>
  <a id="2141" class="Symbol">→</a> <a id="2143" href="Intro.html#1442" class="Function">Type</a> <a id="2148" href="Transport.html#2005" class="Bound">ℓⱼ</a>

<a id="2152" href="Transport.html#1986" class="Function">PathOver</a> <a id="2161" href="Transport.html#2161" class="Bound">C</a> <a id="2163" href="Transport.html#2163" class="Bound">α</a> <a id="2165" href="Transport.html#2165" class="Bound">c₁</a> <a id="2168" href="Transport.html#2168" class="Bound">c₂</a> <a id="2171" class="Symbol">=</a> <a id="2173" href="Transport.html#682" class="Function">tr</a> <a id="2176" href="Transport.html#2161" class="Bound">C</a> <a id="2178" href="Transport.html#2163" class="Bound">α</a> <a id="2180" href="Transport.html#2165" class="Bound">c₁</a> <a id="2183" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="2186" href="Transport.html#2168" class="Bound">c₂</a>
</pre>

<pre class="Agda">
<a id="2214" class="Keyword">infix</a> <a id="2220" class="Number">30</a> <a id="2223" href="Transport.html#1986" class="Function">PathOver</a>
<a id="2232" class="Keyword">syntax</a> <a id="2239" href="Transport.html#1986" class="Function">PathOver</a> <a id="2248" class="Bound">B</a> <a id="2250" class="Bound">p</a> <a id="2252" class="Bound">u</a> <a id="2254" class="Bound">v</a> <a id="2256" class="Symbol">=</a> <a id="2258" class="Bound">u</a> <a id="2260" class="Function">==</a> <a id="2263" class="Bound">v</a> <a id="2265" class="Function">[</a> <a id="2267" class="Bound">B</a> <a id="2269" class="Function">↓</a> <a id="2271" class="Bound">p</a> <a id="2273" class="Function">]</a>
</pre>
