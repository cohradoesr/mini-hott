---
layout: page
title: "H-Levels Types"
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
<a id="194" class="Symbol">{-#</a> <a id="198" class="Keyword">OPTIONS</a> <a id="206" class="Pragma">--without-K</a> <a id="218" class="Symbol">#-}</a>
<a id="222" class="Keyword">module</a> <a id="229" href="HLevelTypes.html" class="Module">_</a> <a id="231" class="Keyword">where</a>

<a id="238" class="Keyword">open</a> <a id="243" class="Keyword">import</a> <a id="250" href="BasicTypes.html" class="Module">BasicTypes</a>
<a id="261" class="Keyword">open</a> <a id="266" class="Keyword">import</a> <a id="273" href="BasicFunctions.html" class="Module">BasicFunctions</a>
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
  
<a id="isContr"></a><a id="603" href="HLevelTypes.html#603" class="Function">isContr</a>
  <a id="613" class="Symbol">:</a> <a id="615" class="Symbol">(</a><a id="616" href="HLevelTypes.html#616" class="Bound">A</a> <a id="618" class="Symbol">:</a> <a id="620" href="Intro.html#1803" class="Function">Type</a> <a id="625" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="626" class="Symbol">)</a>
  <a id="630" class="Comment">--------------</a>
  <a id="647" class="Symbol">→</a> <a id="649" href="Intro.html#1803" class="Function">Type</a> <a id="654" href="Intro.html#2243" class="Generalizable">ℓ</a>

<a id="657" href="HLevelTypes.html#603" class="Function">isContr</a> <a id="665" href="HLevelTypes.html#665" class="Bound">A</a> <a id="667" class="Symbol">=</a> <a id="669" href="BasicTypes.html#1689" class="Function">Σ</a> <a id="671" href="HLevelTypes.html#665" class="Bound">A</a> <a id="673" class="Symbol">(λ</a> <a id="676" href="HLevelTypes.html#676" class="Bound">a</a> <a id="678" class="Symbol">→</a> <a id="680" class="Symbol">((</a><a id="682" href="HLevelTypes.html#682" class="Bound">x</a> <a id="684" class="Symbol">:</a> <a id="686" href="HLevelTypes.html#665" class="Bound">A</a><a id="687" class="Symbol">)</a> <a id="689" class="Symbol">→</a> <a id="691" href="HLevelTypes.html#676" class="Bound">a</a> <a id="693" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="696" href="HLevelTypes.html#682" class="Bound">x</a><a id="697" class="Symbol">))</a>
</pre>

Synonym:

<pre class="Agda">
<a id="Contractible"></a><a id="735" href="HLevelTypes.html#735" class="Function">Contractible</a> <a id="748" class="Symbol">=</a> <a id="750" href="HLevelTypes.html#603" class="Function">isContr</a>
<a id="is-singleton"></a><a id="758" href="HLevelTypes.html#758" class="Function">is-singleton</a> <a id="771" class="Symbol">=</a> <a id="773" href="HLevelTypes.html#603" class="Function">isContr</a>
</pre>

If a type is contractible, any of its points is a center of contraction:

<pre class="Agda">
<a id="allAreCenter"></a><a id="880" href="HLevelTypes.html#880" class="Function">allAreCenter</a>
  <a id="895" class="Symbol">:</a> <a id="897" class="Symbol">∀</a> <a id="899" class="Symbol">{</a><a id="900" href="HLevelTypes.html#900" class="Bound">ℓ</a><a id="901" class="Symbol">}</a> <a id="903" class="Symbol">{</a><a id="904" href="HLevelTypes.html#904" class="Bound">A</a> <a id="906" class="Symbol">:</a> <a id="908" href="Intro.html#1803" class="Function">Type</a> <a id="913" href="HLevelTypes.html#900" class="Bound">ℓ</a><a id="914" class="Symbol">}</a>
  <a id="918" class="Symbol">→</a> <a id="920" class="Symbol">(</a><a id="921" href="HLevelTypes.html#921" class="Bound">c₁</a> <a id="924" class="Symbol">:</a> <a id="926" href="HLevelTypes.html#904" class="Bound">A</a><a id="927" class="Symbol">)</a> <a id="929" class="Symbol">→</a> <a id="931" class="Symbol">(</a><a id="932" href="HLevelTypes.html#932" class="Bound">f</a> <a id="934" class="Symbol">:</a> <a id="936" class="Symbol">(</a><a id="937" href="HLevelTypes.html#937" class="Bound">x</a> <a id="939" class="Symbol">:</a> <a id="941" href="HLevelTypes.html#904" class="Bound">A</a><a id="942" class="Symbol">)</a> <a id="944" class="Symbol">→</a> <a id="946" href="HLevelTypes.html#921" class="Bound">c₁</a> <a id="949" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="952" href="HLevelTypes.html#937" class="Bound">x</a><a id="953" class="Symbol">)</a>
  <a id="957" class="Symbol">→</a> <a id="959" class="Symbol">(∀</a> <a id="962" class="Symbol">(</a><a id="963" href="HLevelTypes.html#963" class="Bound">c₂</a> <a id="966" class="Symbol">:</a> <a id="968" href="HLevelTypes.html#904" class="Bound">A</a><a id="969" class="Symbol">)</a> <a id="971" class="Symbol">→</a> <a id="973" class="Symbol">(∀</a> <a id="976" class="Symbol">(</a><a id="977" href="HLevelTypes.html#977" class="Bound">x</a> <a id="979" class="Symbol">:</a> <a id="981" href="HLevelTypes.html#904" class="Bound">A</a><a id="982" class="Symbol">)</a> <a id="984" class="Symbol">→</a> <a id="986" href="HLevelTypes.html#963" class="Bound">c₂</a> <a id="989" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="992" href="HLevelTypes.html#977" class="Bound">x</a><a id="993" class="Symbol">))</a>

<a id="997" href="HLevelTypes.html#880" class="Function">allAreCenter</a> <a id="1010" href="HLevelTypes.html#1010" class="Bound">c₁</a> <a id="1013" href="HLevelTypes.html#1013" class="Bound">f</a> <a id="1015" href="HLevelTypes.html#1015" class="Bound">c₂</a> <a id="1018" href="HLevelTypes.html#1018" class="Bound">x</a> <a id="1020" class="Symbol">=</a> <a id="1022" href="BasicTypes.html#4788" class="Function">sym</a> <a id="1026" class="Symbol">(</a><a id="1027" href="HLevelTypes.html#1013" class="Bound">f</a> <a id="1029" href="HLevelTypes.html#1015" class="Bound">c₂</a><a id="1031" class="Symbol">)</a> <a id="1033" href="BasicFunctions.html#3843" class="Function Operator">·</a> <a id="1035" class="Symbol">(</a><a id="1036" href="HLevelTypes.html#1013" class="Bound">f</a> <a id="1038" href="HLevelTypes.html#1018" class="Bound">x</a><a id="1039" class="Symbol">)</a>
</pre>

### Propositions

A type is a *mere proposition* if any two inhabitants of the type are equal.

<pre class="Agda">
<a id="isProp"></a><a id="1162" href="HLevelTypes.html#1162" class="Function">isProp</a>
  <a id="1171" class="Symbol">:</a> <a id="1173" class="Symbol">∀</a> <a id="1175" class="Symbol">{</a><a id="1176" href="HLevelTypes.html#1176" class="Bound">ℓ</a><a id="1177" class="Symbol">}</a> <a id="1179" class="Symbol">(</a><a id="1180" href="HLevelTypes.html#1180" class="Bound">A</a> <a id="1182" class="Symbol">:</a> <a id="1184" href="Intro.html#1803" class="Function">Type</a> <a id="1189" href="HLevelTypes.html#1176" class="Bound">ℓ</a><a id="1190" class="Symbol">)</a> <a id="1192" class="Symbol">→</a> <a id="1194" href="Intro.html#1803" class="Function">Type</a> <a id="1199" href="HLevelTypes.html#1176" class="Bound">ℓ</a>

<a id="1202" href="HLevelTypes.html#1162" class="Function">isProp</a> <a id="1209" href="HLevelTypes.html#1209" class="Bound">A</a> <a id="1211" class="Symbol">=</a> <a id="1213" class="Symbol">((</a><a id="1215" href="HLevelTypes.html#1215" class="Bound">x</a> <a id="1217" href="HLevelTypes.html#1217" class="Bound">y</a> <a id="1219" class="Symbol">:</a> <a id="1221" href="HLevelTypes.html#1209" class="Bound">A</a><a id="1222" class="Symbol">)</a> <a id="1224" class="Symbol">→</a> <a id="1226" href="HLevelTypes.html#1215" class="Bound">x</a> <a id="1228" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="1231" href="HLevelTypes.html#1217" class="Bound">y</a><a id="1232" class="Symbol">)</a>
</pre>

Synonyms:

<pre class="Agda">
<a id="is-subsingleton"></a><a id="1270" href="HLevelTypes.html#1270" class="Function">is-subsingleton</a> <a id="1286" class="Symbol">=</a> <a id="1288" href="HLevelTypes.html#1162" class="Function">isProp</a>
<a id="isSubsingleton"></a><a id="1295" href="HLevelTypes.html#1295" class="Function">isSubsingleton</a>  <a id="1311" class="Symbol">=</a> <a id="1313" href="HLevelTypes.html#1162" class="Function">isProp</a>
<a id="is-prop"></a><a id="1320" href="HLevelTypes.html#1320" class="Function">is-prop</a>         <a id="1336" class="Symbol">=</a> <a id="1338" href="HLevelTypes.html#1162" class="Function">isProp</a>
</pre>

Let's stop a bit. So, these propositios, also named "mere" propositions
tell us: in a  proposition, its elements are connected with each other.
Subsinglenton (which is, subset of a singlenton (a unit point set)) is
empty or it has the element. Propositions can be seen as equivalent to 𝟘 or 𝟙.

  - Contractible types ≃ 𝟙
  - Propositions ≃ (𝟘 if it's not inhabited or 𝟙 if it's inhabited)

Therefore, we will find a theorem later that says "if A is a proposition,
and it's inhabited then it's contractible", and it makes sense perfectly.

<pre class="Agda">
<a id="hProp"></a><a id="1910" href="HLevelTypes.html#1910" class="Function">hProp</a>
  <a id="1918" class="Symbol">:</a> <a id="1920" class="Symbol">∀</a> <a id="1922" class="Symbol">{</a><a id="1923" href="HLevelTypes.html#1923" class="Bound">ℓ</a><a id="1924" class="Symbol">}</a> <a id="1926" class="Symbol">→</a> <a id="1928" href="Intro.html#1803" class="Function">Type</a> <a id="1933" class="Symbol">(</a><a id="1934" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="1939" href="HLevelTypes.html#1923" class="Bound">ℓ</a><a id="1940" class="Symbol">)</a>

<a id="1943" href="HLevelTypes.html#1910" class="Function">hProp</a> <a id="1949" class="Symbol">{</a><a id="1950" href="HLevelTypes.html#1950" class="Bound">ℓ</a><a id="1951" class="Symbol">}</a> <a id="1953" class="Symbol">=</a> <a id="1955" href="BasicTypes.html#1497" class="Record">∑</a> <a id="1957" class="Symbol">(</a><a id="1958" href="Intro.html#1803" class="Function">Type</a> <a id="1963" href="HLevelTypes.html#1950" class="Bound">ℓ</a><a id="1964" class="Symbol">)</a> <a id="1966" href="HLevelTypes.html#1162" class="Function">isProp</a>
</pre>

### Sets

A type is a *set& by definition if any two equalities on the type are equal Sets
are types without any higher *dimensional structure*,  all parallel paths are
homotopic and the homotopy is given by a continuous function on the two paths.

<pre class="Agda">
<a id="isSet"></a><a id="2247" href="HLevelTypes.html#2247" class="Function">isSet</a>
  <a id="2255" class="Symbol">:</a> <a id="2257" href="Intro.html#1803" class="Function">Type</a> <a id="2262" href="Intro.html#2243" class="Generalizable">ℓ</a> <a id="2264" class="Symbol">→</a> <a id="2266" href="Intro.html#1803" class="Function">Type</a> <a id="2271" href="Intro.html#2243" class="Generalizable">ℓ</a>
<a id="2273" href="HLevelTypes.html#2247" class="Function">isSet</a> <a id="2279" href="HLevelTypes.html#2279" class="Bound">A</a> <a id="2281" class="Symbol">=</a> <a id="2283" class="Symbol">(</a><a id="2284" href="HLevelTypes.html#2284" class="Bound">x</a> <a id="2286" href="HLevelTypes.html#2286" class="Bound">y</a> <a id="2288" class="Symbol">:</a> <a id="2290" href="HLevelTypes.html#2279" class="Bound">A</a><a id="2291" class="Symbol">)</a> <a id="2293" class="Symbol">→</a> <a id="2295" href="HLevelTypes.html#1162" class="Function">isProp</a> <a id="2302" class="Symbol">(</a><a id="2303" href="HLevelTypes.html#2284" class="Bound">x</a> <a id="2305" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="2308" href="HLevelTypes.html#2286" class="Bound">y</a><a id="2309" class="Symbol">)</a>
</pre>

Synonyms:

<pre class="Agda">
<a id="is-set"></a><a id="2347" href="HLevelTypes.html#2347" class="Function">is-set</a> <a id="2354" class="Symbol">=</a> <a id="2356" href="HLevelTypes.html#2247" class="Function">isSet</a>
</pre>

The type of sets

<pre class="Agda">
<a id="hSet"></a><a id="2405" href="HLevelTypes.html#2405" class="Function">hSet</a>
  <a id="2412" class="Symbol">:</a> <a id="2414" href="Intro.html#1803" class="Function">Type</a> <a id="2419" class="Symbol">(</a><a id="2420" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="2425" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="2426" class="Symbol">)</a>

<a id="2429" href="HLevelTypes.html#2405" class="Function">hSet</a> <a id="2434" class="Symbol">{</a><a id="2435" href="HLevelTypes.html#2435" class="Bound">ℓ</a><a id="2436" class="Symbol">}</a> <a id="2438" class="Symbol">=</a> <a id="2440" href="BasicTypes.html#1497" class="Record">∑</a> <a id="2442" class="Symbol">(</a><a id="2443" href="Intro.html#1803" class="Function">Type</a> <a id="2448" href="HLevelTypes.html#2435" class="Bound">ℓ</a><a id="2449" class="Symbol">)</a> <a id="2451" href="HLevelTypes.html#2247" class="Function">isSet</a>
</pre>

### Groupoids

<pre class="Agda">
<a id="isGroupoid"></a><a id="2497" href="HLevelTypes.html#2497" class="Function">isGroupoid</a>
  <a id="2510" class="Symbol">:</a> <a id="2512" href="Intro.html#1803" class="Function">Type</a> <a id="2517" href="Intro.html#2243" class="Generalizable">ℓ</a> <a id="2519" class="Symbol">→</a> <a id="2521" href="Intro.html#1803" class="Function">Type</a> <a id="2526" href="Intro.html#2243" class="Generalizable">ℓ</a>

<a id="2529" href="HLevelTypes.html#2497" class="Function">isGroupoid</a> <a id="2540" href="HLevelTypes.html#2540" class="Bound">A</a>  <a id="2543" class="Symbol">=</a> <a id="2545" class="Symbol">(</a><a id="2546" href="HLevelTypes.html#2546" class="Bound">a₀</a> <a id="2549" href="HLevelTypes.html#2549" class="Bound">a₁</a> <a id="2552" class="Symbol">:</a> <a id="2554" href="HLevelTypes.html#2540" class="Bound">A</a><a id="2555" class="Symbol">)</a> <a id="2557" class="Symbol">→</a> <a id="2559" href="HLevelTypes.html#2247" class="Function">isSet</a> <a id="2565" class="Symbol">(</a><a id="2566" href="HLevelTypes.html#2546" class="Bound">a₀</a> <a id="2569" href="BasicTypes.html#4524" class="Function Operator">≡</a> <a id="2571" href="HLevelTypes.html#2549" class="Bound">a₁</a><a id="2573" class="Symbol">)</a>
</pre>

Synonyms:

<pre class="Agda">
<a id="is-groupoid"></a><a id="2611" href="HLevelTypes.html#2611" class="Function">is-groupoid</a> <a id="2623" class="Symbol">=</a> <a id="2625" href="HLevelTypes.html#2497" class="Function">isGroupoid</a>
</pre>

<pre class="Agda">
<a id="Groupoid"></a><a id="2661" href="HLevelTypes.html#2661" class="Function">Groupoid</a>
  <a id="2672" class="Symbol">:</a> <a id="2674" href="Intro.html#1803" class="Function">Type</a> <a id="2679" class="Symbol">(</a><a id="2680" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="2685" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="2686" class="Symbol">)</a>
<a id="2688" href="HLevelTypes.html#2661" class="Function">Groupoid</a> <a id="2697" class="Symbol">{</a><a id="2698" href="HLevelTypes.html#2698" class="Bound">ℓ</a><a id="2699" class="Symbol">}</a> <a id="2701" class="Symbol">=</a> <a id="2703" href="BasicTypes.html#1497" class="Record">∑</a> <a id="2705" class="Symbol">(</a><a id="2706" href="Intro.html#1803" class="Function">Type</a> <a id="2711" href="HLevelTypes.html#2698" class="Bound">ℓ</a><a id="2712" class="Symbol">)</a> <a id="2714" href="HLevelTypes.html#2497" class="Function">isGroupoid</a>
</pre>
