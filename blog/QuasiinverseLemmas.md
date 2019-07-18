---
layout: page
title: "Quasiinverse Lemmas"
category: homotopy
toc: true
agda: true
gallery: true
latex: true
references: false
linkify: true
showcitation: true
---

### Quasiinverse Lemmas

Two functions are quasi-inverses if we can construct a function providing
`(g ∘ f) x = x` and `(f ∘ g) y = y` for any given `x` and `y`.

<div class="hide" >
<pre class="Agda">
<a id="365" class="Symbol">{-#</a> <a id="369" class="Keyword">OPTIONS</a> <a id="377" class="Pragma">--without-K</a> <a id="389" class="Symbol">#-}</a>
<a id="393" class="Keyword">open</a> <a id="398" class="Keyword">import</a> <a id="405" href="TransportLemmas.html" class="Module">TransportLemmas</a>
<a id="421" class="Keyword">open</a> <a id="426" class="Keyword">import</a> <a id="433" href="EquivalenceType.html" class="Module">EquivalenceType</a>

<a id="450" class="Keyword">open</a> <a id="455" class="Keyword">import</a> <a id="462" href="HomotopyType.html" class="Module">HomotopyType</a>
<a id="475" class="Keyword">open</a> <a id="480" class="Keyword">import</a> <a id="487" href="HomotopyLemmas.html" class="Module">HomotopyLemmas</a>


<a id="504" class="Keyword">open</a> <a id="509" class="Keyword">import</a> <a id="516" href="QuasiinverseType.html" class="Module">QuasiinverseType</a>
</pre>
</div>

## Equivalence composition

<pre class="Agda">
<a id="593" class="Keyword">module</a> <a id="600" href="QuasiinverseLemmas.html" class="Module">QuasiinverseLemmas</a> <a id="619" class="Keyword">where</a>
</pre>

The equivalence types are indeed equivalence

{: .foldable until="7" }
<pre class="Agda">
  <a id="723" class="Comment">-- Composi</a><a id="733" class="Comment">t</a><a id="734" class="Comment">i</a><a id="735" class="Comment">o</a><a id="736" class="Comment">n o</a><a id="739" class="Comment">f</a><a id="740" class="Comment"> </a><a id="741" class="Comment">quasiin</a><a id="748" class="Comment">v</a><a id="749" class="Comment">e</a><a id="750" class="Comment">rses</a>
  <a id="qinv-comp"></a><a id="757" href="QuasiinverseLemmas.html#757" class="Function">qinv-comp</a>
    <a id="771" class="Symbol">:</a> <a id="773" class="Symbol">∀</a> <a id="775" class="Symbol">{</a><a id="776" href="QuasiinverseLemmas.html#776" class="Bound">ℓ₁</a> <a id="779" href="QuasiinverseLemmas.html#779" class="Bound">ℓ₂</a> <a id="782" href="QuasiinverseLemmas.html#782" class="Bound">ℓ₃</a><a id="784" class="Symbol">}</a> <a id="786" class="Symbol">{</a><a id="787" href="QuasiinverseLemmas.html#787" class="Bound">A</a> <a id="789" class="Symbol">:</a> <a id="791" href="Intro.html#2793" class="Function">Type</a> <a id="796" href="QuasiinverseLemmas.html#776" class="Bound">ℓ₁</a><a id="798" class="Symbol">}{</a><a id="800" href="QuasiinverseLemmas.html#800" class="Bound">B</a> <a id="802" class="Symbol">:</a> <a id="804" href="Intro.html#2793" class="Function">Type</a> <a id="809" href="QuasiinverseLemmas.html#779" class="Bound">ℓ₂</a><a id="811" class="Symbol">}{</a><a id="813" href="QuasiinverseLemmas.html#813" class="Bound">C</a> <a id="815" class="Symbol">:</a> <a id="817" href="Intro.html#2793" class="Function">Type</a> <a id="822" href="QuasiinverseLemmas.html#782" class="Bound">ℓ₃</a><a id="824" class="Symbol">}</a>
    <a id="830" class="Symbol">→</a> <a id="832" href="BasicTypes.html#1689" class="Function">Σ</a> <a id="834" class="Symbol">(</a><a id="835" href="QuasiinverseLemmas.html#787" class="Bound">A</a> <a id="837" class="Symbol">→</a> <a id="839" href="QuasiinverseLemmas.html#800" class="Bound">B</a><a id="840" class="Symbol">)</a> <a id="842" href="QuasiinverseType.html#641" class="Function">qinv</a>
    <a id="851" class="Symbol">→</a> <a id="853" href="BasicTypes.html#1689" class="Function">Σ</a> <a id="855" class="Symbol">(</a><a id="856" href="QuasiinverseLemmas.html#800" class="Bound">B</a> <a id="858" class="Symbol">→</a> <a id="860" href="QuasiinverseLemmas.html#813" class="Bound">C</a><a id="861" class="Symbol">)</a> <a id="863" href="QuasiinverseType.html#641" class="Function">qinv</a>
    <a id="872" class="Comment">----------------</a>
    <a id="893" class="Symbol">→</a> <a id="895" href="BasicTypes.html#1689" class="Function">Σ</a> <a id="897" class="Symbol">(</a><a id="898" href="QuasiinverseLemmas.html#787" class="Bound">A</a> <a id="900" class="Symbol">→</a> <a id="902" href="QuasiinverseLemmas.html#813" class="Bound">C</a><a id="903" class="Symbol">)</a> <a id="905" href="QuasiinverseType.html#641" class="Function">qinv</a>

  <a id="913" href="QuasiinverseLemmas.html#757" class="Function">qinv-comp</a> <a id="923" class="Symbol">(</a><a id="924" href="QuasiinverseLemmas.html#924" class="Bound">f</a> <a id="926" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="928" class="Symbol">(</a><a id="929" href="QuasiinverseLemmas.html#929" class="Bound">if</a> <a id="932" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="934" class="Symbol">(</a><a id="935" href="QuasiinverseLemmas.html#935" class="Bound">εf</a> <a id="938" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="940" href="QuasiinverseLemmas.html#940" class="Bound">ηf</a><a id="942" class="Symbol">)))</a> <a id="946" class="Symbol">(</a><a id="947" href="QuasiinverseLemmas.html#947" class="Bound">g</a> <a id="949" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="951" class="Symbol">(</a><a id="952" href="QuasiinverseLemmas.html#952" class="Bound">ig</a> <a id="955" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="957" class="Symbol">(</a><a id="958" href="QuasiinverseLemmas.html#958" class="Bound">εg</a> <a id="961" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="963" href="QuasiinverseLemmas.html#963" class="Bound">ηg</a><a id="965" class="Symbol">)))</a> <a id="969" class="Symbol">=</a> <a id="971" class="Symbol">(</a><a id="972" href="QuasiinverseLemmas.html#947" class="Bound">g</a> <a id="974" href="BasicFunctions.html#1012" class="Function Operator">∘</a> <a id="976" href="QuasiinverseLemmas.html#924" class="Bound">f</a><a id="977" class="Symbol">)</a> <a id="979" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="981" class="Symbol">((</a><a id="983" href="QuasiinverseLemmas.html#929" class="Bound">if</a> <a id="986" href="BasicFunctions.html#1012" class="Function Operator">∘</a> <a id="988" href="QuasiinverseLemmas.html#952" class="Bound">ig</a><a id="990" class="Symbol">)</a> <a id="992" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a>
     <a id="999" class="Symbol">(</a> <a id="1001" class="Symbol">(λ</a> <a id="1004" href="QuasiinverseLemmas.html#1004" class="Bound">x</a> <a id="1006" class="Symbol">→</a> <a id="1008" href="AlgebraOnPaths.html#389" class="Function">ap</a> <a id="1011" href="QuasiinverseLemmas.html#947" class="Bound">g</a> <a id="1013" class="Symbol">(</a><a id="1014" href="QuasiinverseLemmas.html#935" class="Bound">εf</a> <a id="1017" class="Symbol">(</a><a id="1018" href="QuasiinverseLemmas.html#952" class="Bound">ig</a> <a id="1021" href="QuasiinverseLemmas.html#1004" class="Bound">x</a><a id="1022" class="Symbol">))</a> <a id="1025" href="BasicFunctions.html#3854" class="Function Operator">·</a> <a id="1027" href="QuasiinverseLemmas.html#958" class="Bound">εg</a> <a id="1030" href="QuasiinverseLemmas.html#1004" class="Bound">x</a><a id="1031" class="Symbol">)</a>
     <a id="1038" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a>  <a id="1041" class="Symbol">λ</a> <a id="1043" href="QuasiinverseLemmas.html#1043" class="Bound">x</a> <a id="1045" class="Symbol">→</a> <a id="1047" href="AlgebraOnPaths.html#389" class="Function">ap</a> <a id="1050" href="QuasiinverseLemmas.html#929" class="Bound">if</a> <a id="1053" class="Symbol">(</a><a id="1054" href="QuasiinverseLemmas.html#963" class="Bound">ηg</a> <a id="1057" class="Symbol">(</a><a id="1058" href="QuasiinverseLemmas.html#924" class="Bound">f</a> <a id="1060" href="QuasiinverseLemmas.html#1043" class="Bound">x</a><a id="1061" class="Symbol">))</a> <a id="1064" href="BasicFunctions.html#3854" class="Function Operator">·</a> <a id="1066" href="QuasiinverseLemmas.html#940" class="Bound">ηf</a> <a id="1069" href="QuasiinverseLemmas.html#1043" class="Bound">x</a><a id="1070" class="Symbol">))</a>
</pre>

{: .foldable until="6" }
<pre class="Agda">
  <a id="1125" class="Comment">-- Lemma.</a>
  <a id="qinv-inv"></a><a id="1137" href="QuasiinverseLemmas.html#1137" class="Function">qinv-inv</a>
    <a id="1150" class="Symbol">:</a> <a id="1152" class="Symbol">∀</a> <a id="1154" class="Symbol">{</a><a id="1155" href="QuasiinverseLemmas.html#1155" class="Bound">ℓ₁</a> <a id="1158" href="QuasiinverseLemmas.html#1158" class="Bound">ℓ₂</a><a id="1160" class="Symbol">}</a> <a id="1162" class="Symbol">{</a><a id="1163" href="QuasiinverseLemmas.html#1163" class="Bound">A</a> <a id="1165" class="Symbol">:</a> <a id="1167" href="Intro.html#2793" class="Function">Type</a> <a id="1172" href="QuasiinverseLemmas.html#1155" class="Bound">ℓ₁</a><a id="1174" class="Symbol">}{</a><a id="1176" href="QuasiinverseLemmas.html#1176" class="Bound">B</a> <a id="1178" class="Symbol">:</a> <a id="1180" href="Intro.html#2793" class="Function">Type</a> <a id="1185" href="QuasiinverseLemmas.html#1158" class="Bound">ℓ₂</a><a id="1187" class="Symbol">}</a>
    <a id="1193" class="Symbol">→</a> <a id="1195" href="BasicTypes.html#1689" class="Function">Σ</a> <a id="1197" class="Symbol">(</a><a id="1198" href="QuasiinverseLemmas.html#1163" class="Bound">A</a> <a id="1200" class="Symbol">→</a> <a id="1202" href="QuasiinverseLemmas.html#1176" class="Bound">B</a><a id="1203" class="Symbol">)</a> <a id="1205" href="QuasiinverseType.html#641" class="Function">qinv</a>
    <a id="1214" class="Comment">----------------</a>
    <a id="1235" class="Symbol">→</a> <a id="1237" href="BasicTypes.html#1689" class="Function">Σ</a> <a id="1239" class="Symbol">(</a><a id="1240" href="QuasiinverseLemmas.html#1176" class="Bound">B</a> <a id="1242" class="Symbol">→</a> <a id="1244" href="QuasiinverseLemmas.html#1163" class="Bound">A</a><a id="1245" class="Symbol">)</a> <a id="1247" href="QuasiinverseType.html#641" class="Function">qinv</a>

  <a id="1255" href="QuasiinverseLemmas.html#1137" class="Function">qinv-inv</a> <a id="1264" class="Symbol">(</a><a id="1265" href="QuasiinverseLemmas.html#1265" class="Bound">f</a> <a id="1267" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="1269" class="Symbol">(</a><a id="1270" href="QuasiinverseLemmas.html#1270" class="Bound">g</a> <a id="1272" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="1274" class="Symbol">(</a><a id="1275" href="QuasiinverseLemmas.html#1275" class="Bound">ε</a> <a id="1277" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="1279" href="QuasiinverseLemmas.html#1279" class="Bound">η</a><a id="1280" class="Symbol">)))</a> <a id="1284" class="Symbol">=</a> <a id="1286" href="QuasiinverseLemmas.html#1270" class="Bound">g</a> <a id="1288" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="1290" class="Symbol">(</a><a id="1291" href="QuasiinverseLemmas.html#1265" class="Bound">f</a> <a id="1293" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="1295" class="Symbol">(</a><a id="1296" href="QuasiinverseLemmas.html#1279" class="Bound">η</a> <a id="1298" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="1300" href="QuasiinverseLemmas.html#1275" class="Bound">ε</a><a id="1301" class="Symbol">))</a>
</pre>

Equivalence types are equivalence relations.

{: .foldable until="4" }
<pre class="Agda">
  <a id="idEqv"></a><a id="1402" href="QuasiinverseLemmas.html#1402" class="Function">idEqv</a>
    <a id="1412" class="Symbol">:</a> <a id="1414" class="Symbol">∀</a> <a id="1416" class="Symbol">{</a><a id="1417" href="QuasiinverseLemmas.html#1417" class="Bound">ℓ</a><a id="1418" class="Symbol">}</a> <a id="1420" class="Symbol">{</a><a id="1421" href="QuasiinverseLemmas.html#1421" class="Bound">A</a> <a id="1423" class="Symbol">:</a> <a id="1425" href="Intro.html#2793" class="Function">Type</a> <a id="1430" href="QuasiinverseLemmas.html#1417" class="Bound">ℓ</a><a id="1431" class="Symbol">}</a>
    <a id="1437" class="Comment">-------</a>
    <a id="1449" class="Symbol">→</a> <a id="1451" href="QuasiinverseLemmas.html#1421" class="Bound">A</a> <a id="1453" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="1455" href="QuasiinverseLemmas.html#1421" class="Bound">A</a>

  <a id="1460" href="QuasiinverseLemmas.html#1402" class="Function">idEqv</a> <a id="1466" class="Symbol">=</a> <a id="1468" href="BasicFunctions.html#375" class="Function">id</a> <a id="1471" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="1473" class="Symbol">λ</a> <a id="1475" href="QuasiinverseLemmas.html#1475" class="Bound">a</a> <a id="1477" class="Symbol">→</a> <a id="1479" class="Symbol">(</a><a id="1480" href="QuasiinverseLemmas.html#1475" class="Bound">a</a> <a id="1482" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="1484" href="BasicTypes.html#4630" class="Function">refl</a> <a id="1489" href="QuasiinverseLemmas.html#1475" class="Bound">a</a><a id="1490" class="Symbol">)</a> <a id="1492" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="1494" class="Symbol">λ</a> <a id="1496" class="Symbol">{</a> <a id="1498" class="Symbol">(_</a> <a id="1501" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="1503" href="BasicTypes.html#4393" class="InductiveConstructor">idp</a><a id="1506" class="Symbol">)</a> <a id="1508" class="Symbol">→</a> <a id="1510" href="BasicTypes.html#4630" class="Function">refl</a> <a id="1515" class="Symbol">(</a><a id="1516" href="QuasiinverseLemmas.html#1475" class="Bound">a</a> <a id="1518" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="1520" href="BasicTypes.html#4630" class="Function">refl</a> <a id="1525" href="QuasiinverseLemmas.html#1475" class="Bound">a</a><a id="1526" class="Symbol">)</a> <a id="1528" class="Symbol">}</a>

  <a id="1533" class="Comment">-- Synonyms</a>
  <a id="≃-refl"></a><a id="1547" href="QuasiinverseLemmas.html#1547" class="Function">≃-refl</a> <a id="1554" class="Symbol">=</a> <a id="1556" href="QuasiinverseLemmas.html#1402" class="Function">idEqv</a>
  <a id="A≃A"></a><a id="1564" href="QuasiinverseLemmas.html#1564" class="Function">A≃A</a>    <a id="1571" class="Symbol">=</a> <a id="1573" href="QuasiinverseLemmas.html#1402" class="Function">idEqv</a>
</pre>

{: .foldable until="7"}
<pre class="Agda">
  <a id="1630" class="Comment">-- Lemma.</a>
  <a id="_:&gt;≃_"></a><a id="1642" href="QuasiinverseLemmas.html#1642" class="Function Operator">_:&gt;≃_</a>
    <a id="1652" class="Symbol">:</a> <a id="1654" class="Symbol">∀</a> <a id="1656" class="Symbol">{</a><a id="1657" href="QuasiinverseLemmas.html#1657" class="Bound">ℓ₁</a> <a id="1660" href="QuasiinverseLemmas.html#1660" class="Bound">ℓ₂</a> <a id="1663" href="QuasiinverseLemmas.html#1663" class="Bound">ℓ₃</a><a id="1665" class="Symbol">}</a> <a id="1667" class="Symbol">{</a><a id="1668" href="QuasiinverseLemmas.html#1668" class="Bound">A</a> <a id="1670" class="Symbol">:</a> <a id="1672" href="Intro.html#2793" class="Function">Type</a> <a id="1677" href="QuasiinverseLemmas.html#1657" class="Bound">ℓ₁</a><a id="1679" class="Symbol">}{</a><a id="1681" href="QuasiinverseLemmas.html#1681" class="Bound">B</a> <a id="1683" class="Symbol">:</a> <a id="1685" href="Intro.html#2793" class="Function">Type</a> <a id="1690" href="QuasiinverseLemmas.html#1660" class="Bound">ℓ₂</a><a id="1692" class="Symbol">}{</a><a id="1694" href="QuasiinverseLemmas.html#1694" class="Bound">C</a> <a id="1696" class="Symbol">:</a> <a id="1698" href="Intro.html#2793" class="Function">Type</a> <a id="1703" href="QuasiinverseLemmas.html#1663" class="Bound">ℓ₃</a><a id="1705" class="Symbol">}</a>
    <a id="1711" class="Symbol">→</a> <a id="1713" href="QuasiinverseLemmas.html#1668" class="Bound">A</a> <a id="1715" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="1717" href="QuasiinverseLemmas.html#1681" class="Bound">B</a>
    <a id="1723" class="Symbol">→</a> <a id="1725" href="QuasiinverseLemmas.html#1681" class="Bound">B</a> <a id="1727" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="1729" href="QuasiinverseLemmas.html#1694" class="Bound">C</a>
    <a id="1735" class="Comment">-------</a>
    <a id="1747" class="Symbol">→</a> <a id="1749" href="QuasiinverseLemmas.html#1668" class="Bound">A</a> <a id="1751" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="1753" href="QuasiinverseLemmas.html#1694" class="Bound">C</a>

  <a id="1758" href="QuasiinverseLemmas.html#1642" class="Function Operator">_:&gt;≃_</a> <a id="1764" class="Symbol">{</a><a id="1765" class="Argument">A</a> <a id="1767" class="Symbol">=</a> <a id="1769" href="QuasiinverseLemmas.html#1769" class="Bound">A</a><a id="1770" class="Symbol">}</a> <a id="1772" class="Symbol">{</a><a id="1773" class="Argument">C</a> <a id="1775" class="Symbol">=</a> <a id="1777" href="QuasiinverseLemmas.html#1777" class="Bound">C</a><a id="1778" class="Symbol">}</a> <a id="1780" href="QuasiinverseLemmas.html#1780" class="Bound">eq-f</a> <a id="1785" href="QuasiinverseLemmas.html#1785" class="Bound">eq-g</a> <a id="1790" class="Symbol">=</a> <a id="1792" href="QuasiinverseType.html#3454" class="Function">qinv-≃</a> <a id="1799" class="Symbol">(</a><a id="1800" href="BasicTypes.html#1597" class="Field">π₁</a> <a id="1803" href="QuasiinverseLemmas.html#1835" class="Function">qcomp</a><a id="1808" class="Symbol">)</a> <a id="1810" class="Symbol">(</a><a id="1811" href="BasicTypes.html#1608" class="Field">π₂</a> <a id="1814" href="QuasiinverseLemmas.html#1835" class="Function">qcomp</a><a id="1819" class="Symbol">)</a>
   <a id="1824" class="Keyword">where</a>
     <a id="1835" href="QuasiinverseLemmas.html#1835" class="Function">qcomp</a> <a id="1841" class="Symbol">:</a> <a id="1843" href="BasicTypes.html#1689" class="Function">Σ</a> <a id="1845" class="Symbol">(</a><a id="1846" href="QuasiinverseLemmas.html#1769" class="Bound">A</a> <a id="1848" class="Symbol">→</a> <a id="1850" href="QuasiinverseLemmas.html#1777" class="Bound">C</a><a id="1851" class="Symbol">)</a> <a id="1853" href="QuasiinverseType.html#641" class="Function">qinv</a>
     <a id="1863" href="QuasiinverseLemmas.html#1835" class="Function">qcomp</a> <a id="1869" class="Symbol">=</a> <a id="1871" href="QuasiinverseLemmas.html#757" class="Function">qinv-comp</a> <a id="1881" class="Symbol">(</a><a id="1882" href="QuasiinverseType.html#3613" class="Function">≃-qinv</a> <a id="1889" href="QuasiinverseLemmas.html#1780" class="Bound">eq-f</a><a id="1893" class="Symbol">)</a> <a id="1895" class="Symbol">(</a><a id="1896" href="QuasiinverseType.html#3613" class="Function">≃-qinv</a> <a id="1903" href="QuasiinverseLemmas.html#1785" class="Bound">eq-g</a><a id="1907" class="Symbol">)</a>

  <a id="1912" class="Comment">-- Synonyms</a>
  <a id="compEqv"></a><a id="1926" href="QuasiinverseLemmas.html#1926" class="Function">compEqv</a> <a id="1934" class="Symbol">=</a> <a id="1936" href="QuasiinverseLemmas.html#1642" class="Function Operator">_:&gt;≃_</a>
  <a id="≃-trans"></a><a id="1944" href="QuasiinverseLemmas.html#1944" class="Function">≃-trans</a> <a id="1952" class="Symbol">=</a> <a id="1954" href="QuasiinverseLemmas.html#1642" class="Function Operator">_:&gt;≃_</a>
  <a id="_∘≃_"></a><a id="1962" href="QuasiinverseLemmas.html#1962" class="Function Operator">_∘≃_</a>    <a id="1970" class="Symbol">=</a> <a id="1972" href="QuasiinverseLemmas.html#1642" class="Function Operator">_:&gt;≃_</a>
</pre>

{: .foldable until="5"}
<pre class="Agda">
  <a id="≃-sym"></a><a id="2029" href="QuasiinverseLemmas.html#2029" class="Function">≃-sym</a>
    <a id="2039" class="Symbol">:</a> <a id="2041" class="Symbol">∀</a> <a id="2043" class="Symbol">{</a><a id="2044" href="QuasiinverseLemmas.html#2044" class="Bound">ℓ₁</a> <a id="2047" href="QuasiinverseLemmas.html#2047" class="Bound">ℓ₂</a><a id="2049" class="Symbol">}</a> <a id="2051" class="Symbol">{</a><a id="2052" href="QuasiinverseLemmas.html#2052" class="Bound">A</a> <a id="2054" class="Symbol">:</a> <a id="2056" href="Intro.html#2793" class="Function">Type</a> <a id="2061" href="QuasiinverseLemmas.html#2044" class="Bound">ℓ₁</a><a id="2063" class="Symbol">}{</a><a id="2065" href="QuasiinverseLemmas.html#2065" class="Bound">B</a> <a id="2067" class="Symbol">:</a> <a id="2069" href="Intro.html#2793" class="Function">Type</a> <a id="2074" href="QuasiinverseLemmas.html#2047" class="Bound">ℓ₂</a><a id="2076" class="Symbol">}</a>
    <a id="2082" class="Symbol">→</a> <a id="2084" href="QuasiinverseLemmas.html#2052" class="Bound">A</a> <a id="2086" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="2088" href="QuasiinverseLemmas.html#2065" class="Bound">B</a>
    <a id="2094" class="Comment">-------</a>
    <a id="2106" class="Symbol">→</a> <a id="2108" href="QuasiinverseLemmas.html#2065" class="Bound">B</a> <a id="2110" href="EquivalenceType.html#1435" class="Function Operator">≃</a> <a id="2112" href="QuasiinverseLemmas.html#2052" class="Bound">A</a>

  <a id="2117" href="QuasiinverseLemmas.html#2029" class="Function">≃-sym</a> <a id="2123" class="Symbol">{</a><a id="2124" href="QuasiinverseLemmas.html#2124" class="Bound">ℓ</a><a id="2125" class="Symbol">}{_}</a> <a id="2130" class="Symbol">{</a><a id="2131" href="QuasiinverseLemmas.html#2131" class="Bound">A</a><a id="2132" class="Symbol">}</a> <a id="2134" class="Symbol">{</a><a id="2135" href="QuasiinverseLemmas.html#2135" class="Bound">B</a><a id="2136" class="Symbol">}</a> <a id="2138" href="QuasiinverseLemmas.html#2138" class="Bound">eq-f</a> <a id="2143" class="Symbol">=</a> <a id="2145" href="QuasiinverseType.html#3454" class="Function">qinv-≃</a> <a id="2152" class="Symbol">(</a><a id="2153" href="BasicTypes.html#1597" class="Field">π₁</a> <a id="2156" href="QuasiinverseLemmas.html#2188" class="Function">qcinv</a><a id="2161" class="Symbol">)</a> <a id="2163" class="Symbol">(</a><a id="2164" href="BasicTypes.html#1608" class="Field">π₂</a> <a id="2167" href="QuasiinverseLemmas.html#2188" class="Function">qcinv</a><a id="2172" class="Symbol">)</a>
   <a id="2177" class="Keyword">where</a>
     <a id="2188" href="QuasiinverseLemmas.html#2188" class="Function">qcinv</a> <a id="2194" class="Symbol">:</a> <a id="2196" href="BasicTypes.html#1689" class="Function">Σ</a> <a id="2198" class="Symbol">(</a><a id="2199" href="QuasiinverseLemmas.html#2135" class="Bound">B</a> <a id="2201" class="Symbol">→</a> <a id="2203" href="QuasiinverseLemmas.html#2131" class="Bound">A</a><a id="2204" class="Symbol">)</a> <a id="2206" href="QuasiinverseType.html#641" class="Function">qinv</a>
     <a id="2216" href="QuasiinverseLemmas.html#2188" class="Function">qcinv</a> <a id="2222" class="Symbol">=</a> <a id="2224" href="QuasiinverseLemmas.html#1137" class="Function">qinv-inv</a> <a id="2233" class="Symbol">(</a><a id="2234" href="QuasiinverseType.html#3613" class="Function">≃-qinv</a> <a id="2241" href="QuasiinverseLemmas.html#2138" class="Bound">eq-f</a><a id="2245" class="Symbol">)</a>

  <a id="2250" class="Comment">-- Synonyms</a>
  <a id="invEqv"></a><a id="2264" href="QuasiinverseLemmas.html#2264" class="Function">invEqv</a> <a id="2271" class="Symbol">=</a> <a id="2273" href="QuasiinverseLemmas.html#2029" class="Function">≃-sym</a>
  <a id="≃-flip"></a><a id="2281" href="QuasiinverseLemmas.html#2281" class="Function">≃-flip</a> <a id="2288" class="Symbol">=</a> <a id="2290" href="QuasiinverseLemmas.html#2029" class="Function">≃-sym</a>
</pre>
