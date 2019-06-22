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
<a id="187" class="Symbol">{-#</a> <a id="191" class="Keyword">OPTIONS</a> <a id="199" class="Pragma">--without-K</a> <a id="211" class="Symbol">#-}</a>
<a id="215" class="Keyword">open</a> <a id="220" class="Keyword">import</a> <a id="227" href="TransportLemmas.html" class="Module">TransportLemmas</a>
<a id="243" class="Keyword">open</a> <a id="248" class="Keyword">import</a> <a id="255" href="EquivalenceType.html" class="Module">EquivalenceType</a>

<a id="272" class="Keyword">open</a> <a id="277" class="Keyword">import</a> <a id="284" href="HomotopyType.html" class="Module">HomotopyType</a>
<a id="297" class="Keyword">open</a> <a id="302" class="Keyword">import</a> <a id="309" href="FunExtAxiom.html" class="Module">FunExtAxiom</a>
<a id="321" class="Keyword">open</a> <a id="326" class="Keyword">import</a> <a id="333" href="HLevelTypes.html" class="Module">HLevelTypes</a>
</pre>
</div>

### Monoids

<pre class="Agda">
<a id="390" class="Keyword">module</a>
  <a id="399" href="MonoidType.html" class="Module">MonoidType</a>
    <a id="414" class="Keyword">where</a>
</pre>

<pre class="Agda">
  <a id="447" class="Keyword">record</a>
    <a id="Monoid"></a><a id="458" href="MonoidType.html#458" class="Record">Monoid</a>
      <a id="471" class="Symbol">:</a> <a id="473" href="Intro.html#1813" class="Function">Type</a> <a id="478" class="Symbol">(</a><a id="479" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="484" href="MonoidType.html#484" class="Bound">ℓ</a><a id="485" class="Symbol">)</a>
      <a id="493" class="Keyword">where</a>
    <a id="503" class="Keyword">constructor</a> <a id="Monoid.monoid"></a><a id="515" href="MonoidType.html#515" class="InductiveConstructor">monoid</a>
    <a id="526" class="Keyword">field</a>
      <a id="Monoid.G"></a><a id="538" href="MonoidType.html#538" class="Field">G</a>    <a id="543" class="Symbol">:</a> <a id="545" href="Intro.html#1813" class="Function">Type</a> <a id="550" href="MonoidType.html#484" class="Bound">ℓ</a>     <a id="556" class="Comment">-- Carrier set</a>
      <a id="Monoid.e"></a><a id="577" href="MonoidType.html#577" class="Field">e</a>    <a id="582" class="Symbol">:</a> <a id="584" href="MonoidType.html#538" class="Field">G</a>          <a id="595" class="Comment">-- Unit element (at least one element, this one)</a>
      <a id="Monoid._&lt;&gt;_"></a><a id="650" href="MonoidType.html#650" class="Field Operator">_&lt;&gt;_</a> <a id="655" class="Symbol">:</a> <a id="657" href="MonoidType.html#538" class="Field">G</a> <a id="659" class="Symbol">→</a> <a id="661" href="MonoidType.html#538" class="Field">G</a> <a id="663" class="Symbol">→</a> <a id="665" href="MonoidType.html#538" class="Field">G</a>  <a id="668" class="Comment">-- Operation</a>

      <a id="688" class="Comment">-- property</a>
      <a id="Monoid.GisSet"></a><a id="706" href="MonoidType.html#706" class="Field">GisSet</a> <a id="713" class="Symbol">:</a> <a id="715" href="HLevelTypes.html#1699" class="Function">isSet</a> <a id="721" href="MonoidType.html#538" class="Field">G</a>  <a id="724" class="Comment">-- the carrier is a hSet</a>

      <a id="756" class="Comment">-- Axioms of a monoid</a>
      <a id="Monoid.lunit"></a><a id="784" href="MonoidType.html#784" class="Field">lunit</a> <a id="790" class="Symbol">:</a> <a id="792" class="Symbol">(</a><a id="793" href="MonoidType.html#793" class="Bound">x</a> <a id="795" class="Symbol">:</a> <a id="797" href="MonoidType.html#538" class="Field">G</a><a id="798" class="Symbol">)</a> <a id="800" class="Symbol">→</a> <a id="802" class="Symbol">(</a><a id="803" href="MonoidType.html#577" class="Field">e</a> <a id="805" href="MonoidType.html#650" class="Field Operator">&lt;&gt;</a> <a id="808" href="MonoidType.html#793" class="Bound">x</a><a id="809" class="Symbol">)</a> <a id="811" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="814" href="MonoidType.html#793" class="Bound">x</a>
      <a id="Monoid.runit"></a><a id="822" href="MonoidType.html#822" class="Field">runit</a> <a id="828" class="Symbol">:</a> <a id="830" class="Symbol">(</a><a id="831" href="MonoidType.html#831" class="Bound">x</a> <a id="833" class="Symbol">:</a> <a id="835" href="MonoidType.html#538" class="Field">G</a><a id="836" class="Symbol">)</a> <a id="838" class="Symbol">→</a> <a id="840" class="Symbol">(</a><a id="841" href="MonoidType.html#831" class="Bound">x</a> <a id="843" href="MonoidType.html#650" class="Field Operator">&lt;&gt;</a> <a id="846" href="MonoidType.html#577" class="Field">e</a><a id="847" class="Symbol">)</a> <a id="849" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="852" href="MonoidType.html#831" class="Bound">x</a>
      <a id="Monoid.assoc"></a><a id="860" href="MonoidType.html#860" class="Field">assoc</a> <a id="866" class="Symbol">:</a> <a id="868" class="Symbol">(</a><a id="869" href="MonoidType.html#869" class="Bound">x</a> <a id="871" href="MonoidType.html#871" class="Bound">y</a> <a id="873" href="MonoidType.html#873" class="Bound">z</a> <a id="875" class="Symbol">:</a> <a id="877" href="MonoidType.html#538" class="Field">G</a><a id="878" class="Symbol">)</a> <a id="880" class="Symbol">→</a> <a id="882" class="Symbol">(</a><a id="883" href="MonoidType.html#869" class="Bound">x</a> <a id="885" href="MonoidType.html#650" class="Field Operator">&lt;&gt;</a> <a id="888" class="Symbol">(</a><a id="889" href="MonoidType.html#871" class="Bound">y</a> <a id="891" href="MonoidType.html#650" class="Field Operator">&lt;&gt;</a> <a id="894" href="MonoidType.html#873" class="Bound">z</a><a id="895" class="Symbol">))</a> <a id="898" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="901" class="Symbol">((</a><a id="903" href="MonoidType.html#869" class="Bound">x</a> <a id="905" href="MonoidType.html#650" class="Field Operator">&lt;&gt;</a> <a id="908" href="MonoidType.html#871" class="Bound">y</a><a id="909" class="Symbol">)</a> <a id="911" href="MonoidType.html#650" class="Field Operator">&lt;&gt;</a> <a id="914" href="MonoidType.html#873" class="Bound">z</a><a id="915" class="Symbol">)</a>
</pre>

<pre class="Agda">
  <a id="944" class="Keyword">open</a> <a id="949" href="MonoidType.html#458" class="Module">Monoid</a> <a id="956" class="Keyword">public</a>
</pre>
