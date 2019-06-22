---
layout: page
title: "Fiber Type"
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
<a id="184" class="Symbol">{-#</a> <a id="188" class="Keyword">OPTIONS</a> <a id="196" class="Pragma">--without-K</a> <a id="208" class="Symbol">#-}</a>
<a id="212" class="Keyword">open</a> <a id="217" class="Keyword">import</a> <a id="224" href="BasicTypes.html" class="Module">BasicTypes</a>
</pre>
</div>

## Fibre type

<pre class="Agda">
<a id="282" class="Keyword">module</a>
  <a id="291" href="FibreType.html" class="Module">FibreType</a> <a id="301" class="Symbol">{</a><a id="302" href="FibreType.html#302" class="Bound">A</a> <a id="304" class="Symbol">:</a> <a id="306" href="Intro.html#1813" class="Function">Type</a> <a id="311" href="Intro.html#2255" class="Generalizable">ℓᵢ</a><a id="313" class="Symbol">}</a> <a id="315" class="Symbol">{</a><a id="316" href="FibreType.html#316" class="Bound">B</a> <a id="318" class="Symbol">:</a> <a id="320" href="Intro.html#1813" class="Function">Type</a> <a id="325" href="Intro.html#2258" class="Generalizable">ℓⱼ</a><a id="327" class="Symbol">}</a>
    <a id="333" class="Keyword">where</a>
</pre>

<pre class="Agda">
  <a id="366" class="Comment">-- Fiber</a>
  <a id="fibre"></a><a id="377" href="FibreType.html#377" class="Function">fibre</a>
    <a id="387" class="Symbol">:</a> <a id="389" class="Symbol">(</a><a id="390" href="FibreType.html#390" class="Bound">f</a> <a id="392" class="Symbol">:</a> <a id="394" href="FibreType.html#302" class="Bound">A</a> <a id="396" class="Symbol">→</a> <a id="398" href="FibreType.html#316" class="Bound">B</a><a id="399" class="Symbol">)</a>
    <a id="405" class="Symbol">→</a> <a id="407" class="Symbol">(</a><a id="408" href="FibreType.html#408" class="Bound">b</a> <a id="410" class="Symbol">:</a> <a id="412" href="FibreType.html#316" class="Bound">B</a><a id="413" class="Symbol">)</a>
    <a id="419" class="Comment">---------------</a>
    <a id="439" class="Symbol">→</a> <a id="441" href="Intro.html#1813" class="Function">Type</a> <a id="446" class="Symbol">(</a><a id="447" href="FibreType.html#311" class="Bound">ℓᵢ</a> <a id="450" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="452" href="FibreType.html#325" class="Bound">ℓⱼ</a><a id="454" class="Symbol">)</a>

  <a id="459" href="FibreType.html#377" class="Function">fibre</a> <a id="465" href="FibreType.html#465" class="Bound">f</a> <a id="467" href="FibreType.html#467" class="Bound">b</a> <a id="469" class="Symbol">=</a> <a id="471" href="BasicTypes.html#1690" class="Function">Σ</a> <a id="473" href="FibreType.html#302" class="Bound">A</a> <a id="475" class="Symbol">(λ</a> <a id="478" href="FibreType.html#478" class="Bound">a</a> <a id="480" class="Symbol">→</a> <a id="482" href="FibreType.html#465" class="Bound">f</a> <a id="484" href="FibreType.html#478" class="Bound">a</a> <a id="486" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="489" href="FibreType.html#467" class="Bound">b</a><a id="490" class="Symbol">)</a>
</pre>

Synomyms and syntax sugar:

<pre class="Agda">
  <a id="fib"></a><a id="547" href="FibreType.html#547" class="Function">fib</a> <a id="551" class="Symbol">=</a> <a id="553" href="FibreType.html#377" class="Function">fibre</a>
  <a id="561" class="Keyword">syntax</a> <a id="568" href="FibreType.html#377" class="Function">fibre</a> <a id="574" class="Bound">f</a> <a id="576" class="Bound">b</a> <a id="578" class="Symbol">=</a> <a id="580" class="Bound">f</a> <a id="582" class="Function">//</a> <a id="585" class="Bound">b</a>
</pre>

A function applied over the fiber returns the original point

<pre class="Agda">
  <a id="676" class="Comment">-- Lemma.</a>
  <a id="fib-eq"></a><a id="688" href="FibreType.html#688" class="Function">fib-eq</a>
    <a id="699" class="Symbol">:</a> <a id="701" class="Symbol">∀</a> <a id="703" class="Symbol">{</a><a id="704" href="FibreType.html#704" class="Bound">f</a> <a id="706" class="Symbol">:</a> <a id="708" href="FibreType.html#302" class="Bound">A</a> <a id="710" class="Symbol">→</a> <a id="712" href="FibreType.html#316" class="Bound">B</a><a id="713" class="Symbol">}</a> <a id="715" class="Symbol">{</a><a id="716" href="FibreType.html#716" class="Bound">b</a> <a id="718" class="Symbol">:</a> <a id="720" href="FibreType.html#316" class="Bound">B</a><a id="721" class="Symbol">}</a>
    <a id="727" class="Symbol">→</a> <a id="729" class="Symbol">(</a><a id="730" href="FibreType.html#730" class="Bound">h</a> <a id="732" class="Symbol">:</a> <a id="734" href="FibreType.html#547" class="Function">fib</a> <a id="738" href="FibreType.html#704" class="Bound">f</a> <a id="740" href="FibreType.html#716" class="Bound">b</a><a id="741" class="Symbol">)</a>
    <a id="747" class="Comment">---------------</a>
    <a id="767" class="Symbol">→</a> <a id="769" href="FibreType.html#704" class="Bound">f</a> <a id="771" class="Symbol">(</a><a id="772" href="BasicTypes.html#1764" class="Function">proj₁</a> <a id="778" href="FibreType.html#730" class="Bound">h</a><a id="779" class="Symbol">)</a> <a id="781" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="784" href="FibreType.html#716" class="Bound">b</a>

  <a id="789" href="FibreType.html#688" class="Function">fib-eq</a> <a id="796" class="Symbol">(</a><a id="797" href="FibreType.html#797" class="Bound">a</a> <a id="799" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="801" href="FibreType.html#801" class="Bound">α</a><a id="802" class="Symbol">)</a> <a id="804" class="Symbol">=</a> <a id="806" href="FibreType.html#801" class="Bound">α</a>
</pre>

Each point is on the fiber of its image.

{: .foldable until="4"}
<pre class="Agda">
  <a id="901" class="Comment">-- Lemma.</a>
  <a id="fib-image"></a><a id="913" href="FibreType.html#913" class="Function">fib-image</a>
    <a id="927" class="Symbol">:</a>  <a id="930" class="Symbol">∀</a> <a id="932" class="Symbol">{</a><a id="933" href="FibreType.html#933" class="Bound">f</a> <a id="935" class="Symbol">:</a> <a id="937" href="FibreType.html#302" class="Bound">A</a> <a id="939" class="Symbol">→</a> <a id="941" href="FibreType.html#316" class="Bound">B</a><a id="942" class="Symbol">}</a> <a id="944" class="Symbol">→</a> <a id="946" class="Symbol">{</a><a id="947" href="FibreType.html#947" class="Bound">a</a> <a id="949" class="Symbol">:</a> <a id="951" href="FibreType.html#302" class="Bound">A</a><a id="952" class="Symbol">}</a>
    <a id="958" class="Symbol">→</a> <a id="960" href="FibreType.html#547" class="Function">fib</a> <a id="964" href="FibreType.html#933" class="Bound">f</a> <a id="966" class="Symbol">(</a><a id="967" href="FibreType.html#933" class="Bound">f</a> <a id="969" href="FibreType.html#947" class="Bound">a</a><a id="970" class="Symbol">)</a>

  <a id="975" href="FibreType.html#913" class="Function">fib-image</a> <a id="985" class="Symbol">{</a><a id="986" href="FibreType.html#986" class="Bound">f</a><a id="987" class="Symbol">}</a> <a id="989" class="Symbol">{</a><a id="990" href="FibreType.html#990" class="Bound">a</a><a id="991" class="Symbol">}</a> <a id="993" class="Symbol">=</a> <a id="995" href="FibreType.html#990" class="Bound">a</a> <a id="997" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="999" href="BasicTypes.html#4586" class="Function">refl</a> <a id="1004" class="Symbol">(</a><a id="1005" href="FibreType.html#986" class="Bound">f</a> <a id="1007" href="FibreType.html#990" class="Bound">a</a><a id="1008" class="Symbol">)</a>
</pre>
