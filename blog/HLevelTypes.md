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
  <a id="630" class="Symbol">:</a> <a id="632" class="Symbol">(</a><a id="633" href="HLevelTypes.html#633" class="Bound">A</a> <a id="635" class="Symbol">:</a> <a id="637" href="Intro.html#1813" class="Function">Type</a> <a id="642" href="Intro.html#2253" class="Generalizable">ℓ</a><a id="643" class="Symbol">)</a>
  <a id="647" class="Comment">--------------</a>
  <a id="664" class="Symbol">→</a> <a id="666" href="Intro.html#1813" class="Function">Type</a> <a id="671" href="Intro.html#2253" class="Generalizable">ℓ</a>

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
  <a id="912" class="Symbol">:</a> <a id="914" class="Symbol">∀</a> <a id="916" class="Symbol">{</a><a id="917" href="HLevelTypes.html#917" class="Bound">ℓ</a><a id="918" class="Symbol">}</a> <a id="920" class="Symbol">{</a><a id="921" href="HLevelTypes.html#921" class="Bound">A</a> <a id="923" class="Symbol">:</a> <a id="925" href="Intro.html#1813" class="Function">Type</a> <a id="930" href="HLevelTypes.html#917" class="Bound">ℓ</a><a id="931" class="Symbol">}</a>
  <a id="935" class="Symbol">→</a> <a id="937" class="Symbol">(</a><a id="938" href="HLevelTypes.html#938" class="Bound">c₁</a> <a id="941" class="Symbol">:</a> <a id="943" href="HLevelTypes.html#921" class="Bound">A</a><a id="944" class="Symbol">)</a> <a id="946" class="Symbol">→</a> <a id="948" class="Symbol">(</a><a id="949" href="HLevelTypes.html#949" class="Bound">f</a> <a id="951" class="Symbol">:</a> <a id="953" class="Symbol">(</a><a id="954" href="HLevelTypes.html#954" class="Bound">x</a> <a id="956" class="Symbol">:</a> <a id="958" href="HLevelTypes.html#921" class="Bound">A</a><a id="959" class="Symbol">)</a> <a id="961" class="Symbol">→</a> <a id="963" href="HLevelTypes.html#938" class="Bound">c₁</a> <a id="966" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="969" href="HLevelTypes.html#954" class="Bound">x</a><a id="970" class="Symbol">)</a>
  <a id="974" class="Symbol">→</a> <a id="976" class="Symbol">(∀</a> <a id="979" class="Symbol">(</a><a id="980" href="HLevelTypes.html#980" class="Bound">c₂</a> <a id="983" class="Symbol">:</a> <a id="985" href="HLevelTypes.html#921" class="Bound">A</a><a id="986" class="Symbol">)</a> <a id="988" class="Symbol">→</a> <a id="990" class="Symbol">(∀</a> <a id="993" class="Symbol">(</a><a id="994" href="HLevelTypes.html#994" class="Bound">x</a> <a id="996" class="Symbol">:</a> <a id="998" href="HLevelTypes.html#921" class="Bound">A</a><a id="999" class="Symbol">)</a> <a id="1001" class="Symbol">→</a> <a id="1003" href="HLevelTypes.html#980" class="Bound">c₂</a> <a id="1006" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="1009" href="HLevelTypes.html#994" class="Bound">x</a><a id="1010" class="Symbol">))</a>

<a id="1014" href="HLevelTypes.html#897" class="Function">allAreCenter</a> <a id="1027" href="HLevelTypes.html#1027" class="Bound">c₁</a> <a id="1030" href="HLevelTypes.html#1030" class="Bound">f</a> <a id="1032" href="HLevelTypes.html#1032" class="Bound">c₂</a> <a id="1035" href="HLevelTypes.html#1035" class="Bound">x</a> <a id="1037" class="Symbol">=</a> <a id="1039" href="BasicTypes.html#4744" class="Function">sym</a> <a id="1043" class="Symbol">(</a><a id="1044" href="HLevelTypes.html#1030" class="Bound">f</a> <a id="1046" href="HLevelTypes.html#1032" class="Bound">c₂</a><a id="1048" class="Symbol">)</a> <a id="1050" href="BasicFunctions.html#3903" class="Function Operator">·</a> <a id="1052" class="Symbol">(</a><a id="1053" href="HLevelTypes.html#1030" class="Bound">f</a> <a id="1055" href="HLevelTypes.html#1035" class="Bound">x</a><a id="1056" class="Symbol">)</a>
</pre>

### Propositions

A type is a *mere proposition* if any two inhabitants of the type are equal.

