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
<a id="isSingleton"></a><a id="781" href="HLevelTypes.html#781" class="Function">isSingleton</a>  <a id="794" class="Symbol">=</a> <a id="796" href="HLevelTypes.html#603" class="Function">isContr</a>
</pre>

If a type is contractible, any of its points is a center of contraction:

<pre class="Agda">
<a id="allAreCenter"></a><a id="903" href="HLevelTypes.html#903" class="Function">allAreCenter</a>
  <a id="918" class="Symbol">:</a> <a id="920" class="Symbol">∀</a> <a id="922" class="Symbol">{</a><a id="923" href="HLevelTypes.html#923" class="Bound">ℓ</a><a id="924" class="Symbol">}</a> <a id="926" class="Symbol">{</a><a id="927" href="HLevelTypes.html#927" class="Bound">A</a> <a id="929" class="Symbol">:</a> <a id="931" href="Intro.html#1803" class="Function">Type</a> <a id="936" href="HLevelTypes.html#923" class="Bound">ℓ</a><a id="937" class="Symbol">}</a>
  <a id="941" class="Symbol">→</a> <a id="943" class="Symbol">(</a><a id="944" href="HLevelTypes.html#944" class="Bound">c₁</a> <a id="947" class="Symbol">:</a> <a id="949" href="HLevelTypes.html#927" class="Bound">A</a><a id="950" class="Symbol">)</a> <a id="952" class="Symbol">→</a> <a id="954" class="Symbol">(</a><a id="955" href="HLevelTypes.html#955" class="Bound">f</a> <a id="957" class="Symbol">:</a> <a id="959" class="Symbol">(</a><a id="960" href="HLevelTypes.html#960" class="Bound">x</a> <a id="962" class="Symbol">:</a> <a id="964" href="HLevelTypes.html#927" class="Bound">A</a><a id="965" class="Symbol">)</a> <a id="967" class="Symbol">→</a> <a id="969" href="HLevelTypes.html#944" class="Bound">c₁</a> <a id="972" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="975" href="HLevelTypes.html#960" class="Bound">x</a><a id="976" class="Symbol">)</a>
  <a id="980" class="Symbol">→</a> <a id="982" class="Symbol">(∀</a> <a id="985" class="Symbol">(</a><a id="986" href="HLevelTypes.html#986" class="Bound">c₂</a> <a id="989" class="Symbol">:</a> <a id="991" href="HLevelTypes.html#927" class="Bound">A</a><a id="992" class="Symbol">)</a> <a id="994" class="Symbol">→</a> <a id="996" class="Symbol">(∀</a> <a id="999" class="Symbol">(</a><a id="1000" href="HLevelTypes.html#1000" class="Bound">x</a> <a id="1002" class="Symbol">:</a> <a id="1004" href="HLevelTypes.html#927" class="Bound">A</a><a id="1005" class="Symbol">)</a> <a id="1007" class="Symbol">→</a> <a id="1009" href="HLevelTypes.html#986" class="Bound">c₂</a> <a id="1012" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="1015" href="HLevelTypes.html#1000" class="Bound">x</a><a id="1016" class="Symbol">))</a>

<a id="1020" href="HLevelTypes.html#903" class="Function">allAreCenter</a> <a id="1033" href="HLevelTypes.html#1033" class="Bound">c₁</a> <a id="1036" href="HLevelTypes.html#1036" class="Bound">f</a> <a id="1038" href="HLevelTypes.html#1038" class="Bound">c₂</a> <a id="1041" href="HLevelTypes.html#1041" class="Bound">x</a> <a id="1043" class="Symbol">=</a> <a id="1045" href="BasicTypes.html#4788" class="Function">sym</a> <a id="1049" class="Symbol">(</a><a id="1050" href="HLevelTypes.html#1036" class="Bound">f</a> <a id="1052" href="HLevelTypes.html#1038" class="Bound">c₂</a><a id="1054" class="Symbol">)</a> <a id="1056" href="BasicFunctions.html#3843" class="Function Operator">·</a> <a id="1058" class="Symbol">(</a><a id="1059" href="HLevelTypes.html#1036" class="Bound">f</a> <a id="1061" href="HLevelTypes.html#1041" class="Bound">x</a><a id="1062" class="Symbol">)</a>
</pre>

### Propositions

A type is a *mere proposition* if any two inhabitants of the type are equal.

<pre class="Agda">
<a id="isProp"></a><a id="1185" href="HLevelTypes.html#1185" class="Function">isProp</a>
  <a id="1194" class="Symbol">:</a> <a id="1196" class="Symbol">∀</a> <a id="1198" class="Symbol">{</a><a id="1199" href="HLevelTypes.html#1199" class="Bound">ℓ</a><a id="1200" class="Symbol">}</a> <a id="1202" class="Symbol">(</a><a id="1203" href="HLevelTypes.html#1203" class="Bound">A</a> <a id="1205" class="Symbol">:</a> <a id="1207" href="Intro.html#1803" class="Function">Type</a> <a id="1212" href="HLevelTypes.html#1199" class="Bound">ℓ</a><a id="1213" class="Symbol">)</a> <a id="1215" class="Symbol">→</a> <a id="1217" href="Intro.html#1803" class="Function">Type</a> <a id="1222" href="HLevelTypes.html#1199" class="Bound">ℓ</a>

