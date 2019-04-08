---
layout: page
title: "Basic Types"
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
<a id="201" class="Symbol">{-#</a> <a id="205" class="Keyword">OPTIONS</a> <a id="213" class="Pragma">--without-K</a> <a id="225" class="Symbol">#-}</a>
<a id="229" class="Keyword">open</a> <a id="234" class="Keyword">import</a> <a id="241" href="Intro.html" class="Module">Intro</a> <a id="247" class="Keyword">public</a>
</pre>
</div>

### Empty type

A datatype without *constructors* is the *empty type*. This represents  the *falsehood*.

<pre class="Agda">
<a id="392" class="Keyword">data</a> <a id="⊥"></a><a id="397" href="BasicTypes.html#397" class="Datatype">⊥</a> <a id="399" class="Symbol">{</a><a id="400" href="BasicTypes.html#400" class="Bound">ℓᵢ</a><a id="402" class="Symbol">}</a> <a id="404" class="Symbol">:</a> <a id="406" href="Intro.html#1442" class="Function">Type</a> <a id="411" href="BasicTypes.html#400" class="Bound">ℓᵢ</a> <a id="414" class="Keyword">where</a>
</pre>

Synonyms of ⊥:
<pre class="Agda">
<a id="Empty"></a><a id="460" href="BasicTypes.html#460" class="Function">Empty</a> <a id="466" class="Symbol">=</a> <a id="468" href="BasicTypes.html#397" class="Datatype">⊥</a>
<a id="𝟘"></a><a id="470" href="BasicTypes.html#470" class="Function">𝟘</a>     <a id="476" class="Symbol">=</a> <a id="478" href="BasicTypes.html#397" class="Datatype">⊥</a>
</pre>

Its *eliminator* principle also called *Ex falso quodlibet*:

<pre class="Agda">
<a id="exfalso"></a><a id="567" href="BasicTypes.html#567" class="Function">exfalso</a>
  <a id="577" class="Symbol">:</a> <a id="579" class="Symbol">∀</a> <a id="581" class="Symbol">{</a><a id="582" href="BasicTypes.html#582" class="Bound">ℓ</a> <a id="584" href="BasicTypes.html#584" class="Bound">ℓᵢ</a><a id="586" class="Symbol">}</a> <a id="588" class="Symbol">{</a><a id="589" href="BasicTypes.html#589" class="Bound">A</a> <a id="591" class="Symbol">:</a> <a id="593" href="Intro.html#1442" class="Function">Type</a> <a id="598" href="BasicTypes.html#582" class="Bound">ℓ</a><a id="599" class="Symbol">}</a>
  <a id="603" class="Symbol">→</a> <a id="605" href="BasicTypes.html#397" class="Datatype">⊥</a> <a id="607" class="Symbol">{</a><a id="608" href="BasicTypes.html#584" class="Bound">ℓᵢ</a><a id="610" class="Symbol">}</a>
  <a id="614" class="Comment">--------</a>
  <a id="625" class="Symbol">→</a> <a id="627" href="BasicTypes.html#589" class="Bound">A</a>

<a id="630" href="BasicTypes.html#567" class="Function">exfalso</a> <a id="638" class="Symbol">()</a>
</pre>

Synonyms of `exfalso` rule:

<pre class="Agda">
<a id="Empty-elim"></a><a id="695" href="BasicTypes.html#695" class="Function">Empty-elim</a> <a id="706" class="Symbol">=</a> <a id="708" href="BasicTypes.html#567" class="Function">exfalso</a>
<a id="⊥-elim"></a><a id="716" href="BasicTypes.html#716" class="Function">⊥-elim</a>     <a id="727" class="Symbol">=</a> <a id="729" href="BasicTypes.html#567" class="Function">exfalso</a>
<a id="𝟘-elim"></a><a id="737" href="BasicTypes.html#737" class="Function">𝟘-elim</a>     <a id="748" class="Symbol">=</a> <a id="750" href="BasicTypes.html#567" class="Function">exfalso</a>
</pre>

The negation function:
<pre class="Agda">
<a id="¬"></a><a id="806" href="BasicTypes.html#806" class="Function">¬</a> <a id="808" class="Symbol">:</a> <a id="810" class="Symbol">∀</a> <a id="812" class="Symbol">{</a><a id="813" href="BasicTypes.html#813" class="Bound">ℓ</a><a id="814" class="Symbol">}</a> <a id="816" class="Symbol">→</a> <a id="818" href="Intro.html#1442" class="Function">Type</a> <a id="823" href="BasicTypes.html#813" class="Bound">ℓ</a> <a id="825" class="Symbol">→</a> <a id="827" href="Intro.html#1442" class="Function">Type</a> <a id="832" href="BasicTypes.html#813" class="Bound">ℓ</a>
<a id="834" href="BasicTypes.html#806" class="Function">¬</a> <a id="836" href="BasicTypes.html#836" class="Bound">A</a> <a id="838" class="Symbol">=</a> <a id="840" class="Symbol">(</a><a id="841" href="BasicTypes.html#836" class="Bound">A</a> <a id="843" class="Symbol">→</a> <a id="845" href="BasicTypes.html#397" class="Datatype">⊥</a> <a id="847" class="Symbol">{</a><a id="848" href="Agda.Primitive.html#611" class="Primitive">lzero</a><a id="853" class="Symbol">})</a>
</pre>

### Unit type

The *unit type* is defined as a record to get also the $η$-rule
definitionally. This type has no elimination rule.

<pre class="Agda">
<a id="1012" class="Keyword">record</a> <a id="⊤"></a><a id="1019" href="BasicTypes.html#1019" class="Record">⊤</a> <a id="1021" class="Symbol">{</a><a id="1022" href="BasicTypes.html#1022" class="Bound">ℓ</a><a id="1023" class="Symbol">}</a> <a id="1025" class="Symbol">:</a> <a id="1027" href="Intro.html#1442" class="Function">Type</a> <a id="1032" href="BasicTypes.html#1022" class="Bound">ℓ</a> <a id="1034" class="Keyword">where</a>
  <a id="1042" class="Keyword">constructor</a> <a id="⊤.★"></a><a id="1054" href="BasicTypes.html#1054" class="InductiveConstructor">★</a>

<a id="1057" class="Symbol">{-#</a> <a id="1061" class="Keyword">BUILTIN</a> <a id="1069" class="Pragma">UNIT</a> <a id="1074" href="BasicTypes.html#1019" class="Record">⊤</a> <a id="1076" class="Symbol">#-}</a>
</pre>

Synonyms for the Unit type:
<pre class="Agda">
<a id="Unit"></a><a id="1133" href="BasicTypes.html#1133" class="Function">Unit</a> <a id="1138" class="Symbol">=</a> <a id="1140" href="BasicTypes.html#1019" class="Record">⊤</a>
<a id="𝟙"></a><a id="1142" href="BasicTypes.html#1142" class="Function">𝟙</a>    <a id="1147" class="Symbol">=</a> <a id="1149" href="BasicTypes.html#1019" class="Record">⊤</a>
</pre>

Synonyms for the data constructor:
<pre class="Agda">
<a id="unit"></a><a id="1211" href="BasicTypes.html#1211" class="Function">unit</a> <a id="1216" class="Symbol">:</a> <a id="1218" class="Symbol">∀</a> <a id="1220" class="Symbol">{</a><a id="1221" href="BasicTypes.html#1221" class="Bound">ℓ</a><a id="1222" class="Symbol">}</a> <a id="1224" class="Symbol">→</a> <a id="1226" href="BasicTypes.html#1019" class="Record">⊤</a> <a id="1228" class="Symbol">{</a><a id="1229" href="BasicTypes.html#1221" class="Bound">ℓ</a><a id="1230" class="Symbol">}</a>
<a id="1232" href="BasicTypes.html#1211" class="Function">unit</a> <a id="1237" class="Symbol">=</a> <a id="1239" href="BasicTypes.html#1054" class="InductiveConstructor">★</a>
</pre>

### Σ-type

We define Sigma types as a particular case of records in [`Agda`.](https://tinyurl.com/agda-records)

<pre class="Agda">
<a id="1380" class="Keyword">infixr</a> <a id="1387" class="Number">60</a> <a id="1390" href="BasicTypes.html#1479" class="InductiveConstructor Operator">_,_</a>
<a id="1394" class="Keyword">record</a> <a id="Σ"></a><a id="1401" href="BasicTypes.html#1401" class="Record">Σ</a> <a id="1403" class="Symbol">{</a><a id="1404" href="BasicTypes.html#1404" class="Bound">ℓᵢ</a> <a id="1407" href="BasicTypes.html#1407" class="Bound">ℓⱼ</a><a id="1409" class="Symbol">}</a> <a id="1411" class="Symbol">(</a><a id="1412" href="BasicTypes.html#1412" class="Bound">A</a> <a id="1414" class="Symbol">:</a> <a id="1416" href="Intro.html#1442" class="Function">Type</a> <a id="1421" href="BasicTypes.html#1404" class="Bound">ℓᵢ</a><a id="1423" class="Symbol">)(</a><a id="1425" href="BasicTypes.html#1425" class="Bound">C</a> <a id="1427" class="Symbol">:</a> <a id="1429" href="BasicTypes.html#1412" class="Bound">A</a> <a id="1431" class="Symbol">→</a> <a id="1433" href="Intro.html#1442" class="Function">Type</a> <a id="1438" href="BasicTypes.html#1407" class="Bound">ℓⱼ</a><a id="1440" class="Symbol">)</a> <a id="1442" class="Symbol">:</a> <a id="1444" href="Intro.html#1442" class="Function">Type</a> <a id="1449" class="Symbol">(</a><a id="1450" href="BasicTypes.html#1404" class="Bound">ℓᵢ</a> <a id="1453" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="1455" href="BasicTypes.html#1407" class="Bound">ℓⱼ</a><a id="1457" class="Symbol">)</a> <a id="1459" class="Keyword">where</a>
  <a id="1467" class="Keyword">constructor</a> <a id="Σ._,_"></a><a id="1479" href="BasicTypes.html#1479" class="InductiveConstructor Operator">_,_</a>
  <a id="1485" class="Keyword">field</a>
    <a id="Σ.π₁"></a><a id="1495" href="BasicTypes.html#1495" class="Field">π₁</a> <a id="1498" class="Symbol">:</a> <a id="1500" href="BasicTypes.html#1412" class="Bound">A</a>
    <a id="Σ.π₂"></a><a id="1506" href="BasicTypes.html#1506" class="Field">π₂</a> <a id="1509" class="Symbol">:</a> <a id="1511" href="BasicTypes.html#1425" class="Bound">C</a> <a id="1513" href="BasicTypes.html#1495" class="Field">π₁</a>

<a id="1517" class="Keyword">open</a> <a id="1522" href="BasicTypes.html#1401" class="Module">Σ</a> <a id="1524" class="Keyword">public</a>
</pre>

Synonyms for its data constructors:

<pre class="Agda">
<a id="proj₁"></a><a id="1593" href="BasicTypes.html#1593" class="Function">proj₁</a> <a id="1599" class="Symbol">=</a> <a id="1601" href="BasicTypes.html#1495" class="Field">π₁</a>
<a id="proj₂"></a><a id="1604" href="BasicTypes.html#1604" class="Function">proj₂</a> <a id="1610" class="Symbol">=</a> <a id="1612" href="BasicTypes.html#1506" class="Field">π₂</a>

<a id="pr₁"></a><a id="1616" href="BasicTypes.html#1616" class="Function">pr₁</a>   <a id="1622" class="Symbol">=</a> <a id="1624" href="BasicTypes.html#1495" class="Field">π₁</a>
<a id="pr₂"></a><a id="1627" href="BasicTypes.html#1627" class="Function">pr₂</a>   <a id="1633" class="Symbol">=</a> <a id="1635" href="BasicTypes.html#1506" class="Field">π₂</a>

<a id="fst"></a><a id="1639" href="BasicTypes.html#1639" class="Function">fst</a>   <a id="1645" class="Symbol">=</a> <a id="1647" href="BasicTypes.html#1495" class="Field">π₁</a>
<a id="snd"></a><a id="1650" href="BasicTypes.html#1650" class="Function">snd</a>   <a id="1656" class="Symbol">=</a> <a id="1658" href="BasicTypes.html#1506" class="Field">π₂</a>
</pre>

### Π-types

Shorter notation for Π-types.

<pre class="Agda">
<a id="Π"></a><a id="1730" href="BasicTypes.html#1730" class="Function">Π</a>
  <a id="1734" class="Symbol">:</a> <a id="1736" class="Symbol">∀</a> <a id="1738" class="Symbol">{</a><a id="1739" href="BasicTypes.html#1739" class="Bound">ℓᵢ</a> <a id="1742" href="BasicTypes.html#1742" class="Bound">ℓⱼ</a><a id="1744" class="Symbol">}</a>
  <a id="1748" class="Symbol">→</a> <a id="1750" class="Symbol">(</a><a id="1751" href="BasicTypes.html#1751" class="Bound">A</a> <a id="1753" class="Symbol">:</a> <a id="1755" href="Intro.html#1442" class="Function">Type</a> <a id="1760" href="BasicTypes.html#1739" class="Bound">ℓᵢ</a><a id="1762" class="Symbol">)</a> <a id="1764" class="Symbol">(</a><a id="1765" href="BasicTypes.html#1765" class="Bound">P</a> <a id="1767" class="Symbol">:</a> <a id="1769" href="BasicTypes.html#1751" class="Bound">A</a> <a id="1771" class="Symbol">→</a> <a id="1773" href="Intro.html#1442" class="Function">Type</a> <a id="1778" href="BasicTypes.html#1742" class="Bound">ℓⱼ</a><a id="1780" class="Symbol">)</a>
  <a id="1784" class="Comment">--------------------------------</a>
  <a id="1819" class="Symbol">→</a> <a id="1821" href="Intro.html#1442" class="Function">Type</a> <a id="1826" class="Symbol">(</a><a id="1827" href="BasicTypes.html#1739" class="Bound">ℓᵢ</a> <a id="1830" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="1832" href="BasicTypes.html#1742" class="Bound">ℓⱼ</a><a id="1834" class="Symbol">)</a>

<a id="1837" href="BasicTypes.html#1730" class="Function">Π</a> <a id="1839" href="BasicTypes.html#1839" class="Bound">A</a> <a id="1841" href="BasicTypes.html#1841" class="Bound">P</a> <a id="1843" class="Symbol">=</a> <a id="1845" class="Symbol">(</a><a id="1846" href="BasicTypes.html#1846" class="Bound">x</a> <a id="1848" class="Symbol">:</a> <a id="1850" href="BasicTypes.html#1839" class="Bound">A</a><a id="1851" class="Symbol">)</a> <a id="1853" class="Symbol">→</a> <a id="1855" href="BasicTypes.html#1841" class="Bound">P</a> <a id="1857" href="BasicTypes.html#1846" class="Bound">x</a>
</pre>

### Product type

Product type as a particular case of the Sigma type.

<pre class="Agda">
<a id="_×_"></a><a id="1956" href="BasicTypes.html#1956" class="Function Operator">_×_</a>
  <a id="1962" class="Symbol">:</a> <a id="1964" class="Symbol">∀</a> <a id="1966" class="Symbol">{</a><a id="1967" href="BasicTypes.html#1967" class="Bound">ℓᵢ</a> <a id="1970" href="BasicTypes.html#1970" class="Bound">ℓⱼ</a><a id="1972" class="Symbol">}</a>
  <a id="1976" class="Symbol">→</a> <a id="1978" class="Symbol">(</a><a id="1979" href="BasicTypes.html#1979" class="Bound">A</a> <a id="1981" class="Symbol">:</a> <a id="1983" href="Intro.html#1442" class="Function">Type</a> <a id="1988" href="BasicTypes.html#1967" class="Bound">ℓᵢ</a><a id="1990" class="Symbol">)</a> <a id="1992" class="Symbol">(</a><a id="1993" href="BasicTypes.html#1993" class="Bound">B</a> <a id="1995" class="Symbol">:</a> <a id="1997" href="Intro.html#1442" class="Function">Type</a> <a id="2002" href="BasicTypes.html#1970" class="Bound">ℓⱼ</a><a id="2004" class="Symbol">)</a>
  <a id="2008" class="Comment">----------------------------</a>
  <a id="2039" class="Symbol">→</a> <a id="2041" href="Intro.html#1442" class="Function">Type</a> <a id="2046" class="Symbol">(</a><a id="2047" href="BasicTypes.html#1967" class="Bound">ℓᵢ</a> <a id="2050" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="2052" href="BasicTypes.html#1970" class="Bound">ℓⱼ</a><a id="2054" class="Symbol">)</a>

<a id="2057" href="BasicTypes.html#2057" class="Bound">A</a> <a id="2059" href="BasicTypes.html#1956" class="Function Operator">×</a> <a id="2061" href="BasicTypes.html#2061" class="Bound">B</a> <a id="2063" class="Symbol">=</a> <a id="2065" href="BasicTypes.html#1401" class="Record">Σ</a> <a id="2067" href="BasicTypes.html#2057" class="Bound">A</a> <a id="2069" class="Symbol">(λ</a> <a id="2072" href="BasicTypes.html#2072" class="Bound">_</a> <a id="2074" class="Symbol">→</a> <a id="2076" href="BasicTypes.html#2061" class="Bound">B</a><a id="2077" class="Symbol">)</a>
</pre>

### Coproduct type

Sum types as inductive types

<pre class="Agda">
<a id="2154" class="Keyword">infixr</a> <a id="2161" class="Number">80</a> <a id="2164" href="BasicTypes.html#2173" class="Datatype Operator">_+_</a>
<a id="2168" class="Keyword">data</a> <a id="_+_"></a><a id="2173" href="BasicTypes.html#2173" class="Datatype Operator">_+_</a> <a id="2177" class="Symbol">{</a><a id="2178" href="BasicTypes.html#2178" class="Bound">ℓᵢ</a> <a id="2181" href="BasicTypes.html#2181" class="Bound">ℓⱼ</a><a id="2183" class="Symbol">}</a> <a id="2185" class="Symbol">(</a><a id="2186" href="BasicTypes.html#2186" class="Bound">A</a> <a id="2188" class="Symbol">:</a> <a id="2190" href="Intro.html#1442" class="Function">Type</a> <a id="2195" href="BasicTypes.html#2178" class="Bound">ℓᵢ</a><a id="2197" class="Symbol">)</a> <a id="2199" class="Symbol">(</a><a id="2200" href="BasicTypes.html#2200" class="Bound">B</a> <a id="2202" class="Symbol">:</a> <a id="2204" href="Intro.html#1442" class="Function">Type</a> <a id="2209" href="BasicTypes.html#2181" class="Bound">ℓⱼ</a><a id="2211" class="Symbol">)</a> <a id="2213" class="Symbol">:</a> <a id="2215" href="Intro.html#1442" class="Function">Type</a> <a id="2220" class="Symbol">(</a><a id="2221" href="BasicTypes.html#2178" class="Bound">ℓᵢ</a> <a id="2224" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="2226" href="BasicTypes.html#2181" class="Bound">ℓⱼ</a><a id="2228" class="Symbol">)</a> <a id="2230" class="Keyword">where</a>
  <a id="_+_.inl"></a><a id="2238" href="BasicTypes.html#2238" class="InductiveConstructor">inl</a> <a id="2242" class="Symbol">:</a> <a id="2244" href="BasicTypes.html#2186" class="Bound">A</a> <a id="2246" class="Symbol">→</a> <a id="2248" href="BasicTypes.html#2186" class="Bound">A</a> <a id="2250" href="BasicTypes.html#2173" class="Datatype Operator">+</a> <a id="2252" href="BasicTypes.html#2200" class="Bound">B</a>
  <a id="_+_.inr"></a><a id="2256" href="BasicTypes.html#2256" class="InductiveConstructor">inr</a> <a id="2260" class="Symbol">:</a> <a id="2262" href="BasicTypes.html#2200" class="Bound">B</a> <a id="2264" class="Symbol">→</a> <a id="2266" href="BasicTypes.html#2186" class="Bound">A</a> <a id="2268" href="BasicTypes.html#2173" class="Datatype Operator">+</a> <a id="2270" href="BasicTypes.html#2200" class="Bound">B</a>
</pre>

### Implication type

<pre class="Agda">
<a id="2319" class="Comment">-- Implication.</a>
<a id="2335" class="Keyword">data</a> <a id="_⇒_"></a><a id="2340" href="BasicTypes.html#2340" class="Datatype Operator">_⇒_</a> <a id="2344" class="Symbol">{</a><a id="2345" href="BasicTypes.html#2345" class="Bound">ℓ</a><a id="2346" class="Symbol">}(</a><a id="2348" href="BasicTypes.html#2348" class="Bound">A</a> <a id="2350" href="BasicTypes.html#2350" class="Bound">B</a> <a id="2352" class="Symbol">:</a> <a id="2354" href="Intro.html#1442" class="Function">Type</a> <a id="2359" href="BasicTypes.html#2345" class="Bound">ℓ</a><a id="2360" class="Symbol">)</a> <a id="2362" class="Symbol">:</a> <a id="2364" href="Intro.html#1442" class="Function">Type</a> <a id="2369" href="BasicTypes.html#2345" class="Bound">ℓ</a> <a id="2371" class="Keyword">where</a>
  <a id="_⇒_.fun"></a><a id="2379" href="BasicTypes.html#2379" class="InductiveConstructor">fun</a> <a id="2383" class="Symbol">:</a> <a id="2385" class="Symbol">(</a><a id="2386" href="BasicTypes.html#2348" class="Bound">A</a> <a id="2388" class="Symbol">→</a> <a id="2390" href="BasicTypes.html#2350" class="Bound">B</a><a id="2391" class="Symbol">)</a> <a id="2393" class="Symbol">→</a> <a id="2395" href="BasicTypes.html#2348" class="Bound">A</a> <a id="2397" href="BasicTypes.html#2340" class="Datatype Operator">⇒</a> <a id="2399" href="BasicTypes.html#2350" class="Bound">B</a>
</pre>

### Biconditional type

<pre class="Agda">
<a id="2450" class="Comment">-- Biconditional.</a>
<a id="_⇔_"></a><a id="2468" href="BasicTypes.html#2468" class="Function Operator">_⇔_</a> <a id="2472" class="Symbol">:</a> <a id="2474" class="Symbol">∀</a> <a id="2476" class="Symbol">{</a><a id="2477" href="BasicTypes.html#2477" class="Bound">ℓ₁</a> <a id="2480" href="BasicTypes.html#2480" class="Bound">ℓ₂</a><a id="2482" class="Symbol">}</a> <a id="2484" class="Symbol">→</a> <a id="2486" href="Intro.html#1442" class="Function">Type</a> <a id="2491" href="BasicTypes.html#2477" class="Bound">ℓ₁</a> <a id="2494" class="Symbol">→</a> <a id="2496" href="Intro.html#1442" class="Function">Type</a> <a id="2501" href="BasicTypes.html#2480" class="Bound">ℓ₂</a> <a id="2504" class="Symbol">→</a> <a id="2506" href="Intro.html#1442" class="Function">Type</a> <a id="2511" class="Symbol">(</a><a id="2512" href="BasicTypes.html#2477" class="Bound">ℓ₁</a> <a id="2515" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="2517" href="BasicTypes.html#2480" class="Bound">ℓ₂</a><a id="2519" class="Symbol">)</a>
<a id="2521" href="BasicTypes.html#2521" class="Bound">A</a> <a id="2523" href="BasicTypes.html#2468" class="Function Operator">⇔</a> <a id="2525" href="BasicTypes.html#2525" class="Bound">B</a> <a id="2527" class="Symbol">=</a> <a id="2529" class="Symbol">(</a><a id="2530" href="BasicTypes.html#2521" class="Bound">A</a> <a id="2532" class="Symbol">→</a> <a id="2534" href="BasicTypes.html#2525" class="Bound">B</a><a id="2535" class="Symbol">)</a> <a id="2537" href="BasicTypes.html#1956" class="Function Operator">×</a> <a id="2539" class="Symbol">(</a><a id="2540" href="BasicTypes.html#2525" class="Bound">B</a> <a id="2542" class="Symbol">→</a> <a id="2544" href="BasicTypes.html#2521" class="Bound">A</a><a id="2545" class="Symbol">)</a>
</pre>

### Boolean type

Boolean type, two constants true and false

<pre class="Agda">
<a id="2634" class="Keyword">data</a> <a id="Bool"></a><a id="2639" href="BasicTypes.html#2639" class="Datatype">Bool</a> <a id="2644" class="Symbol">:</a> <a id="2646" href="Intro.html#1516" class="Function">Type₀</a> <a id="2652" class="Keyword">where</a>
  <a id="Bool.true"></a><a id="2660" href="BasicTypes.html#2660" class="InductiveConstructor">true</a>  <a id="2666" class="Symbol">:</a> <a id="2668" href="BasicTypes.html#2639" class="Datatype">Bool</a>
  <a id="Bool.false"></a><a id="2675" href="BasicTypes.html#2675" class="InductiveConstructor">false</a> <a id="2681" class="Symbol">:</a> <a id="2683" href="BasicTypes.html#2639" class="Datatype">Bool</a>
</pre>

Synonyms:
<pre class="Agda">
<a id="𝟚"></a><a id="2723" href="BasicTypes.html#2723" class="Function">𝟚</a>  <a id="2726" class="Symbol">=</a> <a id="2728" href="BasicTypes.html#2639" class="Datatype">Bool</a>
<a id="𝟘₂"></a><a id="2733" href="BasicTypes.html#2733" class="Function">𝟘₂</a> <a id="2736" class="Symbol">=</a> <a id="2738" href="BasicTypes.html#2675" class="InductiveConstructor">false</a>
<a id="𝟙₂"></a><a id="2744" href="BasicTypes.html#2744" class="Function">𝟙₂</a> <a id="2747" class="Symbol">=</a> <a id="2749" href="BasicTypes.html#2660" class="InductiveConstructor">true</a>
</pre>

We find many times writing the negation function, then let's
make it available:

<pre class="Agda">
<a id="neg¬"></a><a id="2860" href="BasicTypes.html#2860" class="Function">neg¬</a> <a id="2865" class="Symbol">:</a> <a id="2867" href="BasicTypes.html#2639" class="Datatype">Bool</a> <a id="2872" class="Symbol">→</a> <a id="2874" href="BasicTypes.html#2639" class="Datatype">Bool</a>
<a id="2879" href="BasicTypes.html#2860" class="Function">neg¬</a> <a id="2884" href="BasicTypes.html#2660" class="InductiveConstructor">true</a>  <a id="2890" class="Symbol">=</a> <a id="2892" href="BasicTypes.html#2675" class="InductiveConstructor">false</a>
<a id="2898" href="BasicTypes.html#2860" class="Function">neg¬</a> <a id="2903" href="BasicTypes.html#2675" class="InductiveConstructor">false</a> <a id="2909" class="Symbol">=</a> <a id="2911" href="BasicTypes.html#2660" class="InductiveConstructor">true</a>
</pre>

*Booleans can be also defined using the Coproduct.*

### Natural numbers type

Natural numbers are the initial algebra for a constant and a
successor function. The `BUILTIN` declaration allows us to use
natural numbers in Arabic notation.

<pre class="Agda">
<a id="3181" class="Keyword">data</a> <a id="ℕ"></a><a id="3186" href="BasicTypes.html#3186" class="Datatype">ℕ</a> <a id="3188" class="Symbol">:</a> <a id="3190" href="Intro.html#1516" class="Function">Type₀</a> <a id="3196" class="Keyword">where</a>
  <a id="ℕ.zero"></a><a id="3204" href="BasicTypes.html#3204" class="InductiveConstructor">zero</a> <a id="3209" class="Symbol">:</a> <a id="3211" href="BasicTypes.html#3186" class="Datatype">ℕ</a>
  <a id="ℕ.succ"></a><a id="3215" href="BasicTypes.html#3215" class="InductiveConstructor">succ</a> <a id="3220" class="Symbol">:</a> <a id="3222" href="BasicTypes.html#3186" class="Datatype">ℕ</a> <a id="3224" class="Symbol">→</a> <a id="3226" href="BasicTypes.html#3186" class="Datatype">ℕ</a>

<a id="3229" class="Symbol">{-#</a> <a id="3233" class="Keyword">BUILTIN</a> <a id="3241" class="Pragma">NATURAL</a> <a id="3249" href="BasicTypes.html#3186" class="Datatype">ℕ</a> <a id="3251" class="Symbol">#-}</a>

<a id="3256" class="Comment">-- synonyms for natural numbers</a>
<a id="Nat"></a><a id="3288" href="BasicTypes.html#3288" class="Function">Nat</a> <a id="3292" class="Symbol">=</a> <a id="3294" href="BasicTypes.html#3186" class="Datatype">ℕ</a>
</pre>
