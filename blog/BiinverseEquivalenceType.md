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

  <a id="857" class="Keyword">infix</a> <a id="863" class="Number">10</a> <a id="866" href="BiinverseEquivalenceType.html#908" class="Record Operator">_≃_</a>
</pre>

<pre class="Agda">
  <a id="897" class="Keyword">record</a>
    <a id="_≃_"></a><a id="908" href="BiinverseEquivalenceType.html#908" class="Record Operator">_≃_</a> <a id="912" class="Symbol">{</a><a id="913" href="BiinverseEquivalenceType.html#913" class="Bound">ℓᵢ</a><a id="915" class="Symbol">}{</a><a id="917" href="BiinverseEquivalenceType.html#917" class="Bound">ℓⱼ</a><a id="919" class="Symbol">}</a> <a id="921" class="Symbol">(</a><a id="922" href="BiinverseEquivalenceType.html#922" class="Bound">A</a> <a id="924" class="Symbol">:</a> <a id="926" href="Intro.html#1803" class="Function">Type</a> <a id="931" href="BiinverseEquivalenceType.html#913" class="Bound">ℓᵢ</a><a id="933" class="Symbol">)</a> <a id="935" class="Symbol">(</a><a id="936" href="BiinverseEquivalenceType.html#936" class="Bound">B</a> <a id="938" class="Symbol">:</a> <a id="940" href="Intro.html#1803" class="Function">Type</a> <a id="945" href="BiinverseEquivalenceType.html#917" class="Bound">ℓⱼ</a><a id="947" class="Symbol">)</a>
    <a id="953" class="Symbol">:</a> <a id="955" href="Intro.html#1803" class="Function">Type</a> <a id="960" class="Symbol">(</a><a id="961" href="BiinverseEquivalenceType.html#913" class="Bound">ℓᵢ</a> <a id="964" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="966" href="BiinverseEquivalenceType.html#917" class="Bound">ℓⱼ</a><a id="968" class="Symbol">)</a>
    <a id="974" class="Keyword">where</a>
    <a id="984" class="Keyword">constructor</a> <a id="_≃_.eq"></a><a id="996" href="BiinverseEquivalenceType.html#996" class="InductiveConstructor">eq</a>
    <a id="1003" class="Keyword">field</a>
      <a id="_≃_.apply-eq"></a><a id="1015" href="BiinverseEquivalenceType.html#1015" class="Field">apply-eq</a> <a id="1024" class="Symbol">:</a> <a id="1026" href="BiinverseEquivalenceType.html#922" class="Bound">A</a> <a id="1028" class="Symbol">→</a> <a id="1030" href="BiinverseEquivalenceType.html#936" class="Bound">B</a>
      <a id="_≃_.biinverse"></a><a id="1038" href="BiinverseEquivalenceType.html#1038" class="Field">biinverse</a> <a id="1048" class="Symbol">:</a> <a id="1050" href="BiinverseEquivalenceType.html#560" class="Record">Equivalence</a> <a id="1062" href="BiinverseEquivalenceType.html#1015" class="Field">apply-eq</a>
</pre>

<pre class="Agda">
  <a id="ide"></a><a id="1098" href="BiinverseEquivalenceType.html#1098" class="Function">ide</a>
    <a id="1106" class="Symbol">:</a> <a id="1108" class="Symbol">∀</a> <a id="1110" class="Symbol">{</a><a id="1111" href="BiinverseEquivalenceType.html#1111" class="Bound">ℓᵢ</a><a id="1113" class="Symbol">}</a> <a id="1115" class="Symbol">{</a><a id="1116" href="BiinverseEquivalenceType.html#1116" class="Bound">A</a> <a id="1118" class="Symbol">:</a> <a id="1120" href="Intro.html#1803" class="Function">Type</a> <a id="1125" href="BiinverseEquivalenceType.html#1111" class="Bound">ℓᵢ</a><a id="1127" class="Symbol">}</a>
    <a id="1133" class="Symbol">→</a> <a id="1135" href="BiinverseEquivalenceType.html#1116" class="Bound">A</a> <a id="1137" href="BiinverseEquivalenceType.html#908" class="Record Operator">≃</a> <a id="1139" href="BiinverseEquivalenceType.html#1116" class="Bound">A</a>

  <a id="1144" href="BiinverseEquivalenceType.html#1098" class="Function">ide</a> <a id="1148" class="Symbol">=</a> <a id="1150" href="BiinverseEquivalenceType.html#996" class="InductiveConstructor">eq</a> <a id="1153" href="BasicFunctions.html#376" class="Function">id</a> <a id="1156" class="Symbol">(</a><a id="1157" href="BiinverseEquivalenceType.html#668" class="InductiveConstructor">equivalence</a> <a id="1169" href="BasicFunctions.html#376" class="Function">id</a> <a id="1172" href="BasicFunctions.html#376" class="Function">id</a> <a id="1175" class="Symbol">(λ</a> <a id="1178" href="BiinverseEquivalenceType.html#1178" class="Bound">a</a> <a id="1180" class="Symbol">→</a> <a id="1182" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a><a id="1185" class="Symbol">)</a> <a id="1187" class="Symbol">(λ</a> <a id="1190" href="BiinverseEquivalenceType.html#1190" class="Bound">a</a> <a id="1192" class="Symbol">→</a> <a id="1194" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a><a id="1197" class="Symbol">))</a>
