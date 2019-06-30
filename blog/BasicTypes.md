---
layout: page
title: "Basic Types"
category: types
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
<a id="191" class="Symbol">{-#</a> <a id="195" class="Keyword">OPTIONS</a> <a id="203" class="Pragma">--without-K</a> <a id="215" class="Symbol">#-}</a>
<a id="219" class="Keyword">open</a> <a id="224" class="Keyword">import</a> <a id="231" href="Intro.html" class="Module">Intro</a> <a id="237" class="Keyword">public</a>
</pre>
</div>

# Type theory

## Types

### Empty type

A datatype without *constructors* is the *empty type*. This represents  the *falsehood*.

<pre class="Agda">
<a id="407" class="Keyword">data</a>
  <a id="⊥"></a><a id="414" href="BasicTypes.html#414" class="Datatype">⊥</a> <a id="416" class="Symbol">{</a><a id="417" href="BasicTypes.html#417" class="Bound">ℓᵢ</a><a id="419" class="Symbol">}</a>
    <a id="425" class="Symbol">:</a> <a id="427" href="Intro.html#1803" class="Function">Type</a> <a id="432" href="BasicTypes.html#417" class="Bound">ℓᵢ</a>
  <a id="437" class="Keyword">where</a>
  <a id="445" class="Comment">-- Nothing</a>
</pre>

Synonyms of ⊥:

<pre class="Agda">
<a id="Empty"></a><a id="497" href="BasicTypes.html#497" class="Function">Empty</a> <a id="503" class="Symbol">=</a> <a id="505" href="BasicTypes.html#414" class="Datatype">⊥</a>
<a id="𝟘"></a><a id="507" href="BasicTypes.html#507" class="Function">𝟘</a>     <a id="513" class="Symbol">=</a> <a id="515" href="BasicTypes.html#414" class="Datatype">⊥</a>
</pre>

Its *eliminator* principle also called *Ex falso quodlibet*:

<pre class="Agda">
<a id="exfalso"></a><a id="604" href="BasicTypes.html#604" class="Function">exfalso</a>
  <a id="614" class="Symbol">:</a> <a id="616" class="Symbol">∀</a> <a id="618" class="Symbol">{</a><a id="619" href="BasicTypes.html#619" class="Bound">A</a> <a id="621" class="Symbol">:</a> <a id="623" href="Intro.html#1803" class="Function">Type</a> <a id="628" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="629" class="Symbol">}</a>
  <a id="633" class="Symbol">→</a> <a id="635" href="BasicTypes.html#414" class="Datatype">⊥</a> <a id="637" class="Symbol">{</a><a id="638" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="640" class="Symbol">}</a>
  <a id="644" class="Comment">--------</a>
  <a id="655" class="Symbol">→</a> <a id="657" href="BasicTypes.html#619" class="Bound">A</a>

<a id="660" href="BasicTypes.html#604" class="Function">exfalso</a> <a id="668" class="Symbol">()</a>
</pre>

Synonyms of `exfalso` rule:

<pre class="Agda">
<a id="Empty-elim"></a><a id="725" href="BasicTypes.html#725" class="Function">Empty-elim</a> <a id="736" class="Symbol">=</a> <a id="738" href="BasicTypes.html#604" class="Function">exfalso</a>
<a id="⊥-elim"></a><a id="746" href="BasicTypes.html#746" class="Function">⊥-elim</a>     <a id="757" class="Symbol">=</a> <a id="759" href="BasicTypes.html#604" class="Function">exfalso</a>
<a id="𝟘-elim"></a><a id="767" href="BasicTypes.html#767" class="Function">𝟘-elim</a>     <a id="778" class="Symbol">=</a> <a id="780" href="BasicTypes.html#604" class="Function">exfalso</a>
</pre>

The negation symbol is a shortcut of an implication for the falsehood.

<pre class="Agda">
<a id="¬"></a><a id="885" href="BasicTypes.html#885" class="Function">¬</a> <a id="887" class="Symbol">:</a> <a id="889" href="Intro.html#1803" class="Function">Type</a> <a id="894" href="Intro.html#2243" class="Generalizable">ℓ</a> <a id="896" class="Symbol">→</a> <a id="898" href="Intro.html#1803" class="Function">Type</a> <a id="903" href="Intro.html#2243" class="Generalizable">ℓ</a>
<a id="905" href="BasicTypes.html#885" class="Function">¬</a> <a id="907" href="BasicTypes.html#907" class="Bound">A</a> <a id="909" class="Symbol">=</a> <a id="911" class="Symbol">(</a><a id="912" href="BasicTypes.html#907" class="Bound">A</a> <a id="914" class="Symbol">→</a> <a id="916" href="BasicTypes.html#414" class="Datatype">⊥</a> <a id="918" class="Symbol">{</a><a id="919" href="Agda.Primitive.html#611" class="Primitive">lzero</a><a id="924" class="Symbol">})</a>
</pre>

### Unit type

The *unit type* is defined as a record to get also the $η$-rule
definitionally. This type has no elimination rule.

<pre class="Agda">
<a id="1083" class="Keyword">record</a> <a id="⊤"></a><a id="1090" href="BasicTypes.html#1090" class="Record">⊤</a> <a id="1092" class="Symbol">:</a> <a id="1094" href="Intro.html#1803" class="Function">Type</a> <a id="1099" href="Intro.html#2243" class="Generalizable">ℓ</a> <a id="1101" class="Keyword">where</a>
  <a id="1109" class="Keyword">constructor</a> <a id="⊤.★"></a><a id="1121" href="BasicTypes.html#1121" class="InductiveConstructor">★</a>

<a id="1124" class="Symbol">{-#</a> <a id="1128" class="Keyword">BUILTIN</a> <a id="1136" class="Pragma">UNIT</a> <a id="1141" href="BasicTypes.html#1090" class="Record">⊤</a> <a id="1143" class="Symbol">#-}</a>
</pre>

Synonyms for the Unit type:
<pre class="Agda">
<a id="Unit"></a><a id="1200" href="BasicTypes.html#1200" class="Function">Unit</a> <a id="1205" class="Symbol">=</a> <a id="1207" href="BasicTypes.html#1090" class="Record">⊤</a>
<a id="𝟙"></a><a id="1209" href="BasicTypes.html#1209" class="Function">𝟙</a>    <a id="1214" class="Symbol">=</a> <a id="1216" href="BasicTypes.html#1090" class="Record">⊤</a>
</pre>

Synonyms for the data constructor:
<pre class="Agda">
<a id="1278" class="Keyword">pattern</a> <a id="unit"></a><a id="1286" href="BasicTypes.html#1286" class="InductiveConstructor">unit</a> <a id="1291" class="Symbol">=</a> <a id="1293" href="BasicTypes.html#1121" class="InductiveConstructor">★</a>
<a id="1295" class="Keyword">pattern</a> <a id="∗"></a><a id="1303" href="BasicTypes.html#1303" class="InductiveConstructor">∗</a>    <a id="1308" class="Symbol">=</a> <a id="1310" href="BasicTypes.html#1121" class="InductiveConstructor">★</a>
</pre>

### ∑-types

The dependent product is called Sigma types. It's the the type for pairs where
the second term in the pair may depend on the first term.

<pre class="Agda">
<a id="1488" class="Keyword">record</a>
  <a id="∑"></a><a id="1497" href="BasicTypes.html#1497" class="Record">∑</a> <a id="1499" class="Symbol">(</a><a id="1500" href="BasicTypes.html#1500" class="Bound">A</a> <a id="1502" class="Symbol">:</a> <a id="1504" href="Intro.html#1803" class="Function">Type</a> <a id="1509" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="1511" class="Symbol">)(</a><a id="1513" href="BasicTypes.html#1513" class="Bound">B</a> <a id="1515" class="Symbol">:</a> <a id="1517" href="BasicTypes.html#1500" class="Bound">A</a> <a id="1519" class="Symbol">→</a> <a id="1521" href="Intro.html#1803" class="Function">Type</a> <a id="1526" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1528" class="Symbol">)</a>
   <a id="1533" class="Symbol">:</a> <a id="1535" href="Intro.html#1803" class="Function">Type</a> <a id="1540" class="Symbol">(</a><a id="1541" href="BasicTypes.html#1509" class="Bound">ℓᵢ</a> <a id="1544" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="1546" href="BasicTypes.html#1526" class="Bound">ℓⱼ</a><a id="1548" class="Symbol">)</a>
  <a id="1552" class="Keyword">where</a>
  <a id="1560" class="Keyword">constructor</a> <a id="∑._,_"></a><a id="1572" href="BasicTypes.html#1572" class="InductiveConstructor Operator">_,_</a>
  <a id="1578" class="Keyword">field</a>
    <a id="∑.π₁"></a><a id="1588" href="BasicTypes.html#1588" class="Field">π₁</a> <a id="1591" class="Symbol">:</a> <a id="1593" href="BasicTypes.html#1500" class="Bound">A</a>
    <a id="∑.π₂"></a><a id="1599" href="BasicTypes.html#1599" class="Field">π₂</a> <a id="1602" class="Symbol">:</a> <a id="1604" href="BasicTypes.html#1513" class="Bound">B</a> <a id="1606" href="BasicTypes.html#1588" class="Field">π₁</a>

<a id="1610" class="Keyword">infixr</a> <a id="1617" class="Number">60</a> <a id="1620" href="BasicTypes.html#1572" class="InductiveConstructor Operator">_,_</a>
<a id="1624" class="Keyword">open</a> <a id="1629" href="BasicTypes.html#1497" class="Module">∑</a> <a id="1631" class="Keyword">public</a>
</pre>

Symbol synonym:

<pre class="Agda">
<a id="Σ"></a><a id="1680" href="BasicTypes.html#1680" class="Function">Σ</a> <a id="1682" class="Symbol">=</a> <a id="1684" href="BasicTypes.html#1497" class="Record">∑</a>  <a id="1687" class="Comment">-- \Sigma and \sum</a>
</pre>

Constructor synonyms:

<pre class="Agda">
<a id="proj₁"></a><a id="1754" href="BasicTypes.html#1754" class="Function">proj₁</a> <a id="1760" class="Symbol">=</a> <a id="1762" href="BasicTypes.html#1588" class="Field">π₁</a>
<a id="proj₂"></a><a id="1765" href="BasicTypes.html#1765" class="Function">proj₂</a> <a id="1771" class="Symbol">=</a> <a id="1773" href="BasicTypes.html#1599" class="Field">π₂</a>

<a id="pr₁"></a><a id="1777" href="BasicTypes.html#1777" class="Function">pr₁</a>   <a id="1783" class="Symbol">=</a> <a id="1785" href="BasicTypes.html#1588" class="Field">π₁</a>
<a id="pr₂"></a><a id="1788" href="BasicTypes.html#1788" class="Function">pr₂</a>   <a id="1794" class="Symbol">=</a> <a id="1796" href="BasicTypes.html#1599" class="Field">π₂</a>

<a id="fst"></a><a id="1800" href="BasicTypes.html#1800" class="Function">fst</a>   <a id="1806" class="Symbol">=</a> <a id="1808" href="BasicTypes.html#1588" class="Field">π₁</a>
<a id="snd"></a><a id="1811" href="BasicTypes.html#1811" class="Function">snd</a>   <a id="1817" class="Symbol">=</a> <a id="1819" href="BasicTypes.html#1599" class="Field">π₂</a>

<a id="#"></a><a id="1823" href="BasicTypes.html#1823" class="Function">#</a>     <a id="1829" class="Symbol">=</a>  <a id="1832" href="BasicTypes.html#1588" class="Field">π₁</a>
</pre>

### Π-types

<pre class="Agda">
<a id="Π"></a><a id="1873" href="BasicTypes.html#1873" class="Function">Π</a>
  <a id="1877" class="Symbol">:</a> <a id="1879" class="Symbol">(</a><a id="1880" href="BasicTypes.html#1880" class="Bound">A</a> <a id="1882" class="Symbol">:</a> <a id="1884" href="Intro.html#1803" class="Function">Type</a> <a id="1889" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="1891" class="Symbol">)</a> <a id="1893" class="Symbol">(</a><a id="1894" href="BasicTypes.html#1894" class="Bound">P</a> <a id="1896" class="Symbol">:</a> <a id="1898" href="BasicTypes.html#1880" class="Bound">A</a> <a id="1900" class="Symbol">→</a> <a id="1902" href="Intro.html#1803" class="Function">Type</a> <a id="1907" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1909" class="Symbol">)</a>
  <a id="1913" class="Comment">--------------------------------</a>
  <a id="1948" class="Symbol">→</a> <a id="1950" href="Intro.html#1803" class="Function">Type</a> <a id="1955" class="Symbol">(</a><a id="1956" href="Intro.html#2245" class="Generalizable">ℓᵢ</a> <a id="1959" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="1961" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1963" class="Symbol">)</a>

<a id="1966" href="BasicTypes.html#1873" class="Function">Π</a> <a id="1968" href="BasicTypes.html#1968" class="Bound">A</a> <a id="1970" href="BasicTypes.html#1970" class="Bound">P</a> <a id="1972" class="Symbol">=</a> <a id="1974" class="Symbol">(</a><a id="1975" href="BasicTypes.html#1975" class="Bound">x</a> <a id="1977" class="Symbol">:</a> <a id="1979" href="BasicTypes.html#1968" class="Bound">A</a><a id="1980" class="Symbol">)</a> <a id="1982" class="Symbol">→</a> <a id="1984" href="BasicTypes.html#1970" class="Bound">P</a> <a id="1986" href="BasicTypes.html#1975" class="Bound">x</a>
</pre>

Synonyms
<pre class="Agda">
<a id="∏"></a><a id="2022" href="BasicTypes.html#2022" class="Function">∏</a> <a id="2024" class="Symbol">=</a> <a id="2026" href="BasicTypes.html#1873" class="Function">Π</a>   <a id="2030" class="Comment">-- \prod vs \Pi</a>
</pre>

### Products

Product type as a particular case of the Sigma type.

<pre class="Agda">
<a id="_×_"></a><a id="2139" href="BasicTypes.html#2139" class="Function Operator">_×_</a>
  <a id="2145" class="Symbol">:</a> <a id="2147" class="Symbol">(</a><a id="2148" href="BasicTypes.html#2148" class="Bound">A</a> <a id="2150" class="Symbol">:</a> <a id="2152" href="Intro.html#1803" class="Function">Type</a> <a id="2157" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="2159" class="Symbol">)</a> <a id="2161" class="Symbol">(</a><a id="2162" href="BasicTypes.html#2162" class="Bound">B</a> <a id="2164" class="Symbol">:</a> <a id="2166" href="Intro.html#1803" class="Function">Type</a> <a id="2171" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="2173" class="Symbol">)</a>
  <a id="2177" class="Comment">----------------------------</a>
  <a id="2208" class="Symbol">→</a> <a id="2210" href="Intro.html#1803" class="Function">Type</a> <a id="2215" class="Symbol">(</a><a id="2216" href="Intro.html#2245" class="Generalizable">ℓᵢ</a> <a id="2219" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="2221" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="2223" class="Symbol">)</a>

<a id="2226" href="BasicTypes.html#2226" class="Bound">A</a> <a id="2228" href="BasicTypes.html#2139" class="Function Operator">×</a> <a id="2230" href="BasicTypes.html#2230" class="Bound">B</a> <a id="2232" class="Symbol">=</a> <a id="2234" href="BasicTypes.html#1497" class="Record">∑</a> <a id="2236" href="BasicTypes.html#2226" class="Bound">A</a> <a id="2238" class="Symbol">(λ</a> <a id="2241" href="BasicTypes.html#2241" class="Bound">_</a> <a id="2243" class="Symbol">→</a> <a id="2245" href="BasicTypes.html#2230" class="Bound">B</a><a id="2246" class="Symbol">)</a>

<a id="2249" class="Keyword">infixl</a>  <a id="2257" class="Number">39</a> <a id="2260" href="BasicTypes.html#2139" class="Function Operator">_×_</a>
</pre>

### Coproducts

Sum types as inductive types

<pre class="Agda">
<a id="2335" class="Keyword">data</a>
  <a id="_+_"></a><a id="2342" href="BasicTypes.html#2342" class="Datatype Operator">_+_</a> <a id="2346" class="Symbol">(</a><a id="2347" href="BasicTypes.html#2347" class="Bound">A</a> <a id="2349" class="Symbol">:</a> <a id="2351" href="Intro.html#1803" class="Function">Type</a> <a id="2356" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="2358" class="Symbol">)</a> <a id="2360" class="Symbol">(</a><a id="2361" href="BasicTypes.html#2361" class="Bound">B</a> <a id="2363" class="Symbol">:</a> <a id="2365" href="Intro.html#1803" class="Function">Type</a> <a id="2370" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="2372" class="Symbol">)</a>
    <a id="2378" class="Symbol">:</a> <a id="2380" href="Intro.html#1803" class="Function">Type</a> <a id="2385" class="Symbol">(</a><a id="2386" href="BasicTypes.html#2356" class="Bound">ℓᵢ</a> <a id="2389" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="2391" href="BasicTypes.html#2370" class="Bound">ℓⱼ</a><a id="2393" class="Symbol">)</a>
  <a id="2397" class="Keyword">where</a>
  <a id="_+_.inl"></a><a id="2405" href="BasicTypes.html#2405" class="InductiveConstructor">inl</a> <a id="2409" class="Symbol">:</a> <a id="2411" href="BasicTypes.html#2347" class="Bound">A</a> <a id="2413" class="Symbol">→</a> <a id="2415" href="BasicTypes.html#2347" class="Bound">A</a> <a id="2417" href="BasicTypes.html#2342" class="Datatype Operator">+</a> <a id="2419" href="BasicTypes.html#2361" class="Bound">B</a>
  <a id="_+_.inr"></a><a id="2423" href="BasicTypes.html#2423" class="InductiveConstructor">inr</a> <a id="2427" class="Symbol">:</a> <a id="2429" href="BasicTypes.html#2361" class="Bound">B</a> <a id="2431" class="Symbol">→</a> <a id="2433" href="BasicTypes.html#2347" class="Bound">A</a> <a id="2435" href="BasicTypes.html#2342" class="Datatype Operator">+</a> <a id="2437" href="BasicTypes.html#2361" class="Bound">B</a>

<a id="2440" class="Keyword">infixr</a> <a id="2447" class="Number">31</a> <a id="2450" href="BasicTypes.html#2342" class="Datatype Operator">_+_</a>
</pre>

Constructors synonyms:

<pre class="Agda">
<a id="2503" class="Keyword">pattern</a> <a id="left"></a><a id="2511" href="BasicTypes.html#2511" class="InductiveConstructor">left</a>  <a id="2517" class="Symbol">=</a> <a id="2519" href="BasicTypes.html#2405" class="InductiveConstructor">inl</a>
<a id="2523" class="Keyword">pattern</a> <a id="right"></a><a id="2531" href="BasicTypes.html#2531" class="InductiveConstructor">right</a> <a id="2537" class="Symbol">=</a> <a id="2539" href="BasicTypes.html#2423" class="InductiveConstructor">inr</a>
</pre>

The elimination principle:

<pre class="Agda">
<a id="+-elim"></a><a id="2596" href="BasicTypes.html#2596" class="Function">+-elim</a>
  <a id="2605" class="Symbol">:</a> <a id="2607" class="Symbol">{</a><a id="2608" href="BasicTypes.html#2608" class="Bound">A</a> <a id="2610" class="Symbol">:</a> <a id="2612" href="Intro.html#1803" class="Function">Type</a> <a id="2617" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="2619" class="Symbol">}{</a><a id="2621" href="BasicTypes.html#2621" class="Bound">B</a> <a id="2623" class="Symbol">:</a> <a id="2625" href="Intro.html#1803" class="Function">Type</a> <a id="2630" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="2632" class="Symbol">}{</a><a id="2634" href="BasicTypes.html#2634" class="Bound">C</a> <a id="2636" class="Symbol">:</a> <a id="2638" href="Intro.html#1803" class="Function">Type</a> <a id="2643" href="Intro.html#2251" class="Generalizable">ℓₖ</a><a id="2645" class="Symbol">}</a>
  <a id="2649" class="Symbol">→</a> <a id="2651" class="Symbol">(</a><a id="2652" href="BasicTypes.html#2608" class="Bound">A</a> <a id="2654" class="Symbol">→</a> <a id="2656" href="BasicTypes.html#2634" class="Bound">C</a><a id="2657" class="Symbol">)</a> <a id="2659" class="Symbol">→</a> <a id="2661" class="Symbol">(</a><a id="2662" href="BasicTypes.html#2621" class="Bound">B</a> <a id="2664" class="Symbol">→</a> <a id="2666" href="BasicTypes.html#2634" class="Bound">C</a><a id="2667" class="Symbol">)</a>
  <a id="2671" class="Comment">-------------------</a>
  <a id="2693" class="Symbol">→</a> <a id="2695" class="Symbol">(</a><a id="2696" href="BasicTypes.html#2608" class="Bound">A</a> <a id="2698" href="BasicTypes.html#2342" class="Datatype Operator">+</a> <a id="2700" href="BasicTypes.html#2621" class="Bound">B</a><a id="2701" class="Symbol">)</a> <a id="2703" class="Symbol">→</a> <a id="2705" href="BasicTypes.html#2634" class="Bound">C</a>
<a id="2707" href="BasicTypes.html#2596" class="Function">+-elim</a> <a id="2714" href="BasicTypes.html#2714" class="Bound">A→C</a> <a id="2718" href="BasicTypes.html#2718" class="Bound">B→C</a> <a id="2722" class="Symbol">(</a><a id="2723" href="BasicTypes.html#2405" class="InductiveConstructor">inl</a> <a id="2727" href="BasicTypes.html#2727" class="Bound">x</a><a id="2728" class="Symbol">)</a> <a id="2730" class="Symbol">=</a> <a id="2732" href="BasicTypes.html#2714" class="Bound">A→C</a> <a id="2736" href="BasicTypes.html#2727" class="Bound">x</a>
<a id="2738" href="BasicTypes.html#2596" class="Function">+-elim</a> <a id="2745" href="BasicTypes.html#2745" class="Bound">A→C</a> <a id="2749" href="BasicTypes.html#2749" class="Bound">B→C</a> <a id="2753" class="Symbol">(</a><a id="2754" href="BasicTypes.html#2423" class="InductiveConstructor">inr</a> <a id="2758" href="BasicTypes.html#2758" class="Bound">x</a><a id="2759" class="Symbol">)</a> <a id="2761" class="Symbol">=</a> <a id="2763" href="BasicTypes.html#2749" class="Bound">B→C</a> <a id="2767" href="BasicTypes.html#2758" class="Bound">x</a>
</pre>

Synonyms:

<pre class="Agda">
<a id="cases"></a><a id="2805" href="BasicTypes.html#2805" class="Function">cases</a> <a id="2811" class="Symbol">=</a> <a id="2813" href="BasicTypes.html#2596" class="Function">+-elim</a>

<a id="2821" class="Keyword">syntax</a> <a id="2828" href="BasicTypes.html#2805" class="Function">cases</a> <a id="2834" class="Bound">f</a> <a id="2836" class="Bound">g</a> <a id="2838" class="Symbol">=</a> <a id="2840" class="Function">⟨</a> <a id="2842" class="Bound">f</a> <a id="2844" class="Function">+</a> <a id="2846" class="Bound">g</a> <a id="2848" class="Function">⟩</a>
</pre>

### Implications

<pre class="Agda">
<a id="2893" class="Keyword">data</a>
  <a id="_⇒_"></a><a id="2900" href="BasicTypes.html#2900" class="Datatype Operator">_⇒_</a> <a id="2904" class="Symbol">(</a><a id="2905" href="BasicTypes.html#2905" class="Bound">A</a> <a id="2907" href="BasicTypes.html#2907" class="Bound">B</a> <a id="2909" class="Symbol">:</a> <a id="2911" href="Intro.html#1803" class="Function">Type</a> <a id="2916" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="2917" class="Symbol">)</a>
    <a id="2923" class="Symbol">:</a> <a id="2925" href="Intro.html#1803" class="Function">Type</a> <a id="2930" href="BasicTypes.html#2916" class="Bound">ℓ</a>
  <a id="2934" class="Keyword">where</a>
  <a id="_⇒_.fun"></a><a id="2942" href="BasicTypes.html#2942" class="InductiveConstructor">fun</a> <a id="2946" class="Symbol">:</a> <a id="2948" class="Symbol">(</a><a id="2949" href="BasicTypes.html#2905" class="Bound">A</a> <a id="2951" class="Symbol">→</a> <a id="2953" href="BasicTypes.html#2907" class="Bound">B</a><a id="2954" class="Symbol">)</a> <a id="2956" class="Symbol">→</a> <a id="2958" href="BasicTypes.html#2905" class="Bound">A</a> <a id="2960" href="BasicTypes.html#2900" class="Datatype Operator">⇒</a> <a id="2962" href="BasicTypes.html#2907" class="Bound">B</a>
</pre>

### Bi-implications

<pre class="Agda">
<a id="_⇔_"></a><a id="3010" href="BasicTypes.html#3010" class="Function Operator">_⇔_</a>
  <a id="3016" class="Symbol">:</a> <a id="3018" class="Symbol">∀</a> <a id="3020" class="Symbol">{</a><a id="3021" href="BasicTypes.html#3021" class="Bound">ℓ₁</a> <a id="3024" href="BasicTypes.html#3024" class="Bound">ℓ₂</a><a id="3026" class="Symbol">}</a>
  <a id="3030" class="Symbol">→</a> <a id="3032" href="Intro.html#1803" class="Function">Type</a> <a id="3037" href="BasicTypes.html#3021" class="Bound">ℓ₁</a> <a id="3040" class="Symbol">→</a> <a id="3042" href="Intro.html#1803" class="Function">Type</a> <a id="3047" href="BasicTypes.html#3024" class="Bound">ℓ₂</a>
  <a id="3052" class="Comment">-------------------</a>
  <a id="3074" class="Symbol">→</a> <a id="3076" href="Intro.html#1803" class="Function">Type</a> <a id="3081" class="Symbol">(</a><a id="3082" href="BasicTypes.html#3021" class="Bound">ℓ₁</a> <a id="3085" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="3087" href="BasicTypes.html#3024" class="Bound">ℓ₂</a><a id="3089" class="Symbol">)</a>

<a id="3092" href="BasicTypes.html#3092" class="Bound">A</a> <a id="3094" href="BasicTypes.html#3010" class="Function Operator">⇔</a> <a id="3096" href="BasicTypes.html#3096" class="Bound">B</a> <a id="3098" class="Symbol">=</a> <a id="3100" class="Symbol">(</a><a id="3101" href="BasicTypes.html#3092" class="Bound">A</a> <a id="3103" class="Symbol">→</a> <a id="3105" href="BasicTypes.html#3096" class="Bound">B</a><a id="3106" class="Symbol">)</a> <a id="3108" href="BasicTypes.html#2139" class="Function Operator">×</a> <a id="3110" class="Symbol">(</a><a id="3111" href="BasicTypes.html#3096" class="Bound">B</a> <a id="3113" class="Symbol">→</a> <a id="3115" href="BasicTypes.html#3092" class="Bound">A</a><a id="3116" class="Symbol">)</a>
</pre>

Synonyms:

<pre class="Agda">
<a id="_↔_"></a><a id="3154" href="BasicTypes.html#3154" class="Function Operator">_↔_</a> <a id="3158" class="Symbol">=</a> <a id="3160" href="BasicTypes.html#3010" class="Function Operator">_⇔_</a>

<a id="3165" class="Keyword">infix</a> <a id="3171" class="Number">30</a> <a id="3174" href="BasicTypes.html#3154" class="Function Operator">_↔_</a> <a id="3178" href="BasicTypes.html#3010" class="Function Operator">_⇔_</a>
</pre>

### Booleans

<pre class="Agda">
<a id="3221" class="Keyword">data</a>
  <a id="Bool"></a><a id="3228" href="BasicTypes.html#3228" class="Datatype">Bool</a>
    <a id="3237" class="Symbol">:</a> <a id="3239" href="Intro.html#1882" class="Function">Type₀</a>
  <a id="3247" class="Keyword">where</a>
  <a id="Bool.true"></a><a id="3255" href="BasicTypes.html#3255" class="InductiveConstructor">true</a>  <a id="3261" class="Symbol">:</a> <a id="3263" href="BasicTypes.html#3228" class="Datatype">Bool</a>
  <a id="Bool.false"></a><a id="3270" href="BasicTypes.html#3270" class="InductiveConstructor">false</a> <a id="3276" class="Symbol">:</a> <a id="3278" href="BasicTypes.html#3228" class="Datatype">Bool</a>
</pre>

Synonyms:

<pre class="Agda">
<a id="𝟚"></a><a id="3319" href="BasicTypes.html#3319" class="Function">𝟚</a>  <a id="3322" class="Symbol">=</a> <a id="3324" href="BasicTypes.html#3228" class="Datatype">Bool</a>
</pre>

Constructors synonyms:
<pre class="Agda">
<a id="3377" class="Keyword">pattern</a> <a id="𝟘₂"></a><a id="3385" href="BasicTypes.html#3385" class="InductiveConstructor">𝟘₂</a> <a id="3388" class="Symbol">=</a> <a id="3390" href="BasicTypes.html#3270" class="InductiveConstructor">false</a>
<a id="3396" class="Keyword">pattern</a> <a id="𝟙₂"></a><a id="3404" href="BasicTypes.html#3404" class="InductiveConstructor">𝟙₂</a> <a id="3407" class="Symbol">=</a> <a id="3409" href="BasicTypes.html#3255" class="InductiveConstructor">true</a>

<a id="3415" class="Keyword">pattern</a> <a id="ff"></a><a id="3423" href="BasicTypes.html#3423" class="InductiveConstructor">ff</a> <a id="3426" class="Symbol">=</a> <a id="3428" href="BasicTypes.html#3270" class="InductiveConstructor">false</a>
<a id="3434" class="Keyword">pattern</a> <a id="tt"></a><a id="3442" href="BasicTypes.html#3442" class="InductiveConstructor">tt</a> <a id="3445" class="Symbol">=</a> <a id="3447" href="BasicTypes.html#3255" class="InductiveConstructor">true</a>
</pre>

### Natural numbers

<pre class="Agda">
<a id="3498" class="Keyword">data</a>
  <a id="ℕ"></a><a id="3505" href="BasicTypes.html#3505" class="Datatype">ℕ</a>
    <a id="3511" class="Symbol">:</a> <a id="3513" href="Intro.html#1882" class="Function">Type₀</a>
  <a id="3521" class="Keyword">where</a>
  <a id="ℕ.zero"></a><a id="3529" href="BasicTypes.html#3529" class="InductiveConstructor">zero</a> <a id="3534" class="Symbol">:</a> <a id="3536" href="BasicTypes.html#3505" class="Datatype">ℕ</a>
  <a id="ℕ.succ"></a><a id="3540" href="BasicTypes.html#3540" class="InductiveConstructor">succ</a> <a id="3545" class="Symbol">:</a> <a id="3547" href="BasicTypes.html#3505" class="Datatype">ℕ</a> <a id="3549" class="Symbol">→</a> <a id="3551" href="BasicTypes.html#3505" class="Datatype">ℕ</a>
</pre>

Synonyms for natural numbers

<pre class="Agda">
<a id="Nat"></a><a id="3608" href="BasicTypes.html#3608" class="Function">Nat</a> <a id="3612" class="Symbol">=</a> <a id="3614" href="BasicTypes.html#3505" class="Datatype">ℕ</a>

<a id="3617" class="Keyword">pattern</a> <a id="zr"></a><a id="3625" href="BasicTypes.html#3625" class="InductiveConstructor">zr</a>  <a id="3629" class="Symbol">=</a> <a id="3631" href="BasicTypes.html#3529" class="InductiveConstructor">zero</a>
<a id="3636" class="Keyword">pattern</a> <a id="sc"></a><a id="3644" href="BasicTypes.html#3644" class="InductiveConstructor">sc</a> <a id="3647" class="Symbol">=</a> <a id="3649" href="BasicTypes.html#3540" class="InductiveConstructor">succ</a>

<a id="3655" class="Symbol">{-#</a> <a id="3659" class="Keyword">BUILTIN</a> <a id="3667" class="Pragma">NATURAL</a> <a id="3675" href="BasicTypes.html#3505" class="Datatype">ℕ</a> <a id="3677" class="Symbol">#-}</a>
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
<a id="4278" class="Keyword">data</a>
  <a id="_==_"></a><a id="4285" href="BasicTypes.html#4285" class="Datatype Operator">_==_</a> <a id="4290" class="Symbol">{</a><a id="4291" href="BasicTypes.html#4291" class="Bound">A</a> <a id="4293" class="Symbol">:</a> <a id="4295" href="Intro.html#1803" class="Function">Type</a> <a id="4300" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="4302" class="Symbol">}</a> <a id="4304" class="Symbol">(</a><a id="4305" href="BasicTypes.html#4305" class="Bound">a</a> <a id="4307" class="Symbol">:</a> <a id="4309" href="BasicTypes.html#4291" class="Bound">A</a><a id="4310" class="Symbol">)</a>
    <a id="4316" class="Symbol">:</a> <a id="4318" href="BasicTypes.html#4291" class="Bound">A</a> <a id="4320" class="Symbol">→</a> <a id="4322" href="Intro.html#1803" class="Function">Type</a> <a id="4327" href="BasicTypes.html#4300" class="Bound">ℓᵢ</a>
  <a id="4332" class="Keyword">where</a>
  <a id="_==_.idp"></a><a id="4340" href="BasicTypes.html#4340" class="InductiveConstructor">idp</a> <a id="4344" class="Symbol">:</a> <a id="4346" href="BasicTypes.html#4305" class="Bound">a</a> <a id="4348" href="BasicTypes.html#4285" class="Datatype Operator">==</a> <a id="4351" href="BasicTypes.html#4305" class="Bound">a</a>
</pre>

<pre class="Agda">
<a id="4378" class="Comment">-- synonyms for the identity type</a>
<a id="Eq"></a><a id="4412" href="BasicTypes.html#4412" class="Function">Eq</a>   <a id="4417" class="Symbol">=</a> <a id="4419" href="BasicTypes.html#4285" class="Datatype Operator">_==_</a>
<a id="Id"></a><a id="4424" href="BasicTypes.html#4424" class="Function">Id</a>   <a id="4429" class="Symbol">=</a> <a id="4431" href="BasicTypes.html#4285" class="Datatype Operator">_==_</a>
<a id="Path"></a><a id="4436" href="BasicTypes.html#4436" class="Function">Path</a> <a id="4441" class="Symbol">=</a> <a id="4443" href="BasicTypes.html#4285" class="Datatype Operator">_==_</a>
<a id="_⇝_"></a><a id="4448" href="BasicTypes.html#4448" class="Function Operator">_⇝_</a>  <a id="4453" class="Symbol">=</a> <a id="4455" href="BasicTypes.html#4285" class="Datatype Operator">_==_</a>   <a id="4462" class="Comment">-- &#39;\r~&#39;</a>
<a id="_≡_"></a><a id="4471" href="BasicTypes.html#4471" class="Function Operator">_≡_</a>  <a id="4476" class="Symbol">=</a> <a id="4478" href="BasicTypes.html#4285" class="Datatype Operator">_==_</a>   <a id="4485" class="Comment">-- &#39;\equiv&#39;</a>

<a id="4498" class="Keyword">infix</a> <a id="4504" class="Number">30</a> <a id="4507" href="BasicTypes.html#4285" class="Datatype Operator">_==_</a> <a id="4512" href="BasicTypes.html#4448" class="Function Operator">_⇝_</a> <a id="4516" href="BasicTypes.html#4471" class="Function Operator">_≡_</a>

<a id="4521" class="Symbol">{-#</a> <a id="4525" class="Keyword">BUILTIN</a> <a id="4533" class="Pragma">EQUALITY</a> <a id="4542" href="BasicTypes.html#4285" class="Datatype Operator">_==_</a>  <a id="4548" class="Symbol">#-}</a>
</pre>

<pre class="Agda">
<a id="refl"></a><a id="4577" href="BasicTypes.html#4577" class="Function">refl</a>
  <a id="4584" class="Symbol">:</a> <a id="4586" class="Symbol">∀</a> <a id="4588" class="Symbol">{</a><a id="4589" href="BasicTypes.html#4589" class="Bound">A</a> <a id="4591" class="Symbol">:</a> <a id="4593" href="Intro.html#1803" class="Function">Type</a> <a id="4598" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="4600" class="Symbol">}</a>
  <a id="4604" class="Symbol">→</a> <a id="4606" class="Symbol">(</a><a id="4607" href="BasicTypes.html#4607" class="Bound">a</a> <a id="4609" class="Symbol">:</a> <a id="4611" href="BasicTypes.html#4589" class="Bound">A</a><a id="4612" class="Symbol">)</a>
  <a id="4616" class="Comment">-----------------</a>
  <a id="4636" class="Symbol">→</a> <a id="4638" href="BasicTypes.html#4607" class="Bound">a</a> <a id="4640" href="BasicTypes.html#4285" class="Datatype Operator">==</a> <a id="4643" href="BasicTypes.html#4607" class="Bound">a</a>

<a id="4646" href="BasicTypes.html#4577" class="Function">refl</a> <a id="4651" class="Symbol">{</a><a id="4652" href="BasicTypes.html#4652" class="Bound">ℓᵢ</a><a id="4654" class="Symbol">}{</a><a id="4656" href="BasicTypes.html#4656" class="Bound">A</a><a id="4657" class="Symbol">}</a> <a id="4659" href="BasicTypes.html#4659" class="Bound">a</a> <a id="4661" class="Symbol">=</a> <a id="4663" href="BasicTypes.html#4340" class="InductiveConstructor">idp</a>
</pre>

Symmetry property for the identity types.

<pre class="Agda">
<a id="sym"></a><a id="4735" href="BasicTypes.html#4735" class="Function">sym</a>
  <a id="4741" class="Symbol">:</a> <a id="4743" class="Symbol">∀</a> <a id="4745" class="Symbol">{</a><a id="4746" href="BasicTypes.html#4746" class="Bound">A</a> <a id="4748" class="Symbol">:</a> <a id="4750" href="Intro.html#1803" class="Function">Type</a> <a id="4755" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="4756" class="Symbol">}{</a><a id="4758" href="BasicTypes.html#4758" class="Bound">x</a> <a id="4760" href="BasicTypes.html#4760" class="Bound">y</a> <a id="4762" class="Symbol">:</a> <a id="4764" href="BasicTypes.html#4746" class="Bound">A</a><a id="4765" class="Symbol">}</a>
  <a id="4769" class="Symbol">→</a> <a id="4771" href="BasicTypes.html#4758" class="Bound">x</a> <a id="4773" href="BasicTypes.html#4285" class="Datatype Operator">==</a> <a id="4776" href="BasicTypes.html#4760" class="Bound">y</a>
  <a id="4780" class="Comment">--------</a>
  <a id="4791" class="Symbol">→</a> <a id="4793" href="BasicTypes.html#4760" class="Bound">y</a> <a id="4795" href="BasicTypes.html#4285" class="Datatype Operator">==</a> <a id="4798" href="BasicTypes.html#4758" class="Bound">x</a>

<a id="4801" href="BasicTypes.html#4735" class="Function">sym</a> <a id="4805" href="BasicTypes.html#4340" class="InductiveConstructor">idp</a> <a id="4809" class="Symbol">=</a> <a id="4811" href="BasicTypes.html#4340" class="InductiveConstructor">idp</a>

<a id="4816" class="Keyword">syntax</a> <a id="4823" href="BasicTypes.html#4735" class="Function">sym</a> <a id="4827" class="Bound">p</a> <a id="4829" class="Symbol">=</a> <a id="4831" class="Function">−</a> <a id="4833" class="Bound">p</a>
</pre>

To work with identity types, we have its induction principle as the
J-eliminator.

*Paulin-Mohring J rule*

{: .foldable until="6" }
<pre class="Agda">
<a id="J"></a><a id="4993" href="BasicTypes.html#4993" class="Function">J</a>
  <a id="4997" class="Symbol">:</a> <a id="4999" class="Symbol">∀</a> <a id="5001" class="Symbol">{</a><a id="5002" href="BasicTypes.html#5002" class="Bound">A</a> <a id="5004" class="Symbol">:</a> <a id="5006" href="Intro.html#1803" class="Function">Type</a> <a id="5011" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="5013" class="Symbol">}</a> <a id="5015" class="Symbol">{</a><a id="5016" href="BasicTypes.html#5016" class="Bound">a</a> <a id="5018" class="Symbol">:</a> <a id="5020" href="BasicTypes.html#5002" class="Bound">A</a><a id="5021" class="Symbol">}</a>
  <a id="5025" class="Symbol">→</a> <a id="5027" class="Symbol">(</a><a id="5028" href="BasicTypes.html#5028" class="Bound">B</a> <a id="5030" class="Symbol">:</a> <a id="5032" class="Symbol">(</a><a id="5033" href="BasicTypes.html#5033" class="Bound">a&#39;</a> <a id="5036" class="Symbol">:</a> <a id="5038" href="BasicTypes.html#5002" class="Bound">A</a><a id="5039" class="Symbol">)</a> <a id="5041" class="Symbol">(</a><a id="5042" href="BasicTypes.html#5042" class="Bound">p</a> <a id="5044" class="Symbol">:</a> <a id="5046" href="BasicTypes.html#5016" class="Bound">a</a> <a id="5048" href="BasicTypes.html#4285" class="Datatype Operator">==</a> <a id="5051" href="BasicTypes.html#5033" class="Bound">a&#39;</a><a id="5053" class="Symbol">)</a> <a id="5055" class="Symbol">→</a> <a id="5057" href="Intro.html#1803" class="Function">Type</a> <a id="5062" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="5064" class="Symbol">)</a>
  <a id="5068" class="Symbol">→</a> <a id="5070" class="Symbol">(</a><a id="5071" href="BasicTypes.html#5071" class="Bound">d</a> <a id="5073" class="Symbol">:</a> <a id="5075" href="BasicTypes.html#5028" class="Bound">B</a> <a id="5077" href="BasicTypes.html#5016" class="Bound">a</a> <a id="5079" href="BasicTypes.html#4340" class="InductiveConstructor">idp</a><a id="5082" class="Symbol">)</a>
  <a id="5086" class="Comment">----------------------------------------</a>
  <a id="5129" class="Symbol">→</a> <a id="5131" class="Symbol">{</a><a id="5132" href="BasicTypes.html#5132" class="Bound">a&#39;</a> <a id="5135" class="Symbol">:</a> <a id="5137" href="BasicTypes.html#5002" class="Bound">A</a><a id="5138" class="Symbol">}</a> <a id="5140" class="Symbol">(</a><a id="5141" href="BasicTypes.html#5141" class="Bound">p</a> <a id="5143" class="Symbol">:</a> <a id="5145" href="BasicTypes.html#5016" class="Bound">a</a> <a id="5147" href="BasicTypes.html#4285" class="Datatype Operator">==</a> <a id="5150" href="BasicTypes.html#5132" class="Bound">a&#39;</a><a id="5152" class="Symbol">)</a> <a id="5154" class="Symbol">→</a> <a id="5156" href="BasicTypes.html#5028" class="Bound">B</a> <a id="5158" href="BasicTypes.html#5132" class="Bound">a&#39;</a> <a id="5161" href="BasicTypes.html#5141" class="Bound">p</a>

<a id="5164" href="BasicTypes.html#4993" class="Function">J</a> <a id="5166" class="Symbol">{</a><a id="5167" class="Argument">a</a> <a id="5169" class="Symbol">=</a> <a id="5171" href="BasicTypes.html#5171" class="Bound">a</a><a id="5172" class="Symbol">}</a> <a id="5174" href="BasicTypes.html#5174" class="Bound">B</a> <a id="5176" href="BasicTypes.html#5176" class="Bound">d</a> <a id="5178" href="BasicTypes.html#4340" class="InductiveConstructor">idp</a> <a id="5182" class="Symbol">=</a> <a id="5184" href="BasicTypes.html#5176" class="Bound">d</a>
</pre>

{: .foldable until="6" }
<pre class="Agda">
<a id="J&#39;"></a><a id="5236" href="BasicTypes.html#5236" class="Function">J&#39;</a>
  <a id="5241" class="Symbol">:</a> <a id="5243" class="Symbol">∀</a> <a id="5245" class="Symbol">{</a><a id="5246" href="BasicTypes.html#5246" class="Bound">A</a> <a id="5248" class="Symbol">:</a> <a id="5250" href="Intro.html#1803" class="Function">Type</a> <a id="5255" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="5257" class="Symbol">}</a> <a id="5259" class="Symbol">{</a><a id="5260" href="BasicTypes.html#5260" class="Bound">a</a> <a id="5262" class="Symbol">:</a> <a id="5264" href="BasicTypes.html#5246" class="Bound">A</a><a id="5265" class="Symbol">}</a>
  <a id="5269" class="Symbol">→</a> <a id="5271" class="Symbol">(</a><a id="5272" href="BasicTypes.html#5272" class="Bound">B</a> <a id="5274" class="Symbol">:</a> <a id="5276" class="Symbol">(</a><a id="5277" href="BasicTypes.html#5277" class="Bound">a&#39;</a> <a id="5280" class="Symbol">:</a> <a id="5282" href="BasicTypes.html#5246" class="Bound">A</a><a id="5283" class="Symbol">)</a> <a id="5285" class="Symbol">(</a><a id="5286" href="BasicTypes.html#5286" class="Bound">p</a> <a id="5288" class="Symbol">:</a> <a id="5290" href="BasicTypes.html#5277" class="Bound">a&#39;</a> <a id="5293" href="BasicTypes.html#4285" class="Datatype Operator">==</a> <a id="5296" href="BasicTypes.html#5260" class="Bound">a</a><a id="5297" class="Symbol">)</a> <a id="5299" class="Symbol">→</a> <a id="5301" href="Intro.html#1803" class="Function">Type</a> <a id="5306" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="5308" class="Symbol">)</a>
  <a id="5312" class="Symbol">→</a> <a id="5314" class="Symbol">(</a><a id="5315" href="BasicTypes.html#5315" class="Bound">d</a> <a id="5317" class="Symbol">:</a> <a id="5319" href="BasicTypes.html#5272" class="Bound">B</a> <a id="5321" href="BasicTypes.html#5260" class="Bound">a</a> <a id="5323" href="BasicTypes.html#4340" class="InductiveConstructor">idp</a><a id="5326" class="Symbol">)</a>
  <a id="5330" class="Comment">----------------------------------------</a>
  <a id="5373" class="Symbol">→</a> <a id="5375" class="Symbol">{</a><a id="5376" href="BasicTypes.html#5376" class="Bound">a&#39;</a> <a id="5379" class="Symbol">:</a> <a id="5381" href="BasicTypes.html#5246" class="Bound">A</a><a id="5382" class="Symbol">}</a> <a id="5384" class="Symbol">(</a><a id="5385" href="BasicTypes.html#5385" class="Bound">p</a> <a id="5387" class="Symbol">:</a> <a id="5389" href="BasicTypes.html#5376" class="Bound">a&#39;</a> <a id="5392" href="BasicTypes.html#4285" class="Datatype Operator">==</a> <a id="5395" href="BasicTypes.html#5260" class="Bound">a</a><a id="5396" class="Symbol">)</a> <a id="5398" class="Symbol">→</a> <a id="5400" href="BasicTypes.html#5272" class="Bound">B</a> <a id="5402" href="BasicTypes.html#5376" class="Bound">a&#39;</a> <a id="5405" href="BasicTypes.html#5385" class="Bound">p</a>

<a id="5408" href="BasicTypes.html#5236" class="Function">J&#39;</a> <a id="5411" class="Symbol">{</a><a id="5412" class="Argument">a</a> <a id="5414" class="Symbol">=</a> <a id="5416" href="BasicTypes.html#5416" class="Bound">a</a><a id="5417" class="Symbol">}</a> <a id="5419" href="BasicTypes.html#5419" class="Bound">B</a> <a id="5421" href="BasicTypes.html#5421" class="Bound">d</a> <a id="5423" href="BasicTypes.html#4340" class="InductiveConstructor">idp</a> <a id="5427" class="Symbol">=</a> <a id="5429" href="BasicTypes.html#5421" class="Bound">d</a>
</pre>
