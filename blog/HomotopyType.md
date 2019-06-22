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
<a id="218" class="Symbol">{-#</a> <a id="222" class="Keyword">OPTIONS</a> <a id="230" class="Pragma">--without-K</a> <a id="242" class="Symbol">#-}</a>
<a id="246" class="Keyword">open</a> <a id="251" class="Keyword">import</a> <a id="258" href="TransportLemmas.html" class="Module">TransportLemmas</a>
</pre>
</div>

## Homotopies

> In a type-theoretical sense, a homotopy between two
> functions is a family of equalities between their applications.

The context:
<pre class="Agda">
<a id="455" class="Keyword">module</a> <a id="462" href="HomotopyType.html" class="Module">HomotopyType</a> <a id="475" class="Symbol">{</a><a id="476" href="HomotopyType.html#476" class="Bound">ℓᵢ</a> <a id="479" href="HomotopyType.html#479" class="Bound">ℓⱼ</a><a id="481" class="Symbol">}</a> <a id="483" class="Symbol">{</a><a id="484" href="HomotopyType.html#484" class="Bound">A</a> <a id="486" class="Symbol">:</a> <a id="488" href="Intro.html#1813" class="Function">Type</a> <a id="493" href="HomotopyType.html#476" class="Bound">ℓᵢ</a><a id="495" class="Symbol">}</a> <a id="497" class="Symbol">{</a><a id="498" href="HomotopyType.html#498" class="Bound">P</a> <a id="500" class="Symbol">:</a> <a id="502" href="HomotopyType.html#484" class="Bound">A</a> <a id="504" class="Symbol">→</a> <a id="506" href="Intro.html#1813" class="Function">Type</a> <a id="511" href="HomotopyType.html#479" class="Bound">ℓⱼ</a><a id="513" class="Symbol">}</a> <a id="515" class="Keyword">where</a>
</pre>

Let $$f , g : \prod\limits_{(x:A)} P(x)$$ be two sections of a
type family $$P : A \to \mathcal{U}$$. A **homotopy** from $$f$$ to $$g$$
is a dependent function of type

{: .equation }
  $$ (f \sim g) :\equiv \prod\limits_{x : A} (f(x) = g(x)). $$


### Homotopy types

{: .foldable until="5"}
<pre class="Agda">
  <a id="842" class="Comment">-- Def.</a>
  <a id="homotopy"></a><a id="852" href="HomotopyType.html#852" class="Function">homotopy</a>
    <a id="865" class="Symbol">:</a> <a id="867" class="Symbol">(</a><a id="868" href="HomotopyType.html#868" class="Bound">f</a> <a id="870" href="HomotopyType.html#870" class="Bound">g</a> <a id="872" class="Symbol">:</a> <a id="874" href="BasicTypes.html#1883" class="Function">Π</a> <a id="876" href="HomotopyType.html#484" class="Bound">A</a> <a id="878" href="HomotopyType.html#498" class="Bound">P</a><a id="879" class="Symbol">)</a>
    <a id="885" class="Comment">---------------</a>
    <a id="905" class="Symbol">→</a> <a id="907" href="Intro.html#1813" class="Function">Type</a> <a id="912" class="Symbol">(</a><a id="913" href="HomotopyType.html#476" class="Bound">ℓᵢ</a> <a id="916" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="918" href="HomotopyType.html#479" class="Bound">ℓⱼ</a><a id="920" class="Symbol">)</a>

  <a id="925" href="HomotopyType.html#852" class="Function">homotopy</a> <a id="934" href="HomotopyType.html#934" class="Bound">f</a> <a id="936" href="HomotopyType.html#936" class="Bound">g</a> <a id="938" class="Symbol">=</a> <a id="940" class="Symbol">∀</a> <a id="942" class="Symbol">(</a><a id="943" href="HomotopyType.html#943" class="Bound">x</a> <a id="945" class="Symbol">:</a> <a id="947" href="HomotopyType.html#484" class="Bound">A</a><a id="948" class="Symbol">)</a> <a id="950" class="Symbol">→</a> <a id="952" href="HomotopyType.html#934" class="Bound">f</a> <a id="954" href="HomotopyType.html#943" class="Bound">x</a> <a id="956" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="959" href="HomotopyType.html#936" class="Bound">g</a> <a id="961" href="HomotopyType.html#943" class="Bound">x</a>
</pre>

<pre class="Agda">
  <a id="990" class="Comment">-- Usual notation for homotopy</a>
  <a id="_∼_"></a><a id="1023" href="HomotopyType.html#1023" class="Function Operator">_∼_</a> <a id="1027" class="Symbol">:</a> <a id="1029" class="Symbol">(</a><a id="1030" href="HomotopyType.html#1030" class="Bound">f</a> <a id="1032" href="HomotopyType.html#1032" class="Bound">g</a> <a id="1034" class="Symbol">:</a> <a id="1036" class="Symbol">((</a><a id="1038" href="HomotopyType.html#1038" class="Bound">x</a> <a id="1040" class="Symbol">:</a> <a id="1042" href="HomotopyType.html#484" class="Bound">A</a><a id="1043" class="Symbol">)</a> <a id="1045" class="Symbol">→</a> <a id="1047" href="HomotopyType.html#498" class="Bound">P</a> <a id="1049" href="HomotopyType.html#1038" class="Bound">x</a><a id="1050" class="Symbol">))</a> <a id="1053" class="Symbol">→</a> <a id="1055" href="Intro.html#1813" class="Function">Type</a> <a id="1060" class="Symbol">(</a><a id="1061" href="HomotopyType.html#476" class="Bound">ℓᵢ</a> <a id="1064" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="1066" href="HomotopyType.html#479" class="Bound">ℓⱼ</a><a id="1068" class="Symbol">)</a>
  <a id="1072" href="HomotopyType.html#1072" class="Bound">f</a> <a id="1074" href="HomotopyType.html#1023" class="Function Operator">∼</a> <a id="1076" href="HomotopyType.html#1076" class="Bound">g</a> <a id="1078" class="Symbol">=</a> <a id="1080" href="HomotopyType.html#852" class="Function">homotopy</a> <a id="1089" href="HomotopyType.html#1072" class="Bound">f</a> <a id="1091" href="HomotopyType.html#1076" class="Bound">g</a>
</pre>



### Homotopy is an equivalence relation


{: .foldable until="5"}
<pre class="Agda">
  <a id="1188" class="Comment">-- Homotopy is an equivalence relation</a>
  <a id="h-refl"></a><a id="1229" href="HomotopyType.html#1229" class="Function">h-refl</a>
    <a id="1240" class="Symbol">:</a> <a id="1242" class="Symbol">(</a><a id="1243" href="HomotopyType.html#1243" class="Bound">f</a> <a id="1245" class="Symbol">:</a> <a id="1247" href="BasicTypes.html#1883" class="Function">Π</a> <a id="1249" href="HomotopyType.html#484" class="Bound">A</a> <a id="1251" href="HomotopyType.html#498" class="Bound">P</a><a id="1252" class="Symbol">)</a>
    <a id="1258" class="Comment">-------------</a>
    <a id="1276" class="Symbol">→</a> <a id="1278" href="HomotopyType.html#1243" class="Bound">f</a> <a id="1280" href="HomotopyType.html#1023" class="Function Operator">∼</a> <a id="1282" href="HomotopyType.html#1243" class="Bound">f</a>

  <a id="1287" href="HomotopyType.html#1229" class="Function">h-refl</a> <a id="1294" href="HomotopyType.html#1294" class="Bound">f</a> <a id="1296" href="HomotopyType.html#1296" class="Bound">x</a> <a id="1298" class="Symbol">=</a> <a id="1300" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a>
</pre>

{: .foldable until="6"}
<pre class="Agda">
  <a id="1355" class="Comment">-- Lemma.</a>
  <a id="h-sym"></a><a id="1367" href="HomotopyType.html#1367" class="Function">h-sym</a>
    <a id="1377" class="Symbol">:</a> <a id="1379" class="Symbol">(</a><a id="1380" href="HomotopyType.html#1380" class="Bound">f</a> <a id="1382" href="HomotopyType.html#1382" class="Bound">g</a> <a id="1384" class="Symbol">:</a> <a id="1386" href="BasicTypes.html#1883" class="Function">Π</a> <a id="1388" href="HomotopyType.html#484" class="Bound">A</a> <a id="1390" href="HomotopyType.html#498" class="Bound">P</a><a id="1391" class="Symbol">)</a>
    <a id="1397" class="Symbol">→</a> <a id="1399" href="HomotopyType.html#1380" class="Bound">f</a> <a id="1401" href="HomotopyType.html#1023" class="Function Operator">∼</a> <a id="1403" href="HomotopyType.html#1382" class="Bound">g</a>
    <a id="1409" class="Comment">-------</a>
    <a id="1421" class="Symbol">→</a> <a id="1423" href="HomotopyType.html#1382" class="Bound">g</a> <a id="1425" href="HomotopyType.html#1023" class="Function Operator">∼</a> <a id="1427" href="HomotopyType.html#1380" class="Bound">f</a>

  <a id="1432" href="HomotopyType.html#1367" class="Function">h-sym</a> <a id="1438" class="Symbol">_</a> <a id="1440" class="Symbol">_</a> <a id="1442" href="HomotopyType.html#1442" class="Bound">e</a> <a id="1444" href="HomotopyType.html#1444" class="Bound">x</a> <a id="1446" class="Symbol">=</a> <a id="1448" href="BasicFunctions.html#4309" class="Function Operator">!</a> <a id="1450" class="Symbol">(</a><a id="1451" href="HomotopyType.html#1442" class="Bound">e</a> <a id="1453" href="HomotopyType.html#1444" class="Bound">x</a><a id="1454" class="Symbol">)</a>
</pre>

{: .foldable until="7"}
<pre class="Agda">
  <a id="1507" class="Comment">-- Lemma.</a>
  <a id="h-comp"></a><a id="1519" href="HomotopyType.html#1519" class="Function">h-comp</a>
    <a id="1530" class="Symbol">:</a> <a id="1532" class="Symbol">{</a><a id="1533" href="HomotopyType.html#1533" class="Bound">f</a> <a id="1535" href="HomotopyType.html#1535" class="Bound">g</a> <a id="1537" href="HomotopyType.html#1537" class="Bound">h</a> <a id="1539" class="Symbol">:</a> <a id="1541" href="BasicTypes.html#1883" class="Function">Π</a> <a id="1543" href="HomotopyType.html#484" class="Bound">A</a> <a id="1545" href="HomotopyType.html#498" class="Bound">P</a><a id="1546" class="Symbol">}</a>
    <a id="1552" class="Symbol">→</a> <a id="1554" href="HomotopyType.html#1533" class="Bound">f</a> <a id="1556" href="HomotopyType.html#1023" class="Function Operator">∼</a> <a id="1558" href="HomotopyType.html#1535" class="Bound">g</a>
    <a id="1564" class="Symbol">→</a> <a id="1566" href="HomotopyType.html#1535" class="Bound">g</a> <a id="1568" href="HomotopyType.html#1023" class="Function Operator">∼</a> <a id="1570" href="HomotopyType.html#1537" class="Bound">h</a>
    <a id="1576" class="Comment">-------</a>
    <a id="1588" class="Symbol">→</a> <a id="1590" href="HomotopyType.html#1533" class="Bound">f</a> <a id="1592" href="HomotopyType.html#1023" class="Function Operator">∼</a> <a id="1594" href="HomotopyType.html#1537" class="Bound">h</a>

  <a id="1599" href="HomotopyType.html#1519" class="Function">h-comp</a> <a id="1606" href="HomotopyType.html#1606" class="Bound">u</a> <a id="1608" href="HomotopyType.html#1608" class="Bound">v</a> <a id="1610" href="HomotopyType.html#1610" class="Bound">x</a> <a id="1612" class="Symbol">=</a> <a id="1614" class="Symbol">(</a><a id="1615" href="HomotopyType.html#1606" class="Bound">u</a> <a id="1617" href="HomotopyType.html#1610" class="Bound">x</a><a id="1618" class="Symbol">)</a> <a id="1620" href="BasicFunctions.html#3903" class="Function Operator">·</a> <a id="1622" class="Symbol">(</a><a id="1623" href="HomotopyType.html#1608" class="Bound">v</a> <a id="1625" href="HomotopyType.html#1610" class="Bound">x</a><a id="1626" class="Symbol">)</a>
</pre>

{: .foldable until="7"}
<pre class="Agda">
  <a id="1679" class="Comment">-- synonym for h-comp</a>
  <a id="_●_"></a><a id="1703" href="HomotopyType.html#1703" class="Function Operator">_●_</a>
    <a id="1711" class="Symbol">:</a> <a id="1713" class="Symbol">{</a><a id="1714" href="HomotopyType.html#1714" class="Bound">f</a> <a id="1716" href="HomotopyType.html#1716" class="Bound">g</a> <a id="1718" href="HomotopyType.html#1718" class="Bound">h</a> <a id="1720" class="Symbol">:</a> <a id="1722" href="BasicTypes.html#1883" class="Function">Π</a> <a id="1724" href="HomotopyType.html#484" class="Bound">A</a> <a id="1726" href="HomotopyType.html#498" class="Bound">P</a><a id="1727" class="Symbol">}</a>
    <a id="1733" class="Symbol">→</a> <a id="1735" href="HomotopyType.html#1714" class="Bound">f</a> <a id="1737" href="HomotopyType.html#1023" class="Function Operator">∼</a> <a id="1739" href="HomotopyType.html#1716" class="Bound">g</a>
    <a id="1745" class="Symbol">→</a> <a id="1747" href="HomotopyType.html#1716" class="Bound">g</a> <a id="1749" href="HomotopyType.html#1023" class="Function Operator">∼</a> <a id="1751" href="HomotopyType.html#1718" class="Bound">h</a>
    <a id="1757" class="Comment">-------</a>
    <a id="1769" class="Symbol">→</a> <a id="1771" href="HomotopyType.html#1714" class="Bound">f</a> <a id="1773" href="HomotopyType.html#1023" class="Function Operator">∼</a> <a id="1775" href="HomotopyType.html#1718" class="Bound">h</a>

  <a id="1780" href="HomotopyType.html#1780" class="Bound">α</a> <a id="1782" href="HomotopyType.html#1703" class="Function Operator">●</a> <a id="1784" href="HomotopyType.html#1784" class="Bound">β</a> <a id="1786" class="Symbol">=</a> <a id="1788" href="HomotopyType.html#1519" class="Function">h-comp</a> <a id="1795" href="HomotopyType.html#1780" class="Bound">α</a> <a id="1797" href="HomotopyType.html#1784" class="Bound">β</a>
</pre>
