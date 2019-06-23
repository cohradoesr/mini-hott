---
layout: page
title: "Sigma identities"
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
<a id="216" class="Symbol">{-#</a> <a id="220" class="Keyword">OPTIONS</a> <a id="228" class="Pragma">--without-K</a> <a id="240" class="Symbol">#-}</a>
<a id="244" class="Keyword">open</a> <a id="249" class="Keyword">import</a> <a id="256" href="BasicTypes.html" class="Module">BasicTypes</a>
<a id="267" class="Keyword">open</a> <a id="272" class="Keyword">import</a> <a id="279" href="BasicFunctions.html" class="Module">BasicFunctions</a>
<a id="294" class="Keyword">open</a> <a id="299" class="Keyword">import</a> <a id="306" href="Transport.html" class="Module">Transport</a>
</pre>
</div>

### Product identities

<div class="hide" >
<pre class="Agda">
<a id="392" class="Keyword">module</a>
  <a id="401" href="ProductIdentities.html" class="Module">ProductIdentities</a>
  <a id="421" class="Keyword">where</a>
</pre>
</div>


{: .foldable until="6"}
<pre class="Agda">

<a id="prodComponentwise"></a><a id="485" href="ProductIdentities.html#485" class="Function">prodComponentwise</a>
  <a id="505" class="Symbol">:</a> <a id="507" class="Symbol">{</a><a id="508" href="ProductIdentities.html#508" class="Bound">A</a> <a id="510" class="Symbol">:</a> <a id="512" href="Intro.html#1803" class="Function">Type</a> <a id="517" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="519" class="Symbol">}{</a><a id="521" href="ProductIdentities.html#521" class="Bound">B</a> <a id="523" class="Symbol">:</a> <a id="525" href="Intro.html#1803" class="Function">Type</a> <a id="530" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="532" class="Symbol">}{</a><a id="534" href="ProductIdentities.html#534" class="Bound">x</a> <a id="536" href="ProductIdentities.html#536" class="Bound">y</a> <a id="538" class="Symbol">:</a> <a id="540" href="ProductIdentities.html#508" class="Bound">A</a> <a id="542" href="BasicTypes.html#2139" class="Function Operator">×</a> <a id="544" href="ProductIdentities.html#521" class="Bound">B</a><a id="545" class="Symbol">}</a>
  <a id="549" class="Symbol">→</a> <a id="551" class="Symbol">(</a><a id="552" href="ProductIdentities.html#534" class="Bound">x</a> <a id="554" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="557" href="ProductIdentities.html#536" class="Bound">y</a><a id="558" class="Symbol">)</a>
  <a id="562" class="Comment">---------------------------------</a>
  <a id="598" class="Symbol">→</a> <a id="600" class="Symbol">(</a><a id="601" href="BasicTypes.html#1588" class="Field">π₁</a> <a id="604" href="ProductIdentities.html#534" class="Bound">x</a> <a id="606" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="609" href="BasicTypes.html#1588" class="Field">π₁</a> <a id="612" href="ProductIdentities.html#536" class="Bound">y</a><a id="613" class="Symbol">)</a> <a id="615" href="BasicTypes.html#2139" class="Function Operator">×</a> <a id="617" class="Symbol">(</a><a id="618" href="BasicTypes.html#1599" class="Field">π₂</a> <a id="621" href="ProductIdentities.html#534" class="Bound">x</a> <a id="623" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="626" href="BasicTypes.html#1599" class="Field">π₂</a> <a id="629" href="ProductIdentities.html#536" class="Bound">y</a><a id="630" class="Symbol">)</a>

<a id="633" href="ProductIdentities.html#485" class="Function">prodComponentwise</a> <a id="651" class="Symbol">{</a><a id="652" class="Argument">x</a> <a id="654" class="Symbol">=</a> <a id="656" href="ProductIdentities.html#656" class="Bound">x</a><a id="657" class="Symbol">}</a> <a id="659" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a> <a id="663" class="Symbol">=</a> <a id="665" href="BasicTypes.html#4576" class="Function">refl</a> <a id="670" class="Symbol">(</a><a id="671" href="BasicTypes.html#1588" class="Field">π₁</a> <a id="674" href="ProductIdentities.html#656" class="Bound">x</a><a id="675" class="Symbol">)</a> <a id="677" href="BasicTypes.html#1572" class="InductiveConstructor Operator">,</a> <a id="679" href="BasicTypes.html#4576" class="Function">refl</a> <a id="684" class="Symbol">(</a><a id="685" href="BasicTypes.html#1599" class="Field">π₂</a> <a id="688" href="ProductIdentities.html#656" class="Bound">x</a><a id="689" class="Symbol">)</a>
</pre>

{: .foldable until="6"}
<pre class="Agda">

<a id="prodByComponents"></a><a id="741" href="ProductIdentities.html#741" class="Function">prodByComponents</a>
  <a id="760" class="Symbol">:</a> <a id="762" class="Symbol">{</a><a id="763" href="ProductIdentities.html#763" class="Bound">A</a> <a id="765" class="Symbol">:</a> <a id="767" href="Intro.html#1803" class="Function">Type</a> <a id="772" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="774" class="Symbol">}{</a><a id="776" href="ProductIdentities.html#776" class="Bound">B</a> <a id="778" class="Symbol">:</a> <a id="780" href="Intro.html#1803" class="Function">Type</a> <a id="785" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="787" class="Symbol">}</a> <a id="789" class="Symbol">{</a><a id="790" href="ProductIdentities.html#790" class="Bound">x</a> <a id="792" href="ProductIdentities.html#792" class="Bound">y</a> <a id="794" class="Symbol">:</a> <a id="796" href="ProductIdentities.html#763" class="Bound">A</a> <a id="798" href="BasicTypes.html#2139" class="Function Operator">×</a> <a id="800" href="ProductIdentities.html#776" class="Bound">B</a><a id="801" class="Symbol">}</a>
  <a id="805" class="Symbol">→</a> <a id="807" class="Symbol">(</a><a id="808" href="BasicTypes.html#1588" class="Field">π₁</a> <a id="811" href="ProductIdentities.html#790" class="Bound">x</a> <a id="813" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="816" href="BasicTypes.html#1588" class="Field">π₁</a> <a id="819" href="ProductIdentities.html#792" class="Bound">y</a><a id="820" class="Symbol">)</a> <a id="822" href="BasicTypes.html#2139" class="Function Operator">×</a> <a id="824" class="Symbol">(</a><a id="825" href="BasicTypes.html#1599" class="Field">π₂</a> <a id="828" href="ProductIdentities.html#790" class="Bound">x</a> <a id="830" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="833" href="BasicTypes.html#1599" class="Field">π₂</a> <a id="836" href="ProductIdentities.html#792" class="Bound">y</a><a id="837" class="Symbol">)</a>
  <a id="841" class="Comment">---------------------------------</a>
  <a id="877" class="Symbol">→</a> <a id="879" class="Symbol">(</a><a id="880" href="ProductIdentities.html#790" class="Bound">x</a> <a id="882" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="885" href="ProductIdentities.html#792" class="Bound">y</a><a id="886" class="Symbol">)</a>

<a id="889" href="ProductIdentities.html#741" class="Function">prodByComponents</a> <a id="906" class="Symbol">{</a><a id="907" class="Argument">x</a> <a id="909" class="Symbol">=</a> <a id="911" href="ProductIdentities.html#911" class="Bound">a</a> <a id="913" href="BasicTypes.html#1572" class="InductiveConstructor Operator">,</a> <a id="915" href="ProductIdentities.html#915" class="Bound">b</a><a id="916" class="Symbol">}</a> <a id="918" class="Symbol">(</a><a id="919" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a> <a id="923" href="BasicTypes.html#1572" class="InductiveConstructor Operator">,</a> <a id="925" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a><a id="928" class="Symbol">)</a> <a id="930" class="Symbol">=</a> <a id="932" href="BasicTypes.html#4576" class="Function">refl</a> <a id="937" class="Symbol">(</a><a id="938" href="ProductIdentities.html#911" class="Bound">a</a> <a id="940" href="BasicTypes.html#1572" class="InductiveConstructor Operator">,</a> <a id="942" href="ProductIdentities.html#915" class="Bound">b</a><a id="943" class="Symbol">)</a>
</pre>

{: .foldable until="6"}
<pre class="Agda">

<a id="prodCompInverse"></a><a id="995" href="ProductIdentities.html#995" class="Function">prodCompInverse</a>
  <a id="1013" class="Symbol">:</a> <a id="1015" class="Symbol">{</a><a id="1016" href="ProductIdentities.html#1016" class="Bound">A</a> <a id="1018" class="Symbol">:</a> <a id="1020" href="Intro.html#1803" class="Function">Type</a> <a id="1025" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="1027" class="Symbol">}{</a><a id="1029" href="ProductIdentities.html#1029" class="Bound">B</a> <a id="1031" class="Symbol">:</a> <a id="1033" href="Intro.html#1803" class="Function">Type</a> <a id="1038" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1040" class="Symbol">}</a> <a id="1042" class="Symbol">{</a><a id="1043" href="ProductIdentities.html#1043" class="Bound">x</a> <a id="1045" href="ProductIdentities.html#1045" class="Bound">y</a> <a id="1047" class="Symbol">:</a> <a id="1049" href="ProductIdentities.html#1016" class="Bound">A</a> <a id="1051" href="BasicTypes.html#2139" class="Function Operator">×</a> <a id="1053" href="ProductIdentities.html#1029" class="Bound">B</a><a id="1054" class="Symbol">}</a>
  <a id="1058" class="Symbol">→</a> <a id="1060" class="Symbol">(</a><a id="1061" href="ProductIdentities.html#1061" class="Bound">b</a> <a id="1063" class="Symbol">:</a> <a id="1065" class="Symbol">(</a><a id="1066" href="BasicTypes.html#1588" class="Field">π₁</a> <a id="1069" href="ProductIdentities.html#1043" class="Bound">x</a> <a id="1071" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="1074" href="BasicTypes.html#1588" class="Field">π₁</a> <a id="1077" href="ProductIdentities.html#1045" class="Bound">y</a><a id="1078" class="Symbol">)</a> <a id="1080" href="BasicTypes.html#2139" class="Function Operator">×</a> <a id="1082" class="Symbol">(</a><a id="1083" href="BasicTypes.html#1599" class="Field">π₂</a> <a id="1086" href="ProductIdentities.html#1043" class="Bound">x</a> <a id="1088" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="1091" href="BasicTypes.html#1599" class="Field">π₂</a> <a id="1094" href="ProductIdentities.html#1045" class="Bound">y</a><a id="1095" class="Symbol">))</a>
  <a id="1100" class="Comment">---------------------------------------------</a>
  <a id="1148" class="Symbol">→</a> <a id="1150" href="ProductIdentities.html#485" class="Function">prodComponentwise</a> <a id="1168" class="Symbol">(</a><a id="1169" href="ProductIdentities.html#741" class="Function">prodByComponents</a> <a id="1186" href="ProductIdentities.html#1061" class="Bound">b</a><a id="1187" class="Symbol">)</a> <a id="1189" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="1192" href="ProductIdentities.html#1061" class="Bound">b</a>

<a id="1195" href="ProductIdentities.html#995" class="Function">prodCompInverse</a> <a id="1211" class="Symbol">{</a><a id="1212" class="Argument">x</a> <a id="1214" class="Symbol">=</a> <a id="1216" href="ProductIdentities.html#1216" class="Bound">x</a><a id="1217" class="Symbol">}</a> <a id="1219" class="Symbol">(</a><a id="1220" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a> <a id="1224" href="BasicTypes.html#1572" class="InductiveConstructor Operator">,</a> <a id="1226" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a><a id="1229" class="Symbol">)</a> <a id="1231" class="Symbol">=</a> <a id="1233" href="BasicTypes.html#4576" class="Function">refl</a> <a id="1238" class="Symbol">(</a><a id="1239" href="BasicTypes.html#4576" class="Function">refl</a> <a id="1244" class="Symbol">(</a><a id="1245" href="BasicTypes.html#1588" class="Field">π₁</a> <a id="1248" href="ProductIdentities.html#1216" class="Bound">x</a><a id="1249" class="Symbol">)</a> <a id="1251" href="BasicTypes.html#1572" class="InductiveConstructor Operator">,</a> <a id="1253" href="BasicTypes.html#4576" class="Function">refl</a> <a id="1258" class="Symbol">(</a><a id="1259" href="BasicTypes.html#1599" class="Field">π₂</a> <a id="1262" href="ProductIdentities.html#1216" class="Bound">x</a><a id="1263" class="Symbol">))</a>
</pre>

{: .foldable until="6"}
<pre class="Agda">

<a id="prodByCompInverse"></a><a id="1316" href="ProductIdentities.html#1316" class="Function">prodByCompInverse</a>
  <a id="1336" class="Symbol">:</a> <a id="1338" class="Symbol">{</a><a id="1339" href="ProductIdentities.html#1339" class="Bound">A</a> <a id="1341" class="Symbol">:</a> <a id="1343" href="Intro.html#1803" class="Function">Type</a> <a id="1348" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="1350" class="Symbol">}{</a><a id="1352" href="ProductIdentities.html#1352" class="Bound">B</a> <a id="1354" class="Symbol">:</a> <a id="1356" href="Intro.html#1803" class="Function">Type</a> <a id="1361" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1363" class="Symbol">}</a> <a id="1365" class="Symbol">{</a><a id="1366" href="ProductIdentities.html#1366" class="Bound">x</a> <a id="1368" href="ProductIdentities.html#1368" class="Bound">y</a> <a id="1370" class="Symbol">:</a> <a id="1372" href="ProductIdentities.html#1339" class="Bound">A</a> <a id="1374" href="BasicTypes.html#2139" class="Function Operator">×</a> <a id="1376" href="ProductIdentities.html#1352" class="Bound">B</a><a id="1377" class="Symbol">}</a>
  <a id="1381" class="Symbol">→</a> <a id="1383" class="Symbol">(</a><a id="1384" href="ProductIdentities.html#1384" class="Bound">b</a> <a id="1386" class="Symbol">:</a> <a id="1388" href="ProductIdentities.html#1366" class="Bound">x</a> <a id="1390" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="1393" href="ProductIdentities.html#1368" class="Bound">y</a><a id="1394" class="Symbol">)</a>
  <a id="1398" class="Comment">---------------------------------------------</a>
  <a id="1446" class="Symbol">→</a> <a id="1448" href="ProductIdentities.html#741" class="Function">prodByComponents</a> <a id="1465" class="Symbol">(</a><a id="1466" href="ProductIdentities.html#485" class="Function">prodComponentwise</a> <a id="1484" href="ProductIdentities.html#1384" class="Bound">b</a><a id="1485" class="Symbol">)</a> <a id="1487" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="1490" href="ProductIdentities.html#1384" class="Bound">b</a>

<a id="1493" href="ProductIdentities.html#1316" class="Function">prodByCompInverse</a> <a id="1511" class="Symbol">{</a><a id="1512" class="Argument">x</a> <a id="1514" class="Symbol">=</a> <a id="1516" href="ProductIdentities.html#1516" class="Bound">x</a><a id="1517" class="Symbol">}</a> <a id="1519" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a> <a id="1523" class="Symbol">=</a> <a id="1525" href="BasicTypes.html#4576" class="Function">refl</a> <a id="1530" class="Symbol">(</a><a id="1531" href="BasicTypes.html#4576" class="Function">refl</a> <a id="1536" href="ProductIdentities.html#1516" class="Bound">x</a><a id="1537" class="Symbol">)</a>
</pre>

<pre class="Agda">
<a id="×-≡"></a><a id="1564" href="ProductIdentities.html#1564" class="Function">×-≡</a>
  <a id="1570" class="Symbol">:</a> <a id="1572" class="Symbol">{</a><a id="1573" href="ProductIdentities.html#1573" class="Bound">A</a> <a id="1575" class="Symbol">:</a> <a id="1577" href="Intro.html#1803" class="Function">Type</a> <a id="1582" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="1584" class="Symbol">}{</a><a id="1586" href="ProductIdentities.html#1586" class="Bound">B</a> <a id="1588" class="Symbol">:</a> <a id="1590" href="Intro.html#1803" class="Function">Type</a> <a id="1595" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1597" class="Symbol">}</a>
  <a id="1601" class="Symbol">→</a> <a id="1603" class="Symbol">{</a><a id="1604" href="ProductIdentities.html#1604" class="Bound">ab</a> <a id="1607" href="ProductIdentities.html#1607" class="Bound">ab&#39;</a> <a id="1611" class="Symbol">:</a> <a id="1613" href="ProductIdentities.html#1573" class="Bound">A</a> <a id="1615" href="BasicTypes.html#2139" class="Function Operator">×</a> <a id="1617" href="ProductIdentities.html#1586" class="Bound">B</a><a id="1618" class="Symbol">}</a>
  <a id="1622" class="Symbol">→</a> <a id="1624" class="Symbol">(</a><a id="1625" href="ProductIdentities.html#1625" class="Bound">p</a> <a id="1627" class="Symbol">:</a> <a id="1629" href="BasicTypes.html#1588" class="Field">π₁</a> <a id="1632" href="ProductIdentities.html#1604" class="Bound">ab</a> <a id="1635" href="BasicTypes.html#4470" class="Function Operator">≡</a> <a id="1637" href="BasicTypes.html#1588" class="Field">π₁</a> <a id="1640" href="ProductIdentities.html#1607" class="Bound">ab&#39;</a><a id="1643" class="Symbol">)</a> <a id="1645" class="Symbol">→</a> <a id="1647" class="Symbol">(</a><a id="1648" href="BasicTypes.html#1599" class="Field">π₂</a> <a id="1651" href="ProductIdentities.html#1604" class="Bound">ab</a><a id="1653" class="Symbol">)</a> <a id="1655" href="BasicTypes.html#4470" class="Function Operator">≡</a> <a id="1657" href="BasicTypes.html#1599" class="Field">π₂</a> <a id="1660" href="ProductIdentities.html#1607" class="Bound">ab&#39;</a>
  <a id="1666" class="Symbol">→</a> <a id="1668" href="ProductIdentities.html#1604" class="Bound">ab</a> <a id="1671" href="BasicTypes.html#4470" class="Function Operator">≡</a> <a id="1673" href="ProductIdentities.html#1607" class="Bound">ab&#39;</a>

<a id="1678" href="ProductIdentities.html#1564" class="Function">×-≡</a> <a id="1682" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a> <a id="1686" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a> <a id="1690" class="Symbol">=</a> <a id="1692" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a>
</pre>
