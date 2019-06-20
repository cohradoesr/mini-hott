---
layout: page
title: "H-Levels Types"
category: types
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
<a id="204" class="Symbol">{-#</a> <a id="208" class="Keyword">OPTIONS</a> <a id="216" class="Pragma">--without-K</a> <a id="228" class="Symbol">#-}</a>
<a id="232" class="Keyword">module</a> <a id="239" href="HLevelTypes.html" class="Module">_</a> <a id="241" class="Keyword">where</a>

<a id="248" class="Keyword">open</a> <a id="253" class="Keyword">import</a> <a id="260" href="BasicTypes.html" class="Module">BasicTypes</a>
<a id="271" class="Keyword">open</a> <a id="276" class="Keyword">import</a> <a id="283" href="BasicFunctions.html" class="Module">BasicFunctions</a>
</pre>
</div>


## Hlevel types

Higher levels of the homotopical structure:

- Contractible types ($-2$)
- Propositions ($-1$)
- Sets ($0$)
- Groupoids ($1$)

### Contractible types

A *contractible* type is a type such that **every**
element is equal to a point, the *center* of contraction.

<pre class="Agda">
  <a id="612" class="Comment">-- Def.</a>
<a id="isContr"></a><a id="620" href="HLevelTypes.html#620" class="Function">isContr</a>
  <a id="630" class="Symbol">:</a> <a id="632" class="Symbol">(</a><a id="633" href="HLevelTypes.html#633" class="Bound">A</a> <a id="635" class="Symbol">:</a> <a id="637" href="Intro.html#1720" class="Function">Type</a> <a id="642" href="Intro.html#2160" class="Generalizable">ℓ</a><a id="643" class="Symbol">)</a>
  <a id="647" class="Comment">--------------</a>
  <a id="664" class="Symbol">→</a> <a id="666" href="Intro.html#1720" class="Function">Type</a> <a id="671" href="Intro.html#2160" class="Generalizable">ℓ</a>

<a id="674" href="HLevelTypes.html#620" class="Function">isContr</a> <a id="682" href="HLevelTypes.html#682" class="Bound">A</a> <a id="684" class="Symbol">=</a> <a id="686" href="BasicTypes.html#1690" class="Function">Σ</a> <a id="688" href="HLevelTypes.html#682" class="Bound">A</a> <a id="690" class="Symbol">(λ</a> <a id="693" href="HLevelTypes.html#693" class="Bound">a</a> <a id="695" class="Symbol">→</a> <a id="697" class="Symbol">((</a><a id="699" href="HLevelTypes.html#699" class="Bound">x</a> <a id="701" class="Symbol">:</a> <a id="703" href="HLevelTypes.html#682" class="Bound">A</a><a id="704" class="Symbol">)</a> <a id="706" class="Symbol">→</a> <a id="708" href="HLevelTypes.html#693" class="Bound">a</a> <a id="710" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="713" href="HLevelTypes.html#699" class="Bound">x</a><a id="714" class="Symbol">))</a>
</pre>

Synonym:

<pre class="Agda">
<a id="Contractible"></a><a id="752" href="HLevelTypes.html#752" class="Function">Contractible</a> <a id="765" class="Symbol">=</a> <a id="767" href="HLevelTypes.html#620" class="Function">isContr</a>
<a id="is-singleton"></a><a id="775" href="HLevelTypes.html#775" class="Function">is-singleton</a> <a id="788" class="Symbol">=</a> <a id="790" href="HLevelTypes.html#620" class="Function">isContr</a>
</pre>

If a type is contractible, any of its points is a center of contraction:

<pre class="Agda">
<a id="allAreCenter"></a><a id="897" href="HLevelTypes.html#897" class="Function">allAreCenter</a>
  <a id="912" class="Symbol">:</a> <a id="914" class="Symbol">∀</a> <a id="916" class="Symbol">{</a><a id="917" href="HLevelTypes.html#917" class="Bound">ℓ</a><a id="918" class="Symbol">}</a> <a id="920" class="Symbol">{</a><a id="921" href="HLevelTypes.html#921" class="Bound">A</a> <a id="923" class="Symbol">:</a> <a id="925" href="Intro.html#1720" class="Function">Type</a> <a id="930" href="HLevelTypes.html#917" class="Bound">ℓ</a><a id="931" class="Symbol">}</a>
  <a id="935" class="Symbol">→</a> <a id="937" class="Symbol">(</a><a id="938" href="HLevelTypes.html#938" class="Bound">c₁</a> <a id="941" class="Symbol">:</a> <a id="943" href="HLevelTypes.html#921" class="Bound">A</a><a id="944" class="Symbol">)</a> <a id="946" class="Symbol">→</a> <a id="948" class="Symbol">(</a><a id="949" href="HLevelTypes.html#949" class="Bound">f</a> <a id="951" class="Symbol">:</a> <a id="953" class="Symbol">(</a><a id="954" href="HLevelTypes.html#954" class="Bound">x</a> <a id="956" class="Symbol">:</a> <a id="958" href="HLevelTypes.html#921" class="Bound">A</a><a id="959" class="Symbol">)</a> <a id="961" class="Symbol">→</a> <a id="963" href="HLevelTypes.html#938" class="Bound">c₁</a> <a id="966" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="969" href="HLevelTypes.html#954" class="Bound">x</a><a id="970" class="Symbol">)</a>
  <a id="974" class="Symbol">→</a> <a id="976" class="Symbol">(∀</a> <a id="979" class="Symbol">(</a><a id="980" href="HLevelTypes.html#980" class="Bound">c₂</a> <a id="983" class="Symbol">:</a> <a id="985" href="HLevelTypes.html#921" class="Bound">A</a><a id="986" class="Symbol">)</a> <a id="988" class="Symbol">→</a> <a id="990" class="Symbol">(∀</a> <a id="993" class="Symbol">(</a><a id="994" href="HLevelTypes.html#994" class="Bound">x</a> <a id="996" class="Symbol">:</a> <a id="998" href="HLevelTypes.html#921" class="Bound">A</a><a id="999" class="Symbol">)</a> <a id="1001" class="Symbol">→</a> <a id="1003" href="HLevelTypes.html#980" class="Bound">c₂</a> <a id="1006" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="1009" href="HLevelTypes.html#994" class="Bound">x</a><a id="1010" class="Symbol">))</a>

<a id="1014" href="HLevelTypes.html#897" class="Function">allAreCenter</a> <a id="1027" href="HLevelTypes.html#1027" class="Bound">c₁</a> <a id="1030" href="HLevelTypes.html#1030" class="Bound">f</a> <a id="1032" href="HLevelTypes.html#1032" class="Bound">c₂</a> <a id="1035" href="HLevelTypes.html#1035" class="Bound">x</a> <a id="1037" class="Symbol">=</a> <a id="1039" href="BasicTypes.html#4744" class="Function">sym</a> <a id="1043" class="Symbol">(</a><a id="1044" href="HLevelTypes.html#1030" class="Bound">f</a> <a id="1046" href="HLevelTypes.html#1032" class="Bound">c₂</a><a id="1048" class="Symbol">)</a> <a id="1050" href="BasicFunctions.html#3903" class="Function Operator">·</a> <a id="1052" class="Symbol">(</a><a id="1053" href="HLevelTypes.html#1030" class="Bound">f</a> <a id="1055" href="HLevelTypes.html#1035" class="Bound">x</a><a id="1056" class="Symbol">)</a>
</pre>

### Propositions

A type is a *mere proposition* if any two inhabitants of the type are equal.

{: .foldable until="5"}
<pre class="Agda">
<a id="1203" class="Comment">-- Def.</a>
<a id="isProp"></a><a id="1211" href="HLevelTypes.html#1211" class="Function">isProp</a>
  <a id="1220" class="Symbol">:</a> <a id="1222" class="Symbol">∀</a> <a id="1224" class="Symbol">{</a><a id="1225" href="HLevelTypes.html#1225" class="Bound">ℓ</a><a id="1226" class="Symbol">}</a> <a id="1228" class="Symbol">(</a><a id="1229" href="HLevelTypes.html#1229" class="Bound">A</a> <a id="1231" class="Symbol">:</a> <a id="1233" href="Intro.html#1720" class="Function">Type</a> <a id="1238" href="HLevelTypes.html#1225" class="Bound">ℓ</a><a id="1239" class="Symbol">)</a> <a id="1241" class="Symbol">→</a> <a id="1243" href="Intro.html#1720" class="Function">Type</a> <a id="1248" href="HLevelTypes.html#1225" class="Bound">ℓ</a>

<a id="1251" href="HLevelTypes.html#1211" class="Function">isProp</a> <a id="1258" href="HLevelTypes.html#1258" class="Bound">A</a> <a id="1260" class="Symbol">=</a> <a id="1262" class="Symbol">((</a><a id="1264" href="HLevelTypes.html#1264" class="Bound">x</a> <a id="1266" href="HLevelTypes.html#1266" class="Bound">y</a> <a id="1268" class="Symbol">:</a> <a id="1270" href="HLevelTypes.html#1258" class="Bound">A</a><a id="1271" class="Symbol">)</a> <a id="1273" class="Symbol">→</a> <a id="1275" href="HLevelTypes.html#1264" class="Bound">x</a> <a id="1277" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="1280" href="HLevelTypes.html#1266" class="Bound">y</a><a id="1281" class="Symbol">)</a>
</pre>

<pre class="Agda">
<a id="is-subsingleton"></a><a id="1308" href="HLevelTypes.html#1308" class="Function">is-subsingleton</a> <a id="1324" class="Symbol">=</a> <a id="1326" href="HLevelTypes.html#1211" class="Function">isProp</a>
</pre>

<pre class="Agda">
<a id="1358" class="Comment">-- The type of mere propositions</a>
<a id="hProp"></a><a id="1391" href="HLevelTypes.html#1391" class="Function">hProp</a>
  <a id="1399" class="Symbol">:</a> <a id="1401" class="Symbol">∀</a> <a id="1403" class="Symbol">{</a><a id="1404" href="HLevelTypes.html#1404" class="Bound">ℓ</a><a id="1405" class="Symbol">}</a> <a id="1407" class="Symbol">→</a> <a id="1409" href="Intro.html#1720" class="Function">Type</a> <a id="1414" class="Symbol">(</a><a id="1415" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="1420" href="HLevelTypes.html#1404" class="Bound">ℓ</a><a id="1421" class="Symbol">)</a>

<a id="1424" href="HLevelTypes.html#1391" class="Function">hProp</a> <a id="1430" class="Symbol">{</a><a id="1431" href="HLevelTypes.html#1431" class="Bound">ℓ</a><a id="1432" class="Symbol">}</a> <a id="1434" class="Symbol">=</a> <a id="1436" href="BasicTypes.html#1507" class="Record">∑</a> <a id="1438" class="Symbol">(</a><a id="1439" href="Intro.html#1720" class="Function">Type</a> <a id="1444" href="HLevelTypes.html#1431" class="Bound">ℓ</a><a id="1445" class="Symbol">)</a> <a id="1447" href="HLevelTypes.html#1211" class="Function">isProp</a>
</pre>

### Sets

A type is a *set& by definition if any two equalities on the type are equal Sets
are types without any higher *dimensional structure*,  all parallel paths are
homotopic and the homotopy is given by a continuous function on the two paths.

<pre class="Agda">
<a id="isSet"></a><a id="1728" href="HLevelTypes.html#1728" class="Function">isSet</a>
  <a id="1736" class="Symbol">:</a> <a id="1738" href="Intro.html#1720" class="Function">Type</a> <a id="1743" href="Intro.html#2160" class="Generalizable">ℓ</a> <a id="1745" class="Symbol">→</a> <a id="1747" href="Intro.html#1720" class="Function">Type</a> <a id="1752" href="Intro.html#2160" class="Generalizable">ℓ</a>
<a id="1754" href="HLevelTypes.html#1728" class="Function">isSet</a> <a id="1760" href="HLevelTypes.html#1760" class="Bound">A</a> <a id="1762" class="Symbol">=</a> <a id="1764" class="Symbol">(</a><a id="1765" href="HLevelTypes.html#1765" class="Bound">x</a> <a id="1767" href="HLevelTypes.html#1767" class="Bound">y</a> <a id="1769" class="Symbol">:</a> <a id="1771" href="HLevelTypes.html#1760" class="Bound">A</a><a id="1772" class="Symbol">)</a> <a id="1774" class="Symbol">→</a> <a id="1776" href="HLevelTypes.html#1211" class="Function">isProp</a> <a id="1783" class="Symbol">(</a><a id="1784" href="HLevelTypes.html#1765" class="Bound">x</a> <a id="1786" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="1789" href="HLevelTypes.html#1767" class="Bound">y</a><a id="1790" class="Symbol">)</a>
</pre>

The type of sets

<pre class="Agda">
<a id="hSet"></a><a id="1835" href="HLevelTypes.html#1835" class="Function">hSet</a>
  <a id="1842" class="Symbol">:</a> <a id="1844" href="Intro.html#1720" class="Function">Type</a> <a id="1849" class="Symbol">(</a><a id="1850" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="1855" href="Intro.html#2160" class="Generalizable">ℓ</a><a id="1856" class="Symbol">)</a>

<a id="1859" href="HLevelTypes.html#1835" class="Function">hSet</a> <a id="1864" class="Symbol">{</a><a id="1865" href="HLevelTypes.html#1865" class="Bound">ℓ</a><a id="1866" class="Symbol">}</a> <a id="1868" class="Symbol">=</a> <a id="1870" href="BasicTypes.html#1507" class="Record">∑</a> <a id="1872" class="Symbol">(</a><a id="1873" href="Intro.html#1720" class="Function">Type</a> <a id="1878" href="HLevelTypes.html#1865" class="Bound">ℓ</a><a id="1879" class="Symbol">)</a> <a id="1881" href="HLevelTypes.html#1728" class="Function">isSet</a>
</pre>

### Groupoid

<pre class="Agda">
<a id="isGroupoid"></a><a id="1926" href="HLevelTypes.html#1926" class="Function">isGroupoid</a>
  <a id="1939" class="Symbol">:</a> <a id="1941" href="Intro.html#1720" class="Function">Type</a> <a id="1946" href="Intro.html#2160" class="Generalizable">ℓ</a> <a id="1948" class="Symbol">→</a> <a id="1950" href="Intro.html#1720" class="Function">Type</a> <a id="1955" href="Intro.html#2160" class="Generalizable">ℓ</a>

<a id="1958" href="HLevelTypes.html#1926" class="Function">isGroupoid</a> <a id="1969" href="HLevelTypes.html#1969" class="Bound">A</a>  <a id="1972" class="Symbol">=</a> <a id="1974" class="Symbol">(</a><a id="1975" href="HLevelTypes.html#1975" class="Bound">a₀</a> <a id="1978" href="HLevelTypes.html#1978" class="Bound">a₁</a> <a id="1981" class="Symbol">:</a> <a id="1983" href="HLevelTypes.html#1969" class="Bound">A</a><a id="1984" class="Symbol">)</a> <a id="1986" class="Symbol">→</a> <a id="1988" href="HLevelTypes.html#1728" class="Function">isSet</a> <a id="1994" class="Symbol">(</a><a id="1995" href="HLevelTypes.html#1975" class="Bound">a₀</a> <a id="1998" href="BasicTypes.html#4480" class="Function Operator">≡</a> <a id="2000" href="HLevelTypes.html#1978" class="Bound">a₁</a><a id="2002" class="Symbol">)</a>
</pre>

<pre class="Agda">
<a id="Groupoid"></a><a id="2029" href="HLevelTypes.html#2029" class="Function">Groupoid</a>
  <a id="2040" class="Symbol">:</a> <a id="2042" href="Intro.html#1720" class="Function">Type</a> <a id="2047" class="Symbol">(</a><a id="2048" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="2053" href="Intro.html#2160" class="Generalizable">ℓ</a><a id="2054" class="Symbol">)</a>
<a id="2056" href="HLevelTypes.html#2029" class="Function">Groupoid</a> <a id="2065" class="Symbol">{</a><a id="2066" href="HLevelTypes.html#2066" class="Bound">ℓ</a><a id="2067" class="Symbol">}</a> <a id="2069" class="Symbol">=</a> <a id="2071" href="BasicTypes.html#1507" class="Record">∑</a> <a id="2073" class="Symbol">(</a><a id="2074" href="Intro.html#1720" class="Function">Type</a> <a id="2079" href="HLevelTypes.html#2066" class="Bound">ℓ</a><a id="2080" class="Symbol">)</a> <a id="2082" href="HLevelTypes.html#1926" class="Function">isGroupoid</a>
</pre>