<pre class="Agda">
<a id="isProp"></a><a id="1179" href="HLevelTypes.html#1179" class="Function">isProp</a>
  <a id="1188" class="Symbol">:</a> <a id="1190" class="Symbol">∀</a> <a id="1192" class="Symbol">{</a><a id="1193" href="HLevelTypes.html#1193" class="Bound">ℓ</a><a id="1194" class="Symbol">}</a> <a id="1196" class="Symbol">(</a><a id="1197" href="HLevelTypes.html#1197" class="Bound">A</a> <a id="1199" class="Symbol">:</a> <a id="1201" href="Intro.html#1813" class="Function">Type</a> <a id="1206" href="HLevelTypes.html#1193" class="Bound">ℓ</a><a id="1207" class="Symbol">)</a> <a id="1209" class="Symbol">→</a> <a id="1211" href="Intro.html#1813" class="Function">Type</a> <a id="1216" href="HLevelTypes.html#1193" class="Bound">ℓ</a>

<a id="1219" href="HLevelTypes.html#1179" class="Function">isProp</a> <a id="1226" href="HLevelTypes.html#1226" class="Bound">A</a> <a id="1228" class="Symbol">=</a> <a id="1230" class="Symbol">((</a><a id="1232" href="HLevelTypes.html#1232" class="Bound">x</a> <a id="1234" href="HLevelTypes.html#1234" class="Bound">y</a> <a id="1236" class="Symbol">:</a> <a id="1238" href="HLevelTypes.html#1226" class="Bound">A</a><a id="1239" class="Symbol">)</a> <a id="1241" class="Symbol">→</a> <a id="1243" href="HLevelTypes.html#1232" class="Bound">x</a> <a id="1245" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="1248" href="HLevelTypes.html#1234" class="Bound">y</a><a id="1249" class="Symbol">)</a>
</pre>

Synonyms:

<pre class="Agda">
<a id="is-subsingleton"></a><a id="1287" href="HLevelTypes.html#1287" class="Function">is-subsingleton</a> <a id="1303" class="Symbol">=</a> <a id="1305" href="HLevelTypes.html#1179" class="Function">isProp</a>
<a id="is-prop"></a><a id="1312" href="HLevelTypes.html#1312" class="Function">is-prop</a>         <a id="1328" class="Symbol">=</a> <a id="1330" href="HLevelTypes.html#1179" class="Function">isProp</a>
</pre>

<pre class="Agda">
<a id="hProp"></a><a id="1362" href="HLevelTypes.html#1362" class="Function">hProp</a>
  <a id="1370" class="Symbol">:</a> <a id="1372" class="Symbol">∀</a> <a id="1374" class="Symbol">{</a><a id="1375" href="HLevelTypes.html#1375" class="Bound">ℓ</a><a id="1376" class="Symbol">}</a> <a id="1378" class="Symbol">→</a> <a id="1380" href="Intro.html#1813" class="Function">Type</a> <a id="1385" class="Symbol">(</a><a id="1386" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="1391" href="HLevelTypes.html#1375" class="Bound">ℓ</a><a id="1392" class="Symbol">)</a>

<a id="1395" href="HLevelTypes.html#1362" class="Function">hProp</a> <a id="1401" class="Symbol">{</a><a id="1402" href="HLevelTypes.html#1402" class="Bound">ℓ</a><a id="1403" class="Symbol">}</a> <a id="1405" class="Symbol">=</a> <a id="1407" href="BasicTypes.html#1507" class="Record">∑</a> <a id="1409" class="Symbol">(</a><a id="1410" href="Intro.html#1813" class="Function">Type</a> <a id="1415" href="HLevelTypes.html#1402" class="Bound">ℓ</a><a id="1416" class="Symbol">)</a> <a id="1418" href="HLevelTypes.html#1179" class="Function">isProp</a>
</pre>

### Sets

A type is a *set& by definition if any two equalities on the type are equal Sets
are types without any higher *dimensional structure*,  all parallel paths are
homotopic and the homotopy is given by a continuous function on the two paths.

<pre class="Agda">
<a id="isSet"></a><a id="1699" href="HLevelTypes.html#1699" class="Function">isSet</a>
  <a id="1707" class="Symbol">:</a> <a id="1709" href="Intro.html#1813" class="Function">Type</a> <a id="1714" href="Intro.html#2253" class="Generalizable">ℓ</a> <a id="1716" class="Symbol">→</a> <a id="1718" href="Intro.html#1813" class="Function">Type</a> <a id="1723" href="Intro.html#2253" class="Generalizable">ℓ</a>
<a id="1725" href="HLevelTypes.html#1699" class="Function">isSet</a> <a id="1731" href="HLevelTypes.html#1731" class="Bound">A</a> <a id="1733" class="Symbol">=</a> <a id="1735" class="Symbol">(</a><a id="1736" href="HLevelTypes.html#1736" class="Bound">x</a> <a id="1738" href="HLevelTypes.html#1738" class="Bound">y</a> <a id="1740" class="Symbol">:</a> <a id="1742" href="HLevelTypes.html#1731" class="Bound">A</a><a id="1743" class="Symbol">)</a> <a id="1745" class="Symbol">→</a> <a id="1747" href="HLevelTypes.html#1179" class="Function">isProp</a> <a id="1754" class="Symbol">(</a><a id="1755" href="HLevelTypes.html#1736" class="Bound">x</a> <a id="1757" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="1760" href="HLevelTypes.html#1738" class="Bound">y</a><a id="1761" class="Symbol">)</a>
</pre>

