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
  <a id="281" href="FibreType.html" class="Module">FibreType</a> <a id="291" class="Symbol">{</a><a id="292" href="FibreType.html#292" class="Bound">A</a> <a id="294" class="Symbol">:</a> <a id="296" href="Intro.html#1803" class="Function">Type</a> <a id="301" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="303" class="Symbol">}</a> <a id="305" class="Symbol">{</a><a id="306" href="FibreType.html#306" class="Bound">B</a> <a id="308" class="Symbol">:</a> <a id="310" href="Intro.html#1803" class="Function">Type</a> <a id="315" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="317" class="Symbol">}</a>
    <a id="323" class="Keyword">where</a>
</pre>

<pre class="Agda">
  <a id="356" class="Comment">-- Fiber</a>
  <a id="fibre"></a><a id="367" href="FibreType.html#367" class="Function">fibre</a>
    <a id="377" class="Symbol">:</a> <a id="379" class="Symbol">(</a><a id="380" href="FibreType.html#380" class="Bound">f</a> <a id="382" class="Symbol">:</a> <a id="384" href="FibreType.html#292" class="Bound">A</a> <a id="386" class="Symbol">→</a> <a id="388" href="FibreType.html#306" class="Bound">B</a><a id="389" class="Symbol">)</a>
    <a id="395" class="Symbol">→</a> <a id="397" class="Symbol">(</a><a id="398" href="FibreType.html#398" class="Bound">b</a> <a id="400" class="Symbol">:</a> <a id="402" href="FibreType.html#306" class="Bound">B</a><a id="403" class="Symbol">)</a>
    <a id="409" class="Comment">---------------</a>
    <a id="429" class="Symbol">→</a> <a id="431" href="Intro.html#1803" class="Function">Type</a> <a id="436" class="Symbol">(</a><a id="437" href="FibreType.html#301" class="Bound">ℓᵢ</a> <a id="440" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="442" href="FibreType.html#315" class="Bound">ℓⱼ</a><a id="444" class="Symbol">)</a>

  <a id="449" href="FibreType.html#367" class="Function">fibre</a> <a id="455" href="FibreType.html#455" class="Bound">f</a> <a id="457" href="FibreType.html#457" class="Bound">b</a> <a id="459" class="Symbol">=</a> <a id="461" href="BasicTypes.html#1680" class="Function">Σ</a> <a id="463" href="FibreType.html#292" class="Bound">A</a> <a id="465" class="Symbol">(λ</a> <a id="468" href="FibreType.html#468" class="Bound">a</a> <a id="470" class="Symbol">→</a> <a id="472" href="FibreType.html#455" class="Bound">f</a> <a id="474" href="FibreType.html#468" class="Bound">a</a> <a id="476" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="479" href="FibreType.html#457" class="Bound">b</a><a id="480" class="Symbol">)</a>
</pre>

Synomyms and syntax sugar:

<pre class="Agda">
  <a id="fib"></a><a id="537" href="FibreType.html#537" class="Function">fib</a> <a id="541" class="Symbol">=</a> <a id="543" href="FibreType.html#367" class="Function">fibre</a>
  <a id="551" class="Keyword">syntax</a> <a id="558" href="FibreType.html#367" class="Function">fibre</a> <a id="564" class="Bound">f</a> <a id="566" class="Bound">b</a> <a id="568" class="Symbol">=</a> <a id="570" class="Bound">f</a> <a id="572" class="Function">//</a> <a id="575" class="Bound">b</a>
</pre>

A function applied over the fiber returns the original point

