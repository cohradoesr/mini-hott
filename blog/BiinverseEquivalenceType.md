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
  <a id="460" href="BiinverseEquivalenceType.html" class="Module">BiinverseEquivalenceType</a> <a id="485" class="Symbol">{</a><a id="486" href="BiinverseEquivalenceType.html#486" class="Bound">A</a> <a id="488" class="Symbol">:</a> <a id="490" href="Intro.html#1803" class="Function">Type</a> <a id="495" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="497" class="Symbol">}</a> <a id="499" class="Symbol">{</a><a id="500" href="BiinverseEquivalenceType.html#500" class="Bound">B</a> <a id="502" class="Symbol">:</a> <a id="504" href="Intro.html#1803" class="Function">Type</a> <a id="509" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="511" class="Symbol">}</a>
   <a id="516" class="Keyword">where</a>
</pre>

<pre class="Agda">
  <a id="549" class="Keyword">record</a>
    <a id="Equivalence"></a><a id="560" href="BiinverseEquivalenceType.html#560" class="Record">Equivalence</a> <a id="572" class="Symbol">{</a><a id="573" href="BiinverseEquivalenceType.html#573" class="Bound">ℓᵢ</a> <a id="576" href="BiinverseEquivalenceType.html#576" class="Bound">ℓⱼ</a><a id="578" class="Symbol">}</a> <a id="580" class="Symbol">{</a><a id="581" href="BiinverseEquivalenceType.html#581" class="Bound">A</a> <a id="583" class="Symbol">:</a> <a id="585" href="Intro.html#1803" class="Function">Type</a> <a id="590" href="BiinverseEquivalenceType.html#573" class="Bound">ℓᵢ</a><a id="592" class="Symbol">}</a> <a id="594" class="Symbol">{</a><a id="595" href="BiinverseEquivalenceType.html#595" class="Bound">B</a> <a id="597" class="Symbol">:</a> <a id="599" href="Intro.html#1803" class="Function">Type</a> <a id="604" href="BiinverseEquivalenceType.html#576" class="Bound">ℓⱼ</a><a id="606" class="Symbol">}</a> <a id="608" class="Symbol">(</a><a id="609" href="BiinverseEquivalenceType.html#609" class="Bound">f</a> <a id="611" class="Symbol">:</a> <a id="613" href="BiinverseEquivalenceType.html#581" class="Bound">A</a> <a id="615" class="Symbol">→</a> <a id="617" href="BiinverseEquivalenceType.html#595" class="Bound">B</a><a id="618" class="Symbol">)</a>
    <a id="624" class="Symbol">:</a> <a id="626" href="Intro.html#1803" class="Function">Type</a> <a id="631" class="Symbol">(</a><a id="632" href="BiinverseEquivalenceType.html#573" class="Bound">ℓᵢ</a> <a id="635" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a>  <a id="638" href="BiinverseEquivalenceType.html#576" class="Bound">ℓⱼ</a><a id="640" class="Symbol">)</a>
    <a id="646" class="Keyword">where</a>
    <a id="656" class="Keyword">constructor</a> <a id="Equivalence.equivalence"></a><a id="668" href="BiinverseEquivalenceType.html#668" class="InductiveConstructor">equivalence</a>
    <a id="684" class="Keyword">field</a>
      <a id="Equivalence.left-inverse"></a><a id="696" href="BiinverseEquivalenceType.html#696" class="Field">left-inverse</a>   <a id="711" class="Symbol">:</a> <a id="713" href="BiinverseEquivalenceType.html#595" class="Bound">B</a> <a id="715" class="Symbol">→</a> <a id="717" href="BiinverseEquivalenceType.html#581" class="Bound">A</a>
      <a id="Equivalence.right-inverse"></a><a id="725" href="BiinverseEquivalenceType.html#725" class="Field">right-inverse</a>  <a id="740" class="Symbol">:</a> <a id="742" href="BiinverseEquivalenceType.html#595" class="Bound">B</a> <a id="744" class="Symbol">→</a> <a id="746" href="BiinverseEquivalenceType.html#581" class="Bound">A</a>
      <a id="Equivalence.left-identity"></a><a id="754" href="BiinverseEquivalenceType.html#754" class="Field">left-identity</a>  <a id="769" class="Symbol">:</a> <a id="771" class="Symbol">∀</a> <a id="773" href="BiinverseEquivalenceType.html#773" class="Bound">a</a> <a id="775" class="Symbol">→</a>  <a id="778" href="BiinverseEquivalenceType.html#696" class="Field">left-inverse</a> <a id="791" class="Symbol">(</a><a id="792" href="BiinverseEquivalenceType.html#609" class="Bound">f</a> <a id="794" href="BiinverseEquivalenceType.html#773" class="Bound">a</a><a id="795" class="Symbol">)</a> <a id="797" href="BasicTypes.html#4470" class="Function Operator">≡</a> <a id="799" href="BiinverseEquivalenceType.html#773" class="Bound">a</a>
      <a id="Equivalence.right-identity"></a><a id="807" href="BiinverseEquivalenceType.html#807" class="Field">right-identity</a> <a id="822" class="Symbol">:</a> <a id="824" class="Symbol">∀</a> <a id="826" href="BiinverseEquivalenceType.html#826" class="Bound">b</a> <a id="828" class="Symbol">→</a> <a id="830" href="BiinverseEquivalenceType.html#609" class="Bound">f</a> <a id="832" class="Symbol">(</a><a id="833" href="BiinverseEquivalenceType.html#725" class="Field">right-inverse</a> <a id="847" href="BiinverseEquivalenceType.html#826" class="Bound">b</a><a id="848" class="Symbol">)</a> <a id="850" href="BasicTypes.html#4470" class="Function Operator">≡</a> <a id="852" href="BiinverseEquivalenceType.html#826" class="Bound">b</a>

  <a id="857" class="Keyword">infix</a> <a id="863" class="Number">10</a> <a id="866" href="BiinverseEquivalenceType.html#1051" class="Record Operator">_≃_</a>
