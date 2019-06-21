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

### Relation

<pre class="Agda">
<a id="342" class="Keyword">module</a> <a id="349" href="RelationType.html" class="Module">RelationType</a> <a id="362" class="Keyword">where</a>

  <a id="371" class="Keyword">record</a> <a id="Rel"></a><a id="378" href="RelationType.html#378" class="Record">Rel</a> <a id="382" class="Symbol">{</a><a id="383" href="RelationType.html#383" class="Bound">ℓ</a><a id="384" class="Symbol">}</a> <a id="386" class="Symbol">(</a><a id="387" href="RelationType.html#387" class="Bound">A</a> <a id="389" class="Symbol">:</a> <a id="391" href="Intro.html#1813" class="Function">Type</a> <a id="396" href="RelationType.html#383" class="Bound">ℓ</a><a id="397" class="Symbol">)</a> <a id="399" class="Symbol">:</a> <a id="401" href="Intro.html#1813" class="Function">Type</a> <a id="406" class="Symbol">(</a><a id="407" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="412" href="RelationType.html#383" class="Bound">ℓ</a><a id="413" class="Symbol">)</a> <a id="415" class="Keyword">where</a>
    <a id="425" class="Keyword">field</a>
      <a id="Rel.R"></a><a id="437" href="RelationType.html#437" class="Field">R</a>     <a id="443" class="Symbol">:</a> <a id="445" href="RelationType.html#387" class="Bound">A</a> <a id="447" class="Symbol">→</a> <a id="449" href="RelationType.html#387" class="Bound">A</a> <a id="451" class="Symbol">→</a> <a id="453" href="Intro.html#1813" class="Function">Type</a> <a id="458" href="RelationType.html#383" class="Bound">ℓ</a>
      <a id="Rel.Rprop"></a><a id="466" href="RelationType.html#466" class="Field">Rprop</a> <a id="472" class="Symbol">:</a> <a id="474" class="Symbol">(</a><a id="475" href="RelationType.html#475" class="Bound">a</a> <a id="477" href="RelationType.html#477" class="Bound">b</a> <a id="479" class="Symbol">:</a> <a id="481" href="RelationType.html#387" class="Bound">A</a><a id="482" class="Symbol">)</a> <a id="484" class="Symbol">→</a> <a id="486" href="HLevelTypes.html#1179" class="Function">isProp</a> <a id="493" class="Symbol">(</a><a id="494" href="RelationType.html#437" class="Field">R</a> <a id="496" href="RelationType.html#475" class="Bound">a</a> <a id="498" href="RelationType.html#477" class="Bound">b</a><a id="499" class="Symbol">)</a>
  <a id="503" class="Keyword">open</a> <a id="508" href="RelationType.html#378" class="Module">Rel</a> <a id="512" class="Symbol">{{...}}</a> <a id="520" class="Keyword">public</a>
</pre>
