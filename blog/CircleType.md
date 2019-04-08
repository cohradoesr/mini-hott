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

The circle type is constructed by postulating a type with
a single element (base) and a nontrivial path (loop).

<pre class="Agda">
<a id="488" class="Keyword">module</a> <a id="495" href="CircleType.html" class="Module">CircleType</a> <a id="506" class="Keyword">where</a>

  <a id="515" class="Keyword">private</a>
    <a id="527" class="Keyword">data</a> <a id="!S¹"></a><a id="532" href="CircleType.html#532" class="Datatype">!S¹</a> <a id="536" class="Symbol">:</a> <a id="538" href="Intro.html#1516" class="Function">Type₀</a> <a id="544" class="Keyword">where</a>
      <a id="!S¹.!base"></a><a id="556" href="CircleType.html#556" class="InductiveConstructor">!base</a> <a id="562" class="Symbol">:</a> <a id="564" href="CircleType.html#532" class="Datatype">!S¹</a>

  <a id="S¹"></a><a id="571" href="CircleType.html#571" class="Function">S¹</a> <a id="574" class="Symbol">:</a> <a id="576" href="Intro.html#1516" class="Function">Type₀</a>
  <a id="584" href="CircleType.html#571" class="Function">S¹</a> <a id="587" class="Symbol">=</a> <a id="589" href="CircleType.html#532" class="Datatype">!S¹</a>

  <a id="base"></a><a id="596" href="CircleType.html#596" class="Function">base</a> <a id="601" class="Symbol">:</a> <a id="603" href="CircleType.html#571" class="Function">S¹</a>
  <a id="608" href="CircleType.html#596" class="Function">base</a> <a id="613" class="Symbol">=</a> <a id="615" href="CircleType.html#556" class="InductiveConstructor">!base</a>

  <a id="624" class="Comment">-- Nontrivial path on the circle.</a>
  <a id="660" class="Keyword">postulate</a>
    <a id="loop"></a><a id="674" href="CircleType.html#674" class="Postulate">loop</a> <a id="679" class="Symbol">:</a> <a id="681" href="CircleType.html#596" class="Function">base</a> <a id="686" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="689" href="CircleType.html#596" class="Function">base</a>

  <a id="697" class="Comment">-- Recursion principle on points</a>
  <a id="S¹-rec"></a><a id="732" href="CircleType.html#732" class="Function">S¹-rec</a> <a id="739" class="Symbol">:</a> <a id="741" class="Symbol">∀</a> <a id="743" class="Symbol">{</a><a id="744" href="CircleType.html#744" class="Bound">ℓ</a><a id="745" class="Symbol">}</a>
         <a id="756" class="Symbol">→</a> <a id="758" class="Symbol">(</a><a id="759" href="CircleType.html#759" class="Bound">A</a> <a id="761" class="Symbol">:</a> <a id="763" href="Intro.html#1442" class="Function">Type</a> <a id="768" href="CircleType.html#744" class="Bound">ℓ</a><a id="769" class="Symbol">)</a>
         <a id="780" class="Symbol">→</a> <a id="782" class="Symbol">(</a><a id="783" href="CircleType.html#783" class="Bound">a</a> <a id="785" class="Symbol">:</a> <a id="787" href="CircleType.html#759" class="Bound">A</a><a id="788" class="Symbol">)</a>
         <a id="799" class="Symbol">→</a> <a id="801" class="Symbol">(</a><a id="802" href="CircleType.html#802" class="Bound">p</a> <a id="804" class="Symbol">:</a> <a id="806" href="CircleType.html#783" class="Bound">a</a> <a id="808" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="811" href="CircleType.html#783" class="Bound">a</a><a id="812" class="Symbol">)</a>
         <a id="823" class="Comment">--------------</a>
         <a id="847" class="Symbol">→</a> <a id="849" class="Symbol">(</a><a id="850" href="CircleType.html#571" class="Function">S¹</a> <a id="853" class="Symbol">→</a> <a id="855" href="CircleType.html#759" class="Bound">A</a><a id="856" class="Symbol">)</a>
  <a id="860" href="CircleType.html#732" class="Function">S¹-rec</a> <a id="867" href="CircleType.html#867" class="Bound">A</a> <a id="869" href="CircleType.html#869" class="Bound">a</a> <a id="871" href="CircleType.html#871" class="Bound">p</a> <a id="873" href="CircleType.html#556" class="InductiveConstructor">!base</a> <a id="879" class="Symbol">=</a> <a id="881" href="CircleType.html#869" class="Bound">a</a>

  <a id="886" class="Comment">-- Recursion principle on paths</a>
  <a id="920" class="Keyword">postulate</a>
    <a id="S¹-βrec"></a><a id="934" href="CircleType.html#934" class="Postulate">S¹-βrec</a> <a id="942" class="Symbol">:</a> <a id="944" class="Symbol">∀</a> <a id="946" class="Symbol">{</a><a id="947" href="CircleType.html#947" class="Bound">ℓ</a><a id="948" class="Symbol">}</a> <a id="950" class="Symbol">(</a><a id="951" href="CircleType.html#951" class="Bound">A</a> <a id="953" class="Symbol">:</a> <a id="955" href="Intro.html#1442" class="Function">Type</a> <a id="960" href="CircleType.html#947" class="Bound">ℓ</a><a id="961" class="Symbol">)</a>
            <a id="975" class="Symbol">→</a> <a id="977" class="Symbol">(</a><a id="978" href="CircleType.html#978" class="Bound">a</a> <a id="980" class="Symbol">:</a> <a id="982" href="CircleType.html#951" class="Bound">A</a><a id="983" class="Symbol">)</a>
            <a id="997" class="Symbol">→</a> <a id="999" class="Symbol">(</a><a id="1000" href="CircleType.html#1000" class="Bound">p</a> <a id="1002" class="Symbol">:</a> <a id="1004" href="CircleType.html#978" class="Bound">a</a> <a id="1006" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="1009" href="CircleType.html#978" class="Bound">a</a><a id="1010" class="Symbol">)</a>
            <a id="1024" class="Comment">------------------------------</a>
            <a id="1067" class="Symbol">→</a> <a id="1069" href="AlgebraOnPaths.html#442" class="Function">ap</a> <a id="1072" class="Symbol">(</a><a id="1073" href="CircleType.html#732" class="Function">S¹-rec</a> <a id="1080" href="CircleType.html#951" class="Bound">A</a> <a id="1082" href="CircleType.html#978" class="Bound">a</a> <a id="1084" href="CircleType.html#1000" class="Bound">p</a><a id="1085" class="Symbol">)</a> <a id="1087" href="CircleType.html#674" class="Postulate">loop</a> <a id="1092" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="1095" href="CircleType.html#1000" class="Bound">p</a>

  <a id="1100" class="Comment">-- Induction principle on points</a>
  <a id="S¹-ind"></a><a id="1135" href="CircleType.html#1135" class="Function">S¹-ind</a> <a id="1142" class="Symbol">:</a> <a id="1144" class="Symbol">∀</a> <a id="1146" class="Symbol">{</a><a id="1147" href="CircleType.html#1147" class="Bound">ℓ</a><a id="1148" class="Symbol">}</a> <a id="1150" class="Symbol">(</a><a id="1151" href="CircleType.html#1151" class="Bound">P</a> <a id="1153" class="Symbol">:</a> <a id="1155" href="CircleType.html#571" class="Function">S¹</a> <a id="1158" class="Symbol">→</a> <a id="1160" href="Intro.html#1442" class="Function">Type</a> <a id="1165" href="CircleType.html#1147" class="Bound">ℓ</a><a id="1166" class="Symbol">)</a>
         <a id="1177" class="Symbol">→</a> <a id="1179" class="Symbol">(</a><a id="1180" href="CircleType.html#1180" class="Bound">x</a> <a id="1182" class="Symbol">:</a> <a id="1184" href="CircleType.html#1151" class="Bound">P</a> <a id="1186" href="CircleType.html#596" class="Function">base</a><a id="1190" class="Symbol">)</a>
         <a id="1201" class="Symbol">→</a> <a id="1203" class="Symbol">(</a><a id="1204" href="CircleType.html#1180" class="Bound">x</a> <a id="1206" href="Transport.html#1986" class="Function">==</a> <a id="1209" href="CircleType.html#1180" class="Bound">x</a> <a id="1211" href="Transport.html#1986" class="Function">[</a> <a id="1213" href="CircleType.html#1151" class="Bound">P</a> <a id="1215" href="Transport.html#1986" class="Function">↓</a> <a id="1217" href="CircleType.html#674" class="Postulate">loop</a> <a id="1222" href="Transport.html#1986" class="Function">]</a><a id="1223" class="Symbol">)</a>
         <a id="1234" class="Comment">--------------------------</a>
         <a id="1270" class="Symbol">→</a> <a id="1272" class="Symbol">((</a><a id="1274" href="CircleType.html#1274" class="Bound">t</a> <a id="1276" class="Symbol">:</a> <a id="1278" href="CircleType.html#571" class="Function">S¹</a><a id="1280" class="Symbol">)</a> <a id="1282" class="Symbol">→</a> <a id="1284" href="CircleType.html#1151" class="Bound">P</a> <a id="1286" href="CircleType.html#1274" class="Bound">t</a><a id="1287" class="Symbol">)</a>
  <a id="1291" href="CircleType.html#1135" class="Function">S¹-ind</a> <a id="1298" href="CircleType.html#1298" class="Bound">P</a> <a id="1300" href="CircleType.html#1300" class="Bound">x</a> <a id="1302" href="CircleType.html#1302" class="Bound">p</a> <a id="1304" href="CircleType.html#556" class="InductiveConstructor">!base</a> <a id="1310" class="Symbol">=</a> <a id="1312" href="CircleType.html#1300" class="Bound">x</a>

  <a id="1317" class="Comment">-- Induction principle on paths</a>
  <a id="1351" class="Keyword">postulate</a>
    <a id="S¹-βind"></a><a id="1365" href="CircleType.html#1365" class="Postulate">S¹-βind</a> <a id="1373" class="Symbol">:</a> <a id="1375" class="Symbol">∀</a> <a id="1377" class="Symbol">{</a><a id="1378" href="CircleType.html#1378" class="Bound">ℓ</a><a id="1379" class="Symbol">}</a> <a id="1381" class="Symbol">(</a><a id="1382" href="CircleType.html#1382" class="Bound">P</a> <a id="1384" class="Symbol">:</a> <a id="1386" href="CircleType.html#571" class="Function">S¹</a> <a id="1389" class="Symbol">→</a> <a id="1391" href="Intro.html#1442" class="Function">Type</a> <a id="1396" href="CircleType.html#1378" class="Bound">ℓ</a><a id="1397" class="Symbol">)</a>
            <a id="1411" class="Symbol">→</a> <a id="1413" class="Symbol">(</a><a id="1414" href="CircleType.html#1414" class="Bound">x</a> <a id="1416" class="Symbol">:</a> <a id="1418" href="CircleType.html#1382" class="Bound">P</a> <a id="1420" href="CircleType.html#596" class="Function">base</a><a id="1424" class="Symbol">)</a>
            <a id="1438" class="Symbol">→</a> <a id="1440" class="Symbol">(</a><a id="1441" href="CircleType.html#1441" class="Bound">p</a> <a id="1443" class="Symbol">:</a> <a id="1445" href="CircleType.html#1414" class="Bound">x</a> <a id="1447" href="Transport.html#1986" class="Function">==</a> <a id="1450" href="CircleType.html#1414" class="Bound">x</a> <a id="1452" href="Transport.html#1986" class="Function">[</a> <a id="1454" href="CircleType.html#1382" class="Bound">P</a> <a id="1456" href="Transport.html#1986" class="Function">↓</a> <a id="1458" href="CircleType.html#674" class="Postulate">loop</a> <a id="1463" href="Transport.html#1986" class="Function">]</a><a id="1464" class="Symbol">)</a>
            <a id="1478" class="Comment">-------------------------------</a>
            <a id="1522" class="Symbol">→</a> <a id="1524" href="TransportLemmas.html#11642" class="Function">apd</a> <a id="1528" class="Symbol">(</a><a id="1529" href="CircleType.html#1135" class="Function">S¹-ind</a> <a id="1536" href="CircleType.html#1382" class="Bound">P</a> <a id="1538" href="CircleType.html#1414" class="Bound">x</a> <a id="1540" href="CircleType.html#1441" class="Bound">p</a><a id="1541" class="Symbol">)</a> <a id="1543" href="CircleType.html#674" class="Postulate">loop</a> <a id="1548" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="1551" href="CircleType.html#1441" class="Bound">p</a>

</pre>
