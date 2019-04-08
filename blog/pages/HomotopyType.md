---
layout: page
title: "Homotopy"
category: lemmas functions homotopy
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
<a id="218" class="Symbol">{-#</a> <a id="222" class="Keyword">OPTIONS</a> <a id="230" class="Pragma">--without-K</a> <a id="242" class="Symbol">#-}</a>
<a id="246" class="Keyword">open</a> <a id="251" class="Keyword">import</a> <a id="258" href="TransportLemmas.html" class="Module">TransportLemmas</a>
</pre>
</div>

> In a type-theoretical sense, a homotopy between two
> functions is a family of equalities between their applications.

The context:
<pre class="Agda">
<a id="440" class="Keyword">module</a> <a id="447" href="HomotopyType.html" class="Module">HomotopyType</a> <a id="460" class="Symbol">{</a><a id="461" href="HomotopyType.html#461" class="Bound">ℓᵢ</a> <a id="464" href="HomotopyType.html#464" class="Bound">ℓⱼ</a><a id="466" class="Symbol">}</a> <a id="468" class="Symbol">{</a><a id="469" href="HomotopyType.html#469" class="Bound">A</a> <a id="471" class="Symbol">:</a> <a id="473" href="Intro.html#1442" class="Function">Type</a> <a id="478" href="HomotopyType.html#461" class="Bound">ℓᵢ</a><a id="480" class="Symbol">}</a> <a id="482" class="Symbol">{</a><a id="483" href="HomotopyType.html#483" class="Bound">P</a> <a id="485" class="Symbol">:</a> <a id="487" href="HomotopyType.html#469" class="Bound">A</a> <a id="489" class="Symbol">→</a> <a id="491" href="Intro.html#1442" class="Function">Type</a> <a id="496" href="HomotopyType.html#464" class="Bound">ℓⱼ</a><a id="498" class="Symbol">}</a> <a id="500" class="Keyword">where</a>
</pre>

Let $$f , g : \prod\limits_{(x:A)} P(x)$$ be two sections of a
type family $$P : A \to \mathcal{U}$$. A **homotopy** from $$f$$ to $$g$$
is a dependent function of type

{: .equation }
  $$ (f \sim g) :\equiv \prod\limits_{x : A} (f(x) = g(x)). $$

{: .foldable until="5"}
<pre class="Agda">
  <a id="806" class="Comment">-- Def.</a>
  <a id="homotopy"></a><a id="816" href="HomotopyType.html#816" class="Function">homotopy</a>
    <a id="829" class="Symbol">:</a> <a id="831" class="Symbol">(</a><a id="832" href="HomotopyType.html#832" class="Bound">f</a> <a id="834" href="HomotopyType.html#834" class="Bound">g</a> <a id="836" class="Symbol">:</a> <a id="838" href="BasicTypes.html#1730" class="Function">Π</a> <a id="840" href="HomotopyType.html#469" class="Bound">A</a> <a id="842" href="HomotopyType.html#483" class="Bound">P</a><a id="843" class="Symbol">)</a>
    <a id="849" class="Comment">---------------</a>
    <a id="869" class="Symbol">→</a> <a id="871" href="Intro.html#1442" class="Function">Type</a> <a id="876" class="Symbol">(</a><a id="877" href="HomotopyType.html#461" class="Bound">ℓᵢ</a> <a id="880" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="882" href="HomotopyType.html#464" class="Bound">ℓⱼ</a><a id="884" class="Symbol">)</a>

  <a id="889" href="HomotopyType.html#816" class="Function">homotopy</a> <a id="898" href="HomotopyType.html#898" class="Bound">f</a> <a id="900" href="HomotopyType.html#900" class="Bound">g</a> <a id="902" class="Symbol">=</a> <a id="904" class="Symbol">∀</a> <a id="906" class="Symbol">(</a><a id="907" href="HomotopyType.html#907" class="Bound">x</a> <a id="909" class="Symbol">:</a> <a id="911" href="HomotopyType.html#469" class="Bound">A</a><a id="912" class="Symbol">)</a> <a id="914" class="Symbol">→</a> <a id="916" href="HomotopyType.html#898" class="Bound">f</a> <a id="918" href="HomotopyType.html#907" class="Bound">x</a> <a id="920" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="923" href="HomotopyType.html#900" class="Bound">g</a> <a id="925" href="HomotopyType.html#907" class="Bound">x</a>
</pre>

<pre class="Agda">
  <a id="954" class="Comment">-- Usual notation for homotopy</a>
  <a id="_∼_"></a><a id="987" href="HomotopyType.html#987" class="Function Operator">_∼_</a> <a id="991" class="Symbol">:</a> <a id="993" class="Symbol">(</a><a id="994" href="HomotopyType.html#994" class="Bound">f</a> <a id="996" href="HomotopyType.html#996" class="Bound">g</a> <a id="998" class="Symbol">:</a> <a id="1000" class="Symbol">((</a><a id="1002" href="HomotopyType.html#1002" class="Bound">x</a> <a id="1004" class="Symbol">:</a> <a id="1006" href="HomotopyType.html#469" class="Bound">A</a><a id="1007" class="Symbol">)</a> <a id="1009" class="Symbol">→</a> <a id="1011" href="HomotopyType.html#483" class="Bound">P</a> <a id="1013" href="HomotopyType.html#1002" class="Bound">x</a><a id="1014" class="Symbol">))</a> <a id="1017" class="Symbol">→</a> <a id="1019" href="Intro.html#1442" class="Function">Type</a> <a id="1024" class="Symbol">(</a><a id="1025" href="HomotopyType.html#461" class="Bound">ℓᵢ</a> <a id="1028" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="1030" href="HomotopyType.html#464" class="Bound">ℓⱼ</a><a id="1032" class="Symbol">)</a>
  <a id="1036" href="HomotopyType.html#1036" class="Bound">f</a> <a id="1038" href="HomotopyType.html#987" class="Function Operator">∼</a> <a id="1040" href="HomotopyType.html#1040" class="Bound">g</a> <a id="1042" class="Symbol">=</a> <a id="1044" href="HomotopyType.html#816" class="Function">homotopy</a> <a id="1053" href="HomotopyType.html#1036" class="Bound">f</a> <a id="1055" href="HomotopyType.html#1040" class="Bound">g</a>
</pre>



## Homotopy is an equivalence relation


{: .foldable until="5"}
<pre class="Agda">
  <a id="1151" class="Comment">-- Homotopy is an equivalence relation</a>
  <a id="h-refl"></a><a id="1192" href="HomotopyType.html#1192" class="Function">h-refl</a>
    <a id="1203" class="Symbol">:</a> <a id="1205" class="Symbol">(</a><a id="1206" href="HomotopyType.html#1206" class="Bound">f</a> <a id="1208" class="Symbol">:</a> <a id="1210" href="BasicTypes.html#1730" class="Function">Π</a> <a id="1212" href="HomotopyType.html#469" class="Bound">A</a> <a id="1214" href="HomotopyType.html#483" class="Bound">P</a><a id="1215" class="Symbol">)</a>
    <a id="1221" class="Comment">-------------</a>
    <a id="1239" class="Symbol">→</a> <a id="1241" href="HomotopyType.html#1206" class="Bound">f</a> <a id="1243" href="HomotopyType.html#987" class="Function Operator">∼</a> <a id="1245" href="HomotopyType.html#1206" class="Bound">f</a>

  <a id="1250" href="HomotopyType.html#1192" class="Function">h-refl</a> <a id="1257" href="HomotopyType.html#1257" class="Bound">f</a> <a id="1259" href="HomotopyType.html#1259" class="Bound">x</a> <a id="1261" class="Symbol">=</a> <a id="1263" href="EqualityType.html#985" class="InductiveConstructor">idp</a>
</pre>

{: .foldable until="6"}
<pre class="Agda">
  <a id="1318" class="Comment">-- Lemma.</a>
  <a id="h-sym"></a><a id="1330" href="HomotopyType.html#1330" class="Function">h-sym</a>
    <a id="1340" class="Symbol">:</a> <a id="1342" class="Symbol">(</a><a id="1343" href="HomotopyType.html#1343" class="Bound">f</a> <a id="1345" href="HomotopyType.html#1345" class="Bound">g</a> <a id="1347" class="Symbol">:</a> <a id="1349" href="BasicTypes.html#1730" class="Function">Π</a> <a id="1351" href="HomotopyType.html#469" class="Bound">A</a> <a id="1353" href="HomotopyType.html#483" class="Bound">P</a><a id="1354" class="Symbol">)</a>
    <a id="1360" class="Symbol">→</a> <a id="1362" href="HomotopyType.html#1343" class="Bound">f</a> <a id="1364" href="HomotopyType.html#987" class="Function Operator">∼</a> <a id="1366" href="HomotopyType.html#1345" class="Bound">g</a>
    <a id="1372" class="Comment">-------</a>
    <a id="1384" class="Symbol">→</a> <a id="1386" href="HomotopyType.html#1345" class="Bound">g</a> <a id="1388" href="HomotopyType.html#987" class="Function Operator">∼</a> <a id="1390" href="HomotopyType.html#1343" class="Bound">f</a>

  <a id="1395" href="HomotopyType.html#1330" class="Function">h-sym</a> <a id="1401" class="Symbol">_</a> <a id="1403" class="Symbol">_</a> <a id="1405" href="HomotopyType.html#1405" class="Bound">e</a> <a id="1407" href="HomotopyType.html#1407" class="Bound">x</a> <a id="1409" class="Symbol">=</a> <a id="1411" href="EqualityType.html#2565" class="Function Operator">!</a> <a id="1413" class="Symbol">(</a><a id="1414" href="HomotopyType.html#1405" class="Bound">e</a> <a id="1416" href="HomotopyType.html#1407" class="Bound">x</a><a id="1417" class="Symbol">)</a>
</pre>

{: .foldable until="7"}
<pre class="Agda">
  <a id="1470" class="Comment">-- Lemma.</a>
  <a id="h-comp"></a><a id="1482" href="HomotopyType.html#1482" class="Function">h-comp</a>
    <a id="1493" class="Symbol">:</a> <a id="1495" class="Symbol">{</a><a id="1496" href="HomotopyType.html#1496" class="Bound">f</a> <a id="1498" href="HomotopyType.html#1498" class="Bound">g</a> <a id="1500" href="HomotopyType.html#1500" class="Bound">h</a> <a id="1502" class="Symbol">:</a> <a id="1504" href="BasicTypes.html#1730" class="Function">Π</a> <a id="1506" href="HomotopyType.html#469" class="Bound">A</a> <a id="1508" href="HomotopyType.html#483" class="Bound">P</a><a id="1509" class="Symbol">}</a>
    <a id="1515" class="Symbol">→</a> <a id="1517" href="HomotopyType.html#1496" class="Bound">f</a> <a id="1519" href="HomotopyType.html#987" class="Function Operator">∼</a> <a id="1521" href="HomotopyType.html#1498" class="Bound">g</a>
    <a id="1527" class="Symbol">→</a> <a id="1529" href="HomotopyType.html#1498" class="Bound">g</a> <a id="1531" href="HomotopyType.html#987" class="Function Operator">∼</a> <a id="1533" href="HomotopyType.html#1500" class="Bound">h</a>
    <a id="1539" class="Comment">-------</a>
    <a id="1551" class="Symbol">→</a> <a id="1553" href="HomotopyType.html#1496" class="Bound">f</a> <a id="1555" href="HomotopyType.html#987" class="Function Operator">∼</a> <a id="1557" href="HomotopyType.html#1500" class="Bound">h</a>

  <a id="1562" href="HomotopyType.html#1482" class="Function">h-comp</a> <a id="1569" href="HomotopyType.html#1569" class="Bound">u</a> <a id="1571" href="HomotopyType.html#1571" class="Bound">v</a> <a id="1573" href="HomotopyType.html#1573" class="Bound">x</a> <a id="1575" class="Symbol">=</a> <a id="1577" class="Symbol">(</a><a id="1578" href="HomotopyType.html#1569" class="Bound">u</a> <a id="1580" href="HomotopyType.html#1573" class="Bound">x</a><a id="1581" class="Symbol">)</a> <a id="1583" href="EqualityType.html#2151" class="Function Operator">·</a> <a id="1585" class="Symbol">(</a><a id="1586" href="HomotopyType.html#1571" class="Bound">v</a> <a id="1588" href="HomotopyType.html#1573" class="Bound">x</a><a id="1589" class="Symbol">)</a>
</pre>

{: .foldable until="7"}
<pre class="Agda">
  <a id="1642" class="Comment">-- synonym for h-comp</a>
  <a id="_●_"></a><a id="1666" href="HomotopyType.html#1666" class="Function Operator">_●_</a>
    <a id="1674" class="Symbol">:</a> <a id="1676" class="Symbol">{</a><a id="1677" href="HomotopyType.html#1677" class="Bound">f</a> <a id="1679" href="HomotopyType.html#1679" class="Bound">g</a> <a id="1681" href="HomotopyType.html#1681" class="Bound">h</a> <a id="1683" class="Symbol">:</a> <a id="1685" href="BasicTypes.html#1730" class="Function">Π</a> <a id="1687" href="HomotopyType.html#469" class="Bound">A</a> <a id="1689" href="HomotopyType.html#483" class="Bound">P</a><a id="1690" class="Symbol">}</a>
    <a id="1696" class="Symbol">→</a> <a id="1698" href="HomotopyType.html#1677" class="Bound">f</a> <a id="1700" href="HomotopyType.html#987" class="Function Operator">∼</a> <a id="1702" href="HomotopyType.html#1679" class="Bound">g</a>
    <a id="1708" class="Symbol">→</a> <a id="1710" href="HomotopyType.html#1679" class="Bound">g</a> <a id="1712" href="HomotopyType.html#987" class="Function Operator">∼</a> <a id="1714" href="HomotopyType.html#1681" class="Bound">h</a>
    <a id="1720" class="Comment">-------</a>
    <a id="1732" class="Symbol">→</a> <a id="1734" href="HomotopyType.html#1677" class="Bound">f</a> <a id="1736" href="HomotopyType.html#987" class="Function Operator">∼</a> <a id="1738" href="HomotopyType.html#1681" class="Bound">h</a>

  <a id="1743" href="HomotopyType.html#1743" class="Bound">α</a> <a id="1745" href="HomotopyType.html#1666" class="Function Operator">●</a> <a id="1747" href="HomotopyType.html#1747" class="Bound">β</a> <a id="1749" class="Symbol">=</a> <a id="1751" href="HomotopyType.html#1482" class="Function">h-comp</a> <a id="1758" href="HomotopyType.html#1743" class="Bound">α</a> <a id="1760" href="HomotopyType.html#1747" class="Bound">β</a>
</pre>
