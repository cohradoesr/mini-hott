---
layout: page
title: "Fiber Type"
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
<a id="184" class="Symbol">{-#</a> <a id="188" class="Keyword">OPTIONS</a> <a id="196" class="Pragma">--without-K</a> <a id="208" class="Symbol">#-}</a>
<a id="212" class="Keyword">open</a> <a id="217" class="Keyword">import</a> <a id="224" href="EqualityType.html" class="Module">EqualityType</a>
</pre>
</div>

<pre class="Agda">
<a id="269" class="Keyword">module</a> <a id="276" href="FiberType.html" class="Module">FiberType</a> <a id="286" class="Symbol">{</a><a id="287" href="FiberType.html#287" class="Bound">ℓᵢ</a> <a id="290" href="FiberType.html#290" class="Bound">ℓⱼ</a><a id="292" class="Symbol">}</a> <a id="294" class="Symbol">{</a><a id="295" href="FiberType.html#295" class="Bound">A</a> <a id="297" class="Symbol">:</a> <a id="299" href="Intro.html#1442" class="Function">Type</a> <a id="304" href="FiberType.html#287" class="Bound">ℓᵢ</a><a id="306" class="Symbol">}</a> <a id="308" class="Symbol">{</a><a id="309" href="FiberType.html#309" class="Bound">B</a> <a id="311" class="Symbol">:</a> <a id="313" href="Intro.html#1442" class="Function">Type</a> <a id="318" href="FiberType.html#290" class="Bound">ℓⱼ</a><a id="320" class="Symbol">}</a>  <a id="323" class="Keyword">where</a>
</pre>


The *fiber* type of a map over a point is given by a Sigma type.

<pre class="Agda">
  <a id="423" class="Comment">-- Fiber</a>
  <a id="fib"></a><a id="434" href="FiberType.html#434" class="Function">fib</a>
    <a id="442" class="Symbol">:</a> <a id="444" class="Symbol">(</a><a id="445" href="FiberType.html#445" class="Bound">f</a> <a id="447" class="Symbol">:</a> <a id="449" href="FiberType.html#295" class="Bound">A</a> <a id="451" class="Symbol">→</a> <a id="453" href="FiberType.html#309" class="Bound">B</a><a id="454" class="Symbol">)</a>
    <a id="460" class="Symbol">→</a> <a id="462" class="Symbol">(</a><a id="463" href="FiberType.html#463" class="Bound">b</a> <a id="465" class="Symbol">:</a> <a id="467" href="FiberType.html#309" class="Bound">B</a><a id="468" class="Symbol">)</a>
    <a id="474" class="Comment">---------------</a>
    <a id="494" class="Symbol">→</a> <a id="496" href="Intro.html#1442" class="Function">Type</a> <a id="501" class="Symbol">(</a><a id="502" href="FiberType.html#287" class="Bound">ℓᵢ</a> <a id="505" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="507" href="FiberType.html#290" class="Bound">ℓⱼ</a><a id="509" class="Symbol">)</a>

  <a id="514" href="FiberType.html#434" class="Function">fib</a> <a id="518" href="FiberType.html#518" class="Bound">f</a> <a id="520" href="FiberType.html#520" class="Bound">b</a> <a id="522" class="Symbol">=</a> <a id="524" href="BasicTypes.html#1401" class="Record">Σ</a> <a id="526" href="FiberType.html#295" class="Bound">A</a> <a id="528" class="Symbol">(λ</a> <a id="531" href="FiberType.html#531" class="Bound">a</a> <a id="533" class="Symbol">→</a> <a id="535" href="FiberType.html#518" class="Bound">f</a> <a id="537" href="FiberType.html#531" class="Bound">a</a> <a id="539" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="542" href="FiberType.html#520" class="Bound">b</a><a id="543" class="Symbol">)</a>
</pre>

A function applied over the fiber returns the original point

<pre class="Agda">
  <a id="634" class="Comment">-- Lemma.</a>
  <a id="fib-eq"></a><a id="646" href="FiberType.html#646" class="Function">fib-eq</a>
    <a id="657" class="Symbol">:</a> <a id="659" class="Symbol">∀</a> <a id="661" class="Symbol">{</a><a id="662" href="FiberType.html#662" class="Bound">f</a> <a id="664" class="Symbol">:</a> <a id="666" href="FiberType.html#295" class="Bound">A</a> <a id="668" class="Symbol">→</a> <a id="670" href="FiberType.html#309" class="Bound">B</a><a id="671" class="Symbol">}</a> <a id="673" class="Symbol">{</a><a id="674" href="FiberType.html#674" class="Bound">b</a> <a id="676" class="Symbol">:</a> <a id="678" href="FiberType.html#309" class="Bound">B</a><a id="679" class="Symbol">}</a>
    <a id="685" class="Symbol">→</a> <a id="687" class="Symbol">(</a><a id="688" href="FiberType.html#688" class="Bound">h</a> <a id="690" class="Symbol">:</a> <a id="692" href="FiberType.html#434" class="Function">fib</a> <a id="696" href="FiberType.html#662" class="Bound">f</a> <a id="698" href="FiberType.html#674" class="Bound">b</a><a id="699" class="Symbol">)</a>
    <a id="705" class="Comment">---------------</a>
    <a id="725" class="Symbol">→</a> <a id="727" href="FiberType.html#662" class="Bound">f</a> <a id="729" class="Symbol">(</a><a id="730" href="BasicTypes.html#1495" class="Field">π₁</a> <a id="733" href="FiberType.html#688" class="Bound">h</a><a id="734" class="Symbol">)</a> <a id="736" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="739" href="FiberType.html#674" class="Bound">b</a>

  <a id="744" href="FiberType.html#646" class="Function">fib-eq</a> <a id="751" class="Symbol">(</a><a id="752" href="FiberType.html#752" class="Bound">a</a> <a id="754" href="BasicTypes.html#1479" class="InductiveConstructor Operator">,</a> <a id="756" href="FiberType.html#756" class="Bound">α</a><a id="757" class="Symbol">)</a> <a id="759" class="Symbol">=</a> <a id="761" href="FiberType.html#756" class="Bound">α</a>
</pre>

Each point is on the fiber of its image.

{: .foldable until="4"}
<pre class="Agda">
  <a id="856" class="Comment">-- Lemma.</a>
  <a id="fib-image"></a><a id="868" href="FiberType.html#868" class="Function">fib-image</a>
    <a id="882" class="Symbol">:</a>  <a id="885" class="Symbol">∀</a> <a id="887" class="Symbol">{</a><a id="888" href="FiberType.html#888" class="Bound">f</a> <a id="890" class="Symbol">:</a> <a id="892" href="FiberType.html#295" class="Bound">A</a> <a id="894" class="Symbol">→</a> <a id="896" href="FiberType.html#309" class="Bound">B</a><a id="897" class="Symbol">}</a> <a id="899" class="Symbol">→</a> <a id="901" class="Symbol">{</a><a id="902" href="FiberType.html#902" class="Bound">a</a> <a id="904" class="Symbol">:</a> <a id="906" href="FiberType.html#295" class="Bound">A</a><a id="907" class="Symbol">}</a>
    <a id="913" class="Symbol">→</a> <a id="915" href="FiberType.html#434" class="Function">fib</a> <a id="919" href="FiberType.html#888" class="Bound">f</a> <a id="921" class="Symbol">(</a><a id="922" href="FiberType.html#888" class="Bound">f</a> <a id="924" href="FiberType.html#902" class="Bound">a</a><a id="925" class="Symbol">)</a>

  <a id="930" href="FiberType.html#868" class="Function">fib-image</a> <a id="940" class="Symbol">{</a><a id="941" href="FiberType.html#941" class="Bound">f</a><a id="942" class="Symbol">}</a> <a id="944" class="Symbol">{</a><a id="945" href="FiberType.html#945" class="Bound">a</a><a id="946" class="Symbol">}</a> <a id="948" class="Symbol">=</a> <a id="950" href="FiberType.html#945" class="Bound">a</a> <a id="952" href="BasicTypes.html#1479" class="InductiveConstructor Operator">,</a> <a id="954" href="EqualityType.html#1111" class="Function">refl</a> <a id="959" class="Symbol">(</a><a id="960" href="FiberType.html#941" class="Bound">f</a> <a id="962" href="FiberType.html#945" class="Bound">a</a><a id="963" class="Symbol">)</a>
</pre>