</pre>

Synonym:
<pre class="Agda">
  <a id="biinv"></a><a id="906" href="BiinverseEquivalenceType.html#906" class="Function">biinv</a>
    <a id="916" class="Symbol">:</a>  <a id="919" class="Symbol">{</a><a id="920" href="BiinverseEquivalenceType.html#920" class="Bound">A</a> <a id="922" class="Symbol">:</a> <a id="924" href="Intro.html#1803" class="Function">Type</a> <a id="929" href="BiinverseEquivalenceType.html#495" class="Bound">ℓᵢ</a><a id="931" class="Symbol">}</a> <a id="933" class="Symbol">{</a><a id="934" href="BiinverseEquivalenceType.html#934" class="Bound">B</a> <a id="936" class="Symbol">:</a> <a id="938" href="Intro.html#1803" class="Function">Type</a> <a id="943" href="BiinverseEquivalenceType.html#509" class="Bound">ℓⱼ</a><a id="945" class="Symbol">}</a>
    <a id="951" class="Symbol">→</a> <a id="953" class="Symbol">(</a><a id="954" href="BiinverseEquivalenceType.html#954" class="Bound">f</a> <a id="956" class="Symbol">:</a> <a id="958" href="BiinverseEquivalenceType.html#920" class="Bound">A</a> <a id="960" class="Symbol">→</a> <a id="962" href="BiinverseEquivalenceType.html#934" class="Bound">B</a><a id="963" class="Symbol">)</a>
    <a id="969" class="Symbol">→</a> <a id="971" href="Intro.html#1803" class="Function">Type</a> <a id="976" class="Symbol">(</a><a id="977" href="BiinverseEquivalenceType.html#495" class="Bound">ℓᵢ</a> <a id="980" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a>  <a id="983" href="BiinverseEquivalenceType.html#509" class="Bound">ℓⱼ</a><a id="985" class="Symbol">)</a>
  <a id="989" href="BiinverseEquivalenceType.html#906" class="Function">biinv</a> <a id="995" href="BiinverseEquivalenceType.html#995" class="Bound">f</a> <a id="997" class="Symbol">=</a> <a id="999" href="BiinverseEquivalenceType.html#560" class="Record">Equivalence</a> <a id="1011" href="BiinverseEquivalenceType.html#995" class="Bound">f</a>
</pre>

