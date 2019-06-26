---
layout: page
title: "TheAxiomOfChoice"
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
<a id="180" class="Symbol">{-#</a> <a id="184" class="Keyword">OPTIONS</a> <a id="192" class="Pragma">--without-K</a> <a id="204" class="Symbol">#-}</a>
<a id="208" class="Keyword">open</a> <a id="213" class="Keyword">import</a> <a id="220" href="BasicTypes.html" class="Module">BasicTypes</a>

<a id="232" class="Keyword">open</a> <a id="237" class="Keyword">import</a> <a id="244" href="HLevelTypes.html" class="Module">HLevelTypes</a>
<a id="256" class="Keyword">open</a> <a id="261" class="Keyword">import</a> <a id="268" href="TruncationType.html" class="Module">TruncationType</a>
</pre>
</div>

### The Axiom Of Choice

<pre class="Agda">
<a id="340" class="Keyword">module</a>
  <a id="349" href="TheAxiomOfChoice.html" class="Module">TheAxiomOfChoice</a>
  <a id="368" class="Keyword">where</a>
</pre>

Let's write in type theory, the following logic formulation of
of the axiom of choice:

$$
  (∀ (b : B) . ∃ (a : A b) . P(b,a))
  ⇒ ∃ (g : (b : B) → A b) . ∀ (b : B) . P (b, g(b)) .
$$

<pre class="Agda">
  <a id="587" class="Keyword">postulate</a>
    <a id="Choice"></a><a id="601" href="TheAxiomOfChoice.html#601" class="Postulate">Choice</a>
      <a id="614" class="Symbol">:</a>
      <a id="622" class="Comment">-- Asummption 1: </a>
        <a id="648" class="Symbol">(</a><a id="649" href="TheAxiomOfChoice.html#649" class="Bound">B</a> <a id="651" class="Symbol">:</a> <a id="653" href="Intro.html#1803" class="Function">Type</a> <a id="658" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="660" class="Symbol">)</a>
      <a id="668" class="Symbol">→</a> <a id="670" href="HLevelTypes.html#1682" class="Function">isSet</a> <a id="676" href="TheAxiomOfChoice.html#649" class="Bound">B</a>
      <a id="684" class="Comment">-- Asummption 2: </a>
      <a id="708" class="Symbol">→</a> <a id="710" class="Symbol">(</a><a id="711" href="TheAxiomOfChoice.html#711" class="Bound">A</a> <a id="713" class="Symbol">:</a> <a id="715" href="TheAxiomOfChoice.html#649" class="Bound">B</a> <a id="717" class="Symbol">→</a> <a id="719" href="Intro.html#1803" class="Function">Type</a> <a id="724" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="726" class="Symbol">)</a>
      <a id="734" class="Symbol">→</a> <a id="736" class="Symbol">∀</a> <a id="738" class="Symbol">(</a><a id="739" href="TheAxiomOfChoice.html#739" class="Bound">b</a> <a id="741" class="Symbol">:</a> <a id="743" href="TheAxiomOfChoice.html#649" class="Bound">B</a><a id="744" class="Symbol">)</a> <a id="746" class="Symbol">→</a> <a id="748" href="HLevelTypes.html#1682" class="Function">isSet</a> <a id="754" class="Symbol">(</a><a id="755" href="TheAxiomOfChoice.html#711" class="Bound">A</a> <a id="757" href="TheAxiomOfChoice.html#739" class="Bound">b</a><a id="758" class="Symbol">)</a>
      <a id="766" class="Comment">-- Asummption 3:</a>
      <a id="789" class="Symbol">→</a> <a id="791" class="Symbol">(</a><a id="792" href="TheAxiomOfChoice.html#792" class="Bound">P</a> <a id="794" class="Symbol">:</a> <a id="796" class="Symbol">(</a><a id="797" href="TheAxiomOfChoice.html#797" class="Bound">b</a> <a id="799" class="Symbol">:</a> <a id="801" href="TheAxiomOfChoice.html#649" class="Bound">B</a><a id="802" class="Symbol">)</a> <a id="804" class="Symbol">→</a> <a id="806" class="Symbol">(</a><a id="807" href="TheAxiomOfChoice.html#711" class="Bound">A</a> <a id="809" href="TheAxiomOfChoice.html#797" class="Bound">b</a><a id="810" class="Symbol">)</a> <a id="812" class="Symbol">→</a> <a id="814" href="Intro.html#1803" class="Function">Type</a> <a id="819" href="Intro.html#2251" class="Generalizable">ℓₖ</a><a id="821" class="Symbol">)</a>
      <a id="829" class="Symbol">→</a> <a id="831" class="Symbol">∀</a> <a id="833" class="Symbol">(</a><a id="834" href="TheAxiomOfChoice.html#834" class="Bound">b</a> <a id="836" class="Symbol">:</a> <a id="838" href="TheAxiomOfChoice.html#649" class="Bound">B</a><a id="839" class="Symbol">)(</a><a id="841" href="TheAxiomOfChoice.html#841" class="Bound">a</a> <a id="843" class="Symbol">:</a> <a id="845" href="TheAxiomOfChoice.html#711" class="Bound">A</a> <a id="847" href="TheAxiomOfChoice.html#834" class="Bound">b</a><a id="848" class="Symbol">)</a> <a id="850" class="Symbol">→</a> <a id="852" href="HLevelTypes.html#1162" class="Function">isProp</a> <a id="859" class="Symbol">(</a><a id="860" href="TheAxiomOfChoice.html#792" class="Bound">P</a> <a id="862" href="TheAxiomOfChoice.html#834" class="Bound">b</a> <a id="864" href="TheAxiomOfChoice.html#841" class="Bound">a</a><a id="865" class="Symbol">)</a>
      <a id="873" class="Comment">-----------------------------------</a>
      <a id="915" class="Symbol">→</a> <a id="917" class="Symbol">(∀</a> <a id="920" href="TheAxiomOfChoice.html#920" class="Bound">b</a> <a id="922" class="Symbol">→</a> <a id="924" href="TruncationType.html#821" class="Function Operator">∥</a> <a id="926" href="BasicTypes.html#1497" class="Record">∑</a> <a id="928" class="Symbol">(</a><a id="929" href="TheAxiomOfChoice.html#711" class="Bound">A</a> <a id="931" href="TheAxiomOfChoice.html#920" class="Bound">b</a><a id="932" class="Symbol">)</a> <a id="934" class="Symbol">(λ</a> <a id="937" href="TheAxiomOfChoice.html#937" class="Bound">a</a> <a id="939" class="Symbol">→</a> <a id="941" href="TheAxiomOfChoice.html#792" class="Bound">P</a> <a id="943" href="TheAxiomOfChoice.html#920" class="Bound">b</a> <a id="945" href="TheAxiomOfChoice.html#937" class="Bound">a</a><a id="946" class="Symbol">)</a> <a id="948" href="TruncationType.html#821" class="Function Operator">∥</a><a id="949" class="Symbol">)</a>
      <a id="957" class="Symbol">→</a> <a id="959" href="TruncationType.html#821" class="Function Operator">∥</a> <a id="961" href="BasicTypes.html#1497" class="Record">∑</a> <a id="963" class="Symbol">(</a><a id="964" href="BasicTypes.html#2022" class="Function">∏</a> <a id="966" href="TheAxiomOfChoice.html#649" class="Bound">B</a> <a id="968" href="TheAxiomOfChoice.html#711" class="Bound">A</a><a id="969" class="Symbol">)</a> <a id="971" class="Symbol">(λ</a> <a id="974" href="TheAxiomOfChoice.html#974" class="Bound">g</a> <a id="976" class="Symbol">→</a> <a id="978" href="TheAxiomOfChoice.html#792" class="Bound">P</a> <a id="980" href="TheAxiomOfChoice.html#834" class="Bound">b</a> <a id="982" class="Symbol">(</a><a id="983" href="TheAxiomOfChoice.html#974" class="Bound">g</a> <a id="985" href="TheAxiomOfChoice.html#834" class="Bound">b</a><a id="986" class="Symbol">))</a> <a id="989" href="TruncationType.html#821" class="Function Operator">∥</a>
</pre>
