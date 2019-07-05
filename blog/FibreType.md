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
<a id="174" class="Symbol">{-#</a> <a id="178" class="Keyword">OPTIONS</a> <a id="186" class="Pragma">--without-K</a> <a id="198" class="Symbol">#-}</a>
<a id="202" class="Keyword">open</a> <a id="207" class="Keyword">import</a> <a id="214" href="BasicTypes.html" class="Module">BasicTypes</a>
</pre>
</div>

## Fibre type

<pre class="Agda">
<a id="272" class="Keyword">module</a>
  <a id="281" href="FibreType.html" class="Module">FibreType</a> <a id="291" class="Symbol">{</a><a id="292" href="FibreType.html#292" class="Bound">A</a> <a id="294" class="Symbol">:</a> <a id="296" href="Intro.html#2766" class="Function">Type</a> <a id="301" href="Intro.html#3320" class="Generalizable">ℓᵢ</a><a id="303" class="Symbol">}</a> <a id="305" class="Symbol">{</a><a id="306" href="FibreType.html#306" class="Bound">B</a> <a id="308" class="Symbol">:</a> <a id="310" href="Intro.html#2766" class="Function">Type</a> <a id="315" href="Intro.html#3323" class="Generalizable">ℓⱼ</a><a id="317" class="Symbol">}</a>
    <a id="323" class="Keyword">where</a>
</pre>

<pre class="Agda">
  <a id="356" class="Comment">-- Fiber</a>
  <a id="fibre"></a><a id="367" href="FibreType.html#367" class="Function">fibre</a>
    <a id="377" class="Symbol">:</a> <a id="379" class="Symbol">(</a><a id="380" href="FibreType.html#380" class="Bound">f</a> <a id="382" class="Symbol">:</a> <a id="384" href="FibreType.html#292" class="Bound">A</a> <a id="386" class="Symbol">→</a> <a id="388" href="FibreType.html#306" class="Bound">B</a><a id="389" class="Symbol">)</a>
    <a id="395" class="Symbol">→</a> <a id="397" class="Symbol">(</a><a id="398" href="FibreType.html#398" class="Bound">b</a> <a id="400" class="Symbol">:</a> <a id="402" href="FibreType.html#306" class="Bound">B</a><a id="403" class="Symbol">)</a>
    <a id="409" class="Comment">---------------</a>
    <a id="429" class="Symbol">→</a> <a id="431" href="Intro.html#2766" class="Function">Type</a> <a id="436" class="Symbol">(</a><a id="437" href="FibreType.html#301" class="Bound">ℓᵢ</a> <a id="440" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="442" href="FibreType.html#315" class="Bound">ℓⱼ</a><a id="444" class="Symbol">)</a>

  <a id="449" href="FibreType.html#367" class="Function">fibre</a> <a id="455" href="FibreType.html#455" class="Bound">f</a> <a id="457" href="FibreType.html#457" class="Bound">b</a> <a id="459" class="Symbol">=</a> <a id="461" href="BasicTypes.html#1689" class="Function">Σ</a> <a id="463" href="FibreType.html#292" class="Bound">A</a> <a id="465" class="Symbol">(λ</a> <a id="468" href="FibreType.html#468" class="Bound">a</a> <a id="470" class="Symbol">→</a> <a id="472" href="FibreType.html#455" class="Bound">f</a> <a id="474" href="FibreType.html#468" class="Bound">a</a> <a id="476" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="479" href="FibreType.html#457" class="Bound">b</a><a id="480" class="Symbol">)</a>
</pre>

Synomyms and syntax sugar:

<pre class="Agda">
  <a id="fib"></a><a id="537" href="FibreType.html#537" class="Function">fib</a>   <a id="543" class="Symbol">=</a> <a id="545" href="FibreType.html#367" class="Function">fibre</a>
  <a id="fiber"></a><a id="553" href="FibreType.html#553" class="Function">fiber</a> <a id="559" class="Symbol">=</a> <a id="561" href="FibreType.html#367" class="Function">fibre</a>
  
  <a id="572" class="Keyword">syntax</a> <a id="579" href="FibreType.html#367" class="Function">fibre</a> <a id="585" class="Bound">f</a> <a id="587" class="Bound">b</a> <a id="589" class="Symbol">=</a> <a id="591" class="Bound">f</a> <a id="593" class="Function">//</a> <a id="596" class="Bound">b</a>
</pre>

A function applied over the fiber returns the original point

<pre class="Agda">
  
  <a id="fib-eq"></a><a id="690" href="FibreType.html#690" class="Function">fib-eq</a>
    <a id="701" class="Symbol">:</a> <a id="703" class="Symbol">∀</a> <a id="705" class="Symbol">{</a><a id="706" href="FibreType.html#706" class="Bound">f</a> <a id="708" class="Symbol">:</a> <a id="710" href="FibreType.html#292" class="Bound">A</a> <a id="712" class="Symbol">→</a> <a id="714" href="FibreType.html#306" class="Bound">B</a><a id="715" class="Symbol">}</a> <a id="717" class="Symbol">{</a><a id="718" href="FibreType.html#718" class="Bound">b</a> <a id="720" class="Symbol">:</a> <a id="722" href="FibreType.html#306" class="Bound">B</a><a id="723" class="Symbol">}</a>
    <a id="729" class="Symbol">→</a> <a id="731" class="Symbol">(</a><a id="732" href="FibreType.html#732" class="Bound">h</a> <a id="734" class="Symbol">:</a> <a id="736" href="FibreType.html#537" class="Function">fib</a> <a id="740" href="FibreType.html#706" class="Bound">f</a> <a id="742" href="FibreType.html#718" class="Bound">b</a><a id="743" class="Symbol">)</a>
    <a id="749" class="Comment">---------------</a>
    <a id="769" class="Symbol">→</a> <a id="771" href="FibreType.html#706" class="Bound">f</a> <a id="773" class="Symbol">(</a><a id="774" href="BasicTypes.html#1763" class="Function">proj₁</a> <a id="780" href="FibreType.html#732" class="Bound">h</a><a id="781" class="Symbol">)</a> <a id="783" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="786" href="FibreType.html#718" class="Bound">b</a>

  <a id="791" href="FibreType.html#690" class="Function">fib-eq</a> <a id="798" class="Symbol">(</a><a id="799" href="FibreType.html#799" class="Bound">a</a> <a id="801" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="803" href="FibreType.html#803" class="Bound">α</a><a id="804" class="Symbol">)</a> <a id="806" class="Symbol">=</a> <a id="808" href="FibreType.html#803" class="Bound">α</a>
</pre>

Each point is on the fiber of its image.

{: .foldable until="4"}
<pre class="Agda">
  
  <a id="fib-image"></a><a id="906" href="FibreType.html#906" class="Function">fib-image</a>
    <a id="920" class="Symbol">:</a>  <a id="923" class="Symbol">∀</a> <a id="925" class="Symbol">{</a><a id="926" href="FibreType.html#926" class="Bound">f</a> <a id="928" class="Symbol">:</a> <a id="930" href="FibreType.html#292" class="Bound">A</a> <a id="932" class="Symbol">→</a> <a id="934" href="FibreType.html#306" class="Bound">B</a><a id="935" class="Symbol">}</a> <a id="937" class="Symbol">→</a> <a id="939" class="Symbol">{</a><a id="940" href="FibreType.html#940" class="Bound">a</a> <a id="942" class="Symbol">:</a> <a id="944" href="FibreType.html#292" class="Bound">A</a><a id="945" class="Symbol">}</a>
    <a id="951" class="Symbol">→</a> <a id="953" href="FibreType.html#537" class="Function">fib</a> <a id="957" href="FibreType.html#926" class="Bound">f</a> <a id="959" class="Symbol">(</a><a id="960" href="FibreType.html#926" class="Bound">f</a> <a id="962" href="FibreType.html#940" class="Bound">a</a><a id="963" class="Symbol">)</a>

  <a id="968" href="FibreType.html#906" class="Function">fib-image</a> <a id="978" class="Symbol">{</a><a id="979" href="FibreType.html#979" class="Bound">f</a><a id="980" class="Symbol">}</a> <a id="982" class="Symbol">{</a><a id="983" href="FibreType.html#983" class="Bound">a</a><a id="984" class="Symbol">}</a> <a id="986" class="Symbol">=</a> <a id="988" href="FibreType.html#983" class="Bound">a</a> <a id="990" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="992" href="BasicTypes.html#4630" class="Function">refl</a> <a id="997" class="Symbol">(</a><a id="998" href="FibreType.html#979" class="Bound">f</a> <a id="1000" href="FibreType.html#983" class="Bound">a</a><a id="1001" class="Symbol">)</a>
</pre>