<pre class="Agda">
  
  <a id="fib-eq"></a><a id="669" href="FibreType.html#669" class="Function">fib-eq</a>
    <a id="680" class="Symbol">:</a> <a id="682" class="Symbol">∀</a> <a id="684" class="Symbol">{</a><a id="685" href="FibreType.html#685" class="Bound">f</a> <a id="687" class="Symbol">:</a> <a id="689" href="FibreType.html#292" class="Bound">A</a> <a id="691" class="Symbol">→</a> <a id="693" href="FibreType.html#306" class="Bound">B</a><a id="694" class="Symbol">}</a> <a id="696" class="Symbol">{</a><a id="697" href="FibreType.html#697" class="Bound">b</a> <a id="699" class="Symbol">:</a> <a id="701" href="FibreType.html#306" class="Bound">B</a><a id="702" class="Symbol">}</a>
    <a id="708" class="Symbol">→</a> <a id="710" class="Symbol">(</a><a id="711" href="FibreType.html#711" class="Bound">h</a> <a id="713" class="Symbol">:</a> <a id="715" href="FibreType.html#537" class="Function">fib</a> <a id="719" href="FibreType.html#685" class="Bound">f</a> <a id="721" href="FibreType.html#697" class="Bound">b</a><a id="722" class="Symbol">)</a>
    <a id="728" class="Comment">---------------</a>
    <a id="748" class="Symbol">→</a> <a id="750" href="FibreType.html#685" class="Bound">f</a> <a id="752" class="Symbol">(</a><a id="753" href="BasicTypes.html#1754" class="Function">proj₁</a> <a id="759" href="FibreType.html#711" class="Bound">h</a><a id="760" class="Symbol">)</a> <a id="762" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="765" href="FibreType.html#697" class="Bound">b</a>

  <a id="770" href="FibreType.html#669" class="Function">fib-eq</a> <a id="777" class="Symbol">(</a><a id="778" href="FibreType.html#778" class="Bound">a</a> <a id="780" href="BasicTypes.html#1572" class="InductiveConstructor Operator">,</a> <a id="782" href="FibreType.html#782" class="Bound">α</a><a id="783" class="Symbol">)</a> <a id="785" class="Symbol">=</a> <a id="787" href="FibreType.html#782" class="Bound">α</a>
</pre>

Each point is on the fiber of its image.

{: .foldable until="4"}
<pre class="Agda">
  
  <a id="fib-image"></a><a id="885" href="FibreType.html#885" class="Function">fib-image</a>
    <a id="899" class="Symbol">:</a>  <a id="902" class="Symbol">∀</a> <a id="904" class="Symbol">{</a><a id="905" href="FibreType.html#905" class="Bound">f</a> <a id="907" class="Symbol">:</a> <a id="909" href="FibreType.html#292" class="Bound">A</a> <a id="911" class="Symbol">→</a> <a id="913" href="FibreType.html#306" class="Bound">B</a><a id="914" class="Symbol">}</a> <a id="916" class="Symbol">→</a> <a id="918" class="Symbol">{</a><a id="919" href="FibreType.html#919" class="Bound">a</a> <a id="921" class="Symbol">:</a> <a id="923" href="FibreType.html#292" class="Bound">A</a><a id="924" class="Symbol">}</a>
    <a id="930" class="Symbol">→</a> <a id="932" href="FibreType.html#537" class="Function">fib</a> <a id="936" href="FibreType.html#905" class="Bound">f</a> <a id="938" class="Symbol">(</a><a id="939" href="FibreType.html#905" class="Bound">f</a> <a id="941" href="FibreType.html#919" class="Bound">a</a><a id="942" class="Symbol">)</a>

  <a id="947" href="FibreType.html#885" class="Function">fib-image</a> <a id="957" class="Symbol">{</a><a id="958" href="FibreType.html#958" class="Bound">f</a><a id="959" class="Symbol">}</a> <a id="961" class="Symbol">{</a><a id="962" href="FibreType.html#962" class="Bound">a</a><a id="963" class="Symbol">}</a> <a id="965" class="Symbol">=</a> <a id="967" href="FibreType.html#962" class="Bound">a</a> <a id="969" href="BasicTypes.html#1572" class="InductiveConstructor Operator">,</a> <a id="971" href="BasicTypes.html#4576" class="Function">refl</a> <a id="976" class="Symbol">(</a><a id="977" href="FibreType.html#958" class="Bound">f</a> <a id="979" href="FibreType.html#962" class="Bound">a</a><a id="980" class="Symbol">)</a>
</pre>
