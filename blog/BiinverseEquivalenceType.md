---
layout: page
title: "Biinverse Equivalence Type"
category: homotopy
toc: true
agda: true
gallery: true
latex: true
references: false
linkify: true
showcitation: true
---

### Biinverses

Two functions are quasi-inverses if we can construct a function providing
`(g ∘ f) x = x` and `(f ∘ g) y = y` for any given `x` and `y`.

<div class="hide" >
<pre class="Agda">
<a id="363" class="Symbol">{-#</a> <a id="367" class="Keyword">OPTIONS</a> <a id="375" class="Pragma">--without-K</a> <a id="387" class="Symbol">#-}</a>
<a id="391" class="Keyword">open</a> <a id="396" class="Keyword">import</a> <a id="403" href="TransportLemmas.html" class="Module">TransportLemmas</a>
</pre>
</div>

<pre class="Agda">
<a id="451" class="Keyword">module</a>
  <a id="460" href="BiinverseEquivalenceType.html" class="Module">BiinverseEquivalenceType</a> <a id="485" class="Symbol">{</a><a id="486" href="BiinverseEquivalenceType.html#486" class="Bound">A</a> <a id="488" class="Symbol">:</a> <a id="490" href="Intro.html#2766" class="Function">Type</a> <a id="495" href="Intro.html#3348" class="Generalizable">ℓᵢ</a><a id="497" class="Symbol">}</a> <a id="499" class="Symbol">{</a><a id="500" href="BiinverseEquivalenceType.html#500" class="Bound">B</a> <a id="502" class="Symbol">:</a> <a id="504" href="Intro.html#2766" class="Function">Type</a> <a id="509" href="Intro.html#3351" class="Generalizable">ℓⱼ</a><a id="511" class="Symbol">}</a>
   <a id="516" class="Keyword">where</a>
</pre>

<pre class="Agda">
  <a id="549" class="Keyword">record</a>
    <a id="Equivalence"></a><a id="560" href="BiinverseEquivalenceType.html#560" class="Record">Equivalence</a> <a id="572" class="Symbol">{</a><a id="573" href="BiinverseEquivalenceType.html#573" class="Bound">ℓᵢ</a> <a id="576" href="BiinverseEquivalenceType.html#576" class="Bound">ℓⱼ</a><a id="578" class="Symbol">}</a> <a id="580" class="Symbol">{</a><a id="581" href="BiinverseEquivalenceType.html#581" class="Bound">A</a> <a id="583" class="Symbol">:</a> <a id="585" href="Intro.html#2766" class="Function">Type</a> <a id="590" href="BiinverseEquivalenceType.html#573" class="Bound">ℓᵢ</a><a id="592" class="Symbol">}</a> <a id="594" class="Symbol">{</a><a id="595" href="BiinverseEquivalenceType.html#595" class="Bound">B</a> <a id="597" class="Symbol">:</a> <a id="599" href="Intro.html#2766" class="Function">Type</a> <a id="604" href="BiinverseEquivalenceType.html#576" class="Bound">ℓⱼ</a><a id="606" class="Symbol">}</a> <a id="608" class="Symbol">(</a><a id="609" href="BiinverseEquivalenceType.html#609" class="Bound">f</a> <a id="611" class="Symbol">:</a> <a id="613" href="BiinverseEquivalenceType.html#581" class="Bound">A</a> <a id="615" class="Symbol">→</a> <a id="617" href="BiinverseEquivalenceType.html#595" class="Bound">B</a><a id="618" class="Symbol">)</a>
    <a id="624" class="Symbol">:</a> <a id="626" href="Intro.html#2766" class="Function">Type</a> <a id="631" class="Symbol">(</a><a id="632" href="BiinverseEquivalenceType.html#573" class="Bound">ℓᵢ</a> <a id="635" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a>  <a id="638" href="BiinverseEquivalenceType.html#576" class="Bound">ℓⱼ</a><a id="640" class="Symbol">)</a>
    <a id="646" class="Keyword">where</a>
    <a id="656" class="Keyword">constructor</a> <a id="Equivalence.equivalence"></a><a id="668" href="BiinverseEquivalenceType.html#668" class="InductiveConstructor">equivalence</a>
    <a id="684" class="Keyword">field</a>
      <a id="Equivalence.left-inverse"></a><a id="696" href="BiinverseEquivalenceType.html#696" class="Field">left-inverse</a>   <a id="711" class="Symbol">:</a> <a id="713" href="BiinverseEquivalenceType.html#595" class="Bound">B</a> <a id="715" class="Symbol">→</a> <a id="717" href="BiinverseEquivalenceType.html#581" class="Bound">A</a>
      <a id="Equivalence.right-inverse"></a><a id="725" href="BiinverseEquivalenceType.html#725" class="Field">right-inverse</a>  <a id="740" class="Symbol">:</a> <a id="742" href="BiinverseEquivalenceType.html#595" class="Bound">B</a> <a id="744" class="Symbol">→</a> <a id="746" href="BiinverseEquivalenceType.html#581" class="Bound">A</a>
      <a id="Equivalence.left-identity"></a><a id="754" href="BiinverseEquivalenceType.html#754" class="Field">left-identity</a>  <a id="769" class="Symbol">:</a> <a id="771" class="Symbol">∀</a> <a id="773" href="BiinverseEquivalenceType.html#773" class="Bound">a</a> <a id="775" class="Symbol">→</a>  <a id="778" href="BiinverseEquivalenceType.html#696" class="Field">left-inverse</a> <a id="791" class="Symbol">(</a><a id="792" href="BiinverseEquivalenceType.html#609" class="Bound">f</a> <a id="794" href="BiinverseEquivalenceType.html#773" class="Bound">a</a><a id="795" class="Symbol">)</a> <a id="797" href="BasicTypes.html#4524" class="Function Operator">≡</a> <a id="799" href="BiinverseEquivalenceType.html#773" class="Bound">a</a>
      <a id="Equivalence.right-identity"></a><a id="807" href="BiinverseEquivalenceType.html#807" class="Field">right-identity</a> <a id="822" class="Symbol">:</a> <a id="824" class="Symbol">∀</a> <a id="826" href="BiinverseEquivalenceType.html#826" class="Bound">b</a> <a id="828" class="Symbol">→</a> <a id="830" href="BiinverseEquivalenceType.html#609" class="Bound">f</a> <a id="832" class="Symbol">(</a><a id="833" href="BiinverseEquivalenceType.html#725" class="Field">right-inverse</a> <a id="847" href="BiinverseEquivalenceType.html#826" class="Bound">b</a><a id="848" class="Symbol">)</a> <a id="850" href="BasicTypes.html#4524" class="Function Operator">≡</a> <a id="852" href="BiinverseEquivalenceType.html#826" class="Bound">b</a>

  <a id="857" class="Keyword">infix</a> <a id="863" class="Number">10</a> <a id="866" href="BiinverseEquivalenceType.html#1189" class="Record Operator">_≃_</a>
</pre>

Synonym:
<pre class="Agda">
  <a id="biinv"></a><a id="906" href="BiinverseEquivalenceType.html#906" class="Function">biinv</a>
    <a id="916" class="Symbol">:</a>  <a id="919" class="Symbol">{</a><a id="920" href="BiinverseEquivalenceType.html#920" class="Bound">A</a> <a id="922" class="Symbol">:</a> <a id="924" href="Intro.html#2766" class="Function">Type</a> <a id="929" href="BiinverseEquivalenceType.html#495" class="Bound">ℓᵢ</a><a id="931" class="Symbol">}</a> <a id="933" class="Symbol">{</a><a id="934" href="BiinverseEquivalenceType.html#934" class="Bound">B</a> <a id="936" class="Symbol">:</a> <a id="938" href="Intro.html#2766" class="Function">Type</a> <a id="943" href="BiinverseEquivalenceType.html#509" class="Bound">ℓⱼ</a><a id="945" class="Symbol">}</a>
    <a id="951" class="Symbol">→</a> <a id="953" class="Symbol">(</a><a id="954" href="BiinverseEquivalenceType.html#954" class="Bound">f</a> <a id="956" class="Symbol">:</a> <a id="958" href="BiinverseEquivalenceType.html#920" class="Bound">A</a> <a id="960" class="Symbol">→</a> <a id="962" href="BiinverseEquivalenceType.html#934" class="Bound">B</a><a id="963" class="Symbol">)</a>
    <a id="969" class="Symbol">→</a> <a id="971" href="Intro.html#2766" class="Function">Type</a> <a id="976" class="Symbol">(</a><a id="977" href="BiinverseEquivalenceType.html#495" class="Bound">ℓᵢ</a> <a id="980" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a>  <a id="983" href="BiinverseEquivalenceType.html#509" class="Bound">ℓⱼ</a><a id="985" class="Symbol">)</a>
  <a id="989" href="BiinverseEquivalenceType.html#906" class="Function">biinv</a> <a id="995" href="BiinverseEquivalenceType.html#995" class="Bound">f</a> <a id="997" class="Symbol">=</a> <a id="999" href="BiinverseEquivalenceType.html#560" class="Record">Equivalence</a> <a id="1011" href="BiinverseEquivalenceType.html#995" class="Bound">f</a>
</pre>

<pre class="Agda">
  <a id="isequiv"></a><a id="1040" href="BiinverseEquivalenceType.html#1040" class="Function">isequiv</a>
    <a id="1052" class="Symbol">:</a>  <a id="1055" class="Symbol">{</a><a id="1056" href="BiinverseEquivalenceType.html#1056" class="Bound">A</a> <a id="1058" class="Symbol">:</a> <a id="1060" href="Intro.html#2766" class="Function">Type</a> <a id="1065" href="BiinverseEquivalenceType.html#495" class="Bound">ℓᵢ</a><a id="1067" class="Symbol">}</a> <a id="1069" class="Symbol">{</a><a id="1070" href="BiinverseEquivalenceType.html#1070" class="Bound">B</a> <a id="1072" class="Symbol">:</a> <a id="1074" href="Intro.html#2766" class="Function">Type</a> <a id="1079" href="BiinverseEquivalenceType.html#509" class="Bound">ℓⱼ</a><a id="1081" class="Symbol">}</a>
    <a id="1087" class="Symbol">→</a> <a id="1089" class="Symbol">(</a><a id="1090" href="BiinverseEquivalenceType.html#1090" class="Bound">f</a> <a id="1092" class="Symbol">:</a> <a id="1094" href="BiinverseEquivalenceType.html#1056" class="Bound">A</a> <a id="1096" class="Symbol">→</a> <a id="1098" href="BiinverseEquivalenceType.html#1070" class="Bound">B</a><a id="1099" class="Symbol">)</a>
    <a id="1105" class="Symbol">→</a> <a id="1107" href="Intro.html#2766" class="Function">Type</a> <a id="1112" class="Symbol">(</a><a id="1113" href="BiinverseEquivalenceType.html#495" class="Bound">ℓᵢ</a> <a id="1116" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a>  <a id="1119" href="BiinverseEquivalenceType.html#509" class="Bound">ℓⱼ</a><a id="1121" class="Symbol">)</a>
  <a id="1125" href="BiinverseEquivalenceType.html#1040" class="Function">isequiv</a> <a id="1133" href="BiinverseEquivalenceType.html#1133" class="Bound">f</a> <a id="1135" class="Symbol">=</a> <a id="1137" href="BiinverseEquivalenceType.html#560" class="Record">Equivalence</a> <a id="1149" href="BiinverseEquivalenceType.html#1133" class="Bound">f</a>
</pre>

<pre class="Agda">
  <a id="1178" class="Keyword">record</a>
    <a id="_≃_"></a><a id="1189" href="BiinverseEquivalenceType.html#1189" class="Record Operator">_≃_</a> <a id="1193" class="Symbol">{</a><a id="1194" href="BiinverseEquivalenceType.html#1194" class="Bound">ℓᵢ</a><a id="1196" class="Symbol">}{</a><a id="1198" href="BiinverseEquivalenceType.html#1198" class="Bound">ℓⱼ</a><a id="1200" class="Symbol">}</a> <a id="1202" class="Symbol">(</a><a id="1203" href="BiinverseEquivalenceType.html#1203" class="Bound">A</a> <a id="1205" class="Symbol">:</a> <a id="1207" href="Intro.html#2766" class="Function">Type</a> <a id="1212" href="BiinverseEquivalenceType.html#1194" class="Bound">ℓᵢ</a><a id="1214" class="Symbol">)</a> <a id="1216" class="Symbol">(</a><a id="1217" href="BiinverseEquivalenceType.html#1217" class="Bound">B</a> <a id="1219" class="Symbol">:</a> <a id="1221" href="Intro.html#2766" class="Function">Type</a> <a id="1226" href="BiinverseEquivalenceType.html#1198" class="Bound">ℓⱼ</a><a id="1228" class="Symbol">)</a>
    <a id="1234" class="Symbol">:</a> <a id="1236" href="Intro.html#2766" class="Function">Type</a> <a id="1241" class="Symbol">(</a><a id="1242" href="BiinverseEquivalenceType.html#1194" class="Bound">ℓᵢ</a> <a id="1245" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="1247" href="BiinverseEquivalenceType.html#1198" class="Bound">ℓⱼ</a><a id="1249" class="Symbol">)</a>
    <a id="1255" class="Keyword">where</a>
    <a id="1265" class="Keyword">constructor</a> <a id="_≃_.eq"></a><a id="1277" href="BiinverseEquivalenceType.html#1277" class="InductiveConstructor">eq</a>
    <a id="1284" class="Keyword">field</a>
      <a id="_≃_.apply-eq"></a><a id="1296" href="BiinverseEquivalenceType.html#1296" class="Field">apply-eq</a> <a id="1305" class="Symbol">:</a> <a id="1307" href="BiinverseEquivalenceType.html#1203" class="Bound">A</a> <a id="1309" class="Symbol">→</a> <a id="1311" href="BiinverseEquivalenceType.html#1217" class="Bound">B</a>
      <a id="_≃_.biinverse"></a><a id="1319" href="BiinverseEquivalenceType.html#1319" class="Field">biinverse</a> <a id="1329" class="Symbol">:</a> <a id="1331" href="BiinverseEquivalenceType.html#560" class="Record">Equivalence</a> <a id="1343" href="BiinverseEquivalenceType.html#1296" class="Field">apply-eq</a>
</pre>

<pre class="Agda">
  <a id="ide"></a><a id="1379" href="BiinverseEquivalenceType.html#1379" class="Function">ide</a>
    <a id="1387" class="Symbol">:</a> <a id="1389" class="Symbol">∀</a> <a id="1391" class="Symbol">{</a><a id="1392" href="BiinverseEquivalenceType.html#1392" class="Bound">ℓᵢ</a><a id="1394" class="Symbol">}</a> <a id="1396" class="Symbol">{</a><a id="1397" href="BiinverseEquivalenceType.html#1397" class="Bound">A</a> <a id="1399" class="Symbol">:</a> <a id="1401" href="Intro.html#2766" class="Function">Type</a> <a id="1406" href="BiinverseEquivalenceType.html#1392" class="Bound">ℓᵢ</a><a id="1408" class="Symbol">}</a>
    <a id="1414" class="Symbol">→</a> <a id="1416" href="BiinverseEquivalenceType.html#1397" class="Bound">A</a> <a id="1418" href="BiinverseEquivalenceType.html#1189" class="Record Operator">≃</a> <a id="1420" href="BiinverseEquivalenceType.html#1397" class="Bound">A</a>

  <a id="1425" href="BiinverseEquivalenceType.html#1379" class="Function">ide</a> <a id="1429" class="Symbol">=</a> <a id="1431" href="BiinverseEquivalenceType.html#1277" class="InductiveConstructor">eq</a> <a id="1434" href="BasicFunctions.html#375" class="Function">id</a> <a id="1437" class="Symbol">(</a><a id="1438" href="BiinverseEquivalenceType.html#668" class="InductiveConstructor">equivalence</a> <a id="1450" href="BasicFunctions.html#375" class="Function">id</a> <a id="1453" href="BasicFunctions.html#375" class="Function">id</a> <a id="1456" class="Symbol">(λ</a> <a id="1459" href="BiinverseEquivalenceType.html#1459" class="Bound">a</a> <a id="1461" class="Symbol">→</a> <a id="1463" href="BasicTypes.html#4393" class="InductiveConstructor">idp</a><a id="1466" class="Symbol">)</a> <a id="1468" class="Symbol">(λ</a> <a id="1471" href="BiinverseEquivalenceType.html#1471" class="Bound">a</a> <a id="1473" class="Symbol">→</a> <a id="1475" href="BasicTypes.html#4393" class="InductiveConstructor">idp</a><a id="1478" class="Symbol">))</a>
</pre>

<pre class="Agda">
  <a id="≃-from-≡"></a><a id="1508" href="BiinverseEquivalenceType.html#1508" class="Function">≃-from-≡</a>
    <a id="1521" class="Symbol">:</a> <a id="1523" class="Symbol">{</a><a id="1524" href="BiinverseEquivalenceType.html#1524" class="Bound">A</a> <a id="1526" class="Symbol">:</a> <a id="1528" href="Intro.html#2766" class="Function">Type</a> <a id="1533" href="BiinverseEquivalenceType.html#495" class="Bound">ℓᵢ</a><a id="1535" class="Symbol">}</a>
    <a id="1541" class="Symbol">→</a> <a id="1543" class="Symbol">(</a><a id="1544" href="BiinverseEquivalenceType.html#1544" class="Bound">F</a> <a id="1546" class="Symbol">:</a> <a id="1548" href="BiinverseEquivalenceType.html#1524" class="Bound">A</a> <a id="1550" class="Symbol">→</a> <a id="1552" href="Intro.html#2766" class="Function">Type</a> <a id="1557" href="BiinverseEquivalenceType.html#509" class="Bound">ℓⱼ</a><a id="1559" class="Symbol">)</a>
    <a id="1565" class="Symbol">→</a> <a id="1567" class="Symbol">(</a><a id="1568" href="BiinverseEquivalenceType.html#1568" class="Bound">a</a> <a id="1570" href="BiinverseEquivalenceType.html#1570" class="Bound">b</a> <a id="1572" class="Symbol">:</a> <a id="1574" href="BiinverseEquivalenceType.html#1524" class="Bound">A</a><a id="1575" class="Symbol">)</a>
    <a id="1581" class="Symbol">→</a> <a id="1583" href="BiinverseEquivalenceType.html#1568" class="Bound">a</a> <a id="1585" href="BasicTypes.html#4524" class="Function Operator">≡</a> <a id="1587" href="BiinverseEquivalenceType.html#1570" class="Bound">b</a> <a id="1589" class="Symbol">→</a> <a id="1591" href="BiinverseEquivalenceType.html#1544" class="Bound">F</a> <a id="1593" href="BiinverseEquivalenceType.html#1568" class="Bound">a</a> <a id="1595" href="BiinverseEquivalenceType.html#1189" class="Record Operator">≃</a> <a id="1597" href="BiinverseEquivalenceType.html#1544" class="Bound">F</a> <a id="1599" href="BiinverseEquivalenceType.html#1570" class="Bound">b</a>

  <a id="1604" href="BiinverseEquivalenceType.html#1508" class="Function">≃-from-≡</a> <a id="1613" href="BiinverseEquivalenceType.html#1613" class="Bound">F</a> <a id="1615" href="BiinverseEquivalenceType.html#1615" class="Bound">a</a> <a id="1617" href="BiinverseEquivalenceType.html#1617" class="Bound">b</a> <a id="1619" href="BiinverseEquivalenceType.html#1619" class="Bound">p</a> <a id="1621" class="Symbol">=</a> <a id="1623" href="Transport.html#682" class="Function">tr₁</a> <a id="1627" class="Symbol">(</a><a id="1628" href="BiinverseEquivalenceType.html#1189" class="Record Operator">_≃_</a> <a id="1632" class="Symbol">_</a> <a id="1634" href="BasicFunctions.html#1012" class="Function Operator">∘</a> <a id="1636" href="BiinverseEquivalenceType.html#1613" class="Bound">F</a><a id="1637" class="Symbol">)</a> <a id="1639" href="BiinverseEquivalenceType.html#1619" class="Bound">p</a> <a id="1641" href="BiinverseEquivalenceType.html#1379" class="Function">ide</a>
</pre>
