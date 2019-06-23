---
layout: page
title: "Homotopy"
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
<a id="208" class="Symbol">{-#</a> <a id="212" class="Keyword">OPTIONS</a> <a id="220" class="Pragma">--without-K</a> <a id="232" class="Symbol">#-}</a>
<a id="236" class="Keyword">open</a> <a id="241" class="Keyword">import</a> <a id="248" href="TransportLemmas.html" class="Module">TransportLemmas</a>
</pre>
</div>

## Homotopies

> In a type-theoretical sense, a homotopy between two
> functions is a family of equalities between their applications.

The context:
<pre class="Agda">
<a id="445" class="Keyword">module</a> <a id="452" href="HomotopyType.html" class="Module">HomotopyType</a> <a id="465" class="Symbol">{</a><a id="466" href="HomotopyType.html#466" class="Bound">ℓᵢ</a> <a id="469" href="HomotopyType.html#469" class="Bound">ℓⱼ</a><a id="471" class="Symbol">}</a> <a id="473" class="Symbol">{</a><a id="474" href="HomotopyType.html#474" class="Bound">A</a> <a id="476" class="Symbol">:</a> <a id="478" href="Intro.html#1803" class="Function">Type</a> <a id="483" href="HomotopyType.html#466" class="Bound">ℓᵢ</a><a id="485" class="Symbol">}</a> <a id="487" class="Symbol">{</a><a id="488" href="HomotopyType.html#488" class="Bound">P</a> <a id="490" class="Symbol">:</a> <a id="492" href="HomotopyType.html#474" class="Bound">A</a> <a id="494" class="Symbol">→</a> <a id="496" href="Intro.html#1803" class="Function">Type</a> <a id="501" href="HomotopyType.html#469" class="Bound">ℓⱼ</a><a id="503" class="Symbol">}</a> <a id="505" class="Keyword">where</a>
</pre>

Let $$f , g : \prod\limits_{(x:A)} P(x)$$ be two sections of a
type family $$P : A \to \mathcal{U}$$. A **homotopy** from $$f$$ to $$g$$
is a dependent function of type

$$ (f \sim g) :\equiv \prod\limits_{x : A} (f(x) = g(x)). $$


### Homotopy types

{: .foldable until="5"}
<pre class="Agda">
  
  <a id="homotopy"></a><a id="818" href="HomotopyType.html#818" class="Function">homotopy</a>
    <a id="831" class="Symbol">:</a> <a id="833" class="Symbol">(</a><a id="834" href="HomotopyType.html#834" class="Bound">f</a> <a id="836" href="HomotopyType.html#836" class="Bound">g</a> <a id="838" class="Symbol">:</a> <a id="840" href="BasicTypes.html#1873" class="Function">Π</a> <a id="842" href="HomotopyType.html#474" class="Bound">A</a> <a id="844" href="HomotopyType.html#488" class="Bound">P</a><a id="845" class="Symbol">)</a>
    <a id="851" class="Comment">---------------</a>
    <a id="871" class="Symbol">→</a> <a id="873" href="Intro.html#1803" class="Function">Type</a> <a id="878" class="Symbol">(</a><a id="879" href="HomotopyType.html#466" class="Bound">ℓᵢ</a> <a id="882" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="884" href="HomotopyType.html#469" class="Bound">ℓⱼ</a><a id="886" class="Symbol">)</a>

  <a id="891" href="HomotopyType.html#818" class="Function">homotopy</a> <a id="900" href="HomotopyType.html#900" class="Bound">f</a> <a id="902" href="HomotopyType.html#902" class="Bound">g</a> <a id="904" class="Symbol">=</a> <a id="906" class="Symbol">∀</a> <a id="908" class="Symbol">(</a><a id="909" href="HomotopyType.html#909" class="Bound">x</a> <a id="911" class="Symbol">:</a> <a id="913" href="HomotopyType.html#474" class="Bound">A</a><a id="914" class="Symbol">)</a> <a id="916" class="Symbol">→</a> <a id="918" href="HomotopyType.html#900" class="Bound">f</a> <a id="920" href="HomotopyType.html#909" class="Bound">x</a> <a id="922" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="925" href="HomotopyType.html#902" class="Bound">g</a> <a id="927" href="HomotopyType.html#909" class="Bound">x</a>
</pre>

<pre class="Agda">
  <a id="956" class="Comment">-- Usual notation for homotopy</a>
  <a id="_∼_"></a><a id="989" href="HomotopyType.html#989" class="Function Operator">_∼_</a> <a id="993" class="Symbol">:</a> <a id="995" class="Symbol">(</a><a id="996" href="HomotopyType.html#996" class="Bound">f</a> <a id="998" href="HomotopyType.html#998" class="Bound">g</a> <a id="1000" class="Symbol">:</a> <a id="1002" class="Symbol">((</a><a id="1004" href="HomotopyType.html#1004" class="Bound">x</a> <a id="1006" class="Symbol">:</a> <a id="1008" href="HomotopyType.html#474" class="Bound">A</a><a id="1009" class="Symbol">)</a> <a id="1011" class="Symbol">→</a> <a id="1013" href="HomotopyType.html#488" class="Bound">P</a> <a id="1015" href="HomotopyType.html#1004" class="Bound">x</a><a id="1016" class="Symbol">))</a> <a id="1019" class="Symbol">→</a> <a id="1021" href="Intro.html#1803" class="Function">Type</a> <a id="1026" class="Symbol">(</a><a id="1027" href="HomotopyType.html#466" class="Bound">ℓᵢ</a> <a id="1030" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="1032" href="HomotopyType.html#469" class="Bound">ℓⱼ</a><a id="1034" class="Symbol">)</a>
  <a id="1038" href="HomotopyType.html#1038" class="Bound">f</a> <a id="1040" href="HomotopyType.html#989" class="Function Operator">∼</a> <a id="1042" href="HomotopyType.html#1042" class="Bound">g</a> <a id="1044" class="Symbol">=</a> <a id="1046" href="HomotopyType.html#818" class="Function">homotopy</a> <a id="1055" href="HomotopyType.html#1038" class="Bound">f</a> <a id="1057" href="HomotopyType.html#1042" class="Bound">g</a>
</pre>



### Homotopy is an equivalence relation


{: .foldable until="5"}
<pre class="Agda">
  <a id="1154" class="Comment">-- Homotopy is an equivalence relation</a>
  <a id="h-refl"></a><a id="1195" href="HomotopyType.html#1195" class="Function">h-refl</a>
    <a id="1206" class="Symbol">:</a> <a id="1208" class="Symbol">(</a><a id="1209" href="HomotopyType.html#1209" class="Bound">f</a> <a id="1211" class="Symbol">:</a> <a id="1213" href="BasicTypes.html#1873" class="Function">Π</a> <a id="1215" href="HomotopyType.html#474" class="Bound">A</a> <a id="1217" href="HomotopyType.html#488" class="Bound">P</a><a id="1218" class="Symbol">)</a>
    <a id="1224" class="Comment">-------------</a>
    <a id="1242" class="Symbol">→</a> <a id="1244" href="HomotopyType.html#1209" class="Bound">f</a> <a id="1246" href="HomotopyType.html#989" class="Function Operator">∼</a> <a id="1248" href="HomotopyType.html#1209" class="Bound">f</a>

  <a id="1253" href="HomotopyType.html#1195" class="Function">h-refl</a> <a id="1260" href="HomotopyType.html#1260" class="Bound">f</a> <a id="1262" href="HomotopyType.html#1262" class="Bound">x</a> <a id="1264" class="Symbol">=</a> <a id="1266" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a>
</pre>

{: .foldable until="6"}
<pre class="Agda">
  
  <a id="h-sym"></a><a id="1324" href="HomotopyType.html#1324" class="Function">h-sym</a>
    <a id="1334" class="Symbol">:</a> <a id="1336" class="Symbol">(</a><a id="1337" href="HomotopyType.html#1337" class="Bound">f</a> <a id="1339" href="HomotopyType.html#1339" class="Bound">g</a> <a id="1341" class="Symbol">:</a> <a id="1343" href="BasicTypes.html#1873" class="Function">Π</a> <a id="1345" href="HomotopyType.html#474" class="Bound">A</a> <a id="1347" href="HomotopyType.html#488" class="Bound">P</a><a id="1348" class="Symbol">)</a>
    <a id="1354" class="Symbol">→</a> <a id="1356" href="HomotopyType.html#1337" class="Bound">f</a> <a id="1358" href="HomotopyType.html#989" class="Function Operator">∼</a> <a id="1360" href="HomotopyType.html#1339" class="Bound">g</a>
    <a id="1366" class="Comment">-------</a>
    <a id="1378" class="Symbol">→</a> <a id="1380" href="HomotopyType.html#1339" class="Bound">g</a> <a id="1382" href="HomotopyType.html#989" class="Function Operator">∼</a> <a id="1384" href="HomotopyType.html#1337" class="Bound">f</a>

  <a id="1389" href="HomotopyType.html#1324" class="Function">h-sym</a> <a id="1395" class="Symbol">_</a> <a id="1397" class="Symbol">_</a> <a id="1399" href="HomotopyType.html#1399" class="Bound">e</a> <a id="1401" href="HomotopyType.html#1401" class="Bound">x</a> <a id="1403" class="Symbol">=</a> <a id="1405" href="BasicFunctions.html#4299" class="Function Operator">!</a> <a id="1407" class="Symbol">(</a><a id="1408" href="HomotopyType.html#1399" class="Bound">e</a> <a id="1410" href="HomotopyType.html#1401" class="Bound">x</a><a id="1411" class="Symbol">)</a>
</pre>

{: .foldable until="7"}
<pre class="Agda">
  
  <a id="h-comp"></a><a id="1467" href="HomotopyType.html#1467" class="Function">h-comp</a>
    <a id="1478" class="Symbol">:</a> <a id="1480" class="Symbol">{</a><a id="1481" href="HomotopyType.html#1481" class="Bound">f</a> <a id="1483" href="HomotopyType.html#1483" class="Bound">g</a> <a id="1485" href="HomotopyType.html#1485" class="Bound">h</a> <a id="1487" class="Symbol">:</a> <a id="1489" href="BasicTypes.html#1873" class="Function">Π</a> <a id="1491" href="HomotopyType.html#474" class="Bound">A</a> <a id="1493" href="HomotopyType.html#488" class="Bound">P</a><a id="1494" class="Symbol">}</a>
    <a id="1500" class="Symbol">→</a> <a id="1502" href="HomotopyType.html#1481" class="Bound">f</a> <a id="1504" href="HomotopyType.html#989" class="Function Operator">∼</a> <a id="1506" href="HomotopyType.html#1483" class="Bound">g</a>
    <a id="1512" class="Symbol">→</a> <a id="1514" href="HomotopyType.html#1483" class="Bound">g</a> <a id="1516" href="HomotopyType.html#989" class="Function Operator">∼</a> <a id="1518" href="HomotopyType.html#1485" class="Bound">h</a>
    <a id="1524" class="Comment">-------</a>
    <a id="1536" class="Symbol">→</a> <a id="1538" href="HomotopyType.html#1481" class="Bound">f</a> <a id="1540" href="HomotopyType.html#989" class="Function Operator">∼</a> <a id="1542" href="HomotopyType.html#1485" class="Bound">h</a>

  <a id="1547" href="HomotopyType.html#1467" class="Function">h-comp</a> <a id="1554" href="HomotopyType.html#1554" class="Bound">u</a> <a id="1556" href="HomotopyType.html#1556" class="Bound">v</a> <a id="1558" href="HomotopyType.html#1558" class="Bound">x</a> <a id="1560" class="Symbol">=</a> <a id="1562" class="Symbol">(</a><a id="1563" href="HomotopyType.html#1554" class="Bound">u</a> <a id="1565" href="HomotopyType.html#1558" class="Bound">x</a><a id="1566" class="Symbol">)</a> <a id="1568" href="BasicFunctions.html#3893" class="Function Operator">·</a> <a id="1570" class="Symbol">(</a><a id="1571" href="HomotopyType.html#1556" class="Bound">v</a> <a id="1573" href="HomotopyType.html#1558" class="Bound">x</a><a id="1574" class="Symbol">)</a>
</pre>

{: .foldable until="7"}
<pre class="Agda">
  <a id="1627" class="Comment">-- synonym for h-comp</a>
  <a id="_●_"></a><a id="1651" href="HomotopyType.html#1651" class="Function Operator">_●_</a>
    <a id="1659" class="Symbol">:</a> <a id="1661" class="Symbol">{</a><a id="1662" href="HomotopyType.html#1662" class="Bound">f</a> <a id="1664" href="HomotopyType.html#1664" class="Bound">g</a> <a id="1666" href="HomotopyType.html#1666" class="Bound">h</a> <a id="1668" class="Symbol">:</a> <a id="1670" href="BasicTypes.html#1873" class="Function">Π</a> <a id="1672" href="HomotopyType.html#474" class="Bound">A</a> <a id="1674" href="HomotopyType.html#488" class="Bound">P</a><a id="1675" class="Symbol">}</a>
    <a id="1681" class="Symbol">→</a> <a id="1683" href="HomotopyType.html#1662" class="Bound">f</a> <a id="1685" href="HomotopyType.html#989" class="Function Operator">∼</a> <a id="1687" href="HomotopyType.html#1664" class="Bound">g</a>
    <a id="1693" class="Symbol">→</a> <a id="1695" href="HomotopyType.html#1664" class="Bound">g</a> <a id="1697" href="HomotopyType.html#989" class="Function Operator">∼</a> <a id="1699" href="HomotopyType.html#1666" class="Bound">h</a>
    <a id="1705" class="Comment">-------</a>
    <a id="1717" class="Symbol">→</a> <a id="1719" href="HomotopyType.html#1662" class="Bound">f</a> <a id="1721" href="HomotopyType.html#989" class="Function Operator">∼</a> <a id="1723" href="HomotopyType.html#1666" class="Bound">h</a>

  <a id="1728" href="HomotopyType.html#1728" class="Bound">α</a> <a id="1730" href="HomotopyType.html#1651" class="Function Operator">●</a> <a id="1732" href="HomotopyType.html#1732" class="Bound">β</a> <a id="1734" class="Symbol">=</a> <a id="1736" href="HomotopyType.html#1467" class="Function">h-comp</a> <a id="1743" href="HomotopyType.html#1728" class="Bound">α</a> <a id="1745" href="HomotopyType.html#1732" class="Bound">β</a>
</pre>