<a id="1225" href="HLevelTypes.html#1185" class="Function">isProp</a> <a id="1232" href="HLevelTypes.html#1232" class="Bound">A</a> <a id="1234" class="Symbol">=</a> <a id="1236" class="Symbol">((</a><a id="1238" href="HLevelTypes.html#1238" class="Bound">x</a> <a id="1240" href="HLevelTypes.html#1240" class="Bound">y</a> <a id="1242" class="Symbol">:</a> <a id="1244" href="HLevelTypes.html#1232" class="Bound">A</a><a id="1245" class="Symbol">)</a> <a id="1247" class="Symbol">→</a> <a id="1249" href="HLevelTypes.html#1238" class="Bound">x</a> <a id="1251" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="1254" href="HLevelTypes.html#1240" class="Bound">y</a><a id="1255" class="Symbol">)</a>
</pre>

Synonyms:

<pre class="Agda">
<a id="is-subsingleton"></a><a id="1293" href="HLevelTypes.html#1293" class="Function">is-subsingleton</a> <a id="1309" class="Symbol">=</a> <a id="1311" href="HLevelTypes.html#1185" class="Function">isProp</a>
<a id="isSubsingleton"></a><a id="1318" href="HLevelTypes.html#1318" class="Function">isSubsingleton</a>  <a id="1334" class="Symbol">=</a> <a id="1336" href="HLevelTypes.html#1185" class="Function">isProp</a>
<a id="is-prop"></a><a id="1343" href="HLevelTypes.html#1343" class="Function">is-prop</a>         <a id="1359" class="Symbol">=</a> <a id="1361" href="HLevelTypes.html#1185" class="Function">isProp</a>
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
<a id="hProp"></a><a id="1933" href="HLevelTypes.html#1933" class="Function">hProp</a>
  <a id="1941" class="Symbol">:</a> <a id="1943" class="Symbol">∀</a> <a id="1945" class="Symbol">{</a><a id="1946" href="HLevelTypes.html#1946" class="Bound">ℓ</a><a id="1947" class="Symbol">}</a> <a id="1949" class="Symbol">→</a> <a id="1951" href="Intro.html#1803" class="Function">Type</a> <a id="1956" class="Symbol">(</a><a id="1957" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="1962" href="HLevelTypes.html#1946" class="Bound">ℓ</a><a id="1963" class="Symbol">)</a>

<a id="1966" href="HLevelTypes.html#1933" class="Function">hProp</a> <a id="1972" class="Symbol">{</a><a id="1973" href="HLevelTypes.html#1973" class="Bound">ℓ</a><a id="1974" class="Symbol">}</a> <a id="1976" class="Symbol">=</a> <a id="1978" href="BasicTypes.html#1497" class="Record">∑</a> <a id="1980" class="Symbol">(</a><a id="1981" href="Intro.html#1803" class="Function">Type</a> <a id="1986" href="HLevelTypes.html#1973" class="Bound">ℓ</a><a id="1987" class="Symbol">)</a> <a id="1989" href="HLevelTypes.html#1185" class="Function">isProp</a>
</pre>

### Sets

A type is a *set& by definition if any two equalities on the type are equal Sets
are types without any higher *dimensional structure*,  all parallel paths are
homotopic and the homotopy is given by a continuous function on the two paths.

<pre class="Agda">
<a id="isSet"></a><a id="2270" href="HLevelTypes.html#2270" class="Function">isSet</a>
  <a id="2278" class="Symbol">:</a> <a id="2280" href="Intro.html#1803" class="Function">Type</a> <a id="2285" href="Intro.html#2243" class="Generalizable">ℓ</a> <a id="2287" class="Symbol">→</a> <a id="2289" href="Intro.html#1803" class="Function">Type</a> <a id="2294" href="Intro.html#2243" class="Generalizable">ℓ</a>
<a id="2296" href="HLevelTypes.html#2270" class="Function">isSet</a> <a id="2302" href="HLevelTypes.html#2302" class="Bound">A</a> <a id="2304" class="Symbol">=</a> <a id="2306" class="Symbol">(</a><a id="2307" href="HLevelTypes.html#2307" class="Bound">x</a> <a id="2309" href="HLevelTypes.html#2309" class="Bound">y</a> <a id="2311" class="Symbol">:</a> <a id="2313" href="HLevelTypes.html#2302" class="Bound">A</a><a id="2314" class="Symbol">)</a> <a id="2316" class="Symbol">→</a> <a id="2318" href="HLevelTypes.html#1185" class="Function">isProp</a> <a id="2325" class="Symbol">(</a><a id="2326" href="HLevelTypes.html#2307" class="Bound">x</a> <a id="2328" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="2331" href="HLevelTypes.html#2309" class="Bound">y</a><a id="2332" class="Symbol">)</a>
</pre>

