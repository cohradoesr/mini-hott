---
layout: page
title: "Relation Type"
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
<a id="177" class="Symbol">{-#</a> <a id="181" class="Keyword">OPTIONS</a> <a id="189" class="Pragma">--without-K</a> <a id="201" class="Symbol">#-}</a>
<a id="205" class="Keyword">open</a> <a id="210" class="Keyword">import</a> <a id="217" href="TransportLemmas.html" class="Module">TransportLemmas</a>
<a id="233" class="Keyword">open</a> <a id="238" class="Keyword">import</a> <a id="245" href="EquivalenceType.html" class="Module">EquivalenceType</a>

<a id="262" class="Keyword">open</a> <a id="267" class="Keyword">import</a> <a id="274" href="HomotopyType.html" class="Module">HomotopyType</a>
<a id="287" class="Keyword">open</a> <a id="292" class="Keyword">import</a> <a id="299" href="FunExtAxiom.html" class="Module">FunExtAxiom</a>
<a id="311" class="Keyword">open</a> <a id="316" class="Keyword">import</a> <a id="323" href="HLevelTypes.html" class="Module">HLevelTypes</a>
</pre>
</div>

### Monoids

<pre class="Agda">
<a id="380" class="Keyword">module</a>
  <a id="389" href="MonoidType.html" class="Module">MonoidType</a>
    <a id="404" class="Keyword">where</a>
</pre>

<pre class="Agda">
  <a id="437" class="Keyword">record</a>
    <a id="Monoid"></a><a id="448" href="MonoidType.html#448" class="Record">Monoid</a>
      <a id="461" class="Symbol">:</a> <a id="463" href="Intro.html#1803" class="Function">Type</a> <a id="468" class="Symbol">(</a><a id="469" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="474" href="MonoidType.html#474" class="Bound">ℓ</a><a id="475" class="Symbol">)</a>
      <a id="483" class="Keyword">where</a>
    <a id="493" class="Keyword">constructor</a> <a id="Monoid.monoid"></a><a id="505" href="MonoidType.html#505" class="InductiveConstructor">monoid</a>
    <a id="516" class="Keyword">field</a>
      <a id="Monoid.M"></a><a id="528" href="MonoidType.html#528" class="Field">M</a>    <a id="533" class="Symbol">:</a> <a id="535" href="Intro.html#1803" class="Function">Type</a> <a id="540" href="MonoidType.html#474" class="Bound">ℓ</a>       <a id="548" class="Comment">-- Carrier set</a>
      <a id="Monoid.e"></a><a id="569" href="MonoidType.html#569" class="Field">e</a>    <a id="574" class="Symbol">:</a> <a id="576" href="MonoidType.html#528" class="Field">M</a>            <a id="589" class="Comment">-- Unit element (at least one element, this one)</a>
      <a id="Monoid._&lt;&gt;_"></a><a id="644" href="MonoidType.html#644" class="Field Operator">_&lt;&gt;_</a> <a id="649" class="Symbol">:</a> <a id="651" href="MonoidType.html#528" class="Field">M</a> <a id="653" class="Symbol">→</a> <a id="655" href="MonoidType.html#528" class="Field">M</a> <a id="657" class="Symbol">→</a> <a id="659" href="MonoidType.html#528" class="Field">M</a>    <a id="664" class="Comment">-- Operation</a>

      <a id="684" class="Comment">-- property</a>
      <a id="Monoid.M-is-set"></a><a id="702" href="MonoidType.html#702" class="Field">M-is-set</a> <a id="711" class="Symbol">:</a> <a id="713" href="HLevelTypes.html#1682" class="Function">isSet</a> <a id="719" href="MonoidType.html#528" class="Field">M</a>   <a id="723" class="Comment">-- the carrier is a hSet</a>

      <a id="755" class="Comment">-- Axioms of a monoid</a>
      <a id="Monoid.lunit"></a><a id="783" href="MonoidType.html#783" class="Field">lunit</a> <a id="789" class="Symbol">:</a> <a id="791" class="Symbol">(</a><a id="792" href="MonoidType.html#792" class="Bound">x</a> <a id="794" class="Symbol">:</a> <a id="796" href="MonoidType.html#528" class="Field">M</a><a id="797" class="Symbol">)</a> <a id="799" class="Symbol">→</a> <a id="801" class="Symbol">(</a><a id="802" href="MonoidType.html#569" class="Field">e</a> <a id="804" href="MonoidType.html#644" class="Field Operator">&lt;&gt;</a> <a id="807" href="MonoidType.html#792" class="Bound">x</a><a id="808" class="Symbol">)</a> <a id="810" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="813" href="MonoidType.html#792" class="Bound">x</a>
      <a id="Monoid.runit"></a><a id="821" href="MonoidType.html#821" class="Field">runit</a> <a id="827" class="Symbol">:</a> <a id="829" class="Symbol">(</a><a id="830" href="MonoidType.html#830" class="Bound">x</a> <a id="832" class="Symbol">:</a> <a id="834" href="MonoidType.html#528" class="Field">M</a><a id="835" class="Symbol">)</a> <a id="837" class="Symbol">→</a> <a id="839" class="Symbol">(</a><a id="840" href="MonoidType.html#830" class="Bound">x</a> <a id="842" href="MonoidType.html#644" class="Field Operator">&lt;&gt;</a> <a id="845" href="MonoidType.html#569" class="Field">e</a><a id="846" class="Symbol">)</a> <a id="848" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="851" href="MonoidType.html#830" class="Bound">x</a>
      <a id="Monoid.assoc"></a><a id="859" href="MonoidType.html#859" class="Field">assoc</a> <a id="865" class="Symbol">:</a> <a id="867" class="Symbol">(</a><a id="868" href="MonoidType.html#868" class="Bound">x</a> <a id="870" href="MonoidType.html#870" class="Bound">y</a> <a id="872" href="MonoidType.html#872" class="Bound">z</a> <a id="874" class="Symbol">:</a> <a id="876" href="MonoidType.html#528" class="Field">M</a><a id="877" class="Symbol">)</a> <a id="879" class="Symbol">→</a> <a id="881" class="Symbol">(</a><a id="882" href="MonoidType.html#868" class="Bound">x</a> <a id="884" href="MonoidType.html#644" class="Field Operator">&lt;&gt;</a> <a id="887" class="Symbol">(</a><a id="888" href="MonoidType.html#870" class="Bound">y</a> <a id="890" href="MonoidType.html#644" class="Field Operator">&lt;&gt;</a> <a id="893" href="MonoidType.html#872" class="Bound">z</a><a id="894" class="Symbol">))</a> <a id="897" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="900" class="Symbol">((</a><a id="902" href="MonoidType.html#868" class="Bound">x</a> <a id="904" href="MonoidType.html#644" class="Field Operator">&lt;&gt;</a> <a id="907" href="MonoidType.html#870" class="Bound">y</a><a id="908" class="Symbol">)</a> <a id="910" href="MonoidType.html#644" class="Field Operator">&lt;&gt;</a> <a id="913" href="MonoidType.html#872" class="Bound">z</a><a id="914" class="Symbol">)</a>
</pre>

<pre class="Agda">
  <a id="943" class="Keyword">open</a> <a id="948" href="MonoidType.html#448" class="Module">Monoid</a> <a id="955" class="Keyword">public</a>
</pre>
