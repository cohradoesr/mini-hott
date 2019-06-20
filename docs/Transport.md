
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
<a id="221" class="Symbol">{-#</a> <a id="225" class="Keyword">OPTIONS</a> <a id="233" class="Pragma">--without-K</a> <a id="245" class="Symbol">#-}</a>
<a id="249" class="Keyword">open</a> <a id="254" class="Keyword">import</a> <a id="261" href="BasicTypes.html" class="Module">BasicTypes</a> <a id="272" class="Keyword">public</a>
<a id="279" class="Keyword">open</a> <a id="284" class="Keyword">import</a> <a id="291" href="AlgebraOnPaths.html" class="Module">AlgebraOnPaths</a> <a id="306" class="Keyword">public</a>
</pre>
</div>

## Transport

![path](/assets/ipe-images/transport-fiber-minihott.png){: width="50%" align="right" }

{: .foldable until="6" }
<pre class="Agda">
<a id="transport"></a><a id="472" href="Transport.html#472" class="Function">transport</a>
  <a id="484" class="Symbol">:</a> <a id="486" class="Symbol">∀</a> <a id="488" class="Symbol">{</a><a id="489" href="Transport.html#489" class="Bound">A</a> <a id="491" class="Symbol">:</a> <a id="493" href="Intro.html#1621" class="Function">Type</a> <a id="498" href="Intro.html#2063" class="Generalizable">ℓᵢ</a><a id="500" class="Symbol">}</a>
  <a id="504" class="Symbol">→</a> <a id="506" class="Symbol">(</a><a id="507" href="Transport.html#507" class="Bound">C</a> <a id="509" class="Symbol">:</a> <a id="511" href="Transport.html#489" class="Bound">A</a> <a id="513" class="Symbol">→</a> <a id="515" href="Intro.html#1621" class="Function">Type</a> <a id="520" href="Intro.html#2066" class="Generalizable">ℓⱼ</a><a id="522" class="Symbol">)</a> <a id="524" class="Symbol">{</a><a id="525" href="Transport.html#525" class="Bound">a₁</a> <a id="528" href="Transport.html#528" class="Bound">a₂</a> <a id="531" class="Symbol">:</a> <a id="533" href="Transport.html#489" class="Bound">A</a><a id="534" class="Symbol">}</a>
  <a id="538" class="Symbol">→</a> <a id="540" class="Symbol">(</a><a id="541" href="Transport.html#541" class="Bound">p</a> <a id="543" class="Symbol">:</a> <a id="545" href="Transport.html#525" class="Bound">a₁</a> <a id="548" href="BasicTypes.html#4564" class="Datatype Operator">==</a> <a id="551" href="Transport.html#528" class="Bound">a₂</a><a id="553" class="Symbol">)</a>
  <a id="557" class="Comment">-------------------------------</a>
  <a id="591" class="Symbol">→</a> <a id="593" class="Symbol">(</a><a id="594" href="Transport.html#507" class="Bound">C</a> <a id="596" href="Transport.html#525" class="Bound">a₁</a> <a id="599" class="Symbol">→</a> <a id="601" href="Transport.html#507" class="Bound">C</a> <a id="603" href="Transport.html#528" class="Bound">a₂</a><a id="605" class="Symbol">)</a>

<a id="608" href="Transport.html#472" class="Function">transport</a> <a id="618" href="Transport.html#618" class="Bound">C</a> <a id="620" href="BasicTypes.html#4619" class="InductiveConstructor">idp</a> <a id="624" class="Symbol">=</a> <a id="626" class="Symbol">(λ</a> <a id="629" href="Transport.html#629" class="Bound">x</a> <a id="631" class="Symbol">→</a> <a id="633" href="Transport.html#629" class="Bound">x</a><a id="634" class="Symbol">)</a>
</pre>

<pre class="Agda">
<a id="661" class="Comment">-- synonyms</a>
<a id="tr"></a><a id="673" href="Transport.html#673" class="Function">tr</a>     <a id="680" class="Symbol">=</a> <a id="682" href="Transport.html#472" class="Function">transport</a>
<a id="tr₁"></a><a id="692" href="Transport.html#692" class="Function">tr₁</a>    <a id="699" class="Symbol">=</a> <a id="701" href="Transport.html#472" class="Function">transport</a>
<a id="transp"></a><a id="711" href="Transport.html#711" class="Function">transp</a> <a id="718" class="Symbol">=</a> <a id="720" href="Transport.html#472" class="Function">transport</a>
</pre>

{: .foldable until="5" }
<pre class="Agda">
<a id="coe"></a><a id="780" href="Transport.html#780" class="Function">coe</a>
  <a id="786" class="Symbol">:</a> <a id="788" class="Symbol">∀</a> <a id="790" class="Symbol">{</a><a id="791" href="Transport.html#791" class="Bound">A</a> <a id="793" href="Transport.html#793" class="Bound">B</a> <a id="795" class="Symbol">:</a> <a id="797" href="Intro.html#1621" class="Function">Type</a> <a id="802" href="Intro.html#2061" class="Generalizable">ℓ</a><a id="803" class="Symbol">}</a>
  <a id="807" class="Symbol">→</a> <a id="809" href="Transport.html#791" class="Bound">A</a> <a id="811" href="BasicTypes.html#4564" class="Datatype Operator">==</a> <a id="814" href="Transport.html#793" class="Bound">B</a>
  <a id="818" class="Comment">---------</a>
  <a id="830" class="Symbol">→</a> <a id="832" class="Symbol">(</a><a id="833" href="Transport.html#791" class="Bound">A</a> <a id="835" class="Symbol">→</a> <a id="837" href="Transport.html#793" class="Bound">B</a><a id="838" class="Symbol">)</a>

<a id="841" href="Transport.html#780" class="Function">coe</a> <a id="845" href="Transport.html#845" class="Bound">p</a> <a id="847" href="Transport.html#847" class="Bound">a</a> <a id="849" class="Symbol">=</a> <a id="851" href="Transport.html#472" class="Function">transport</a> <a id="861" class="Symbol">(λ</a> <a id="864" href="Transport.html#864" class="Bound">X</a> <a id="866" class="Symbol">→</a> <a id="868" href="Transport.html#864" class="Bound">X</a><a id="869" class="Symbol">)</a> <a id="871" href="Transport.html#845" class="Bound">p</a> <a id="873" href="Transport.html#847" class="Bound">a</a>
</pre>

{: .foldable until="11"}
<pre class="Agda">
<a id="tr₂"></a><a id="925" href="Transport.html#925" class="Function">tr₂</a>
  <a id="931" class="Symbol">:</a> <a id="933" class="Symbol">{</a><a id="934" href="Transport.html#934" class="Bound">A</a> <a id="936" class="Symbol">:</a> <a id="938" href="Intro.html#1621" class="Function">Type</a> <a id="943" href="Intro.html#2063" class="Generalizable">ℓᵢ</a><a id="945" class="Symbol">}</a>
  <a id="949" class="Symbol">→</a> <a id="951" class="Symbol">{</a><a id="952" href="Transport.html#952" class="Bound">B</a> <a id="954" class="Symbol">:</a> <a id="956" href="Transport.html#934" class="Bound">A</a> <a id="958" class="Symbol">→</a> <a id="960" href="Intro.html#1621" class="Function">Type</a> <a id="965" href="Intro.html#2066" class="Generalizable">ℓⱼ</a><a id="967" class="Symbol">}</a>
  <a id="971" class="Symbol">→</a> <a id="973" class="Symbol">(</a><a id="974" href="Transport.html#974" class="Bound">C</a> <a id="976" class="Symbol">:</a> <a id="978" class="Symbol">(</a><a id="979" href="Transport.html#979" class="Bound">x</a> <a id="981" class="Symbol">:</a> <a id="983" href="Transport.html#934" class="Bound">A</a><a id="984" class="Symbol">)</a> <a id="986" class="Symbol">→</a> <a id="988" class="Symbol">(</a><a id="989" href="Transport.html#989" class="Bound">b</a> <a id="991" class="Symbol">:</a> <a id="993" href="Transport.html#952" class="Bound">B</a> <a id="995" href="Transport.html#979" class="Bound">x</a><a id="996" class="Symbol">)</a> <a id="998" class="Symbol">→</a> <a id="1000" href="Intro.html#1621" class="Function">Type</a> <a id="1005" href="Intro.html#2069" class="Generalizable">ℓₖ</a><a id="1007" class="Symbol">)</a>
  <a id="1011" class="Symbol">→</a> <a id="1013" class="Symbol">{</a><a id="1014" href="Transport.html#1014" class="Bound">a₁</a> <a id="1017" href="Transport.html#1017" class="Bound">a₂</a> <a id="1020" class="Symbol">:</a> <a id="1022" href="Transport.html#934" class="Bound">A</a><a id="1023" class="Symbol">}{</a><a id="1025" href="Transport.html#1025" class="Bound">b₁</a> <a id="1028" class="Symbol">:</a> <a id="1030" href="Transport.html#952" class="Bound">B</a> <a id="1032" href="Transport.html#1014" class="Bound">a₁</a><a id="1034" class="Symbol">}{</a><a id="1036" href="Transport.html#1036" class="Bound">b₂</a> <a id="1039" class="Symbol">:</a> <a id="1041" href="Transport.html#952" class="Bound">B</a> <a id="1043" href="Transport.html#1017" class="Bound">a₂</a><a id="1045" class="Symbol">}</a>
  <a id="1049" class="Symbol">→</a> <a id="1051" class="Symbol">(</a><a id="1052" href="Transport.html#1052" class="Bound">p</a> <a id="1054" class="Symbol">:</a>        <a id="1063" href="Transport.html#1014" class="Bound">a₁</a> <a id="1066" href="BasicTypes.html#4564" class="Datatype Operator">==</a> <a id="1069" href="Transport.html#1017" class="Bound">a₂</a><a id="1071" class="Symbol">)</a>
  <a id="1075" class="Symbol">→</a> <a id="1077" class="Symbol">(</a><a id="1078" href="Transport.html#1078" class="Bound">q</a> <a id="1080" class="Symbol">:</a> <a id="1082" href="Transport.html#673" class="Function">tr</a> <a id="1085" href="Transport.html#952" class="Bound">B</a> <a id="1087" href="Transport.html#1052" class="Bound">p</a> <a id="1089" href="Transport.html#1025" class="Bound">b₁</a> <a id="1092" href="BasicTypes.html#4564" class="Datatype Operator">==</a> <a id="1095" href="Transport.html#1036" class="Bound">b₂</a><a id="1097" class="Symbol">)</a>
  <a id="1101" class="Symbol">→</a> <a id="1103" href="Transport.html#974" class="Bound">C</a> <a id="1105" href="Transport.html#1014" class="Bound">a₁</a> <a id="1108" href="Transport.html#1025" class="Bound">b₁</a>
  <a id="1113" class="Comment">-----------------------</a>
  <a id="1139" class="Symbol">→</a> <a id="1141" href="Transport.html#974" class="Bound">C</a> <a id="1143" href="Transport.html#1017" class="Bound">a₂</a> <a id="1146" href="Transport.html#1036" class="Bound">b₂</a>

<a id="1150" href="Transport.html#925" class="Function">tr₂</a> <a id="1154" href="Transport.html#1154" class="Bound">C</a> <a id="1156" href="BasicTypes.html#4619" class="InductiveConstructor">idp</a> <a id="1160" href="BasicTypes.html#4619" class="InductiveConstructor">idp</a> <a id="1164" class="Symbol">=</a> <a id="1166" href="BasicFunctions.html#386" class="Function">id</a>
</pre>

<pre class="Agda">
<a id="tr₂-commute"></a><a id="1194" href="Transport.html#1194" class="Function">tr₂-commute</a>
  <a id="1208" class="Symbol">:</a> <a id="1210" class="Symbol">∀</a> <a id="1212" class="Symbol">{</a><a id="1213" href="Transport.html#1213" class="Bound">A</a> <a id="1215" class="Symbol">:</a> <a id="1217" href="Intro.html#1621" class="Function">Type</a> <a id="1222" href="Intro.html#2063" class="Generalizable">ℓᵢ</a><a id="1224" class="Symbol">}</a> <a id="1226" class="Symbol">{</a><a id="1227" href="Transport.html#1227" class="Bound">B</a> <a id="1229" class="Symbol">:</a> <a id="1231" href="Transport.html#1213" class="Bound">A</a> <a id="1233" class="Symbol">→</a> <a id="1235" href="Intro.html#1621" class="Function">Type</a> <a id="1240" href="Intro.html#2066" class="Generalizable">ℓⱼ</a><a id="1242" class="Symbol">}</a>
    <a id="1248" class="Symbol">→</a> <a id="1250" class="Symbol">(</a><a id="1251" href="Transport.html#1251" class="Bound">C</a> <a id="1253" class="Symbol">:</a> <a id="1255" class="Symbol">(</a><a id="1256" href="Transport.html#1256" class="Bound">a</a> <a id="1258" class="Symbol">:</a> <a id="1260" href="Transport.html#1213" class="Bound">A</a><a id="1261" class="Symbol">)</a> <a id="1263" class="Symbol">→</a> <a id="1265" class="Symbol">(</a><a id="1266" href="Transport.html#1227" class="Bound">B</a> <a id="1268" href="Transport.html#1256" class="Bound">a</a><a id="1269" class="Symbol">)</a> <a id="1271" class="Symbol">→</a> <a id="1273" href="Intro.html#1621" class="Function">Type</a> <a id="1278" href="Intro.html#2069" class="Generalizable">ℓₖ</a><a id="1280" class="Symbol">)</a>
    <a id="1286" class="Symbol">→</a> <a id="1288" class="Symbol">(</a><a id="1289" href="Transport.html#1289" class="Bound">D</a> <a id="1291" class="Symbol">:</a> <a id="1293" class="Symbol">(</a><a id="1294" href="Transport.html#1294" class="Bound">a</a> <a id="1296" class="Symbol">:</a> <a id="1298" href="Transport.html#1213" class="Bound">A</a><a id="1299" class="Symbol">)</a> <a id="1301" class="Symbol">→</a> <a id="1303" class="Symbol">(</a><a id="1304" href="Transport.html#1227" class="Bound">B</a> <a id="1306" href="Transport.html#1294" class="Bound">a</a><a id="1307" class="Symbol">)</a> <a id="1309" class="Symbol">→</a> <a id="1311" href="Intro.html#1621" class="Function">Type</a> <a id="1316" href="Intro.html#2061" class="Generalizable">ℓ</a><a id="1317" class="Symbol">)</a>
    <a id="1323" class="Symbol">→</a> <a id="1325" class="Symbol">(</a><a id="1326" href="Transport.html#1326" class="Bound">f</a> <a id="1328" class="Symbol">:</a> <a id="1330" class="Symbol">∀</a> <a id="1332" href="Transport.html#1332" class="Bound">a</a> <a id="1334" href="Transport.html#1334" class="Bound">b</a> <a id="1336" class="Symbol">→</a> <a id="1338" href="Transport.html#1251" class="Bound">C</a> <a id="1340" href="Transport.html#1332" class="Bound">a</a> <a id="1342" href="Transport.html#1334" class="Bound">b</a> <a id="1344" class="Symbol">→</a> <a id="1346" href="Transport.html#1289" class="Bound">D</a> <a id="1348" href="Transport.html#1332" class="Bound">a</a> <a id="1350" href="Transport.html#1334" class="Bound">b</a><a id="1351" class="Symbol">)</a>
    <a id="1357" class="Symbol">→</a> <a id="1359" class="Symbol">∀</a> <a id="1361" class="Symbol">{</a><a id="1362" href="Transport.html#1362" class="Bound">a</a> <a id="1364" href="Transport.html#1364" class="Bound">a&#39;</a> <a id="1367" href="Transport.html#1367" class="Bound">b</a> <a id="1369" href="Transport.html#1369" class="Bound">b&#39;</a><a id="1371" class="Symbol">}</a> <a id="1373" class="Symbol">(</a><a id="1374" href="Transport.html#1374" class="Bound">p</a> <a id="1376" class="Symbol">:</a> <a id="1378" href="Transport.html#1362" class="Bound">a</a> <a id="1380" href="BasicTypes.html#4750" class="Function Operator">≡</a> <a id="1382" href="Transport.html#1364" class="Bound">a&#39;</a><a id="1384" class="Symbol">)</a> <a id="1386" class="Symbol">→</a> <a id="1388" class="Symbol">(</a><a id="1389" href="Transport.html#1389" class="Bound">q</a> <a id="1391" class="Symbol">:</a> <a id="1393" href="Transport.html#692" class="Function">tr₁</a> <a id="1397" href="Transport.html#1227" class="Bound">B</a> <a id="1399" href="Transport.html#1374" class="Bound">p</a> <a id="1401" href="Transport.html#1367" class="Bound">b</a> <a id="1403" href="BasicTypes.html#4750" class="Function Operator">≡</a> <a id="1405" href="Transport.html#1369" class="Bound">b&#39;</a><a id="1407" class="Symbol">)</a>
    <a id="1413" class="Symbol">→</a> <a id="1415" class="Symbol">∀</a> <a id="1417" href="Transport.html#1417" class="Bound">c</a> <a id="1419" class="Symbol">→</a> <a id="1421" href="Transport.html#925" class="Function">tr₂</a> <a id="1425" href="Transport.html#1289" class="Bound">D</a> <a id="1427" href="Transport.html#1374" class="Bound">p</a> <a id="1429" href="Transport.html#1389" class="Bound">q</a> <a id="1431" class="Symbol">(</a><a id="1432" href="Transport.html#1326" class="Bound">f</a> <a id="1434" href="Transport.html#1362" class="Bound">a</a> <a id="1436" href="Transport.html#1367" class="Bound">b</a> <a id="1438" href="Transport.html#1417" class="Bound">c</a><a id="1439" class="Symbol">)</a> <a id="1441" href="BasicTypes.html#4750" class="Function Operator">≡</a> <a id="1443" href="Transport.html#1326" class="Bound">f</a> <a id="1445" href="Transport.html#1364" class="Bound">a&#39;</a> <a id="1448" href="Transport.html#1369" class="Bound">b&#39;</a> <a id="1451" class="Symbol">(</a><a id="1452" href="Transport.html#925" class="Function">tr₂</a> <a id="1456" href="Transport.html#1251" class="Bound">C</a> <a id="1458" href="Transport.html#1374" class="Bound">p</a> <a id="1460" href="Transport.html#1389" class="Bound">q</a> <a id="1462" href="Transport.html#1417" class="Bound">c</a><a id="1463" class="Symbol">)</a>
<a id="1465" href="Transport.html#1194" class="Function">tr₂-commute</a> <a id="1477" href="Transport.html#1477" class="Bound">C</a> <a id="1479" href="Transport.html#1479" class="Bound">D</a> <a id="1481" href="Transport.html#1481" class="Bound">f</a> <a id="1483" href="BasicTypes.html#4619" class="InductiveConstructor">idp</a> <a id="1487" href="BasicTypes.html#4619" class="InductiveConstructor">idp</a> <a id="1491" href="Transport.html#1491" class="Bound">c</a> <a id="1493" class="Symbol">=</a> <a id="1495" href="BasicTypes.html#4619" class="InductiveConstructor">idp</a>
</pre>

### Pathover

Let be `A : Type`, `a₁, a₂ : A`, `C : A → Type`, `c₁ : C a₁` and `c₂ : C a₂`.
Using the same notation from {% cite hottbook %}, one of the definitions for the
Pathover type is as the shorthand for the path between the transport along a
path `α : a₁ = a₂` of the point `c₁ : C a₁` and the point `c₂` in the fiber `C
a₂`. That is, a pathover is a term that inhabit the type `transport C α c₁ = c₂`
also denoted by `PathOver C c₁ α c₂`.

![path](/assets/ipe-images/pathover-3-minihott.png){: width="45%" align="right" }

<pre class="Agda">
<a id="PathOver"></a><a id="2056" href="Transport.html#2056" class="Function">PathOver</a>
  <a id="2067" class="Symbol">:</a> <a id="2069" class="Symbol">∀</a> <a id="2071" class="Symbol">{</a><a id="2072" href="Transport.html#2072" class="Bound">A</a> <a id="2074" class="Symbol">:</a> <a id="2076" href="Intro.html#1621" class="Function">Type</a> <a id="2081" href="Intro.html#2063" class="Generalizable">ℓᵢ</a><a id="2083" class="Symbol">}</a>
  <a id="2087" class="Symbol">→</a> <a id="2089" class="Symbol">(</a><a id="2090" href="Transport.html#2090" class="Bound">B</a> <a id="2092" class="Symbol">:</a> <a id="2094" href="Transport.html#2072" class="Bound">A</a> <a id="2096" class="Symbol">→</a> <a id="2098" href="Intro.html#1621" class="Function">Type</a> <a id="2103" href="Intro.html#2066" class="Generalizable">ℓⱼ</a><a id="2105" class="Symbol">)</a> <a id="2107" class="Symbol">{</a><a id="2108" href="Transport.html#2108" class="Bound">a₁</a> <a id="2111" href="Transport.html#2111" class="Bound">a₂</a> <a id="2114" class="Symbol">:</a> <a id="2116" href="Transport.html#2072" class="Bound">A</a><a id="2117" class="Symbol">}</a>
  <a id="2121" class="Symbol">→</a> <a id="2123" class="Symbol">(</a><a id="2124" href="Transport.html#2124" class="Bound">b₁</a> <a id="2127" class="Symbol">:</a> <a id="2129" href="Transport.html#2090" class="Bound">B</a> <a id="2131" href="Transport.html#2108" class="Bound">a₁</a><a id="2133" class="Symbol">)</a> <a id="2135" class="Symbol">→</a> <a id="2137" class="Symbol">(</a><a id="2138" href="Transport.html#2138" class="Bound">α</a> <a id="2140" class="Symbol">:</a> <a id="2142" href="Transport.html#2108" class="Bound">a₁</a> <a id="2145" href="BasicTypes.html#4564" class="Datatype Operator">==</a> <a id="2148" href="Transport.html#2111" class="Bound">a₂</a><a id="2150" class="Symbol">)</a> <a id="2152" class="Symbol">→</a> <a id="2154" class="Symbol">(</a><a id="2155" href="Transport.html#2155" class="Bound">b₂</a> <a id="2158" class="Symbol">:</a> <a id="2160" href="Transport.html#2090" class="Bound">B</a> <a id="2162" href="Transport.html#2111" class="Bound">a₂</a><a id="2164" class="Symbol">)</a>
  <a id="2168" class="Comment">--------------------------------------------</a>
  <a id="2215" class="Symbol">→</a> <a id="2217" href="Intro.html#1621" class="Function">Type</a> <a id="2222" href="Intro.html#2066" class="Generalizable">ℓⱼ</a>

<a id="2226" href="Transport.html#2056" class="Function">PathOver</a> <a id="2235" href="Transport.html#2235" class="Bound">B</a> <a id="2237" href="Transport.html#2237" class="Bound">b₁</a> <a id="2240" href="Transport.html#2240" class="Bound">α</a> <a id="2242" href="Transport.html#2242" class="Bound">b₂</a> <a id="2245" class="Symbol">=</a> <a id="2247" href="Transport.html#673" class="Function">tr</a> <a id="2250" href="Transport.html#2235" class="Bound">B</a> <a id="2252" href="Transport.html#2240" class="Bound">α</a> <a id="2254" href="Transport.html#2237" class="Bound">b₁</a> <a id="2257" href="BasicTypes.html#4564" class="Datatype Operator">==</a> <a id="2260" href="Transport.html#2242" class="Bound">b₂</a>
</pre>

<pre class="Agda">
<a id="2288" class="Keyword">infix</a> <a id="2294" class="Number">30</a> <a id="2297" href="Transport.html#2056" class="Function">PathOver</a>

<a id="2307" class="Keyword">syntax</a> <a id="2314" href="Transport.html#2056" class="Function">PathOver</a> <a id="2323" class="Bound">B</a> <a id="2325" class="Bound">b₁</a> <a id="2328" class="Bound">α</a> <a id="2330" class="Bound">b₂</a>  <a id="2334" class="Symbol">=</a> <a id="2336" class="Bound">b₁</a> <a id="2339" class="Function">==</a> <a id="2342" class="Bound">b₂</a> <a id="2345" class="Function">[</a> <a id="2347" class="Bound">B</a> <a id="2349" class="Function">↓</a> <a id="2351" class="Bound">α</a> <a id="2353" class="Function">]</a>
</pre>

Another notation:

<pre class="Agda">
<a id="≡Over"></a><a id="2399" href="Transport.html#2399" class="Function">≡Over</a> <a id="2405" class="Symbol">=</a> <a id="2407" href="Transport.html#2056" class="Function">PathOver</a>
</pre>

<pre class="Agda">
<a id="2441" class="Keyword">infix</a> <a id="2447" class="Number">30</a> <a id="2450" href="Transport.html#2399" class="Function">≡Over</a>
<a id="2456" class="Keyword">syntax</a> <a id="2463" href="Transport.html#2399" class="Function">≡Over</a> <a id="2469" class="Bound">B</a> <a id="2471" class="Bound">b</a> <a id="2473" class="Bound">α</a> <a id="2475" class="Bound">b&#39;</a> <a id="2478" class="Symbol">=</a> <a id="2480" class="Bound">b</a> <a id="2482" class="Function">≡</a> <a id="2484" class="Bound">b&#39;</a> <a id="2487" class="Function">[</a> <a id="2489" class="Bound">B</a> <a id="2491" class="Function">/</a> <a id="2493" class="Bound">α</a> <a id="2495" class="Function">]</a>
</pre>

Transport and composition:

<pre class="Agda">
<a id="tr₁-≡"></a><a id="2550" href="Transport.html#2550" class="Function">tr₁-≡</a> <a id="2556" class="Symbol">:</a> <a id="2558" class="Symbol">∀</a> <a id="2560" class="Symbol">{</a><a id="2561" href="Transport.html#2561" class="Bound">A</a> <a id="2563" class="Symbol">:</a> <a id="2565" href="Intro.html#1621" class="Function">Type</a> <a id="2570" href="Intro.html#2061" class="Generalizable">ℓ</a><a id="2571" class="Symbol">}</a> <a id="2573" class="Symbol">{</a><a id="2574" href="Transport.html#2574" class="Bound">a₀</a> <a id="2577" href="Transport.html#2577" class="Bound">a₁</a> <a id="2580" href="Transport.html#2580" class="Bound">a₂</a> <a id="2583" class="Symbol">:</a> <a id="2585" href="Transport.html#2561" class="Bound">A</a><a id="2586" class="Symbol">}</a>
  <a id="2590" class="Symbol">→</a> <a id="2592" class="Symbol">(</a><a id="2593" href="Transport.html#2593" class="Bound">α</a> <a id="2595" class="Symbol">:</a> <a id="2597" href="Transport.html#2577" class="Bound">a₁</a> <a id="2600" href="BasicTypes.html#4750" class="Function Operator">≡</a> <a id="2602" href="Transport.html#2580" class="Bound">a₂</a><a id="2604" class="Symbol">)</a>
  <a id="2608" class="Symbol">→</a> <a id="2610" class="Symbol">(</a><a id="2611" href="Transport.html#2611" class="Bound">ε</a> <a id="2613" class="Symbol">:</a> <a id="2615" href="Transport.html#2574" class="Bound">a₀</a> <a id="2618" href="BasicTypes.html#4750" class="Function Operator">≡</a> <a id="2620" href="Transport.html#2577" class="Bound">a₁</a><a id="2622" class="Symbol">)</a>
  <a id="2626" class="Symbol">→</a> <a id="2628" class="Symbol">(</a><a id="2629" href="Transport.html#2629" class="Bound">δ</a> <a id="2631" class="Symbol">:</a> <a id="2633" href="Transport.html#2574" class="Bound">a₀</a> <a id="2636" href="BasicTypes.html#4750" class="Function Operator">≡</a> <a id="2638" href="Transport.html#2580" class="Bound">a₂</a><a id="2640" class="Symbol">)</a>
  <a id="2644" class="Symbol">→</a> <a id="2646" class="Symbol">(</a><a id="2647" href="Transport.html#2611" class="Bound">ε</a> <a id="2649" href="Transport.html#2399" class="Function">≡</a> <a id="2651" href="Transport.html#2629" class="Bound">δ</a> <a id="2653" href="Transport.html#2399" class="Function">[</a> <a id="2655" class="Symbol">(λ</a> <a id="2658" href="Transport.html#2658" class="Bound">a&#39;</a> <a id="2661" class="Symbol">→</a> <a id="2663" href="Transport.html#2574" class="Bound">a₀</a> <a id="2666" href="BasicTypes.html#4750" class="Function Operator">≡</a> <a id="2668" href="Transport.html#2658" class="Bound">a&#39;</a><a id="2670" class="Symbol">)</a> <a id="2672" href="Transport.html#2399" class="Function">/</a> <a id="2674" href="Transport.html#2593" class="Bound">α</a> <a id="2676" href="Transport.html#2399" class="Function">]</a><a id="2677" class="Symbol">)</a>
  <a id="2681" class="Comment">----------------------------------</a>
  <a id="2718" class="Symbol">→</a> <a id="2720" href="Transport.html#2593" class="Bound">α</a> <a id="2722" href="BasicTypes.html#4750" class="Function Operator">≡</a> <a id="2724" href="BasicFunctions.html#3165" class="Function Operator">!</a> <a id="2726" href="Transport.html#2611" class="Bound">ε</a> <a id="2728" href="BasicFunctions.html#2759" class="Function Operator">·</a> <a id="2730" href="Transport.html#2629" class="Bound">δ</a>

<a id="2733" href="Transport.html#2550" class="Function">tr₁-≡</a> <a id="2739" href="BasicTypes.html#4619" class="InductiveConstructor">idp</a> <a id="2743" class="DottedPattern Symbol">.</a><a id="2744" href="BasicTypes.html#4619" class="DottedPattern InductiveConstructor">idp</a> <a id="2748" href="BasicTypes.html#4619" class="InductiveConstructor">idp</a> <a id="2752" href="BasicTypes.html#4619" class="InductiveConstructor">idp</a> <a id="2756" class="Symbol">=</a> <a id="2758" href="BasicTypes.html#4619" class="InductiveConstructor">idp</a>
</pre>
