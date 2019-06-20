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

# Type theory

## Types

### Empty type

A datatype without *constructors* is the *empty type*. This represents  the *falsehood*.

<pre class="Agda">
<a id="417" class="Keyword">data</a>
  <a id="⊥"></a><a id="424" href="BasicTypes.html#424" class="Datatype">⊥</a> <a id="426" class="Symbol">{</a><a id="427" href="BasicTypes.html#427" class="Bound">ℓᵢ</a><a id="429" class="Symbol">}</a>
    <a id="435" class="Symbol">:</a> <a id="437" href="Intro.html#1621" class="Function">Type</a> <a id="442" href="BasicTypes.html#427" class="Bound">ℓᵢ</a>
  <a id="447" class="Keyword">where</a>
  <a id="455" class="Comment">-- Nothing</a>
</pre>

Synonyms of ⊥:

<pre class="Agda">
<a id="Empty"></a><a id="507" href="BasicTypes.html#507" class="Function">Empty</a> <a id="513" class="Symbol">=</a> <a id="515" href="BasicTypes.html#424" class="Datatype">⊥</a>
<a id="𝟘"></a><a id="517" href="BasicTypes.html#517" class="Function">𝟘</a>     <a id="523" class="Symbol">=</a> <a id="525" href="BasicTypes.html#424" class="Datatype">⊥</a>
</pre>

Its *eliminator* principle also called *Ex falso quodlibet*:

<pre class="Agda">
<a id="exfalso"></a><a id="614" href="BasicTypes.html#614" class="Function">exfalso</a>
  <a id="624" class="Symbol">:</a> <a id="626" class="Symbol">∀</a> <a id="628" class="Symbol">{</a><a id="629" href="BasicTypes.html#629" class="Bound">A</a> <a id="631" class="Symbol">:</a> <a id="633" href="Intro.html#1621" class="Function">Type</a> <a id="638" href="Intro.html#2061" class="Generalizable">ℓ</a><a id="639" class="Symbol">}</a>
  <a id="643" class="Symbol">→</a> <a id="645" href="BasicTypes.html#424" class="Datatype">⊥</a> <a id="647" class="Symbol">{</a><a id="648" href="Intro.html#2063" class="Generalizable">ℓᵢ</a><a id="650" class="Symbol">}</a>
  <a id="654" class="Comment">--------</a>
  <a id="665" class="Symbol">→</a> <a id="667" href="BasicTypes.html#629" class="Bound">A</a>

<a id="670" href="BasicTypes.html#614" class="Function">exfalso</a> <a id="678" class="Symbol">()</a>
</pre>

Synonyms of `exfalso` rule:

<pre class="Agda">
<a id="Empty-elim"></a><a id="735" href="BasicTypes.html#735" class="Function">Empty-elim</a> <a id="746" class="Symbol">=</a> <a id="748" href="BasicTypes.html#614" class="Function">exfalso</a>
<a id="⊥-elim"></a><a id="756" href="BasicTypes.html#756" class="Function">⊥-elim</a>     <a id="767" class="Symbol">=</a> <a id="769" href="BasicTypes.html#614" class="Function">exfalso</a>
<a id="𝟘-elim"></a><a id="777" href="BasicTypes.html#777" class="Function">𝟘-elim</a>     <a id="788" class="Symbol">=</a> <a id="790" href="BasicTypes.html#614" class="Function">exfalso</a>
</pre>

The negation function:
<pre class="Agda">
<a id="¬"></a><a id="846" href="BasicTypes.html#846" class="Function">¬</a> <a id="848" class="Symbol">:</a> <a id="850" href="Intro.html#1621" class="Function">Type</a> <a id="855" href="Intro.html#2061" class="Generalizable">ℓ</a> <a id="857" class="Symbol">→</a> <a id="859" href="Intro.html#1621" class="Function">Type</a> <a id="864" href="Intro.html#2061" class="Generalizable">ℓ</a>
<a id="866" href="BasicTypes.html#846" class="Function">¬</a> <a id="868" href="BasicTypes.html#868" class="Bound">A</a> <a id="870" class="Symbol">=</a> <a id="872" class="Symbol">(</a><a id="873" href="BasicTypes.html#868" class="Bound">A</a> <a id="875" class="Symbol">→</a> <a id="877" href="BasicTypes.html#424" class="Datatype">⊥</a> <a id="879" class="Symbol">{</a><a id="880" href="Agda.Primitive.html#611" class="Primitive">lzero</a><a id="885" class="Symbol">})</a>
</pre>

### Unit type

The *unit type* is defined as a record to get also the $η$-rule
definitionally. This type has no elimination rule.

<pre class="Agda">
<a id="1044" class="Keyword">record</a> <a id="⊤"></a><a id="1051" href="BasicTypes.html#1051" class="Record">⊤</a> <a id="1053" class="Symbol">:</a> <a id="1055" href="Intro.html#1621" class="Function">Type</a> <a id="1060" href="Intro.html#2061" class="Generalizable">ℓ</a> <a id="1062" class="Keyword">where</a>
  <a id="1070" class="Keyword">constructor</a> <a id="⊤.★"></a><a id="1082" href="BasicTypes.html#1082" class="InductiveConstructor">★</a>