Synonyms:

<pre class="Agda">
<a id="is-set"></a><a id="2370" href="HLevelTypes.html#2370" class="Function">is-set</a> <a id="2377" class="Symbol">=</a> <a id="2379" href="HLevelTypes.html#2270" class="Function">isSet</a>
</pre>

The type of sets

<pre class="Agda">
<a id="hSet"></a><a id="2428" href="HLevelTypes.html#2428" class="Function">hSet</a>
  <a id="2435" class="Symbol">:</a> <a id="2437" href="Intro.html#1803" class="Function">Type</a> <a id="2442" class="Symbol">(</a><a id="2443" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="2448" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="2449" class="Symbol">)</a>

<a id="2452" href="HLevelTypes.html#2428" class="Function">hSet</a> <a id="2457" class="Symbol">{</a><a id="2458" href="HLevelTypes.html#2458" class="Bound">ℓ</a><a id="2459" class="Symbol">}</a> <a id="2461" class="Symbol">=</a> <a id="2463" href="BasicTypes.html#1497" class="Record">∑</a> <a id="2465" class="Symbol">(</a><a id="2466" href="Intro.html#1803" class="Function">Type</a> <a id="2471" href="HLevelTypes.html#2458" class="Bound">ℓ</a><a id="2472" class="Symbol">)</a> <a id="2474" href="HLevelTypes.html#2270" class="Function">isSet</a>
</pre>

### Groupoids

<pre class="Agda">
<a id="isGroupoid"></a><a id="2520" href="HLevelTypes.html#2520" class="Function">isGroupoid</a>
  <a id="2533" class="Symbol">:</a> <a id="2535" href="Intro.html#1803" class="Function">Type</a> <a id="2540" href="Intro.html#2243" class="Generalizable">ℓ</a> <a id="2542" class="Symbol">→</a> <a id="2544" href="Intro.html#1803" class="Function">Type</a> <a id="2549" href="Intro.html#2243" class="Generalizable">ℓ</a>

<a id="2552" href="HLevelTypes.html#2520" class="Function">isGroupoid</a> <a id="2563" href="HLevelTypes.html#2563" class="Bound">A</a>  <a id="2566" class="Symbol">=</a> <a id="2568" class="Symbol">(</a><a id="2569" href="HLevelTypes.html#2569" class="Bound">a₀</a> <a id="2572" href="HLevelTypes.html#2572" class="Bound">a₁</a> <a id="2575" class="Symbol">:</a> <a id="2577" href="HLevelTypes.html#2563" class="Bound">A</a><a id="2578" class="Symbol">)</a> <a id="2580" class="Symbol">→</a> <a id="2582" href="HLevelTypes.html#2270" class="Function">isSet</a> <a id="2588" class="Symbol">(</a><a id="2589" href="HLevelTypes.html#2569" class="Bound">a₀</a> <a id="2592" href="BasicTypes.html#4524" class="Function Operator">≡</a> <a id="2594" href="HLevelTypes.html#2572" class="Bound">a₁</a><a id="2596" class="Symbol">)</a>
</pre>

Synonyms:

<pre class="Agda">
<a id="is-groupoid"></a><a id="2634" href="HLevelTypes.html#2634" class="Function">is-groupoid</a> <a id="2646" class="Symbol">=</a> <a id="2648" href="HLevelTypes.html#2520" class="Function">isGroupoid</a>
</pre>

<pre class="Agda">
<a id="Groupoid"></a><a id="2684" href="HLevelTypes.html#2684" class="Function">Groupoid</a>
  <a id="2695" class="Symbol">:</a> <a id="2697" href="Intro.html#1803" class="Function">Type</a> <a id="2702" class="Symbol">(</a><a id="2703" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="2708" href="Intro.html#2243" class="Generalizable">ℓ</a><a id="2709" class="Symbol">)</a>
<a id="2711" href="HLevelTypes.html#2684" class="Function">Groupoid</a> <a id="2720" class="Symbol">{</a><a id="2721" href="HLevelTypes.html#2721" class="Bound">ℓ</a><a id="2722" class="Symbol">}</a> <a id="2724" class="Symbol">=</a> <a id="2726" href="BasicTypes.html#1497" class="Record">∑</a> <a id="2728" class="Symbol">(</a><a id="2729" href="Intro.html#1803" class="Function">Type</a> <a id="2734" href="HLevelTypes.html#2721" class="Bound">ℓ</a><a id="2735" class="Symbol">)</a> <a id="2737" href="HLevelTypes.html#2520" class="Function">isGroupoid</a>
</pre>