<pre class="Agda">
  <a id="1040" class="Keyword">record</a>
    <a id="_≃_"></a><a id="1051" href="BiinverseEquivalenceType.html#1051" class="Record Operator">_≃_</a> <a id="1055" class="Symbol">{</a><a id="1056" href="BiinverseEquivalenceType.html#1056" class="Bound">ℓᵢ</a><a id="1058" class="Symbol">}{</a><a id="1060" href="BiinverseEquivalenceType.html#1060" class="Bound">ℓⱼ</a><a id="1062" class="Symbol">}</a> <a id="1064" class="Symbol">(</a><a id="1065" href="BiinverseEquivalenceType.html#1065" class="Bound">A</a> <a id="1067" class="Symbol">:</a> <a id="1069" href="Intro.html#1803" class="Function">Type</a> <a id="1074" href="BiinverseEquivalenceType.html#1056" class="Bound">ℓᵢ</a><a id="1076" class="Symbol">)</a> <a id="1078" class="Symbol">(</a><a id="1079" href="BiinverseEquivalenceType.html#1079" class="Bound">B</a> <a id="1081" class="Symbol">:</a> <a id="1083" href="Intro.html#1803" class="Function">Type</a> <a id="1088" href="BiinverseEquivalenceType.html#1060" class="Bound">ℓⱼ</a><a id="1090" class="Symbol">)</a>
    <a id="1096" class="Symbol">:</a> <a id="1098" href="Intro.html#1803" class="Function">Type</a> <a id="1103" class="Symbol">(</a><a id="1104" href="BiinverseEquivalenceType.html#1056" class="Bound">ℓᵢ</a> <a id="1107" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="1109" href="BiinverseEquivalenceType.html#1060" class="Bound">ℓⱼ</a><a id="1111" class="Symbol">)</a>
    <a id="1117" class="Keyword">where</a>
    <a id="1127" class="Keyword">constructor</a> <a id="_≃_.eq"></a><a id="1139" href="BiinverseEquivalenceType.html#1139" class="InductiveConstructor">eq</a>
    <a id="1146" class="Keyword">field</a>
      <a id="_≃_.apply-eq"></a><a id="1158" href="BiinverseEquivalenceType.html#1158" class="Field">apply-eq</a> <a id="1167" class="Symbol">:</a> <a id="1169" href="BiinverseEquivalenceType.html#1065" class="Bound">A</a> <a id="1171" class="Symbol">→</a> <a id="1173" href="BiinverseEquivalenceType.html#1079" class="Bound">B</a>
      <a id="_≃_.biinverse"></a><a id="1181" href="BiinverseEquivalenceType.html#1181" class="Field">biinverse</a> <a id="1191" class="Symbol">:</a> <a id="1193" href="BiinverseEquivalenceType.html#560" class="Record">Equivalence</a> <a id="1205" href="BiinverseEquivalenceType.html#1158" class="Field">apply-eq</a>
</pre>

<pre class="Agda">
  <a id="ide"></a><a id="1241" href="BiinverseEquivalenceType.html#1241" class="Function">ide</a>
    <a id="1249" class="Symbol">:</a> <a id="1251" class="Symbol">∀</a> <a id="1253" class="Symbol">{</a><a id="1254" href="BiinverseEquivalenceType.html#1254" class="Bound">ℓᵢ</a><a id="1256" class="Symbol">}</a> <a id="1258" class="Symbol">{</a><a id="1259" href="BiinverseEquivalenceType.html#1259" class="Bound">A</a> <a id="1261" class="Symbol">:</a> <a id="1263" href="Intro.html#1803" class="Function">Type</a> <a id="1268" href="BiinverseEquivalenceType.html#1254" class="Bound">ℓᵢ</a><a id="1270" class="Symbol">}</a>
    <a id="1276" class="Symbol">→</a> <a id="1278" href="BiinverseEquivalenceType.html#1259" class="Bound">A</a> <a id="1280" href="BiinverseEquivalenceType.html#1051" class="Record Operator">≃</a> <a id="1282" href="BiinverseEquivalenceType.html#1259" class="Bound">A</a>

  <a id="1287" href="BiinverseEquivalenceType.html#1241" class="Function">ide</a> <a id="1291" class="Symbol">=</a> <a id="1293" href="BiinverseEquivalenceType.html#1139" class="InductiveConstructor">eq</a> <a id="1296" href="BasicFunctions.html#376" class="Function">id</a> <a id="1299" class="Symbol">(</a><a id="1300" href="BiinverseEquivalenceType.html#668" class="InductiveConstructor">equivalence</a> <a id="1312" href="BasicFunctions.html#376" class="Function">id</a> <a id="1315" href="BasicFunctions.html#376" class="Function">id</a> <a id="1318" class="Symbol">(λ</a> <a id="1321" href="BiinverseEquivalenceType.html#1321" class="Bound">a</a> <a id="1323" class="Symbol">→</a> <a id="1325" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a><a id="1328" class="Symbol">)</a> <a id="1330" class="Symbol">(λ</a> <a id="1333" href="BiinverseEquivalenceType.html#1333" class="Bound">a</a> <a id="1335" class="Symbol">→</a> <a id="1337" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a><a id="1340" class="Symbol">))</a>