<a id="1085" class="Symbol">{-#</a> <a id="1089" class="Keyword">BUILTIN</a> <a id="1097" class="Pragma">UNIT</a> <a id="1102" href="BasicTypes.html#1051" class="Record">⊤</a> <a id="1104" class="Symbol">#-}</a>
</pre>

Synonyms for the Unit type:
<pre class="Agda">
<a id="Unit"></a><a id="1161" href="BasicTypes.html#1161" class="Function">Unit</a> <a id="1166" class="Symbol">=</a> <a id="1168" href="BasicTypes.html#1051" class="Record">⊤</a>
<a id="𝟙"></a><a id="1170" href="BasicTypes.html#1170" class="Function">𝟙</a>    <a id="1175" class="Symbol">=</a> <a id="1177" href="BasicTypes.html#1051" class="Record">⊤</a>
</pre>

Synonyms for the data constructor:
<pre class="Agda">
<a id="1239" class="Keyword">pattern</a> <a id="unit"></a><a id="1247" href="BasicTypes.html#1247" class="InductiveConstructor">unit</a> <a id="1252" class="Symbol">=</a> <a id="1254" href="BasicTypes.html#1082" class="InductiveConstructor">★</a>
<a id="1256" class="Keyword">pattern</a> <a id="∗"></a><a id="1264" href="BasicTypes.html#1264" class="InductiveConstructor">∗</a>    <a id="1269" class="Symbol">=</a> <a id="1271" href="BasicTypes.html#1082" class="InductiveConstructor">★</a>
</pre>

### ∑-types

<pre class="Agda">
<a id="1311" class="Keyword">infixr</a> <a id="1318" class="Number">60</a> <a id="1321" href="BasicTypes.html#1409" class="InductiveConstructor Operator">_,_</a>
<a id="1325" class="Keyword">record</a>
  <a id="∑"></a><a id="1334" href="BasicTypes.html#1334" class="Record">∑</a> <a id="1336" class="Symbol">(</a><a id="1337" href="BasicTypes.html#1337" class="Bound">A</a> <a id="1339" class="Symbol">:</a> <a id="1341" href="Intro.html#1621" class="Function">Type</a> <a id="1346" href="Intro.html#2063" class="Generalizable">ℓᵢ</a><a id="1348" class="Symbol">)(</a><a id="1350" href="BasicTypes.html#1350" class="Bound">B</a> <a id="1352" class="Symbol">:</a> <a id="1354" href="BasicTypes.html#1337" class="Bound">A</a> <a id="1356" class="Symbol">→</a> <a id="1358" href="Intro.html#1621" class="Function">Type</a> <a id="1363" href="Intro.html#2066" class="Generalizable">ℓⱼ</a><a id="1365" class="Symbol">)</a>
   <a id="1370" class="Symbol">:</a> <a id="1372" href="Intro.html#1621" class="Function">Type</a> <a id="1377" class="Symbol">(</a><a id="1378" href="BasicTypes.html#1346" class="Bound">ℓᵢ</a> <a id="1381" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="1383" href="BasicTypes.html#1363" class="Bound">ℓⱼ</a><a id="1385" class="Symbol">)</a>
  <a id="1389" class="Keyword">where</a>
  <a id="1397" class="Keyword">constructor</a> <a id="∑._,_"></a><a id="1409" href="BasicTypes.html#1409" class="InductiveConstructor Operator">_,_</a>
  <a id="1415" class="Keyword">field</a>
    <a id="∑.π₁"></a><a id="1425" href="BasicTypes.html#1425" class="Field">π₁</a> <a id="1428" class="Symbol">:</a> <a id="1430" href="BasicTypes.html#1337" class="Bound">A</a>
    <a id="∑.π₂"></a><a id="1436" href="BasicTypes.html#1436" class="Field">π₂</a> <a id="1439" class="Symbol">:</a> <a id="1441" href="BasicTypes.html#1350" class="Bound">B</a> <a id="1443" href="BasicTypes.html#1425" class="Field">π₁</a>

<a id="1447" class="Keyword">open</a> <a id="1452" href="BasicTypes.html#1334" class="Module">∑</a> <a id="1454" class="Keyword">public</a>
</pre>

Symbol synonym:

<pre class="Agda">
<a id="Σ"></a><a id="1503" href="BasicTypes.html#1503" class="Function">Σ</a> <a id="1505" class="Symbol">=</a> <a id="1507" href="BasicTypes.html#1334" class="Record">∑</a>  <a id="1510" class="Comment">-- \Sigma and \sum</a>
</pre>

Constructor synonyms:

<pre class="Agda">
<a id="proj₁"></a><a id="1577" href="BasicTypes.html#1577" class="Function">proj₁</a> <a id="1583" class="Symbol">=</a> <a id="1585" href="BasicTypes.html#1425" class="Field">π₁</a>
<a id="proj₂"></a><a id="1588" href="BasicTypes.html#1588" class="Function">proj₂</a> <a id="1594" class="Symbol">=</a> <a id="1596" href="BasicTypes.html#1436" class="Field">π₂</a>

<a id="pr₁"></a><a id="1600" href="BasicTypes.html#1600" class="Function">pr₁</a>   <a id="1606" class="Symbol">=</a> <a id="1608" href="BasicTypes.html#1425" class="Field">π₁</a>
<a id="pr₂"></a><a id="1611" href="BasicTypes.html#1611" class="Function">pr₂</a>   <a id="1617" class="Symbol">=</a> <a id="1619" href="BasicTypes.html#1436" class="Field">π₂</a>

<a id="fst"></a><a id="1623" href="BasicTypes.html#1623" class="Function">fst</a>   <a id="1629" class="Symbol">=</a> <a id="1631" href="BasicTypes.html#1425" class="Field">π₁</a>
<a id="snd"></a><a id="1634" href="BasicTypes.html#1634" class="Function">snd</a>   <a id="1640" class="Symbol">=</a> <a id="1642" href="BasicTypes.html#1436" class="Field">π₂</a>
</pre>

### Π-types

<pre class="Agda">
<a id="Π"></a><a id="1683" href="BasicTypes.html#1683" class="Function">Π</a>
  <a id="1687" class="Symbol">:</a> <a id="1689" class="Symbol">(</a><a id="1690" href="BasicTypes.html#1690" class="Bound">A</a> <a id="1692" class="Symbol">:</a> <a id="1694" href="Intro.html#1621" class="Function">Type</a> <a id="1699" href="Intro.html#2063" class="Generalizable">ℓᵢ</a><a id="1701" class="Symbol">)</a> <a id="1703" class="Symbol">(</a><a id="1704" href="BasicTypes.html#1704" class="Bound">P</a> <a id="1706" class="Symbol">:</a> <a id="1708" href="BasicTypes.html#1690" class="Bound">A</a> <a id="1710" class="Symbol">→</a> <a id="1712" href="Intro.html#1621" class="Function">Type</a> <a id="1717" href="Intro.html#2066" class="Generalizable">ℓⱼ</a><a id="1719" class="Symbol">)</a>
  <a id="1723" class="Comment">--------------------------------</a>
  <a id="1758" class="Symbol">→</a> <a id="1760" href="Intro.html#1621" class="Function">Type</a> <a id="1765" class="Symbol">(</a><a id="1766" href="Intro.html#2063" class="Generalizable">ℓᵢ</a> <a id="1769" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="1771" href="Intro.html#2066" class="Generalizable">ℓⱼ</a><a id="1773" class="Symbol">)</a>

<a id="1776" href="BasicTypes.html#1683" class="Function">Π</a> <a id="1778" href="BasicTypes.html#1778" class="Bound">A</a> <a id="1780" href="BasicTypes.html#1780" class="Bound">P</a> <a id="1782" class="Symbol">=</a> <a id="1784" class="Symbol">(</a><a id="1785" href="BasicTypes.html#1785" class="Bound">x</a> <a id="1787" class="Symbol">:</a> <a id="1789" href="BasicTypes.html#1778" class="Bound">A</a><a id="1790" class="Symbol">)</a> <a id="1792" class="Symbol">→</a> <a id="1794" href="BasicTypes.html#1780" class="Bound">P</a> <a id="1796" href="BasicTypes.html#1785" class="Bound">x</a>
</pre>

Synonyms
<pre class="Agda">
<a id="∏"></a><a id="1832" href="BasicTypes.html#1832" class="Function">∏</a> <a id="1834" class="Symbol">=</a> <a id="1836" href="BasicTypes.html#1683" class="Function">Π</a>   <a id="1840" class="Comment">-- \prod vs \Pi</a>
</pre>

### Products

Product type as a particular case of the Sigma type.

<pre class="Agda">
<a id="1949" class="Keyword">infixl</a>  <a id="1957" class="Number">39</a> <a id="1960" href="BasicTypes.html#1965" class="Function Operator">_×_</a>

<a id="_×_"></a><a id="1965" href="BasicTypes.html#1965" class="Function Operator">_×_</a>
  <a id="1971" class="Symbol">:</a> <a id="1973" class="Symbol">(</a><a id="1974" href="BasicTypes.html#1974" class="Bound">A</a> <a id="1976" class="Symbol">:</a> <a id="1978" href="Intro.html#1621" class="Function">Type</a> <a id="1983" href="Intro.html#2063" class="Generalizable">ℓᵢ</a><a id="1985" class="Symbol">)</a> <a id="1987" class="Symbol">(</a><a id="1988" href="BasicTypes.html#1988" class="Bound">B</a> <a id="1990" class="Symbol">:</a> <a id="1992" href="Intro.html#1621" class="Function">Type</a> <a id="1997" href="Intro.html#2066" class="Generalizable">ℓⱼ</a><a id="1999" class="Symbol">)</a>
  <a id="2003" class="Comment">----------------------------</a>
  <a id="2034" class="Symbol">→</a> <a id="2036" href="Intro.html#1621" class="Function">Type</a> <a id="2041" class="Symbol">(</a><a id="2042" href="Intro.html#2063" class="Generalizable">ℓᵢ</a> <a id="2045" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="2047" href="Intro.html#2066" class="Generalizable">ℓⱼ</a><a id="2049" class="Symbol">)</a>

<a id="2052" href="BasicTypes.html#2052" class="Bound">A</a> <a id="2054" href="BasicTypes.html#1965" class="Function Operator">×</a> <a id="2056" href="BasicTypes.html#2056" class="Bound">B</a> <a id="2058" class="Symbol">=</a> <a id="2060" href="BasicTypes.html#1334" class="Record">∑</a> <a id="2062" href="BasicTypes.html#2052" class="Bound">A</a> <a id="2064" class="Symbol">(λ</a> <a id="2067" href="BasicTypes.html#2067" class="Bound">_</a> <a id="2069" class="Symbol">→</a> <a id="2071" href="BasicTypes.html#2056" class="Bound">B</a><a id="2072" class="Symbol">)</a>
</pre>

### Coproducts

Sum types as inductive types

<pre class="Agda">
<a id="2145" class="Keyword">infixr</a> <a id="2152" class="Number">31</a> <a id="2155" href="BasicTypes.html#2167" class="Datatype Operator">_+_</a>

<a id="2160" class="Keyword">data</a>
  <a id="_+_"></a><a id="2167" href="BasicTypes.html#2167" class="Datatype Operator">_+_</a> <a id="2171" class="Symbol">(</a><a id="2172" href="BasicTypes.html#2172" class="Bound">A</a> <a id="2174" class="Symbol">:</a> <a id="2176" href="Intro.html#1621" class="Function">Type</a> <a id="2181" href="Intro.html#2063" class="Generalizable">ℓᵢ</a><a id="2183" class="Symbol">)</a> <a id="2185" class="Symbol">(</a><a id="2186" href="BasicTypes.html#2186" class="Bound">B</a> <a id="2188" class="Symbol">:</a> <a id="2190" href="Intro.html#1621" class="Function">Type</a> <a id="2195" href="Intro.html#2066" class="Generalizable">ℓⱼ</a><a id="2197" class="Symbol">)</a>
    <a id="2203" class="Symbol">:</a> <a id="2205" href="Intro.html#1621" class="Function">Type</a> <a id="2210" class="Symbol">(</a><a id="2211" href="BasicTypes.html#2181" class="Bound">ℓᵢ</a> <a id="2214" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="2216" href="BasicTypes.html#2195" class="Bound">ℓⱼ</a><a id="2218" class="Symbol">)</a>
  <a id="2222" class="Keyword">where</a>
  <a id="_+_.inl"></a><a id="2230" href="BasicTypes.html#2230" class="InductiveConstructor">inl</a> <a id="2234" class="Symbol">:</a> <a id="2236" href="BasicTypes.html#2172" class="Bound">A</a> <a id="2238" class="Symbol">→</a> <a id="2240" href="BasicTypes.html#2172" class="Bound">A</a> <a id="2242" href="BasicTypes.html#2167" class="Datatype Operator">+</a> <a id="2244" href="BasicTypes.html#2186" class="Bound">B</a>
  <a id="_+_.inr"></a><a id="2248" href="BasicTypes.html#2248" class="InductiveConstructor">inr</a> <a id="2252" class="Symbol">:</a> <a id="2254" href="BasicTypes.html#2186" class="Bound">B</a> <a id="2256" class="Symbol">→</a> <a id="2258" href="BasicTypes.html#2172" class="Bound">A</a> <a id="2260" href="BasicTypes.html#2167" class="Datatype Operator">+</a> <a id="2262" href="BasicTypes.html#2186" class="Bound">B</a>
</pre>

Constructors synonyms:

<pre class="Agda">
<a id="2313" class="Keyword">pattern</a> <a id="left"></a><a id="2321" href="BasicTypes.html#2321" class="InductiveConstructor">left</a>  <a id="2327" class="Symbol">=</a> <a id="2329" href="BasicTypes.html#2230" class="InductiveConstructor">inl</a>
<a id="2333" class="Keyword">pattern</a> <a id="right"></a><a id="2341" href="BasicTypes.html#2341" class="InductiveConstructor">right</a> <a id="2347" class="Symbol">=</a> <a id="2349" href="BasicTypes.html#2248" class="InductiveConstructor">inr</a>
</pre>

The elimination principle:

<pre class="Agda">
<a id="+-elim"></a><a id="2406" href="BasicTypes.html#2406" class="Function">+-elim</a>
  <a id="2415" class="Symbol">:</a> <a id="2417" class="Symbol">{</a><a id="2418" href="BasicTypes.html#2418" class="Bound">A</a> <a id="2420" class="Symbol">:</a> <a id="2422" href="Intro.html#1621" class="Function">Type</a> <a id="2427" href="Intro.html#2063" class="Generalizable">ℓᵢ</a><a id="2429" class="Symbol">}{</a><a id="2431" href="BasicTypes.html#2431" class="Bound">B</a> <a id="2433" class="Symbol">:</a> <a id="2435" href="Intro.html#1621" class="Function">Type</a> <a id="2440" href="Intro.html#2066" class="Generalizable">ℓⱼ</a><a id="2442" class="Symbol">}{</a><a id="2444" href="BasicTypes.html#2444" class="Bound">C</a> <a id="2446" class="Symbol">:</a> <a id="2448" href="Intro.html#1621" class="Function">Type</a> <a id="2453" href="Intro.html#2069" class="Generalizable">ℓₖ</a><a id="2455" class="Symbol">}</a>
  <a id="2459" class="Symbol">→</a> <a id="2461" class="Symbol">(</a><a id="2462" href="BasicTypes.html#2418" class="Bound">A</a> <a id="2464" class="Symbol">→</a> <a id="2466" href="BasicTypes.html#2444" class="Bound">C</a><a id="2467" class="Symbol">)</a> <a id="2469" class="Symbol">→</a> <a id="2471" class="Symbol">(</a><a id="2472" href="BasicTypes.html#2431" class="Bound">B</a> <a id="2474" class="Symbol">→</a> <a id="2476" href="BasicTypes.html#2444" class="Bound">C</a><a id="2477" class="Symbol">)</a>
  <a id="2481" class="Comment">-------------------</a>
  <a id="2503" class="Symbol">→</a> <a id="2505" class="Symbol">(</a><a id="2506" href="BasicTypes.html#2418" class="Bound">A</a> <a id="2508" href="BasicTypes.html#2167" class="Datatype Operator">+</a> <a id="2510" href="BasicTypes.html#2431" class="Bound">B</a><a id="2511" class="Symbol">)</a> <a id="2513" class="Symbol">→</a> <a id="2515" href="BasicTypes.html#2444" class="Bound">C</a>
<a id="2517" href="BasicTypes.html#2406" class="Function">+-elim</a> <a id="2524" href="BasicTypes.html#2524" class="Bound">A→C</a> <a id="2528" href="BasicTypes.html#2528" class="Bound">B→C</a> <a id="2532" class="Symbol">(</a><a id="2533" href="BasicTypes.html#2230" class="InductiveConstructor">inl</a> <a id="2537" href="BasicTypes.html#2537" class="Bound">x</a><a id="2538" class="Symbol">)</a> <a id="2540" class="Symbol">=</a> <a id="2542" href="BasicTypes.html#2524" class="Bound">A→C</a> <a id="2546" href="BasicTypes.html#2537" class="Bound">x</a>
<a id="2548" href="BasicTypes.html#2406" class="Function">+-elim</a> <a id="2555" href="BasicTypes.html#2555" class="Bound">A→C</a> <a id="2559" href="BasicTypes.html#2559" class="Bound">B→C</a> <a id="2563" class="Symbol">(</a><a id="2564" href="BasicTypes.html#2248" class="InductiveConstructor">inr</a> <a id="2568" href="BasicTypes.html#2568" class="Bound">x</a><a id="2569" class="Symbol">)</a> <a id="2571" class="Symbol">=</a> <a id="2573" href="BasicTypes.html#2559" class="Bound">B→C</a> <a id="2577" href="BasicTypes.html#2568" class="Bound">x</a>

</pre>

Synonyms:

<pre class="Agda">
<a id="cases"></a><a id="2616" href="BasicTypes.html#2616" class="Function">cases</a> <a id="2622" class="Symbol">=</a> <a id="2624" href="BasicTypes.html#2406" class="Function">+-elim</a>

<a id="2632" class="Keyword">syntax</a> <a id="2639" href="BasicTypes.html#2616" class="Function">cases</a> <a id="2645" class="Bound">f</a> <a id="2647" class="Bound">g</a> <a id="2649" class="Symbol">=</a> <a id="2651" class="Function">⟨</a> <a id="2653" class="Bound">f</a> <a id="2655" class="Function">+</a> <a id="2657" class="Bound">g</a> <a id="2659" class="Function">⟩</a>
</pre>

### Implications

<pre class="Agda">
<a id="2704" class="Comment">-- Implication.</a>
<a id="2720" class="Keyword">data</a>
  <a id="_⇒_"></a><a id="2727" href="BasicTypes.html#2727" class="Datatype Operator">_⇒_</a> <a id="2731" class="Symbol">(</a><a id="2732" href="BasicTypes.html#2732" class="Bound">A</a> <a id="2734" href="BasicTypes.html#2734" class="Bound">B</a> <a id="2736" class="Symbol">:</a> <a id="2738" href="Intro.html#1621" class="Function">Type</a> <a id="2743" href="Intro.html#2061" class="Generalizable">ℓ</a><a id="2744" class="Symbol">)</a>
    <a id="2750" class="Symbol">:</a> <a id="2752" href="Intro.html#1621" class="Function">Type</a> <a id="2757" href="BasicTypes.html#2743" class="Bound">ℓ</a>
  <a id="2761" class="Keyword">where</a>
  <a id="_⇒_.fun"></a><a id="2769" href="BasicTypes.html#2769" class="InductiveConstructor">fun</a> <a id="2773" class="Symbol">:</a> <a id="2775" class="Symbol">(</a><a id="2776" href="BasicTypes.html#2732" class="Bound">A</a> <a id="2778" class="Symbol">→</a> <a id="2780" href="BasicTypes.html#2734" class="Bound">B</a><a id="2781" class="Symbol">)</a> <a id="2783" class="Symbol">→</a> <a id="2785" href="BasicTypes.html#2732" class="Bound">A</a> <a id="2787" href="BasicTypes.html#2727" class="Datatype Operator">⇒</a> <a id="2789" href="BasicTypes.html#2734" class="Bound">B</a>
</pre>

### Bi-implications

<pre class="Agda">
<a id="_⇔_"></a><a id="2837" href="BasicTypes.html#2837" class="Function Operator">_⇔_</a>
  <a id="2843" class="Symbol">:</a> <a id="2845" class="Symbol">∀</a> <a id="2847" class="Symbol">{</a><a id="2848" href="BasicTypes.html#2848" class="Bound">ℓ₁</a> <a id="2851" href="BasicTypes.html#2851" class="Bound">ℓ₂</a><a id="2853" class="Symbol">}</a>
  <a id="2857" class="Symbol">→</a> <a id="2859" href="Intro.html#1621" class="Function">Type</a> <a id="2864" href="BasicTypes.html#2848" class="Bound">ℓ₁</a> <a id="2867" class="Symbol">→</a> <a id="2869" href="Intro.html#1621" class="Function">Type</a> <a id="2874" href="BasicTypes.html#2851" class="Bound">ℓ₂</a>
  <a id="2879" class="Comment">-------------------</a>
  <a id="2901" class="Symbol">→</a> <a id="2903" href="Intro.html#1621" class="Function">Type</a> <a id="2908" class="Symbol">(</a><a id="2909" href="BasicTypes.html#2848" class="Bound">ℓ₁</a> <a id="2912" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="2914" href="BasicTypes.html#2851" class="Bound">ℓ₂</a><a id="2916" class="Symbol">)</a>

<a id="2919" href="BasicTypes.html#2919" class="Bound">A</a> <a id="2921" href="BasicTypes.html#2837" class="Function Operator">⇔</a> <a id="2923" href="BasicTypes.html#2923" class="Bound">B</a> <a id="2925" class="Symbol">=</a> <a id="2927" class="Symbol">(</a><a id="2928" href="BasicTypes.html#2919" class="Bound">A</a> <a id="2930" class="Symbol">→</a> <a id="2932" href="BasicTypes.html#2923" class="Bound">B</a><a id="2933" class="Symbol">)</a> <a id="2935" href="BasicTypes.html#1965" class="Function Operator">×</a> <a id="2937" class="Symbol">(</a><a id="2938" href="BasicTypes.html#2923" class="Bound">B</a> <a id="2940" class="Symbol">→</a> <a id="2942" href="BasicTypes.html#2919" class="Bound">A</a><a id="2943" class="Symbol">)</a>
</pre>

Synonyms:

<pre class="Agda">
<a id="_↔_"></a><a id="2981" href="BasicTypes.html#2981" class="Function Operator">_↔_</a> <a id="2985" class="Symbol">=</a> <a id="2987" href="BasicTypes.html#2837" class="Function Operator">_⇔_</a>

<a id="2992" class="Keyword">infix</a> <a id="2998" class="Number">30</a> <a id="3001" href="BasicTypes.html#2981" class="Function Operator">_↔_</a> <a id="3005" href="BasicTypes.html#2837" class="Function Operator">_⇔_</a>
</pre>

### Booleans

<pre class="Agda">
<a id="3048" class="Keyword">data</a>
  <a id="Bool"></a><a id="3055" href="BasicTypes.html#3055" class="Datatype">Bool</a>
    <a id="3064" class="Symbol">:</a> <a id="3066" href="Intro.html#1700" class="Function">Type₀</a>
  <a id="3074" class="Keyword">where</a>
  <a id="Bool.true"></a><a id="3082" href="BasicTypes.html#3082" class="InductiveConstructor">true</a>  <a id="3088" class="Symbol">:</a> <a id="3090" href="BasicTypes.html#3055" class="Datatype">Bool</a>
  <a id="Bool.false"></a><a id="3097" href="BasicTypes.html#3097" class="InductiveConstructor">false</a> <a id="3103" class="Symbol">:</a> <a id="3105" href="BasicTypes.html#3055" class="Datatype">Bool</a>
</pre>

Synonyms:

<pre class="Agda">
<a id="𝟚"></a><a id="3146" href="BasicTypes.html#3146" class="Function">𝟚</a>  <a id="3149" class="Symbol">=</a> <a id="3151" href="BasicTypes.html#3055" class="Datatype">Bool</a>
</pre>

Constructors synonyms:
<pre class="Agda">
<a id="3204" class="Keyword">pattern</a> <a id="𝟘₂"></a><a id="3212" href="BasicTypes.html#3212" class="InductiveConstructor">𝟘₂</a> <a id="3215" class="Symbol">=</a> <a id="3217" href="BasicTypes.html#3097" class="InductiveConstructor">false</a>
<a id="3223" class="Keyword">pattern</a> <a id="𝟙₂"></a><a id="3231" href="BasicTypes.html#3231" class="InductiveConstructor">𝟙₂</a> <a id="3234" class="Symbol">=</a> <a id="3236" href="BasicTypes.html#3082" class="InductiveConstructor">true</a>

<a id="3242" class="Keyword">pattern</a> <a id="ff"></a><a id="3250" href="BasicTypes.html#3250" class="InductiveConstructor">ff</a> <a id="3253" class="Symbol">=</a> <a id="3255" href="BasicTypes.html#3097" class="InductiveConstructor">false</a>
<a id="3261" class="Keyword">pattern</a> <a id="tt"></a><a id="3269" href="BasicTypes.html#3269" class="InductiveConstructor">tt</a> <a id="3272" class="Symbol">=</a> <a id="3274" href="BasicTypes.html#3082" class="InductiveConstructor">true</a>
</pre>

*Booleans can be also defined using the Coproduct.*

### Natural numbers

Natural numbers are the initial algebra for a constant and a
successor function. The `BUILTIN` declaration allows us to use
natural numbers in Arabic notation.

<pre class="Agda">
<a id="3539" class="Keyword">data</a>
  <a id="ℕ"></a><a id="3546" href="BasicTypes.html#3546" class="Datatype">ℕ</a>
    <a id="3552" class="Symbol">:</a> <a id="3554" href="Intro.html#1700" class="Function">Type₀</a>
  <a id="3562" class="Keyword">where</a>
  <a id="ℕ.zero"></a><a id="3570" href="BasicTypes.html#3570" class="InductiveConstructor">zero</a> <a id="3575" class="Symbol">:</a> <a id="3577" href="BasicTypes.html#3546" class="Datatype">ℕ</a>
  <a id="ℕ.succ"></a><a id="3581" href="BasicTypes.html#3581" class="InductiveConstructor">succ</a> <a id="3586" class="Symbol">:</a> <a id="3588" href="BasicTypes.html#3546" class="Datatype">ℕ</a> <a id="3590" class="Symbol">→</a> <a id="3592" href="BasicTypes.html#3546" class="Datatype">ℕ</a>
</pre>


Synonyms for natural numbers

<pre class="Agda">
<a id="Nat"></a><a id="3650" href="BasicTypes.html#3650" class="Function">Nat</a> <a id="3654" class="Symbol">=</a> <a id="3656" href="BasicTypes.html#3546" class="Datatype">ℕ</a>

<a id="3659" class="Keyword">pattern</a> <a id="z"></a><a id="3667" href="BasicTypes.html#3667" class="InductiveConstructor">z</a>  <a id="3670" class="Symbol">=</a> <a id="3672" href="BasicTypes.html#3570" class="InductiveConstructor">zero</a>
<a id="3677" class="Keyword">pattern</a> <a id="sc"></a><a id="3685" href="BasicTypes.html#3685" class="InductiveConstructor">sc</a> <a id="3688" class="Symbol">=</a> <a id="3690" href="BasicTypes.html#3581" class="InductiveConstructor">succ</a>

<a id="3696" class="Symbol">{-#</a> <a id="3700" class="Keyword">BUILTIN</a> <a id="3708" class="Pragma">NATURAL</a> <a id="3716" href="BasicTypes.html#3546" class="Datatype">ℕ</a> <a id="3718" class="Symbol">#-}</a>
</pre>

### Equalities

In HoTT, we have a different interpretation of type theory in which the
set-theoretical notion of *sets* for *types* is replaced by the topological
notion of *spaces*.

The (homogeneous) equality type also called identity type is considered a primary type
(included in the theory by default). To form this type, we fix a type `A` and a
term `a : A`, to have the identity type `a == a`, also denoted by `Id(a,a)` or
`a⇝a`. We only have one constructor of these types called `idp` or sometimes
`refl`. To use identity types, we have below the J-eliminator.

<pre class="Agda">
<a id="4319" class="Keyword">data</a>
  <a id="_==_"></a><a id="4326" href="BasicTypes.html#4326" class="Datatype Operator">_==_</a> <a id="4331" class="Symbol">{</a><a id="4332" href="BasicTypes.html#4332" class="Bound">A</a> <a id="4334" class="Symbol">:</a> <a id="4336" href="Intro.html#1621" class="Function">Type</a> <a id="4341" href="Intro.html#2063" class="Generalizable">ℓᵢ</a><a id="4343" class="Symbol">}</a> <a id="4345" class="Symbol">(</a><a id="4346" href="BasicTypes.html#4346" class="Bound">a</a> <a id="4348" class="Symbol">:</a> <a id="4350" href="BasicTypes.html#4332" class="Bound">A</a><a id="4351" class="Symbol">)</a>
    <a id="4357" class="Symbol">:</a> <a id="4359" href="BasicTypes.html#4332" class="Bound">A</a> <a id="4361" class="Symbol">→</a> <a id="4363" href="Intro.html#1621" class="Function">Type</a> <a id="4368" href="BasicTypes.html#4341" class="Bound">ℓᵢ</a>
  <a id="4373" class="Keyword">where</a>
  <a id="_==_.idp"></a><a id="4381" href="BasicTypes.html#4381" class="InductiveConstructor">idp</a> <a id="4385" class="Symbol">:</a> <a id="4387" href="BasicTypes.html#4346" class="Bound">a</a> <a id="4389" href="BasicTypes.html#4326" class="Datatype Operator">==</a> <a id="4392" href="BasicTypes.html#4346" class="Bound">a</a>
</pre>

<pre class="Agda">
<a id="4419" class="Comment">-- synonyms for the identity type</a>
<a id="Eq"></a><a id="4453" href="BasicTypes.html#4453" class="Function">Eq</a>   <a id="4458" class="Symbol">=</a> <a id="4460" href="BasicTypes.html#4326" class="Datatype Operator">_==_</a>
<a id="Id"></a><a id="4465" href="BasicTypes.html#4465" class="Function">Id</a>   <a id="4470" class="Symbol">=</a> <a id="4472" href="BasicTypes.html#4326" class="Datatype Operator">_==_</a>
<a id="Path"></a><a id="4477" href="BasicTypes.html#4477" class="Function">Path</a> <a id="4482" class="Symbol">=</a> <a id="4484" href="BasicTypes.html#4326" class="Datatype Operator">_==_</a>
<a id="_⇝_"></a><a id="4489" href="BasicTypes.html#4489" class="Function Operator">_⇝_</a>  <a id="4494" class="Symbol">=</a> <a id="4496" href="BasicTypes.html#4326" class="Datatype Operator">_==_</a>   <a id="4503" class="Comment">-- &#39;\r~&#39;</a>
<a id="_≡_"></a><a id="4512" href="BasicTypes.html#4512" class="Function Operator">_≡_</a>  <a id="4517" class="Symbol">=</a> <a id="4519" href="BasicTypes.html#4326" class="Datatype Operator">_==_</a>   <a id="4526" class="Comment">-- &#39;\equiv&#39;</a>

<a id="4539" class="Keyword">infix</a> <a id="4545" class="Number">30</a> <a id="4548" href="BasicTypes.html#4326" class="Datatype Operator">_==_</a> <a id="4553" href="BasicTypes.html#4489" class="Function Operator">_⇝_</a> <a id="4557" href="BasicTypes.html#4512" class="Function Operator">_≡_</a>

<a id="4562" class="Symbol">{-#</a> <a id="4566" class="Keyword">BUILTIN</a> <a id="4574" class="Pragma">EQUALITY</a> <a id="4583" href="BasicTypes.html#4326" class="Datatype Operator">_==_</a>  <a id="4589" class="Symbol">#-}</a>
</pre>

<pre class="Agda">
<a id="refl"></a><a id="4618" href="BasicTypes.html#4618" class="Function">refl</a>
  <a id="4625" class="Symbol">:</a> <a id="4627" class="Symbol">∀</a> <a id="4629" class="Symbol">{</a><a id="4630" href="BasicTypes.html#4630" class="Bound">A</a> <a id="4632" class="Symbol">:</a> <a id="4634" href="Intro.html#1621" class="Function">Type</a> <a id="4639" href="Intro.html#2063" class="Generalizable">ℓᵢ</a><a id="4641" class="Symbol">}</a>
  <a id="4645" class="Symbol">→</a> <a id="4647" class="Symbol">(</a><a id="4648" href="BasicTypes.html#4648" class="Bound">a</a> <a id="4650" class="Symbol">:</a> <a id="4652" href="BasicTypes.html#4630" class="Bound">A</a><a id="4653" class="Symbol">)</a>
  <a id="4657" class="Comment">-----------------</a>
  <a id="4677" class="Symbol">→</a> <a id="4679" href="BasicTypes.html#4648" class="Bound">a</a> <a id="4681" href="BasicTypes.html#4326" class="Datatype Operator">==</a> <a id="4684" href="BasicTypes.html#4648" class="Bound">a</a>

<a id="4687" href="BasicTypes.html#4618" class="Function">refl</a> <a id="4692" class="Symbol">{</a><a id="4693" href="BasicTypes.html#4693" class="Bound">ℓᵢ</a><a id="4695" class="Symbol">}{</a><a id="4697" href="BasicTypes.html#4697" class="Bound">A</a><a id="4698" class="Symbol">}</a> <a id="4700" href="BasicTypes.html#4700" class="Bound">a</a> <a id="4702" class="Symbol">=</a> <a id="4704" href="BasicTypes.html#4381" class="InductiveConstructor">idp</a>
</pre>


Symmetry property for the identity types.

<pre class="Agda">
<a id="sym"></a><a id="4777" href="BasicTypes.html#4777" class="Function">sym</a>
  <a id="4783" class="Symbol">:</a> <a id="4785" class="Symbol">∀</a> <a id="4787" class="Symbol">{</a><a id="4788" href="BasicTypes.html#4788" class="Bound">A</a> <a id="4790" class="Symbol">:</a> <a id="4792" href="Intro.html#1621" class="Function">Type</a> <a id="4797" href="Intro.html#2061" class="Generalizable">ℓ</a><a id="4798" class="Symbol">}{</a><a id="4800" href="BasicTypes.html#4800" class="Bound">x</a> <a id="4802" href="BasicTypes.html#4802" class="Bound">y</a> <a id="4804" class="Symbol">:</a> <a id="4806" href="BasicTypes.html#4788" class="Bound">A</a><a id="4807" class="Symbol">}</a>
  <a id="4811" class="Symbol">→</a> <a id="4813" href="BasicTypes.html#4800" class="Bound">x</a> <a id="4815" href="BasicTypes.html#4326" class="Datatype Operator">==</a> <a id="4818" href="BasicTypes.html#4802" class="Bound">y</a>
  <a id="4822" class="Comment">----------------------------</a>
  <a id="4853" class="Symbol">→</a> <a id="4855" href="BasicTypes.html#4802" class="Bound">y</a> <a id="4857" href="BasicTypes.html#4326" class="Datatype Operator">==</a> <a id="4860" href="BasicTypes.html#4800" class="Bound">x</a>

<a id="4863" href="BasicTypes.html#4777" class="Function">sym</a> <a id="4867" href="BasicTypes.html#4381" class="InductiveConstructor">idp</a> <a id="4871" class="Symbol">=</a> <a id="4873" href="BasicTypes.html#4381" class="InductiveConstructor">idp</a>

<a id="4878" class="Keyword">syntax</a> <a id="4885" href="BasicTypes.html#4777" class="Function">sym</a> <a id="4889" class="Bound">p</a> <a id="4891" class="Symbol">=</a> <a id="4893" class="Function">−</a> <a id="4895" class="Bound">p</a>
</pre>

To work with identity types, we have its induction principle as the J-eliminator.

*Paulin-Mohring J rule*

{: .foldable until="6" }
<pre class="Agda">
<a id="J"></a><a id="5055" href="BasicTypes.html#5055" class="Function">J</a>
  <a id="5059" class="Symbol">:</a> <a id="5061" class="Symbol">∀</a> <a id="5063" class="Symbol">{</a><a id="5064" href="BasicTypes.html#5064" class="Bound">A</a> <a id="5066" class="Symbol">:</a> <a id="5068" href="Intro.html#1621" class="Function">Type</a> <a id="5073" href="Intro.html#2063" class="Generalizable">ℓᵢ</a><a id="5075" class="Symbol">}</a> <a id="5077" class="Symbol">{</a><a id="5078" href="BasicTypes.html#5078" class="Bound">a</a> <a id="5080" class="Symbol">:</a> <a id="5082" href="BasicTypes.html#5064" class="Bound">A</a><a id="5083" class="Symbol">}</a>
  <a id="5087" class="Symbol">→</a> <a id="5089" class="Symbol">(</a><a id="5090" href="BasicTypes.html#5090" class="Bound">B</a> <a id="5092" class="Symbol">:</a> <a id="5094" class="Symbol">(</a><a id="5095" href="BasicTypes.html#5095" class="Bound">a&#39;</a> <a id="5098" class="Symbol">:</a> <a id="5100" href="BasicTypes.html#5064" class="Bound">A</a><a id="5101" class="Symbol">)</a> <a id="5103" class="Symbol">(</a><a id="5104" href="BasicTypes.html#5104" class="Bound">p</a> <a id="5106" class="Symbol">:</a> <a id="5108" href="BasicTypes.html#5078" class="Bound">a</a> <a id="5110" href="BasicTypes.html#4326" class="Datatype Operator">==</a> <a id="5113" href="BasicTypes.html#5095" class="Bound">a&#39;</a><a id="5115" class="Symbol">)</a> <a id="5117" class="Symbol">→</a> <a id="5119" href="Intro.html#1621" class="Function">Type</a> <a id="5124" href="Intro.html#2066" class="Generalizable">ℓⱼ</a><a id="5126" class="Symbol">)</a>
  <a id="5130" class="Symbol">→</a> <a id="5132" class="Symbol">(</a><a id="5133" href="BasicTypes.html#5133" class="Bound">d</a> <a id="5135" class="Symbol">:</a> <a id="5137" href="BasicTypes.html#5090" class="Bound">B</a> <a id="5139" href="BasicTypes.html#5078" class="Bound">a</a> <a id="5141" href="BasicTypes.html#4381" class="InductiveConstructor">idp</a><a id="5144" class="Symbol">)</a>
  <a id="5148" class="Comment">----------------------------------------</a>
  <a id="5191" class="Symbol">→</a> <a id="5193" class="Symbol">{</a><a id="5194" href="BasicTypes.html#5194" class="Bound">a&#39;</a> <a id="5197" class="Symbol">:</a> <a id="5199" href="BasicTypes.html#5064" class="Bound">A</a><a id="5200" class="Symbol">}</a> <a id="5202" class="Symbol">(</a><a id="5203" href="BasicTypes.html#5203" class="Bound">p</a> <a id="5205" class="Symbol">:</a> <a id="5207" href="BasicTypes.html#5078" class="Bound">a</a> <a id="5209" href="BasicTypes.html#4326" class="Datatype Operator">==</a> <a id="5212" href="BasicTypes.html#5194" class="Bound">a&#39;</a><a id="5214" class="Symbol">)</a> <a id="5216" class="Symbol">→</a> <a id="5218" href="BasicTypes.html#5090" class="Bound">B</a> <a id="5220" href="BasicTypes.html#5194" class="Bound">a&#39;</a> <a id="5223" href="BasicTypes.html#5203" class="Bound">p</a>

<a id="5226" href="BasicTypes.html#5055" class="Function">J</a> <a id="5228" class="Symbol">{</a><a id="5229" class="Argument">a</a> <a id="5231" class="Symbol">=</a> <a id="5233" href="BasicTypes.html#5233" class="Bound">a</a><a id="5234" class="Symbol">}</a> <a id="5236" href="BasicTypes.html#5236" class="Bound">B</a> <a id="5238" href="BasicTypes.html#5238" class="Bound">d</a> <a id="5240" href="BasicTypes.html#4381" class="InductiveConstructor">idp</a> <a id="5244" class="Symbol">=</a> <a id="5246" href="BasicTypes.html#5238" class="Bound">d</a>
</pre>

{: .foldable until="6" }
<pre class="Agda">
<a id="J&#39;"></a><a id="5298" href="BasicTypes.html#5298" class="Function">J&#39;</a>
  <a id="5303" class="Symbol">:</a> <a id="5305" class="Symbol">∀</a> <a id="5307" class="Symbol">{</a><a id="5308" href="BasicTypes.html#5308" class="Bound">A</a> <a id="5310" class="Symbol">:</a> <a id="5312" href="Intro.html#1621" class="Function">Type</a> <a id="5317" href="Intro.html#2063" class="Generalizable">ℓᵢ</a><a id="5319" class="Symbol">}</a> <a id="5321" class="Symbol">{</a><a id="5322" href="BasicTypes.html#5322" class="Bound">a</a> <a id="5324" class="Symbol">:</a> <a id="5326" href="BasicTypes.html#5308" class="Bound">A</a><a id="5327" class="Symbol">}</a>
  <a id="5331" class="Symbol">→</a> <a id="5333" class="Symbol">(</a><a id="5334" href="BasicTypes.html#5334" class="Bound">B</a> <a id="5336" class="Symbol">:</a> <a id="5338" class="Symbol">(</a><a id="5339" href="BasicTypes.html#5339" class="Bound">a&#39;</a> <a id="5342" class="Symbol">:</a> <a id="5344" href="BasicTypes.html#5308" class="Bound">A</a><a id="5345" class="Symbol">)</a> <a id="5347" class="Symbol">(</a><a id="5348" href="BasicTypes.html#5348" class="Bound">p</a> <a id="5350" class="Symbol">:</a> <a id="5352" href="BasicTypes.html#5339" class="Bound">a&#39;</a> <a id="5355" href="BasicTypes.html#4326" class="Datatype Operator">==</a> <a id="5358" href="BasicTypes.html#5322" class="Bound">a</a><a id="5359" class="Symbol">)</a> <a id="5361" class="Symbol">→</a> <a id="5363" href="Intro.html#1621" class="Function">Type</a> <a id="5368" href="Intro.html#2066" class="Generalizable">ℓⱼ</a><a id="5370" class="Symbol">)</a>
  <a id="5374" class="Symbol">→</a> <a id="5376" class="Symbol">(</a><a id="5377" href="BasicTypes.html#5377" class="Bound">d</a> <a id="5379" class="Symbol">:</a> <a id="5381" href="BasicTypes.html#5334" class="Bound">B</a> <a id="5383" href="BasicTypes.html#5322" class="Bound">a</a> <a id="5385" href="BasicTypes.html#4381" class="InductiveConstructor">idp</a><a id="5388" class="Symbol">)</a>
  <a id="5392" class="Comment">----------------------------------------</a>
  <a id="5435" class="Symbol">→</a> <a id="5437" class="Symbol">{</a><a id="5438" href="BasicTypes.html#5438" class="Bound">a&#39;</a> <a id="5441" class="Symbol">:</a> <a id="5443" href="BasicTypes.html#5308" class="Bound">A</a><a id="5444" class="Symbol">}</a> <a id="5446" class="Symbol">(</a><a id="5447" href="BasicTypes.html#5447" class="Bound">p</a> <a id="5449" class="Symbol">:</a> <a id="5451" href="BasicTypes.html#5438" class="Bound">a&#39;</a> <a id="5454" href="BasicTypes.html#4326" class="Datatype Operator">==</a> <a id="5457" href="BasicTypes.html#5322" class="Bound">a</a><a id="5458" class="Symbol">)</a> <a id="5460" class="Symbol">→</a> <a id="5462" href="BasicTypes.html#5334" class="Bound">B</a> <a id="5464" href="BasicTypes.html#5438" class="Bound">a&#39;</a> <a id="5467" href="BasicTypes.html#5447" class="Bound">p</a>

<a id="5470" href="BasicTypes.html#5298" class="Function">J&#39;</a> <a id="5473" class="Symbol">{</a><a id="5474" class="Argument">a</a> <a id="5476" class="Symbol">=</a> <a id="5478" href="BasicTypes.html#5478" class="Bound">a</a><a id="5479" class="Symbol">}</a> <a id="5481" href="BasicTypes.html#5481" class="Bound">B</a> <a id="5483" href="BasicTypes.html#5483" class="Bound">d</a> <a id="5485" href="BasicTypes.html#4381" class="InductiveConstructor">idp</a> <a id="5489" class="Symbol">=</a> <a id="5491" href="BasicTypes.html#5483" class="Bound">d</a>
</pre>
