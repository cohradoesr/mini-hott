---
layout: page
title: "Relation Type"
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
<a id="188" class="Symbol">{-#</a> <a id="192" class="Keyword">OPTIONS</a> <a id="200" class="Pragma">--without-K</a> <a id="212" class="Symbol">#-}</a>
<a id="216" class="Keyword">open</a> <a id="221" class="Keyword">import</a> <a id="228" href="TransportLemmas.html" class="Module">TransportLemmas</a>
<a id="244" class="Keyword">open</a> <a id="249" class="Keyword">import</a> <a id="256" href="EquivalenceType.html" class="Module">EquivalenceType</a>
<a id="272" class="Keyword">open</a> <a id="277" class="Keyword">import</a> <a id="284" href="HLevelTypes.html" class="Module">HLevelTypes</a>
</pre>
</div>

## Relation

<pre class="Agda">
<a id="341" class="Keyword">module</a> <a id="348" href="RelationType.html" class="Module">RelationType</a> <a id="361" class="Keyword">where</a>

  <a id="370" class="Keyword">record</a> <a id="Rel"></a><a id="377" href="RelationType.html#377" class="Record">Rel</a> <a id="381" class="Symbol">{</a><a id="382" href="RelationType.html#382" class="Bound">ℓ</a><a id="383" class="Symbol">}</a> <a id="385" class="Symbol">(</a><a id="386" href="RelationType.html#386" class="Bound">A</a> <a id="388" class="Symbol">:</a> <a id="390" href="Intro.html#1593" class="Function">Type</a> <a id="395" href="RelationType.html#382" class="Bound">ℓ</a><a id="396" class="Symbol">)</a> <a id="398" class="Symbol">:</a> <a id="400" href="Intro.html#1593" class="Function">Type</a> <a id="405" class="Symbol">(</a><a id="406" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="411" href="RelationType.html#382" class="Bound">ℓ</a><a id="412" class="Symbol">)</a> <a id="414" class="Keyword">where</a>
    <a id="424" class="Keyword">field</a>
      <a id="Rel.R"></a><a id="436" href="RelationType.html#436" class="Field">R</a>     <a id="442" class="Symbol">:</a> <a id="444" href="RelationType.html#386" class="Bound">A</a> <a id="446" class="Symbol">→</a> <a id="448" href="RelationType.html#386" class="Bound">A</a> <a id="450" class="Symbol">→</a> <a id="452" href="Intro.html#1593" class="Function">Type</a> <a id="457" href="RelationType.html#382" class="Bound">ℓ</a>
      <a id="Rel.Rprop"></a><a id="465" href="RelationType.html#465" class="Field">Rprop</a> <a id="471" class="Symbol">:</a> <a id="473" class="Symbol">(</a><a id="474" href="RelationType.html#474" class="Bound">a</a> <a id="476" href="RelationType.html#476" class="Bound">b</a> <a id="478" class="Symbol">:</a> <a id="480" href="RelationType.html#386" class="Bound">A</a><a id="481" class="Symbol">)</a> <a id="483" class="Symbol">→</a> <a id="485" href="HLevelTypes.html#757" class="Function">isProp</a> <a id="492" class="Symbol">(</a><a id="493" href="RelationType.html#436" class="Field">R</a> <a id="495" href="RelationType.html#474" class="Bound">a</a> <a id="497" href="RelationType.html#476" class="Bound">b</a><a id="498" class="Symbol">)</a>
  <a id="502" class="Keyword">open</a> <a id="507" href="RelationType.html#377" class="Module">Rel</a> <a id="511" class="Symbol">{{...}}</a> <a id="519" class="Keyword">public</a>
</pre>
