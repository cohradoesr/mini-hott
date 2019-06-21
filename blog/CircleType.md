---
layout: page
title: "Circle Type"
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
<a id="185" class="Symbol">{-#</a> <a id="189" class="Keyword">OPTIONS</a> <a id="197" class="Pragma">--without-K</a> <a id="209" class="Symbol">#-}</a>
<a id="213" class="Keyword">open</a> <a id="218" class="Keyword">import</a> <a id="225" href="TransportLemmas.html" class="Module">TransportLemmas</a>
<a id="241" class="Keyword">open</a> <a id="246" class="Keyword">import</a> <a id="253" href="EquivalenceType.html" class="Module">EquivalenceType</a>

<a id="270" class="Keyword">open</a> <a id="275" class="Keyword">import</a> <a id="282" href="HomotopyType.html" class="Module">HomotopyType</a>
<a id="295" class="Keyword">open</a> <a id="300" class="Keyword">import</a> <a id="307" href="FunExtAxiom.html" class="Module">FunExtAxiom</a>
<a id="319" class="Keyword">open</a> <a id="324" class="Keyword">import</a> <a id="331" href="HLevelTypes.html" class="Module">HLevelTypes</a>
</pre>
</div>

### Circles

The circle type is constructed by postulating a type with
a single element (base) and a nontrivial path (loop).

<pre class="Agda">
<a id="501" class="Keyword">module</a> <a id="508" href="CircleType.html" class="Module">CircleType</a> <a id="519" class="Keyword">where</a>

  <a id="528" class="Keyword">private</a>
    <a id="540" class="Keyword">data</a> <a id="!S¹"></a><a id="545" href="CircleType.html#545" class="Datatype">!S¹</a> <a id="549" class="Symbol">:</a> <a id="551" href="Intro.html#1892" class="Function">Type₀</a> <a id="557" class="Keyword">where</a>
      <a id="!S¹.!base"></a><a id="569" href="CircleType.html#569" class="InductiveConstructor">!base</a> <a id="575" class="Symbol">:</a> <a id="577" href="CircleType.html#545" class="Datatype">!S¹</a>

  <a id="S¹"></a><a id="584" href="CircleType.html#584" class="Function">S¹</a> <a id="587" class="Symbol">:</a> <a id="589" href="Intro.html#1892" class="Function">Type₀</a>
  <a id="597" href="CircleType.html#584" class="Function">S¹</a> <a id="600" class="Symbol">=</a> <a id="602" href="CircleType.html#545" class="Datatype">!S¹</a>

  <a id="base"></a><a id="609" href="CircleType.html#609" class="Function">base</a> <a id="614" class="Symbol">:</a> <a id="616" href="CircleType.html#584" class="Function">S¹</a>
  <a id="621" href="CircleType.html#609" class="Function">base</a> <a id="626" class="Symbol">=</a> <a id="628" href="CircleType.html#569" class="InductiveConstructor">!base</a>

  <a id="637" class="Comment">-- Nontrivial path on the circle.</a>
  <a id="673" class="Keyword">postulate</a>
    <a id="loop"></a><a id="687" href="CircleType.html#687" class="Postulate">loop</a> <a id="692" class="Symbol">:</a> <a id="694" href="CircleType.html#609" class="Function">base</a> <a id="699" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="702" href="CircleType.html#609" class="Function">base</a>

  <a id="710" class="Comment">-- Recursion principle on points</a>
  <a id="S¹-rec"></a><a id="745" href="CircleType.html#745" class="Function">S¹-rec</a> <a id="752" class="Symbol">:</a> <a id="754" class="Symbol">∀</a> <a id="756" class="Symbol">{</a><a id="757" href="CircleType.html#757" class="Bound">ℓ</a><a id="758" class="Symbol">}</a>
         <a id="769" class="Symbol">→</a> <a id="771" class="Symbol">(</a><a id="772" href="CircleType.html#772" class="Bound">A</a> <a id="774" class="Symbol">:</a> <a id="776" href="Intro.html#1813" class="Function">Type</a> <a id="781" href="CircleType.html#757" class="Bound">ℓ</a><a id="782" class="Symbol">)</a>
         <a id="793" class="Symbol">→</a> <a id="795" class="Symbol">(</a><a id="796" href="CircleType.html#796" class="Bound">a</a> <a id="798" class="Symbol">:</a> <a id="800" href="CircleType.html#772" class="Bound">A</a><a id="801" class="Symbol">)</a>
         <a id="812" class="Symbol">→</a> <a id="814" class="Symbol">(</a><a id="815" href="CircleType.html#815" class="Bound">p</a> <a id="817" class="Symbol">:</a> <a id="819" href="CircleType.html#796" class="Bound">a</a> <a id="821" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="824" href="CircleType.html#796" class="Bound">a</a><a id="825" class="Symbol">)</a>
         <a id="836" class="Comment">--------------</a>
         <a id="860" class="Symbol">→</a> <a id="862" class="Symbol">(</a><a id="863" href="CircleType.html#584" class="Function">S¹</a> <a id="866" class="Symbol">→</a> <a id="868" href="CircleType.html#772" class="Bound">A</a><a id="869" class="Symbol">)</a>
  <a id="873" href="CircleType.html#745" class="Function">S¹-rec</a> <a id="880" href="CircleType.html#880" class="Bound">A</a> <a id="882" href="CircleType.html#882" class="Bound">a</a> <a id="884" href="CircleType.html#884" class="Bound">p</a> <a id="886" href="CircleType.html#569" class="InductiveConstructor">!base</a> <a id="892" class="Symbol">=</a> <a id="894" href="CircleType.html#882" class="Bound">a</a>

  <a id="899" class="Comment">-- Recursion principle on paths</a>
  <a id="933" class="Keyword">postulate</a>
    <a id="S¹-βrec"></a><a id="947" href="CircleType.html#947" class="Postulate">S¹-βrec</a> <a id="955" class="Symbol">:</a> <a id="957" class="Symbol">∀</a> <a id="959" class="Symbol">{</a><a id="960" href="CircleType.html#960" class="Bound">ℓ</a><a id="961" class="Symbol">}</a> <a id="963" class="Symbol">(</a><a id="964" href="CircleType.html#964" class="Bound">A</a> <a id="966" class="Symbol">:</a> <a id="968" href="Intro.html#1813" class="Function">Type</a> <a id="973" href="CircleType.html#960" class="Bound">ℓ</a><a id="974" class="Symbol">)</a>
            <a id="988" class="Symbol">→</a> <a id="990" class="Symbol">(</a><a id="991" href="CircleType.html#991" class="Bound">a</a> <a id="993" class="Symbol">:</a> <a id="995" href="CircleType.html#964" class="Bound">A</a><a id="996" class="Symbol">)</a>
            <a id="1010" class="Symbol">→</a> <a id="1012" class="Symbol">(</a><a id="1013" href="CircleType.html#1013" class="Bound">p</a> <a id="1015" class="Symbol">:</a> <a id="1017" href="CircleType.html#991" class="Bound">a</a> <a id="1019" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="1022" href="CircleType.html#991" class="Bound">a</a><a id="1023" class="Symbol">)</a>
            <a id="1037" class="Comment">------------------------------</a>
            <a id="1080" class="Symbol">→</a> <a id="1082" href="AlgebraOnPaths.html#395" class="Function">ap</a> <a id="1085" class="Symbol">(</a><a id="1086" href="CircleType.html#745" class="Function">S¹-rec</a> <a id="1093" href="CircleType.html#964" class="Bound">A</a> <a id="1095" href="CircleType.html#991" class="Bound">a</a> <a id="1097" href="CircleType.html#1013" class="Bound">p</a><a id="1098" class="Symbol">)</a> <a id="1100" href="CircleType.html#687" class="Postulate">loop</a> <a id="1105" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="1108" href="CircleType.html#1013" class="Bound">p</a>

  <a id="1113" class="Comment">-- Induction principle on points</a>
  <a id="S¹-ind"></a><a id="1148" href="CircleType.html#1148" class="Function">S¹-ind</a> <a id="1155" class="Symbol">:</a> <a id="1157" class="Symbol">∀</a> <a id="1159" class="Symbol">{</a><a id="1160" href="CircleType.html#1160" class="Bound">ℓ</a><a id="1161" class="Symbol">}</a> <a id="1163" class="Symbol">(</a><a id="1164" href="CircleType.html#1164" class="Bound">P</a> <a id="1166" class="Symbol">:</a> <a id="1168" href="CircleType.html#584" class="Function">S¹</a> <a id="1171" class="Symbol">→</a> <a id="1173" href="Intro.html#1813" class="Function">Type</a> <a id="1178" href="CircleType.html#1160" class="Bound">ℓ</a><a id="1179" class="Symbol">)</a>
         <a id="1190" class="Symbol">→</a> <a id="1192" class="Symbol">(</a><a id="1193" href="CircleType.html#1193" class="Bound">x</a> <a id="1195" class="Symbol">:</a> <a id="1197" href="CircleType.html#1164" class="Bound">P</a> <a id="1199" href="CircleType.html#609" class="Function">base</a><a id="1203" class="Symbol">)</a>
         <a id="1214" class="Symbol">→</a> <a id="1216" class="Symbol">(</a><a id="1217" href="CircleType.html#1193" class="Bound">x</a> <a id="1219" href="Transport.html#1447" class="Function">==</a> <a id="1222" href="CircleType.html#1193" class="Bound">x</a> <a id="1224" href="Transport.html#1447" class="Function">[</a> <a id="1226" href="CircleType.html#1164" class="Bound">P</a> <a id="1228" href="Transport.html#1447" class="Function">↓</a> <a id="1230" href="CircleType.html#687" class="Postulate">loop</a> <a id="1235" href="Transport.html#1447" class="Function">]</a><a id="1236" class="Symbol">)</a>
         <a id="1247" class="Comment">--------------------------</a>
         <a id="1283" class="Symbol">→</a> <a id="1285" class="Symbol">((</a><a id="1287" href="CircleType.html#1287" class="Bound">t</a> <a id="1289" class="Symbol">:</a> <a id="1291" href="CircleType.html#584" class="Function">S¹</a><a id="1293" class="Symbol">)</a> <a id="1295" class="Symbol">→</a> <a id="1297" href="CircleType.html#1164" class="Bound">P</a> <a id="1299" href="CircleType.html#1287" class="Bound">t</a><a id="1300" class="Symbol">)</a>
  <a id="1304" href="CircleType.html#1148" class="Function">S¹-ind</a> <a id="1311" href="CircleType.html#1311" class="Bound">P</a> <a id="1313" href="CircleType.html#1313" class="Bound">x</a> <a id="1315" href="CircleType.html#1315" class="Bound">p</a> <a id="1317" href="CircleType.html#569" class="InductiveConstructor">!base</a> <a id="1323" class="Symbol">=</a> <a id="1325" href="CircleType.html#1313" class="Bound">x</a>

  <a id="1330" class="Comment">-- Induction principle on paths</a>
  <a id="1364" class="Keyword">postulate</a>
    <a id="S¹-βind"></a><a id="1378" href="CircleType.html#1378" class="Postulate">S¹-βind</a> <a id="1386" class="Symbol">:</a> <a id="1388" class="Symbol">∀</a> <a id="1390" class="Symbol">{</a><a id="1391" href="CircleType.html#1391" class="Bound">ℓ</a><a id="1392" class="Symbol">}</a> <a id="1394" class="Symbol">(</a><a id="1395" href="CircleType.html#1395" class="Bound">P</a> <a id="1397" class="Symbol">:</a> <a id="1399" href="CircleType.html#584" class="Function">S¹</a> <a id="1402" class="Symbol">→</a> <a id="1404" href="Intro.html#1813" class="Function">Type</a> <a id="1409" href="CircleType.html#1391" class="Bound">ℓ</a><a id="1410" class="Symbol">)</a>
            <a id="1424" class="Symbol">→</a> <a id="1426" class="Symbol">(</a><a id="1427" href="CircleType.html#1427" class="Bound">x</a> <a id="1429" class="Symbol">:</a> <a id="1431" href="CircleType.html#1395" class="Bound">P</a> <a id="1433" href="CircleType.html#609" class="Function">base</a><a id="1437" class="Symbol">)</a>
            <a id="1451" class="Symbol">→</a> <a id="1453" class="Symbol">(</a><a id="1454" href="CircleType.html#1454" class="Bound">p</a> <a id="1456" class="Symbol">:</a> <a id="1458" href="CircleType.html#1427" class="Bound">x</a> <a id="1460" href="Transport.html#1447" class="Function">==</a> <a id="1463" href="CircleType.html#1427" class="Bound">x</a> <a id="1465" href="Transport.html#1447" class="Function">[</a> <a id="1467" href="CircleType.html#1395" class="Bound">P</a> <a id="1469" href="Transport.html#1447" class="Function">↓</a> <a id="1471" href="CircleType.html#687" class="Postulate">loop</a> <a id="1476" href="Transport.html#1447" class="Function">]</a><a id="1477" class="Symbol">)</a>
            <a id="1491" class="Comment">-------------------------------</a>
            <a id="1535" class="Symbol">→</a> <a id="1537" href="TransportLemmas.html#8403" class="Function">apd</a> <a id="1541" class="Symbol">(</a><a id="1542" href="CircleType.html#1148" class="Function">S¹-ind</a> <a id="1549" href="CircleType.html#1395" class="Bound">P</a> <a id="1551" href="CircleType.html#1427" class="Bound">x</a> <a id="1553" href="CircleType.html#1454" class="Bound">p</a><a id="1554" class="Symbol">)</a> <a id="1556" href="CircleType.html#687" class="Postulate">loop</a> <a id="1561" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="1564" href="CircleType.html#1454" class="Bound">p</a>

</pre>