</pre>

<pre class="Agda">
  <a id="≃-from-≡"></a><a id="1227" href="BiinverseEquivalenceType.html#1227" class="Function">≃-from-≡</a>
    <a id="1240" class="Symbol">:</a> <a id="1242" class="Symbol">{</a><a id="1243" href="BiinverseEquivalenceType.html#1243" class="Bound">A</a> <a id="1245" class="Symbol">:</a> <a id="1247" href="Intro.html#1803" class="Function">Type</a> <a id="1252" href="BiinverseEquivalenceType.html#495" class="Bound">ℓᵢ</a><a id="1254" class="Symbol">}</a>
    <a id="1260" class="Symbol">→</a> <a id="1262" class="Symbol">(</a><a id="1263" href="BiinverseEquivalenceType.html#1263" class="Bound">F</a> <a id="1265" class="Symbol">:</a> <a id="1267" href="BiinverseEquivalenceType.html#1243" class="Bound">A</a> <a id="1269" class="Symbol">→</a> <a id="1271" href="Intro.html#1803" class="Function">Type</a> <a id="1276" href="BiinverseEquivalenceType.html#509" class="Bound">ℓⱼ</a><a id="1278" class="Symbol">)</a>
    <a id="1284" class="Symbol">→</a> <a id="1286" class="Symbol">(</a><a id="1287" href="BiinverseEquivalenceType.html#1287" class="Bound">a</a> <a id="1289" href="BiinverseEquivalenceType.html#1289" class="Bound">b</a> <a id="1291" class="Symbol">:</a> <a id="1293" href="BiinverseEquivalenceType.html#1243" class="Bound">A</a><a id="1294" class="Symbol">)</a>
    <a id="1300" class="Symbol">→</a> <a id="1302" href="BiinverseEquivalenceType.html#1287" class="Bound">a</a> <a id="1304" href="BasicTypes.html#4470" class="Function Operator">≡</a> <a id="1306" href="BiinverseEquivalenceType.html#1289" class="Bound">b</a> <a id="1308" class="Symbol">→</a> <a id="1310" href="BiinverseEquivalenceType.html#1263" class="Bound">F</a> <a id="1312" href="BiinverseEquivalenceType.html#1287" class="Bound">a</a> <a id="1314" href="BiinverseEquivalenceType.html#908" class="Record Operator">≃</a> <a id="1316" href="BiinverseEquivalenceType.html#1263" class="Bound">F</a> <a id="1318" href="BiinverseEquivalenceType.html#1289" class="Bound">b</a>

  <a id="1323" href="BiinverseEquivalenceType.html#1227" class="Function">≃-from-≡</a> <a id="1332" href="BiinverseEquivalenceType.html#1332" class="Bound">F</a> <a id="1334" href="BiinverseEquivalenceType.html#1334" class="Bound">a</a> <a id="1336" href="BiinverseEquivalenceType.html#1336" class="Bound">b</a> <a id="1338" href="BiinverseEquivalenceType.html#1338" class="Bound">p</a> <a id="1340" class="Symbol">=</a> <a id="1342" href="Transport.html#682" class="Function">tr₁</a> <a id="1346" class="Symbol">(</a><a id="1347" href="BiinverseEquivalenceType.html#908" class="Record Operator">_≃_</a> <a id="1351" class="Symbol">_</a> <a id="1353" href="BasicFunctions.html#1016" class="Function Operator">∘</a> <a id="1355" href="BiinverseEquivalenceType.html#1332" class="Bound">F</a><a id="1356" class="Symbol">)</a> <a id="1358" href="BiinverseEquivalenceType.html#1338" class="Bound">p</a> <a id="1360" href="BiinverseEquivalenceType.html#1098" class="Function">ide</a>
</pre>