Synonyms:

<pre class="Agda">
<a id="is-set"></a><a id="1799" href="HLevelTypes.html#1799" class="Function">is-set</a> <a id="1806" class="Symbol">=</a> <a id="1808" href="HLevelTypes.html#1699" class="Function">isSet</a>
</pre>

The type of sets

<pre class="Agda">
<a id="hSet"></a><a id="1857" href="HLevelTypes.html#1857" class="Function">hSet</a>
  <a id="1864" class="Symbol">:</a> <a id="1866" href="Intro.html#1813" class="Function">Type</a> <a id="1871" class="Symbol">(</a><a id="1872" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="1877" href="Intro.html#2253" class="Generalizable">ℓ</a><a id="1878" class="Symbol">)</a>

<a id="1881" href="HLevelTypes.html#1857" class="Function">hSet</a> <a id="1886" class="Symbol">{</a><a id="1887" href="HLevelTypes.html#1887" class="Bound">ℓ</a><a id="1888" class="Symbol">}</a> <a id="1890" class="Symbol">=</a> <a id="1892" href="BasicTypes.html#1507" class="Record">∑</a> <a id="1894" class="Symbol">(</a><a id="1895" href="Intro.html#1813" class="Function">Type</a> <a id="1900" href="HLevelTypes.html#1887" class="Bound">ℓ</a><a id="1901" class="Symbol">)</a> <a id="1903" href="HLevelTypes.html#1699" class="Function">isSet</a>
</pre>

### Groupoids

<pre class="Agda">
<a id="isGroupoid"></a><a id="1949" href="HLevelTypes.html#1949" class="Function">isGroupoid</a>
  <a id="1962" class="Symbol">:</a> <a id="1964" href="Intro.html#1813" class="Function">Type</a> <a id="1969" href="Intro.html#2253" class="Generalizable">ℓ</a> <a id="1971" class="Symbol">→</a> <a id="1973" href="Intro.html#1813" class="Function">Type</a> <a id="1978" href="Intro.html#2253" class="Generalizable">ℓ</a>

<a id="1981" href="HLevelTypes.html#1949" class="Function">isGroupoid</a> <a id="1992" href="HLevelTypes.html#1992" class="Bound">A</a>  <a id="1995" class="Symbol">=</a> <a id="1997" class="Symbol">(</a><a id="1998" href="HLevelTypes.html#1998" class="Bound">a₀</a> <a id="2001" href="HLevelTypes.html#2001" class="Bound">a₁</a> <a id="2004" class="Symbol">:</a> <a id="2006" href="HLevelTypes.html#1992" class="Bound">A</a><a id="2007" class="Symbol">)</a> <a id="2009" class="Symbol">→</a> <a id="2011" href="HLevelTypes.html#1699" class="Function">isSet</a> <a id="2017" class="Symbol">(</a><a id="2018" href="HLevelTypes.html#1998" class="Bound">a₀</a> <a id="2021" href="BasicTypes.html#4480" class="Function Operator">≡</a> <a id="2023" href="HLevelTypes.html#2001" class="Bound">a₁</a><a id="2025" class="Symbol">)</a>
</pre>

Synonyms:

<pre class="Agda">
<a id="is-groupoid"></a><a id="2063" href="HLevelTypes.html#2063" class="Function">is-groupoid</a> <a id="2075" class="Symbol">=</a> <a id="2077" href="HLevelTypes.html#1949" class="Function">isGroupoid</a>
</pre>

<pre class="Agda">
<a id="Groupoid"></a><a id="2113" href="HLevelTypes.html#2113" class="Function">Groupoid</a>
  <a id="2124" class="Symbol">:</a> <a id="2126" href="Intro.html#1813" class="Function">Type</a> <a id="2131" class="Symbol">(</a><a id="2132" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="2137" href="Intro.html#2253" class="Generalizable">ℓ</a><a id="2138" class="Symbol">)</a>
<a id="2140" href="HLevelTypes.html#2113" class="Function">Groupoid</a> <a id="2149" class="Symbol">{</a><a id="2150" href="HLevelTypes.html#2150" class="Bound">ℓ</a><a id="2151" class="Symbol">}</a> <a id="2153" class="Symbol">=</a> <a id="2155" href="BasicTypes.html#1507" class="Record">∑</a> <a id="2157" class="Symbol">(</a><a id="2158" href="Intro.html#1813" class="Function">Type</a> <a id="2163" href="HLevelTypes.html#2150" class="Bound">ℓ</a><a id="2164" class="Symbol">)</a> <a id="2166" href="HLevelTypes.html#1949" class="Function">isGroupoid</a>
</pre>