</pre>

<pre class="Agda">
  <a id="≃-from-≡"></a><a id="1370" href="BiinverseEquivalenceType.html#1370" class="Function">≃-from-≡</a>
    <a id="1383" class="Symbol">:</a> <a id="1385" class="Symbol">{</a><a id="1386" href="BiinverseEquivalenceType.html#1386" class="Bound">A</a> <a id="1388" class="Symbol">:</a> <a id="1390" href="Intro.html#1803" class="Function">Type</a> <a id="1395" href="BiinverseEquivalenceType.html#495" class="Bound">ℓᵢ</a><a id="1397" class="Symbol">}</a>
    <a id="1403" class="Symbol">→</a> <a id="1405" class="Symbol">(</a><a id="1406" href="BiinverseEquivalenceType.html#1406" class="Bound">F</a> <a id="1408" class="Symbol">:</a> <a id="1410" href="BiinverseEquivalenceType.html#1386" class="Bound">A</a> <a id="1412" class="Symbol">→</a> <a id="1414" href="Intro.html#1803" class="Function">Type</a> <a id="1419" href="BiinverseEquivalenceType.html#509" class="Bound">ℓⱼ</a><a id="1421" class="Symbol">)</a>
    <a id="1427" class="Symbol">→</a> <a id="1429" class="Symbol">(</a><a id="1430" href="BiinverseEquivalenceType.html#1430" class="Bound">a</a> <a id="1432" href="BiinverseEquivalenceType.html#1432" class="Bound">b</a> <a id="1434" class="Symbol">:</a> <a id="1436" href="BiinverseEquivalenceType.html#1386" class="Bound">A</a><a id="1437" class="Symbol">)</a>
    <a id="1443" class="Symbol">→</a> <a id="1445" href="BiinverseEquivalenceType.html#1430" class="Bound">a</a> <a id="1447" href="BasicTypes.html#4470" class="Function Operator">≡</a> <a id="1449" href="BiinverseEquivalenceType.html#1432" class="Bound">b</a> <a id="1451" class="Symbol">→</a> <a id="1453" href="BiinverseEquivalenceType.html#1406" class="Bound">F</a> <a id="1455" href="BiinverseEquivalenceType.html#1430" class="Bound">a</a> <a id="1457" href="BiinverseEquivalenceType.html#1051" class="Record Operator">≃</a> <a id="1459" href="BiinverseEquivalenceType.html#1406" class="Bound">F</a> <a id="1461" href="BiinverseEquivalenceType.html#1432" class="Bound">b</a>

  <a id="1466" href="BiinverseEquivalenceType.html#1370" class="Function">≃-from-≡</a> <a id="1475" href="BiinverseEquivalenceType.html#1475" class="Bound">F</a> <a id="1477" href="BiinverseEquivalenceType.html#1477" class="Bound">a</a> <a id="1479" href="BiinverseEquivalenceType.html#1479" class="Bound">b</a> <a id="1481" href="BiinverseEquivalenceType.html#1481" class="Bound">p</a> <a id="1483" class="Symbol">=</a> <a id="1485" href="Transport.html#682" class="Function">tr₁</a> <a id="1489" class="Symbol">(</a><a id="1490" href="BiinverseEquivalenceType.html#1051" class="Record Operator">_≃_</a> <a id="1494" class="Symbol">_</a> <a id="1496" href="BasicFunctions.html#1016" class="Function Operator">∘</a> <a id="1498" href="BiinverseEquivalenceType.html#1475" class="Bound">F</a><a id="1499" class="Symbol">)</a> <a id="1501" href="BiinverseEquivalenceType.html#1481" class="Bound">p</a> <a id="1503" href="BiinverseEquivalenceType.html#1241" class="Function">ide</a>
</pre>
