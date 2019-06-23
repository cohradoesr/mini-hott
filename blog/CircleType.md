---
layout: page
title: "Circle Type"
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
<a id="175" class="Symbol">{-#</a> <a id="179" class="Keyword">OPTIONS</a> <a id="187" class="Pragma">--without-K</a> <a id="199" class="Symbol">#-}</a>
<a id="203" class="Keyword">open</a> <a id="208" class="Keyword">import</a> <a id="215" href="TransportLemmas.html" class="Module">TransportLemmas</a>
<a id="231" class="Keyword">open</a> <a id="236" class="Keyword">import</a> <a id="243" href="EquivalenceType.html" class="Module">EquivalenceType</a>

<a id="260" class="Keyword">open</a> <a id="265" class="Keyword">import</a> <a id="272" href="HomotopyType.html" class="Module">HomotopyType</a>
<a id="285" class="Keyword">open</a> <a id="290" class="Keyword">import</a> <a id="297" href="FunExtAxiom.html" class="Module">FunExtAxiom</a>
<a id="309" class="Keyword">open</a> <a id="314" class="Keyword">import</a> <a id="321" href="HLevelTypes.html" class="Module">HLevelTypes</a>
</pre>
</div>

### Circles

The circle type is constructed by postulating a type with
a single element (base) and a nontrivial path (loop).

<pre class="Agda">
<a id="491" class="Keyword">module</a> <a id="498" href="CircleType.html" class="Module">CircleType</a> <a id="509" class="Keyword">where</a>
</pre>

<pre class="Agda">
  <a id="542" class="Keyword">private</a>
    <a id="554" class="Keyword">data</a> <a id="!S¹"></a><a id="559" href="CircleType.html#559" class="Datatype">!S¹</a> <a id="563" class="Symbol">:</a> <a id="565" href="Intro.html#1882" class="Function">Type₀</a> <a id="571" class="Keyword">where</a>
      <a id="!S¹.!base"></a><a id="583" href="CircleType.html#583" class="InductiveConstructor">!base</a> <a id="589" class="Symbol">:</a> <a id="591" href="CircleType.html#559" class="Datatype">!S¹</a>

  <a id="S¹"></a><a id="598" href="CircleType.html#598" class="Function">S¹</a> <a id="601" class="Symbol">:</a> <a id="603" href="Intro.html#1882" class="Function">Type₀</a>
  <a id="611" href="CircleType.html#598" class="Function">S¹</a> <a id="614" class="Symbol">=</a> <a id="616" href="CircleType.html#559" class="Datatype">!S¹</a>

  <a id="base"></a><a id="623" href="CircleType.html#623" class="Function">base</a> <a id="628" class="Symbol">:</a> <a id="630" href="CircleType.html#598" class="Function">S¹</a>
  <a id="635" href="CircleType.html#623" class="Function">base</a> <a id="640" class="Symbol">=</a> <a id="642" href="CircleType.html#583" class="InductiveConstructor">!base</a>

  <a id="651" class="Keyword">postulate</a>
    <a id="loop"></a><a id="665" href="CircleType.html#665" class="Postulate">loop</a> <a id="670" class="Symbol">:</a> <a id="672" href="CircleType.html#623" class="Function">base</a> <a id="677" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="680" href="CircleType.html#623" class="Function">base</a>
</pre>

Recursion principle on points
{: .foldable until="6" }
<pre class="Agda">
  <a id="S¹-rec"></a><a id="767" href="CircleType.html#767" class="Function">S¹-rec</a>
    <a id="778" class="Symbol">:</a> <a id="780" class="Symbol">(</a><a id="781" href="CircleType.html#781" class="Bound">A</a> <a id="783" class="Symbol">:</a> <a id="785" href="Intro.html#1803" class="Function">Type</a> <a id="790" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="791" class="Symbol">)</a>
    <a id="797" class="Symbol">→</a> <a id="799" class="Symbol">(</a><a id="800" href="CircleType.html#800" class="Bound">a</a> <a id="802" class="Symbol">:</a> <a id="804" href="CircleType.html#781" class="Bound">A</a><a id="805" class="Symbol">)</a>
    <a id="811" class="Symbol">→</a> <a id="813" class="Symbol">(</a><a id="814" href="CircleType.html#814" class="Bound">p</a> <a id="816" class="Symbol">:</a> <a id="818" href="CircleType.html#800" class="Bound">a</a> <a id="820" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="823" href="CircleType.html#800" class="Bound">a</a><a id="824" class="Symbol">)</a>
    <a id="830" class="Comment">--------------</a>
    <a id="849" class="Symbol">→</a> <a id="851" class="Symbol">(</a><a id="852" href="CircleType.html#598" class="Function">S¹</a> <a id="855" class="Symbol">→</a> <a id="857" href="CircleType.html#781" class="Bound">A</a><a id="858" class="Symbol">)</a>

  <a id="863" href="CircleType.html#767" class="Function">S¹-rec</a> <a id="870" href="CircleType.html#870" class="Bound">A</a> <a id="872" href="CircleType.html#872" class="Bound">a</a> <a id="874" href="CircleType.html#874" class="Bound">p</a> <a id="876" href="CircleType.html#583" class="InductiveConstructor">!base</a> <a id="882" class="Symbol">=</a> <a id="884" href="CircleType.html#872" class="Bound">a</a>
</pre>

Recursion principle on paths
{: .foldable until="7" }
<pre class="Agda">
  <a id="967" class="Keyword">postulate</a>
    <a id="S¹-βrec"></a><a id="981" href="CircleType.html#981" class="Postulate">S¹-βrec</a>
      <a id="995" class="Symbol">:</a> <a id="997" class="Symbol">(</a><a id="998" href="CircleType.html#998" class="Bound">A</a> <a id="1000" class="Symbol">:</a> <a id="1002" href="Intro.html#1803" class="Function">Type</a> <a id="1007" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="1008" class="Symbol">)</a>
      <a id="1016" class="Symbol">→</a> <a id="1018" class="Symbol">(</a><a id="1019" href="CircleType.html#1019" class="Bound">a</a> <a id="1021" class="Symbol">:</a> <a id="1023" href="CircleType.html#998" class="Bound">A</a><a id="1024" class="Symbol">)</a>
      <a id="1032" class="Symbol">→</a> <a id="1034" class="Symbol">(</a><a id="1035" href="CircleType.html#1035" class="Bound">p</a> <a id="1037" class="Symbol">:</a> <a id="1039" href="CircleType.html#1019" class="Bound">a</a> <a id="1041" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="1044" href="CircleType.html#1019" class="Bound">a</a><a id="1045" class="Symbol">)</a>
      <a id="1053" class="Comment">------------------------------</a>
      <a id="1090" class="Symbol">→</a> <a id="1092" href="AlgebraOnPaths.html#389" class="Function">ap</a> <a id="1095" class="Symbol">(</a><a id="1096" href="CircleType.html#767" class="Function">S¹-rec</a> <a id="1103" href="CircleType.html#998" class="Bound">A</a> <a id="1105" href="CircleType.html#1019" class="Bound">a</a> <a id="1107" href="CircleType.html#1035" class="Bound">p</a><a id="1108" class="Symbol">)</a> <a id="1110" href="CircleType.html#665" class="Postulate">loop</a> <a id="1115" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="1118" href="CircleType.html#1035" class="Bound">p</a>
</pre>

Induction principle on points
{: .foldable until="6" }
<pre class="Agda">
  <a id="S¹-ind"></a><a id="1202" href="CircleType.html#1202" class="Function">S¹-ind</a>
    <a id="1213" class="Symbol">:</a> <a id="1215" class="Symbol">(</a><a id="1216" href="CircleType.html#1216" class="Bound">P</a> <a id="1218" class="Symbol">:</a> <a id="1220" href="CircleType.html#598" class="Function">S¹</a> <a id="1223" class="Symbol">→</a> <a id="1225" href="Intro.html#1803" class="Function">Type</a> <a id="1230" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="1231" class="Symbol">)</a>
    <a id="1237" class="Symbol">→</a> <a id="1239" class="Symbol">(</a><a id="1240" href="CircleType.html#1240" class="Bound">x</a> <a id="1242" class="Symbol">:</a> <a id="1244" href="CircleType.html#1216" class="Bound">P</a> <a id="1246" href="CircleType.html#623" class="Function">base</a><a id="1250" class="Symbol">)</a>
    <a id="1256" class="Symbol">→</a> <a id="1258" class="Symbol">(</a><a id="1259" href="CircleType.html#1240" class="Bound">x</a> <a id="1261" href="Transport.html#1428" class="Function">==</a> <a id="1264" href="CircleType.html#1240" class="Bound">x</a> <a id="1266" href="Transport.html#1428" class="Function">[</a> <a id="1268" href="CircleType.html#1216" class="Bound">P</a> <a id="1270" href="Transport.html#1428" class="Function">↓</a> <a id="1272" href="CircleType.html#665" class="Postulate">loop</a> <a id="1277" href="Transport.html#1428" class="Function">]</a><a id="1278" class="Symbol">)</a>
    <a id="1284" class="Comment">--------------------------</a>
    <a id="1315" class="Symbol">→</a> <a id="1317" class="Symbol">((</a><a id="1319" href="CircleType.html#1319" class="Bound">t</a> <a id="1321" class="Symbol">:</a> <a id="1323" href="CircleType.html#598" class="Function">S¹</a><a id="1325" class="Symbol">)</a> <a id="1327" class="Symbol">→</a> <a id="1329" href="CircleType.html#1216" class="Bound">P</a> <a id="1331" href="CircleType.html#1319" class="Bound">t</a><a id="1332" class="Symbol">)</a>

  <a id="1337" href="CircleType.html#1202" class="Function">S¹-ind</a> <a id="1344" href="CircleType.html#1344" class="Bound">P</a> <a id="1346" href="CircleType.html#1346" class="Bound">x</a> <a id="1348" href="CircleType.html#1348" class="Bound">p</a> <a id="1350" href="CircleType.html#583" class="InductiveConstructor">!base</a> <a id="1356" class="Symbol">=</a> <a id="1358" href="CircleType.html#1346" class="Bound">x</a>
</pre>

Induction principle on paths
{: .foldable until="7" }
<pre class="Agda">
  <a id="1441" class="Keyword">postulate</a>
    <a id="S¹-βind"></a><a id="1455" href="CircleType.html#1455" class="Postulate">S¹-βind</a>
      <a id="1469" class="Symbol">:</a> <a id="1471" class="Symbol">(</a><a id="1472" href="CircleType.html#1472" class="Bound">P</a> <a id="1474" class="Symbol">:</a> <a id="1476" href="CircleType.html#598" class="Function">S¹</a> <a id="1479" class="Symbol">→</a> <a id="1481" href="Intro.html#1803" class="Function">Type</a> <a id="1486" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="1487" class="Symbol">)</a>
      <a id="1495" class="Symbol">→</a> <a id="1497" class="Symbol">(</a><a id="1498" href="CircleType.html#1498" class="Bound">x</a> <a id="1500" class="Symbol">:</a> <a id="1502" href="CircleType.html#1472" class="Bound">P</a> <a id="1504" href="CircleType.html#623" class="Function">base</a><a id="1508" class="Symbol">)</a>
      <a id="1516" class="Symbol">→</a> <a id="1518" class="Symbol">(</a><a id="1519" href="CircleType.html#1519" class="Bound">p</a> <a id="1521" class="Symbol">:</a> <a id="1523" href="CircleType.html#1498" class="Bound">x</a> <a id="1525" href="Transport.html#1428" class="Function">==</a> <a id="1528" href="CircleType.html#1498" class="Bound">x</a> <a id="1530" href="Transport.html#1428" class="Function">[</a> <a id="1532" href="CircleType.html#1472" class="Bound">P</a> <a id="1534" href="Transport.html#1428" class="Function">↓</a> <a id="1536" href="CircleType.html#665" class="Postulate">loop</a> <a id="1541" href="Transport.html#1428" class="Function">]</a><a id="1542" class="Symbol">)</a>
      <a id="1550" class="Comment">-------------------------------</a>
      <a id="1588" class="Symbol">→</a> <a id="1590" href="TransportLemmas.html#8392" class="Function">apd</a> <a id="1594" class="Symbol">(</a><a id="1595" href="CircleType.html#1202" class="Function">S¹-ind</a> <a id="1602" href="CircleType.html#1472" class="Bound">P</a> <a id="1604" href="CircleType.html#1498" class="Bound">x</a> <a id="1606" href="CircleType.html#1519" class="Bound">p</a><a id="1607" class="Symbol">)</a> <a id="1609" href="CircleType.html#665" class="Postulate">loop</a> <a id="1614" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="1617" href="CircleType.html#1519" class="Bound">p</a>
</pre>
