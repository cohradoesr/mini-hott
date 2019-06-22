---
layout: page
title: "Biinverse Type"
category: homotopy
toc: true
agda: true
gallery: true
latex: true
references: false
linkify: true
showcitation: true
---

Two functions are quasi-inverses if we can construct a function providing
`(g ∘ f) x = x` and `(f ∘ g) y = y` for any given `x` and `y`.

<div class="hide" >
<pre class="Agda">
<a id="345" class="Symbol">{-#</a> <a id="349" class="Keyword">OPTIONS</a> <a id="357" class="Pragma">--without-K</a> <a id="369" class="Symbol">#-}</a>
<a id="373" class="Keyword">open</a> <a id="378" class="Keyword">import</a> <a id="385" href="TransportLemmas.html" class="Module">TransportLemmas</a>
<a id="401" class="Keyword">open</a> <a id="406" class="Keyword">import</a> <a id="413" href="EquivalenceType.html" class="Module">EquivalenceType</a>

<a id="430" class="Keyword">open</a> <a id="435" class="Keyword">import</a> <a id="442" href="HomotopyType.html" class="Module">HomotopyType</a>
<a id="455" class="Keyword">open</a> <a id="460" class="Keyword">import</a> <a id="467" href="HomotopyLemmas.html" class="Module">HomotopyLemmas</a>


<a id="484" class="Keyword">open</a> <a id="489" class="Keyword">import</a> <a id="496" href="HalfAdjointType.html" class="Module">HalfAdjointType</a>
</pre>
</div>

<pre class="Agda">
<a id="544" class="Keyword">module</a>
  <a id="553" href="BiinverseType.html" class="Module">BiinverseType</a> <a id="567" class="Symbol">{</a><a id="568" href="BiinverseType.html#568" class="Bound">A</a> <a id="570" class="Symbol">:</a> <a id="572" href="Intro.html#1813" class="Function">Type</a> <a id="577" href="Intro.html#2255" class="Generalizable">ℓᵢ</a><a id="579" class="Symbol">}</a> <a id="581" class="Symbol">{</a><a id="582" href="BiinverseType.html#582" class="Bound">B</a> <a id="584" class="Symbol">:</a> <a id="586" href="Intro.html#1813" class="Function">Type</a> <a id="591" href="Intro.html#2258" class="Generalizable">ℓⱼ</a><a id="593" class="Symbol">}</a>
   <a id="598" class="Keyword">where</a>
</pre>

<pre class="Agda">
  <a id="631" class="Keyword">record</a>
    <a id="Equivalence"></a><a id="642" href="BiinverseType.html#642" class="Record">Equivalence</a> <a id="654" class="Symbol">{</a><a id="655" href="BiinverseType.html#655" class="Bound">i</a> <a id="657" href="BiinverseType.html#657" class="Bound">j</a><a id="658" class="Symbol">}</a> <a id="660" class="Symbol">{</a><a id="661" href="BiinverseType.html#661" class="Bound">A</a> <a id="663" class="Symbol">:</a> <a id="665" href="Intro.html#1813" class="Function">Type</a> <a id="670" href="BiinverseType.html#655" class="Bound">i</a><a id="671" class="Symbol">}</a> <a id="673" class="Symbol">{</a><a id="674" href="BiinverseType.html#674" class="Bound">B</a> <a id="676" class="Symbol">:</a> <a id="678" href="Intro.html#1813" class="Function">Type</a> <a id="683" href="BiinverseType.html#657" class="Bound">j</a><a id="684" class="Symbol">}</a> <a id="686" class="Symbol">(</a><a id="687" href="BiinverseType.html#687" class="Bound">f</a> <a id="689" class="Symbol">:</a> <a id="691" href="BiinverseType.html#661" class="Bound">A</a> <a id="693" class="Symbol">→</a> <a id="695" href="BiinverseType.html#674" class="Bound">B</a><a id="696" class="Symbol">)</a>
    <a id="702" class="Symbol">:</a> <a id="704" href="Intro.html#1813" class="Function">Type</a> <a id="709" class="Symbol">(</a><a id="710" href="BiinverseType.html#655" class="Bound">i</a> <a id="712" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a>  <a id="715" href="BiinverseType.html#657" class="Bound">j</a><a id="716" class="Symbol">)</a>
    <a id="722" class="Keyword">where</a>
    <a id="732" class="Keyword">constructor</a> <a id="Equivalence.equivalence"></a><a id="744" href="BiinverseType.html#744" class="InductiveConstructor">equivalence</a>
    <a id="760" class="Keyword">field</a>
      <a id="Equivalence.left-inverse"></a><a id="772" href="BiinverseType.html#772" class="Field">left-inverse</a>   <a id="787" class="Symbol">:</a> <a id="789" href="BiinverseType.html#674" class="Bound">B</a> <a id="791" class="Symbol">→</a> <a id="793" href="BiinverseType.html#661" class="Bound">A</a>
      <a id="Equivalence.right-inverse"></a><a id="801" href="BiinverseType.html#801" class="Field">right-inverse</a>  <a id="816" class="Symbol">:</a> <a id="818" href="BiinverseType.html#674" class="Bound">B</a> <a id="820" class="Symbol">→</a> <a id="822" href="BiinverseType.html#661" class="Bound">A</a>
      <a id="Equivalence.left-identity"></a><a id="830" href="BiinverseType.html#830" class="Field">left-identity</a>  <a id="845" class="Symbol">:</a> <a id="847" class="Symbol">∀</a> <a id="849" href="BiinverseType.html#849" class="Bound">a</a> <a id="851" class="Symbol">→</a>  <a id="854" href="BiinverseType.html#772" class="Field">left-inverse</a> <a id="867" class="Symbol">(</a><a id="868" href="BiinverseType.html#687" class="Bound">f</a> <a id="870" href="BiinverseType.html#849" class="Bound">a</a><a id="871" class="Symbol">)</a> <a id="873" href="BasicTypes.html#4480" class="Function Operator">≡</a> <a id="875" href="BiinverseType.html#849" class="Bound">a</a>
      <a id="Equivalence.right-identity"></a><a id="883" href="BiinverseType.html#883" class="Field">right-identity</a> <a id="898" class="Symbol">:</a> <a id="900" class="Symbol">∀</a> <a id="902" href="BiinverseType.html#902" class="Bound">b</a> <a id="904" class="Symbol">→</a> <a id="906" href="BiinverseType.html#687" class="Bound">f</a> <a id="908" class="Symbol">(</a><a id="909" href="BiinverseType.html#801" class="Field">right-inverse</a> <a id="923" href="BiinverseType.html#902" class="Bound">b</a><a id="924" class="Symbol">)</a> <a id="926" href="BasicTypes.html#4480" class="Function Operator">≡</a> <a id="928" href="BiinverseType.html#902" class="Bound">b</a>

  <a id="933" class="Keyword">infix</a> <a id="939" class="Number">10</a> <a id="942" href="BiinverseType.html#985" class="Record Operator">_≃2_</a>
</pre>

<pre class="Agda">
  <a id="974" class="Keyword">record</a>
    <a id="_≃2_"></a><a id="985" href="BiinverseType.html#985" class="Record Operator">_≃2_</a> <a id="990" class="Symbol">{</a><a id="991" href="BiinverseType.html#991" class="Bound">ℓᵢ</a><a id="993" class="Symbol">}{</a><a id="995" href="BiinverseType.html#995" class="Bound">ℓⱼ</a><a id="997" class="Symbol">}</a> <a id="999" class="Symbol">(</a><a id="1000" href="BiinverseType.html#1000" class="Bound">A</a> <a id="1002" class="Symbol">:</a> <a id="1004" href="Intro.html#1813" class="Function">Type</a> <a id="1009" href="BiinverseType.html#991" class="Bound">ℓᵢ</a><a id="1011" class="Symbol">)</a> <a id="1013" class="Symbol">(</a><a id="1014" href="BiinverseType.html#1014" class="Bound">B</a> <a id="1016" class="Symbol">:</a> <a id="1018" href="Intro.html#1813" class="Function">Type</a> <a id="1023" href="BiinverseType.html#995" class="Bound">ℓⱼ</a><a id="1025" class="Symbol">)</a>
    <a id="1031" class="Symbol">:</a> <a id="1033" href="Intro.html#1813" class="Function">Type</a> <a id="1038" class="Symbol">(</a><a id="1039" href="BiinverseType.html#991" class="Bound">ℓᵢ</a> <a id="1042" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="1044" href="BiinverseType.html#995" class="Bound">ℓⱼ</a><a id="1046" class="Symbol">)</a>
    <a id="1052" class="Keyword">where</a>
    <a id="1062" class="Keyword">constructor</a> <a id="_≃2_.eq"></a><a id="1074" href="BiinverseType.html#1074" class="InductiveConstructor">eq</a>
    <a id="1081" class="Keyword">field</a>
      <a id="_≃2_.apply-eq"></a><a id="1093" href="BiinverseType.html#1093" class="Field">apply-eq</a> <a id="1102" class="Symbol">:</a> <a id="1104" href="BiinverseType.html#1000" class="Bound">A</a> <a id="1106" class="Symbol">→</a> <a id="1108" href="BiinverseType.html#1014" class="Bound">B</a>
      <a id="_≃2_.biinverse"></a><a id="1116" href="BiinverseType.html#1116" class="Field">biinverse</a> <a id="1126" class="Symbol">:</a> <a id="1128" href="BiinverseType.html#642" class="Record">Equivalence</a> <a id="1140" href="BiinverseType.html#1093" class="Field">apply-eq</a>
</pre>

<pre class="Agda">
  <a id="ide"></a><a id="1176" href="BiinverseType.html#1176" class="Function">ide</a>
    <a id="1184" class="Symbol">:</a> <a id="1186" class="Symbol">∀</a> <a id="1188" class="Symbol">{</a><a id="1189" href="BiinverseType.html#1189" class="Bound">ℓᵢ</a><a id="1191" class="Symbol">}</a> <a id="1193" class="Symbol">{</a><a id="1194" href="BiinverseType.html#1194" class="Bound">A</a> <a id="1196" class="Symbol">:</a> <a id="1198" href="Intro.html#1813" class="Function">Type</a> <a id="1203" href="BiinverseType.html#1189" class="Bound">ℓᵢ</a><a id="1205" class="Symbol">}</a>
    <a id="1211" class="Symbol">→</a> <a id="1213" href="BiinverseType.html#1194" class="Bound">A</a> <a id="1215" href="BiinverseType.html#985" class="Record Operator">≃2</a> <a id="1218" href="BiinverseType.html#1194" class="Bound">A</a>

  <a id="1223" href="BiinverseType.html#1176" class="Function">ide</a> <a id="1227" class="Symbol">=</a> <a id="1229" href="BiinverseType.html#1074" class="InductiveConstructor">eq</a> <a id="1232" href="BasicFunctions.html#386" class="Function">id</a> <a id="1235" class="Symbol">(</a><a id="1236" href="BiinverseType.html#744" class="InductiveConstructor">equivalence</a> <a id="1248" href="BasicFunctions.html#386" class="Function">id</a> <a id="1251" href="BasicFunctions.html#386" class="Function">id</a> <a id="1254" class="Symbol">(λ</a> <a id="1257" href="BiinverseType.html#1257" class="Bound">a</a> <a id="1259" class="Symbol">→</a> <a id="1261" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a><a id="1264" class="Symbol">)</a> <a id="1266" class="Symbol">(λ</a> <a id="1269" href="BiinverseType.html#1269" class="Bound">a</a> <a id="1271" class="Symbol">→</a> <a id="1273" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a><a id="1276" class="Symbol">))</a>
</pre>

<pre class="Agda">
  <a id="≃2-from-≡"></a><a id="1306" href="BiinverseType.html#1306" class="Function">≃2-from-≡</a>
    <a id="1320" class="Symbol">:</a> <a id="1322" class="Symbol">{</a><a id="1323" href="BiinverseType.html#1323" class="Bound">A</a> <a id="1325" class="Symbol">:</a> <a id="1327" href="Intro.html#1813" class="Function">Type</a> <a id="1332" href="BiinverseType.html#577" class="Bound">ℓᵢ</a><a id="1334" class="Symbol">}</a>
    <a id="1340" class="Symbol">→</a> <a id="1342" class="Symbol">(</a><a id="1343" href="BiinverseType.html#1343" class="Bound">F</a> <a id="1345" class="Symbol">:</a> <a id="1347" href="BiinverseType.html#1323" class="Bound">A</a> <a id="1349" class="Symbol">→</a> <a id="1351" href="Intro.html#1813" class="Function">Type</a> <a id="1356" href="BiinverseType.html#591" class="Bound">ℓⱼ</a><a id="1358" class="Symbol">)</a>
    <a id="1364" class="Symbol">→</a> <a id="1366" class="Symbol">(</a><a id="1367" href="BiinverseType.html#1367" class="Bound">a</a> <a id="1369" href="BiinverseType.html#1369" class="Bound">b</a> <a id="1371" class="Symbol">:</a> <a id="1373" href="BiinverseType.html#1323" class="Bound">A</a><a id="1374" class="Symbol">)</a>
    <a id="1380" class="Symbol">→</a> <a id="1382" href="BiinverseType.html#1367" class="Bound">a</a> <a id="1384" href="BasicTypes.html#4480" class="Function Operator">≡</a> <a id="1386" href="BiinverseType.html#1369" class="Bound">b</a> <a id="1388" class="Symbol">→</a> <a id="1390" href="BiinverseType.html#1343" class="Bound">F</a> <a id="1392" href="BiinverseType.html#1367" class="Bound">a</a> <a id="1394" href="BiinverseType.html#985" class="Record Operator">≃2</a> <a id="1397" href="BiinverseType.html#1343" class="Bound">F</a> <a id="1399" href="BiinverseType.html#1369" class="Bound">b</a>

  <a id="1404" href="BiinverseType.html#1306" class="Function">≃2-from-≡</a> <a id="1414" href="BiinverseType.html#1414" class="Bound">F</a> <a id="1416" href="BiinverseType.html#1416" class="Bound">a</a> <a id="1418" href="BiinverseType.html#1418" class="Bound">b</a> <a id="1420" href="BiinverseType.html#1420" class="Bound">p</a> <a id="1422" class="Symbol">=</a> <a id="1424" href="Transport.html#692" class="Function">tr₁</a> <a id="1428" class="Symbol">(</a><a id="1429" href="BiinverseType.html#985" class="Record Operator">_≃2_</a> <a id="1434" class="Symbol">_</a> <a id="1436" href="BasicFunctions.html#1026" class="Function Operator">∘</a> <a id="1438" href="BiinverseType.html#1414" class="Bound">F</a><a id="1439" class="Symbol">)</a> <a id="1441" href="BiinverseType.html#1420" class="Bound">p</a> <a id="1443" href="BiinverseType.html#1176" class="Function">ide</a>
</pre>
