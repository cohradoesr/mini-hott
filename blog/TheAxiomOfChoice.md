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

Let's write in type theory, the logic formal
notion of the axiom of choice which is as follow:

$$
  (∀ (b : B) . ∃ (a : A b) . P(b,a))
  ⇒ ∃ (g : (b : B) → A b) . ∀ (b : B) . P (b, g(b)) .
$$

<pre class="Agda">
  <a id="595" class="Keyword">postulate</a>
    <a id="Choice"></a><a id="609" href="TheAxiomOfChoice.html#609" class="Postulate">Choice</a>
      <a id="622" class="Symbol">:</a>
      <a id="630" class="Comment">-- Asummption 1: </a>
        <a id="656" class="Symbol">(</a><a id="657" href="TheAxiomOfChoice.html#657" class="Bound">B</a> <a id="659" class="Symbol">:</a> <a id="661" href="Intro.html#1803" class="Function">Type</a> <a id="666" href="Intro.html#2245" class="Generalizable">ℓᵢ</a><a id="668" class="Symbol">)</a>
      <a id="676" class="Symbol">→</a> <a id="678" href="HLevelTypes.html#1682" class="Function">isSet</a> <a id="684" href="TheAxiomOfChoice.html#657" class="Bound">B</a>
      <a id="692" class="Comment">-- Asummption 2: </a>
      <a id="716" class="Symbol">→</a> <a id="718" class="Symbol">(</a><a id="719" href="TheAxiomOfChoice.html#719" class="Bound">A</a> <a id="721" class="Symbol">:</a> <a id="723" href="TheAxiomOfChoice.html#657" class="Bound">B</a> <a id="725" class="Symbol">→</a> <a id="727" href="Intro.html#1803" class="Function">Type</a> <a id="732" href="Intro.html#2248" class="Generalizable">ℓⱼ</a><a id="734" class="Symbol">)</a>
      <a id="742" class="Symbol">→</a> <a id="744" class="Symbol">∀</a> <a id="746" class="Symbol">(</a><a id="747" href="TheAxiomOfChoice.html#747" class="Bound">b</a> <a id="749" class="Symbol">:</a> <a id="751" href="TheAxiomOfChoice.html#657" class="Bound">B</a><a id="752" class="Symbol">)</a> <a id="754" class="Symbol">→</a> <a id="756" href="HLevelTypes.html#1682" class="Function">isSet</a> <a id="762" class="Symbol">(</a><a id="763" href="TheAxiomOfChoice.html#719" class="Bound">A</a> <a id="765" href="TheAxiomOfChoice.html#747" class="Bound">b</a><a id="766" class="Symbol">)</a>
      <a id="774" class="Comment">-- Asummption 3:</a>
      <a id="797" class="Symbol">→</a> <a id="799" class="Symbol">(</a><a id="800" href="TheAxiomOfChoice.html#800" class="Bound">P</a> <a id="802" class="Symbol">:</a> <a id="804" class="Symbol">(</a><a id="805" href="TheAxiomOfChoice.html#805" class="Bound">b</a> <a id="807" class="Symbol">:</a> <a id="809" href="TheAxiomOfChoice.html#657" class="Bound">B</a><a id="810" class="Symbol">)</a> <a id="812" class="Symbol">→</a> <a id="814" class="Symbol">(</a><a id="815" href="TheAxiomOfChoice.html#719" class="Bound">A</a> <a id="817" href="TheAxiomOfChoice.html#805" class="Bound">b</a><a id="818" class="Symbol">)</a> <a id="820" class="Symbol">→</a> <a id="822" href="Intro.html#1803" class="Function">Type</a> <a id="827" href="Intro.html#2251" class="Generalizable">ℓₖ</a><a id="829" class="Symbol">)</a>
      <a id="837" class="Symbol">→</a> <a id="839" class="Symbol">∀</a> <a id="841" class="Symbol">(</a><a id="842" href="TheAxiomOfChoice.html#842" class="Bound">b</a> <a id="844" class="Symbol">:</a> <a id="846" href="TheAxiomOfChoice.html#657" class="Bound">B</a><a id="847" class="Symbol">)(</a><a id="849" href="TheAxiomOfChoice.html#849" class="Bound">a</a> <a id="851" class="Symbol">:</a> <a id="853" href="TheAxiomOfChoice.html#719" class="Bound">A</a> <a id="855" href="TheAxiomOfChoice.html#842" class="Bound">b</a><a id="856" class="Symbol">)</a> <a id="858" class="Symbol">→</a> <a id="860" href="HLevelTypes.html#1162" class="Function">isProp</a> <a id="867" class="Symbol">(</a><a id="868" href="TheAxiomOfChoice.html#800" class="Bound">P</a> <a id="870" href="TheAxiomOfChoice.html#842" class="Bound">b</a> <a id="872" href="TheAxiomOfChoice.html#849" class="Bound">a</a><a id="873" class="Symbol">)</a>
      <a id="881" class="Comment">-----------------------------------</a>
      <a id="923" class="Symbol">→</a> <a id="925" class="Symbol">(∀</a> <a id="928" href="TheAxiomOfChoice.html#928" class="Bound">b</a> <a id="930" class="Symbol">→</a> <a id="932" href="TruncationType.html#821" class="Function Operator">∥</a> <a id="934" href="BasicTypes.html#1497" class="Record">∑</a> <a id="936" class="Symbol">(</a><a id="937" href="TheAxiomOfChoice.html#719" class="Bound">A</a> <a id="939" href="TheAxiomOfChoice.html#928" class="Bound">b</a><a id="940" class="Symbol">)</a> <a id="942" class="Symbol">(λ</a> <a id="945" href="TheAxiomOfChoice.html#945" class="Bound">a</a> <a id="947" class="Symbol">→</a> <a id="949" href="TheAxiomOfChoice.html#800" class="Bound">P</a> <a id="951" href="TheAxiomOfChoice.html#928" class="Bound">b</a> <a id="953" href="TheAxiomOfChoice.html#945" class="Bound">a</a><a id="954" class="Symbol">)</a> <a id="956" href="TruncationType.html#821" class="Function Operator">∥</a><a id="957" class="Symbol">)</a>
      <a id="965" class="Symbol">→</a> <a id="967" href="TruncationType.html#821" class="Function Operator">∥</a> <a id="969" href="BasicTypes.html#1497" class="Record">∑</a> <a id="971" class="Symbol">(</a><a id="972" href="BasicTypes.html#2022" class="Function">∏</a> <a id="974" href="TheAxiomOfChoice.html#657" class="Bound">B</a> <a id="976" href="TheAxiomOfChoice.html#719" class="Bound">A</a><a id="977" class="Symbol">)</a> <a id="979" class="Symbol">(λ</a> <a id="982" href="TheAxiomOfChoice.html#982" class="Bound">g</a> <a id="984" class="Symbol">→</a> <a id="986" href="TheAxiomOfChoice.html#800" class="Bound">P</a> <a id="988" href="TheAxiomOfChoice.html#842" class="Bound">b</a> <a id="990" class="Symbol">(</a><a id="991" href="TheAxiomOfChoice.html#982" class="Bound">g</a> <a id="993" href="TheAxiomOfChoice.html#842" class="Bound">b</a><a id="994" class="Symbol">))</a> <a id="997" href="TruncationType.html#821" class="Function Operator">∥</a>
</pre>
