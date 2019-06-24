
---
layout: page
title: "Transport"
category: lemmas functions transport
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
<a id="211" class="Symbol">{-#</a> <a id="215" class="Keyword">OPTIONS</a> <a id="223" class="Pragma">--without-K</a> <a id="235" class="Symbol">#-}</a>
<a id="239" class="Keyword">open</a> <a id="244" class="Keyword">import</a> <a id="251" href="BasicTypes.html" class="Module">BasicTypes</a> <a id="262" class="Keyword">public</a>
<a id="269" class="Keyword">open</a> <a id="274" class="Keyword">import</a> <a id="281" href="AlgebraOnPaths.html" class="Module">AlgebraOnPaths</a> <a id="296" class="Keyword">public</a>
</pre>
</div>

## Transport

![path](/assets/ipe-images/transport-fiber-minihott.png){: width="50%" align="right" }

{: .foldable until="6" }
<pre class="Agda">
<a id="transport"></a><a id="462" href="Transport.html#462" class="Function">transport</a>
  <a id="474" class="Symbol">:</a> <a id="476" class="Symbol">∀</a> <a id="478" class="Symbol">{</a><a id="479" href="Transport.html#479" class="Bound">A</a> <a id="481" class="Symbol">:</a> <a id="483" href="Intro.html#1803" class="Function">Type</a> <a id="488" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="490" class="Symbol">}</a>
  <a id="494" class="Symbol">→</a> <a id="496" class="Symbol">(</a><a id="497" href="Transport.html#497" class="Bound">C</a> <a id="499" class="Symbol">:</a> <a id="501" href="Transport.html#479" class="Bound">A</a> <a id="503" class="Symbol">→</a> <a id="505" href="Intro.html#1803" class="Function">Type</a> <a id="510" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="512" class="Symbol">)</a> <a id="514" class="Symbol">{</a><a id="515" href="Transport.html#515" class="Bound">a₁</a> <a id="518" href="Transport.html#518" class="Bound">a₂</a> <a id="521" class="Symbol">:</a> <a id="523" href="Transport.html#479" class="Bound">A</a><a id="524" class="Symbol">}</a>
  <a id="528" class="Symbol">→</a> <a id="530" class="Symbol">(</a><a id="531" href="Transport.html#531" class="Bound">p</a> <a id="533" class="Symbol">:</a> <a id="535" href="Transport.html#515" class="Bound">a₁</a> <a id="538" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="541" href="Transport.html#518" class="Bound">a₂</a><a id="543" class="Symbol">)</a>
  <a id="547" class="Comment">-------------------------------</a>
  <a id="581" class="Symbol">→</a> <a id="583" class="Symbol">(</a><a id="584" href="Transport.html#497" class="Bound">C</a> <a id="586" href="Transport.html#515" class="Bound">a₁</a> <a id="589" class="Symbol">→</a> <a id="591" href="Transport.html#497" class="Bound">C</a> <a id="593" href="Transport.html#518" class="Bound">a₂</a><a id="595" class="Symbol">)</a>

<a id="598" href="Transport.html#462" class="Function">transport</a> <a id="608" href="Transport.html#608" class="Bound">C</a> <a id="610" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a> <a id="614" class="Symbol">=</a> <a id="616" class="Symbol">(λ</a> <a id="619" href="Transport.html#619" class="Bound">x</a> <a id="621" class="Symbol">→</a> <a id="623" href="Transport.html#619" class="Bound">x</a><a id="624" class="Symbol">)</a>
</pre>

<pre class="Agda">
<a id="651" class="Comment">-- synonyms</a>
<a id="tr"></a><a id="663" href="Transport.html#663" class="Function">tr</a>     <a id="670" class="Symbol">=</a> <a id="672" href="Transport.html#462" class="Function">transport</a>
<a id="tr₁"></a><a id="682" href="Transport.html#682" class="Function">tr₁</a>    <a id="689" class="Symbol">=</a> <a id="691" href="Transport.html#462" class="Function">transport</a>
<a id="transp"></a><a id="701" href="Transport.html#701" class="Function">transp</a> <a id="708" class="Symbol">=</a> <a id="710" href="Transport.html#462" class="Function">transport</a>
</pre>

### Coercion

{: .foldable until="5" }
<pre class="Agda">
<a id="coe"></a><a id="784" href="Transport.html#784" class="Function">coe</a>
  <a id="790" class="Symbol">:</a> <a id="792" class="Symbol">∀</a> <a id="794" class="Symbol">{</a><a id="795" href="Transport.html#795" class="Bound">A</a> <a id="797" href="Transport.html#797" class="Bound">B</a> <a id="799" class="Symbol">:</a> <a id="801" href="Intro.html#1803" class="Function">Type</a> <a id="806" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="807" class="Symbol">}</a>
  <a id="811" class="Symbol">→</a> <a id="813" href="Transport.html#795" class="Bound">A</a> <a id="815" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="818" href="Transport.html#797" class="Bound">B</a>
  <a id="822" class="Comment">---------</a>
  <a id="834" class="Symbol">→</a> <a id="836" class="Symbol">(</a><a id="837" href="Transport.html#795" class="Bound">A</a> <a id="839" class="Symbol">→</a> <a id="841" href="Transport.html#797" class="Bound">B</a><a id="842" class="Symbol">)</a>

<a id="845" href="Transport.html#784" class="Function">coe</a> <a id="849" href="Transport.html#849" class="Bound">p</a> <a id="851" href="Transport.html#851" class="Bound">a</a> <a id="853" class="Symbol">=</a> <a id="855" href="Transport.html#462" class="Function">transport</a> <a id="865" class="Symbol">(λ</a> <a id="868" href="Transport.html#868" class="Bound">X</a> <a id="870" class="Symbol">→</a> <a id="872" href="Transport.html#868" class="Bound">X</a><a id="873" class="Symbol">)</a> <a id="875" href="Transport.html#849" class="Bound">p</a> <a id="877" href="Transport.html#851" class="Bound">a</a>
</pre>

### Pathovers

Let be `A : Type`, `a₁, a₂ : A`, `C : A → Type`, `c₁ : C a₁` and `c₂ : C a₂`.
Using the same notation from {% cite hottbook %}, one of the definitions for the
Pathover type is as the shorthand for the path between the transport along a
path `α : a₁ = a₂` of the point `c₁ : C a₁` and the point `c₂` in the fiber `C
a₂`. That is, a pathover is a term that inhabit the type `transport C α c₁ = c₂`
also denoted by `PathOver C c₁ α c₂`.

![path](/assets/ipe-images/pathover-3.png){: width="45%" align="right" }

<pre class="Agda">
<a id="PathOver"></a><a id="1428" href="Transport.html#1428" class="Function">PathOver</a>
  <a id="1439" class="Symbol">:</a> <a id="1441" class="Symbol">{</a><a id="1442" href="Transport.html#1442" class="Bound">A</a> <a id="1444" class="Symbol">:</a> <a id="1446" href="Intro.html#1803" class="Function">Type</a> <a id="1451" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="1453" class="Symbol">}</a>
  <a id="1457" class="Symbol">→</a> <a id="1459" class="Symbol">(</a><a id="1460" href="Transport.html#1460" class="Bound">B</a> <a id="1462" class="Symbol">:</a> <a id="1464" href="Transport.html#1442" class="Bound">A</a> <a id="1466" class="Symbol">→</a> <a id="1468" href="Intro.html#1803" class="Function">Type</a> <a id="1473" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="1475" class="Symbol">)</a> <a id="1477" class="Symbol">{</a><a id="1478" href="Transport.html#1478" class="Bound">a₁</a> <a id="1481" href="Transport.html#1481" class="Bound">a₂</a> <a id="1484" class="Symbol">:</a> <a id="1486" href="Transport.html#1442" class="Bound">A</a><a id="1487" class="Symbol">}</a>
  <a id="1491" class="Symbol">→</a> <a id="1493" class="Symbol">(</a><a id="1494" href="Transport.html#1494" class="Bound">b₁</a> <a id="1497" class="Symbol">:</a> <a id="1499" href="Transport.html#1460" class="Bound">B</a> <a id="1501" href="Transport.html#1478" class="Bound">a₁</a><a id="1503" class="Symbol">)</a> <a id="1505" class="Symbol">→</a> <a id="1507" class="Symbol">(</a><a id="1508" href="Transport.html#1508" class="Bound">α</a> <a id="1510" class="Symbol">:</a> <a id="1512" href="Transport.html#1478" class="Bound">a₁</a> <a id="1515" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="1518" href="Transport.html#1481" class="Bound">a₂</a><a id="1520" class="Symbol">)</a> <a id="1522" class="Symbol">→</a> <a id="1524" class="Symbol">(</a><a id="1525" href="Transport.html#1525" class="Bound">b₂</a> <a id="1528" class="Symbol">:</a> <a id="1530" href="Transport.html#1460" class="Bound">B</a> <a id="1532" href="Transport.html#1481" class="Bound">a₂</a><a id="1534" class="Symbol">)</a>
  <a id="1538" class="Comment">--------------------------------------------</a>
  <a id="1585" class="Symbol">→</a> <a id="1587" href="Intro.html#1803" class="Function">Type</a> <a id="1592" href="Intro.html#2248" class="Generalizable">ℓⱼ</a>

<a id="1596" href="Transport.html#1428" class="Function">PathOver</a> <a id="1605" href="Transport.html#1605" class="Bound">B</a> <a id="1607" href="Transport.html#1607" class="Bound">b₁</a> <a id="1610" href="Transport.html#1610" class="Bound">α</a> <a id="1612" href="Transport.html#1612" class="Bound">b₂</a> <a id="1615" class="Symbol">=</a> <a id="1617" href="Transport.html#663" class="Function">tr</a> <a id="1620" href="Transport.html#1605" class="Bound">B</a> <a id="1622" href="Transport.html#1610" class="Bound">α</a> <a id="1624" href="Transport.html#1607" class="Bound">b₁</a> <a id="1627" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="1630" href="Transport.html#1612" class="Bound">b₂</a>
</pre>

<pre class="Agda">
<a id="1658" class="Keyword">infix</a> <a id="1664" class="Number">30</a> <a id="1667" href="Transport.html#1428" class="Function">PathOver</a>

<a id="1677" class="Keyword">syntax</a> <a id="1684" href="Transport.html#1428" class="Function">PathOver</a> <a id="1693" class="Bound">B</a> <a id="1695" class="Bound">b₁</a> <a id="1698" class="Bound">α</a> <a id="1700" class="Bound">b₂</a>  <a id="1704" class="Symbol">=</a> <a id="1706" class="Bound">b₁</a> <a id="1709" class="Function">==</a> <a id="1712" class="Bound">b₂</a> <a id="1715" class="Function">[</a> <a id="1717" class="Bound">B</a> <a id="1719" class="Function">↓</a> <a id="1721" class="Bound">α</a> <a id="1723" class="Function">]</a>
</pre>

Another notation:

<pre class="Agda">
<a id="≡Over"></a><a id="1769" href="Transport.html#1769" class="Function">≡Over</a> <a id="1775" class="Symbol">=</a> <a id="1777" href="Transport.html#1428" class="Function">PathOver</a>
</pre>

<pre class="Agda">
<a id="1811" class="Keyword">infix</a> <a id="1817" class="Number">30</a> <a id="1820" href="Transport.html#1769" class="Function">≡Over</a>
<a id="1826" class="Keyword">syntax</a> <a id="1833" href="Transport.html#1769" class="Function">≡Over</a> <a id="1839" class="Bound">B</a> <a id="1841" class="Bound">b</a> <a id="1843" class="Bound">α</a> <a id="1845" class="Bound">b&#39;</a> <a id="1848" class="Symbol">=</a> <a id="1850" class="Bound">b</a> <a id="1852" class="Function">≡</a> <a id="1854" class="Bound">b&#39;</a> <a id="1857" class="Function">[</a> <a id="1859" class="Bound">B</a> <a id="1861" class="Function">/</a> <a id="1863" class="Bound">α</a> <a id="1865" class="Function">]</a>
</pre>

Transport and composition:

<pre class="Agda">
<a id="tr₁-≡"></a><a id="1920" href="Transport.html#1920" class="Function">tr₁-≡</a>
  <a id="1928" class="Symbol">:</a> <a id="1930" class="Symbol">{</a><a id="1931" href="Transport.html#1931" class="Bound">A</a> <a id="1933" class="Symbol">:</a> <a id="1935" href="Intro.html#1803" class="Function">Type</a> <a id="1940" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="1941" class="Symbol">}</a> <a id="1943" class="Symbol">{</a><a id="1944" href="Transport.html#1944" class="Bound">a₀</a> <a id="1947" href="Transport.html#1947" class="Bound">a₁</a> <a id="1950" href="Transport.html#1950" class="Bound">a₂</a> <a id="1953" class="Symbol">:</a> <a id="1955" href="Transport.html#1931" class="Bound">A</a><a id="1956" class="Symbol">}</a>
  <a id="1960" class="Symbol">→</a> <a id="1962" class="Symbol">(</a><a id="1963" href="Transport.html#1963" class="Bound">α</a> <a id="1965" class="Symbol">:</a> <a id="1967" href="Transport.html#1947" class="Bound">a₁</a> <a id="1970" href="BasicTypes.html#4470" class="Function Operator">≡</a> <a id="1972" href="Transport.html#1950" class="Bound">a₂</a><a id="1974" class="Symbol">)</a>
  <a id="1978" class="Symbol">→</a> <a id="1980" class="Symbol">(</a><a id="1981" href="Transport.html#1981" class="Bound">ε</a> <a id="1983" class="Symbol">:</a> <a id="1985" href="Transport.html#1944" class="Bound">a₀</a> <a id="1988" href="BasicTypes.html#4470" class="Function Operator">≡</a> <a id="1990" href="Transport.html#1947" class="Bound">a₁</a><a id="1992" class="Symbol">)</a>
  <a id="1996" class="Symbol">→</a> <a id="1998" class="Symbol">(</a><a id="1999" href="Transport.html#1999" class="Bound">δ</a> <a id="2001" class="Symbol">:</a> <a id="2003" href="Transport.html#1944" class="Bound">a₀</a> <a id="2006" href="BasicTypes.html#4470" class="Function Operator">≡</a> <a id="2008" href="Transport.html#1950" class="Bound">a₂</a><a id="2010" class="Symbol">)</a>
  <a id="2014" class="Symbol">→</a> <a id="2016" class="Symbol">(</a><a id="2017" href="Transport.html#1981" class="Bound">ε</a> <a id="2019" href="Transport.html#1769" class="Function">≡</a> <a id="2021" href="Transport.html#1999" class="Bound">δ</a> <a id="2023" href="Transport.html#1769" class="Function">[</a> <a id="2025" class="Symbol">(λ</a> <a id="2028" href="Transport.html#2028" class="Bound">a&#39;</a> <a id="2031" class="Symbol">→</a> <a id="2033" href="Transport.html#1944" class="Bound">a₀</a> <a id="2036" href="BasicTypes.html#4470" class="Function Operator">≡</a> <a id="2038" href="Transport.html#2028" class="Bound">a&#39;</a><a id="2040" class="Symbol">)</a> <a id="2042" href="Transport.html#1769" class="Function">/</a> <a id="2044" href="Transport.html#1963" class="Bound">α</a> <a id="2046" href="Transport.html#1769" class="Function">]</a><a id="2047" class="Symbol">)</a>
  <a id="2051" class="Comment">----------------------------------</a>
  <a id="2088" class="Symbol">→</a> <a id="2090" href="Transport.html#1963" class="Bound">α</a> <a id="2092" href="BasicTypes.html#4470" class="Function Operator">≡</a> <a id="2094" href="BasicFunctions.html#4299" class="Function Operator">!</a> <a id="2096" href="Transport.html#1981" class="Bound">ε</a> <a id="2098" href="BasicFunctions.html#3893" class="Function Operator">·</a> <a id="2100" href="Transport.html#1999" class="Bound">δ</a>

<a id="2103" href="Transport.html#1920" class="Function">tr₁-≡</a> <a id="2109" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a> <a id="2113" class="DottedPattern Symbol">.</a><a id="2114" href="BasicTypes.html#4339" class="DottedPattern InductiveConstructor">idp</a> <a id="2118" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a> <a id="2122" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a> <a id="2126" class="Symbol">=</a> <a id="2128" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a>
</pre>


### Transport along pathovers

{: .foldable until="9"}
<pre class="Agda">
<a id="tr₂"></a><a id="2213" href="Transport.html#2213" class="Function">tr₂</a>
  <a id="2219" class="Symbol">:</a> <a id="2221" class="Symbol">{</a><a id="2222" href="Transport.html#2222" class="Bound">A</a> <a id="2224" class="Symbol">:</a> <a id="2226" href="Intro.html#1803" class="Function">Type</a> <a id="2231" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="2233" class="Symbol">}</a> <a id="2235" class="Symbol">{</a><a id="2236" href="Transport.html#2236" class="Bound">B</a> <a id="2238" class="Symbol">:</a> <a id="2240" href="Transport.html#2222" class="Bound">A</a> <a id="2242" class="Symbol">→</a> <a id="2244" href="Intro.html#1803" class="Function">Type</a> <a id="2249" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="2251" class="Symbol">}</a>
  <a id="2255" class="Symbol">→</a> <a id="2257" class="Symbol">(</a><a id="2258" href="Transport.html#2258" class="Bound">C</a> <a id="2260" class="Symbol">:</a> <a id="2262" class="Symbol">(</a><a id="2263" href="Transport.html#2263" class="Bound">x</a> <a id="2265" class="Symbol">:</a> <a id="2267" href="Transport.html#2222" class="Bound">A</a><a id="2268" class="Symbol">)</a> <a id="2270" class="Symbol">→</a> <a id="2272" class="Symbol">(</a><a id="2273" href="Transport.html#2273" class="Bound">b</a> <a id="2275" class="Symbol">:</a> <a id="2277" href="Transport.html#2236" class="Bound">B</a> <a id="2279" href="Transport.html#2263" class="Bound">x</a><a id="2280" class="Symbol">)</a> <a id="2282" class="Symbol">→</a> <a id="2284" href="Intro.html#1803" class="Function">Type</a> <a id="2289" href="Intro.html#2251" class="Generalizable">ℓₖ</a><a id="2291" class="Symbol">)</a>
  <a id="2295" class="Symbol">→</a> <a id="2297" class="Symbol">{</a><a id="2298" href="Transport.html#2298" class="Bound">a₁</a> <a id="2301" href="Transport.html#2301" class="Bound">a₂</a> <a id="2304" class="Symbol">:</a> <a id="2306" href="Transport.html#2222" class="Bound">A</a><a id="2307" class="Symbol">}{</a><a id="2309" href="Transport.html#2309" class="Bound">b₁</a> <a id="2312" class="Symbol">:</a> <a id="2314" href="Transport.html#2236" class="Bound">B</a> <a id="2316" href="Transport.html#2298" class="Bound">a₁</a><a id="2318" class="Symbol">}{</a><a id="2320" href="Transport.html#2320" class="Bound">b₂</a> <a id="2323" class="Symbol">:</a> <a id="2325" href="Transport.html#2236" class="Bound">B</a> <a id="2327" href="Transport.html#2301" class="Bound">a₂</a><a id="2329" class="Symbol">}</a>
  <a id="2333" class="Symbol">→</a> <a id="2335" class="Symbol">(</a><a id="2336" href="Transport.html#2336" class="Bound">p</a> <a id="2338" class="Symbol">:</a> <a id="2340" href="Transport.html#2298" class="Bound">a₁</a> <a id="2343" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="2346" href="Transport.html#2301" class="Bound">a₂</a><a id="2348" class="Symbol">)</a>
  <a id="2352" class="Symbol">→</a> <a id="2354" class="Symbol">(</a><a id="2355" href="Transport.html#2355" class="Bound">q</a> <a id="2357" class="Symbol">:</a> <a id="2359" href="Transport.html#2309" class="Bound">b₁</a> <a id="2362" href="Transport.html#1428" class="Function">==</a> <a id="2365" href="Transport.html#2320" class="Bound">b₂</a> <a id="2368" href="Transport.html#1428" class="Function">[</a> <a id="2370" href="Transport.html#2236" class="Bound">B</a> <a id="2372" href="Transport.html#1428" class="Function">↓</a> <a id="2374" href="Transport.html#2336" class="Bound">p</a> <a id="2376" href="Transport.html#1428" class="Function">]</a><a id="2377" class="Symbol">)</a>
  <a id="2381" class="Symbol">→</a> <a id="2383" href="Transport.html#2258" class="Bound">C</a> <a id="2385" href="Transport.html#2298" class="Bound">a₁</a> <a id="2388" href="Transport.html#2309" class="Bound">b₁</a>
  <a id="2393" class="Comment">-----------------------</a>
  <a id="2419" class="Symbol">→</a> <a id="2421" href="Transport.html#2258" class="Bound">C</a> <a id="2423" href="Transport.html#2301" class="Bound">a₂</a> <a id="2426" href="Transport.html#2320" class="Bound">b₂</a>

<a id="2430" href="Transport.html#2213" class="Function">tr₂</a> <a id="2434" href="Transport.html#2434" class="Bound">C</a> <a id="2436" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a> <a id="2440" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a> <a id="2444" class="Symbol">=</a> <a id="2446" href="BasicFunctions.html#376" class="Function">id</a>
</pre>

<pre class="Agda">
<a id="2474" class="Comment">-- Gylterud&#39;s tr₂-commute</a>
<a id="tr₂-commute"></a><a id="2500" href="Transport.html#2500" class="Function">tr₂-commute</a>
  <a id="2514" class="Symbol">:</a> <a id="2516" class="Symbol">{</a><a id="2517" href="Transport.html#2517" class="Bound">A</a> <a id="2519" class="Symbol">:</a> <a id="2521" href="Intro.html#1803" class="Function">Type</a> <a id="2526" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="2528" class="Symbol">}</a> <a id="2530" class="Symbol">{</a><a id="2531" href="Transport.html#2531" class="Bound">B</a> <a id="2533" class="Symbol">:</a> <a id="2535" href="Transport.html#2517" class="Bound">A</a> <a id="2537" class="Symbol">→</a> <a id="2539" href="Intro.html#1803" class="Function">Type</a> <a id="2544" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="2546" class="Symbol">}</a>
  <a id="2550" class="Symbol">→</a> <a id="2552" class="Symbol">(</a><a id="2553" href="Transport.html#2553" class="Bound">C</a> <a id="2555" class="Symbol">:</a> <a id="2557" class="Symbol">(</a><a id="2558" href="Transport.html#2558" class="Bound">a</a> <a id="2560" class="Symbol">:</a> <a id="2562" href="Transport.html#2517" class="Bound">A</a><a id="2563" class="Symbol">)</a> <a id="2565" class="Symbol">→</a> <a id="2567" class="Symbol">(</a><a id="2568" href="Transport.html#2531" class="Bound">B</a> <a id="2570" href="Transport.html#2558" class="Bound">a</a><a id="2571" class="Symbol">)</a> <a id="2573" class="Symbol">→</a> <a id="2575" href="Intro.html#1803" class="Function">Type</a> <a id="2580" href="Intro.html#2251" class="Generalizable">ℓₖ</a><a id="2582" class="Symbol">)</a>
  <a id="2586" class="Symbol">→</a> <a id="2588" class="Symbol">(</a><a id="2589" href="Transport.html#2589" class="Bound">D</a> <a id="2591" class="Symbol">:</a> <a id="2593" class="Symbol">(</a><a id="2594" href="Transport.html#2594" class="Bound">a</a> <a id="2596" class="Symbol">:</a> <a id="2598" href="Transport.html#2517" class="Bound">A</a><a id="2599" class="Symbol">)</a> <a id="2601" class="Symbol">→</a> <a id="2603" class="Symbol">(</a><a id="2604" href="Transport.html#2531" class="Bound">B</a> <a id="2606" href="Transport.html#2594" class="Bound">a</a><a id="2607" class="Symbol">)</a> <a id="2609" class="Symbol">→</a> <a id="2611" href="Intro.html#1803" class="Function">Type</a> <a id="2616" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="2617" class="Symbol">)</a>
  <a id="2621" class="Symbol">→</a> <a id="2623" class="Symbol">(</a><a id="2624" href="Transport.html#2624" class="Bound">f</a> <a id="2626" class="Symbol">:</a> <a id="2628" class="Symbol">∀</a> <a id="2630" href="Transport.html#2630" class="Bound">a</a> <a id="2632" href="Transport.html#2632" class="Bound">b</a> <a id="2634" class="Symbol">→</a> <a id="2636" href="Transport.html#2553" class="Bound">C</a> <a id="2638" href="Transport.html#2630" class="Bound">a</a> <a id="2640" href="Transport.html#2632" class="Bound">b</a> <a id="2642" class="Symbol">→</a> <a id="2644" href="Transport.html#2589" class="Bound">D</a> <a id="2646" href="Transport.html#2630" class="Bound">a</a> <a id="2648" href="Transport.html#2632" class="Bound">b</a><a id="2649" class="Symbol">)</a>
  <a id="2653" class="Symbol">→</a> <a id="2655" class="Symbol">∀</a> <a id="2657" class="Symbol">{</a><a id="2658" href="Transport.html#2658" class="Bound">a</a> <a id="2660" href="Transport.html#2660" class="Bound">a&#39;</a> <a id="2663" href="Transport.html#2663" class="Bound">b</a> <a id="2665" href="Transport.html#2665" class="Bound">b&#39;</a><a id="2667" class="Symbol">}</a>
  <a id="2671" class="Symbol">→</a> <a id="2673" class="Symbol">(</a><a id="2674" href="Transport.html#2674" class="Bound">p</a> <a id="2676" class="Symbol">:</a> <a id="2678" href="Transport.html#2658" class="Bound">a</a> <a id="2680" href="BasicTypes.html#4470" class="Function Operator">≡</a> <a id="2682" href="Transport.html#2660" class="Bound">a&#39;</a><a id="2684" class="Symbol">)</a>
  <a id="2688" class="Symbol">→</a> <a id="2690" class="Symbol">(</a><a id="2691" href="Transport.html#2691" class="Bound">q</a> <a id="2693" class="Symbol">:</a> <a id="2695" href="Transport.html#2663" class="Bound">b</a> <a id="2697" href="Transport.html#1769" class="Function">≡</a> <a id="2699" href="Transport.html#2665" class="Bound">b&#39;</a> <a id="2702" href="Transport.html#1769" class="Function">[</a> <a id="2704" href="Transport.html#2531" class="Bound">B</a> <a id="2706" href="Transport.html#1769" class="Function">/</a> <a id="2708" href="Transport.html#2674" class="Bound">p</a> <a id="2710" href="Transport.html#1769" class="Function">]</a><a id="2711" class="Symbol">)</a>
  <a id="2715" class="Symbol">→</a> <a id="2717" class="Symbol">∀</a> <a id="2719" href="Transport.html#2719" class="Bound">c</a> <a id="2721" class="Symbol">→</a> <a id="2723" href="Transport.html#2213" class="Function">tr₂</a> <a id="2727" href="Transport.html#2589" class="Bound">D</a> <a id="2729" href="Transport.html#2674" class="Bound">p</a> <a id="2731" href="Transport.html#2691" class="Bound">q</a> <a id="2733" class="Symbol">(</a><a id="2734" href="Transport.html#2624" class="Bound">f</a> <a id="2736" href="Transport.html#2658" class="Bound">a</a> <a id="2738" href="Transport.html#2663" class="Bound">b</a> <a id="2740" href="Transport.html#2719" class="Bound">c</a><a id="2741" class="Symbol">)</a> <a id="2743" href="BasicTypes.html#4470" class="Function Operator">≡</a> <a id="2745" href="Transport.html#2624" class="Bound">f</a> <a id="2747" href="Transport.html#2660" class="Bound">a&#39;</a> <a id="2750" href="Transport.html#2665" class="Bound">b&#39;</a> <a id="2753" class="Symbol">(</a><a id="2754" href="Transport.html#2213" class="Function">tr₂</a> <a id="2758" href="Transport.html#2553" class="Bound">C</a> <a id="2760" href="Transport.html#2674" class="Bound">p</a> <a id="2762" href="Transport.html#2691" class="Bound">q</a> <a id="2764" href="Transport.html#2719" class="Bound">c</a><a id="2765" class="Symbol">)</a>

<a id="2768" href="Transport.html#2500" class="Function">tr₂-commute</a> <a id="2780" href="Transport.html#2780" class="Bound">C</a> <a id="2782" href="Transport.html#2782" class="Bound">D</a> <a id="2784" href="Transport.html#2784" class="Bound">f</a> <a id="2786" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a> <a id="2790" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a> <a id="2794" href="Transport.html#2794" class="Bound">c</a> <a id="2796" class="Symbol">=</a> <a id="2798" href="BasicTypes.html#4339" class="InductiveConstructor">idp</a>
</pre>