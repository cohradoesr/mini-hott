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

  <a id="857" class="Keyword">infix</a> <a id="863" class="Number">10</a> <a id="866" href="BiinverseEquivalenceType.html#909" class="Record Operator">_≃2_</a>
</pre>

<pre class="Agda">
  <a id="898" class="Keyword">record</a>
    <a id="_≃2_"></a><a id="909" href="BiinverseEquivalenceType.html#909" class="Record Operator">_≃2_</a> <a id="914" class="Symbol">{</a><a id="915" href="BiinverseEquivalenceType.html#915" class="Bound">ℓᵢ</a><a id="917" class="Symbol">}{</a><a id="919" href="BiinverseEquivalenceType.html#919" class="Bound">ℓⱼ</a><a id="921" class="Symbol">}</a> <a id="923" class="Symbol">(</a><a id="924" href="BiinverseEquivalenceType.html#924" class="Bound">A</a> <a id="926" class="Symbol">:</a> <a id="928" href="Intro.html#1803" class="Function">Type</a> <a id="933" href="BiinverseEquivalenceType.html#915" class="Bound">ℓᵢ</a><a id="935" class="Symbol">)</a> <a id="937" class="Symbol">(</a><a id="938" href="BiinverseEquivalenceType.html#938" class="Bound">B</a> <a id="940" class="Symbol">:</a> <a id="942" href="Intro.html#1803" class="Function">Type</a> <a id="947" href="BiinverseEquivalenceType.html#919" class="Bound">ℓⱼ</a><a id="949" class="Symbol">)</a>
    <a id="955" class="Symbol">:</a> <a id="957" href="Intro.html#1803" class="Function">Type</a> <a id="962" class="Symbol">(</a><a id="963" href="BiinverseEquivalenceType.html#915" class="Bound">ℓᵢ</a> <a id="966" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="968" href="BiinverseEquivalenceType.html#919" class="Bound">ℓⱼ</a><a id="970" class="Symbol">)</a>
    <a id="976" class="Keyword">where</a>
    <a id="986" class="Keyword">constructor</a> <a id="_≃2_.eq"></a><a id="998" href="BiinverseEquivalenceType.html#998" class="InductiveConstructor">eq</a>
    <a id="1005" class="Keyword">field</a>
      <a id="_≃2_.apply-eq"></a><a id="1017" href="BiinverseEquivalenceType.html#1017" class="Field">apply-eq</a> <a id="1026" class="Symbol">:</a> <a id="1028" href="BiinverseEquivalenceType.html#924" class="Bound">A</a> <a id="1030" class="Symbol">→</a> <a id="1032" href="BiinverseEquivalenceType.html#938" class="Bound">B</a>
      <a id="_≃2_.biinverse"></a><a id="1040" href="BiinverseEquivalenceType.html#1040" class="Field">biinverse</a> <a id="1050" class="Symbol">:</a> <a id="1052" href="BiinverseEquivalenceType.html#560" class="Record">Equivalence</a> <a id="1064" href="BiinverseEquivalenceType.html#1017" class="Field">apply-eq</a>
</pre>

<pre class="Agda">
  <a id="ide"></a><a id="1100" href="BiinverseEquivalenceType.html#1100" class="Function">ide</a>
    <a id="1108" class="Symbol">:</a> <a id="1110" class="Symbol">∀</a> <a id="1112" class="Symbol">{</a><a id="1113" href="BiinverseEquivalenceType.html#1113" class="Bound">ℓᵢ</a><a id="1115" class="Symbol">}</a> <a id="1117" class="Symbol">{</a><a id="1118" href="BiinverseEquivalenceType.html#1118" class="Bound">A</a> <a id="1120" class="Symbol">:</a> <a id="1122" href="Intro.html#1803" class="Function">Type</a> <a id="1127" href="BiinverseEquivalenceType.html#1113" class="Bound">ℓᵢ</a><a id="1129" class="Symbol">}</a>
    <a id="1135" class="Symbol">→</a> <a id="1137" href="BiinverseEquivalenceType.html#1118" class="Bound">A</a> <a id="1139" href="BiinverseEquivalenceType.html#909" class="Record Operator">≃2</a> <a id="1142" href="BiinverseEquivalenceType.html#1118" class="Bound">A</a>

  <a id="1147" href="BiinverseEquivalenceType.html#1100" class="Function">ide</a> <a id="1151" class="Symbol">=</a> <a id="1153" href="BiinverseEquivalenceType.html#998" class="InductiveConstructor">eq</a> <a id="1156" href="BasicFunctions.html#376" class="Function">id</a> <a id="1159" class="Symbol">(</a><a id="1160" href="BiinverseEquivalenceType.html#668" class="InductiveConstructor">equivalence</a> <a id="1172" href="BasicFunctions.html#376" class="Function">id</a> <a id="1175" href="BasicFunctions.html#376" class="Function">id</a> <a id="1178" class="Symbol">(λ</a> <a id="1181" href="BiinverseEquivalenceType.html#1181" class="Bound">a</a> <a id="1183" class="Symbol">→</a> <a id="1185" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a><a id="1188" class="Symbol">)</a> <a id="1190" class="Symbol">(λ</a> <a id="1193" href="BiinverseEquivalenceType.html#1193" class="Bound">a</a> <a id="1195" class="Symbol">→</a> <a id="1197" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a><a id="1200" class="Symbol">))</a>
</pre>

<pre class="Agda">
  <a id="≃2-from-≡"></a><a id="1230" href="BiinverseEquivalenceType.html#1230" class="Function">≃2-from-≡</a>
    <a id="1244" class="Symbol">:</a> <a id="1246" class="Symbol">{</a><a id="1247" href="BiinverseEquivalenceType.html#1247" class="Bound">A</a> <a id="1249" class="Symbol">:</a> <a id="1251" href="Intro.html#1803" class="Function">Type</a> <a id="1256" href="BiinverseEquivalenceType.html#495" class="Bound">ℓᵢ</a><a id="1258" class="Symbol">}</a>
    <a id="1264" class="Symbol">→</a> <a id="1266" class="Symbol">(</a><a id="1267" href="BiinverseEquivalenceType.html#1267" class="Bound">F</a> <a id="1269" class="Symbol">:</a> <a id="1271" href="BiinverseEquivalenceType.html#1247" class="Bound">A</a> <a id="1273" class="Symbol">→</a> <a id="1275" href="Intro.html#1803" class="Function">Type</a> <a id="1280" href="BiinverseEquivalenceType.html#509" class="Bound">ℓⱼ</a><a id="1282" class="Symbol">)</a>
    <a id="1288" class="Symbol">→</a> <a id="1290" class="Symbol">(</a><a id="1291" href="BiinverseEquivalenceType.html#1291" class="Bound">a</a> <a id="1293" href="BiinverseEquivalenceType.html#1293" class="Bound">b</a> <a id="1295" class="Symbol">:</a> <a id="1297" href="BiinverseEquivalenceType.html#1247" class="Bound">A</a><a id="1298" class="Symbol">)</a>
    <a id="1304" class="Symbol">→</a> <a id="1306" href="BiinverseEquivalenceType.html#1291" class="Bound">a</a> <a id="1308" href="BasicTypes.html#4470" class="Function Operator">≡</a> <a id="1310" href="BiinverseEquivalenceType.html#1293" class="Bound">b</a> <a id="1312" class="Symbol">→</a> <a id="1314" href="BiinverseEquivalenceType.html#1267" class="Bound">F</a> <a id="1316" href="BiinverseEquivalenceType.html#1291" class="Bound">a</a> <a id="1318" href="BiinverseEquivalenceType.html#909" class="Record Operator">≃2</a> <a id="1321" href="BiinverseEquivalenceType.html#1267" class="Bound">F</a> <a id="1323" href="BiinverseEquivalenceType.html#1293" class="Bound">b</a>

  <a id="1328" href="BiinverseEquivalenceType.html#1230" class="Function">≃2-from-≡</a> <a id="1338" href="BiinverseEquivalenceType.html#1338" class="Bound">F</a> <a id="1340" href="BiinverseEquivalenceType.html#1340" class="Bound">a</a> <a id="1342" href="BiinverseEquivalenceType.html#1342" class="Bound">b</a> <a id="1344" href="BiinverseEquivalenceType.html#1344" class="Bound">p</a> <a id="1346" class="Symbol">=</a> <a id="1348" href="Transport.html#682" class="Function">tr₁</a> <a id="1352" class="Symbol">(</a><a id="1353" href="BiinverseEquivalenceType.html#909" class="Record Operator">_≃2_</a> <a id="1358" class="Symbol">_</a> <a id="1360" href="BasicFunctions.html#1016" class="Function Operator">∘</a> <a id="1362" href="BiinverseEquivalenceType.html#1338" class="Bound">F</a><a id="1363" class="Symbol">)</a> <a id="1365" href="BiinverseEquivalenceType.html#1344" class="Bound">p</a> <a id="1367" href="BiinverseEquivalenceType.html#1100" class="Function">ide</a>
</pre>
