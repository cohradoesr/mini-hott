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
<a id="187" class="Symbol">{-#</a> <a id="191" class="Keyword">OPTIONS</a> <a id="199" class="Pragma">--without-K</a> <a id="211" class="Symbol">#-}</a>
<a id="215" class="Keyword">open</a> <a id="220" class="Keyword">import</a> <a id="227" href="TransportLemmas.html" class="Module">TransportLemmas</a>
<a id="243" class="Keyword">open</a> <a id="248" class="Keyword">import</a> <a id="255" href="EquivalenceType.html" class="Module">EquivalenceType</a>

<a id="272" class="Keyword">open</a> <a id="277" class="Keyword">import</a> <a id="284" href="HomotopyType.html" class="Module">HomotopyType</a>
<a id="297" class="Keyword">open</a> <a id="302" class="Keyword">import</a> <a id="309" href="FunExtAxiom.html" class="Module">FunExtAxiom</a>
<a id="321" class="Keyword">open</a> <a id="326" class="Keyword">import</a> <a id="333" href="HLevelTypes.html" class="Module">HLevelTypes</a>
</pre>
</div>

<pre class="Agda">
<a id="377" class="Keyword">module</a> <a id="384" href="MonoidType.html" class="Module">MonoidType</a> <a id="395" class="Symbol">{</a><a id="396" href="MonoidType.html#396" class="Bound">ℓ</a><a id="397" class="Symbol">}</a> <a id="399" class="Keyword">where</a>

  <a id="408" class="Keyword">record</a> <a id="Monoid"></a><a id="415" href="MonoidType.html#415" class="Record">Monoid</a> <a id="422" class="Symbol">:</a> <a id="424" href="Intro.html#1442" class="Function">Type</a> <a id="429" class="Symbol">(</a><a id="430" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="435" href="MonoidType.html#396" class="Bound">ℓ</a><a id="436" class="Symbol">)</a> <a id="438" class="Keyword">where</a>
    <a id="448" class="Keyword">field</a>
      <a id="460" class="Comment">-- Operations of a monoid</a>
      <a id="Monoid.G"></a><a id="492" href="MonoidType.html#492" class="Field">G</a> <a id="494" class="Symbol">:</a> <a id="496" href="Intro.html#1442" class="Function">Type</a> <a id="501" href="MonoidType.html#396" class="Bound">ℓ</a>
      <a id="Monoid.GisSet"></a><a id="509" href="MonoidType.html#509" class="Field">GisSet</a> <a id="516" class="Symbol">:</a> <a id="518" href="HLevelTypes.html#1355" class="Function">isSet</a> <a id="524" href="MonoidType.html#492" class="Field">G</a>
      <a id="Monoid._&lt;&gt;_"></a><a id="532" href="MonoidType.html#532" class="Field Operator">_&lt;&gt;_</a> <a id="537" class="Symbol">:</a> <a id="539" href="MonoidType.html#492" class="Field">G</a> <a id="541" class="Symbol">→</a> <a id="543" href="MonoidType.html#492" class="Field">G</a> <a id="545" class="Symbol">→</a> <a id="547" href="MonoidType.html#492" class="Field">G</a>  <a id="550" class="Comment">-- Multiplication function</a>
      <a id="Monoid.e"></a><a id="583" href="MonoidType.html#583" class="Field">e</a> <a id="585" class="Symbol">:</a> <a id="587" href="MonoidType.html#492" class="Field">G</a>             <a id="601" class="Comment">-- Unit element</a>

      <a id="624" class="Comment">-- Axioms of a monoid</a>
      <a id="Monoid.lunit"></a><a id="652" href="MonoidType.html#652" class="Field">lunit</a> <a id="658" class="Symbol">:</a> <a id="660" class="Symbol">(</a><a id="661" href="MonoidType.html#661" class="Bound">x</a> <a id="663" class="Symbol">:</a> <a id="665" href="MonoidType.html#492" class="Field">G</a><a id="666" class="Symbol">)</a> <a id="668" class="Symbol">→</a> <a id="670" class="Symbol">(</a><a id="671" href="MonoidType.html#583" class="Field">e</a> <a id="673" href="MonoidType.html#532" class="Field Operator">&lt;&gt;</a> <a id="676" href="MonoidType.html#661" class="Bound">x</a><a id="677" class="Symbol">)</a> <a id="679" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="682" href="MonoidType.html#661" class="Bound">x</a>
      <a id="Monoid.runit"></a><a id="690" href="MonoidType.html#690" class="Field">runit</a> <a id="696" class="Symbol">:</a> <a id="698" class="Symbol">(</a><a id="699" href="MonoidType.html#699" class="Bound">x</a> <a id="701" class="Symbol">:</a> <a id="703" href="MonoidType.html#492" class="Field">G</a><a id="704" class="Symbol">)</a> <a id="706" class="Symbol">→</a> <a id="708" class="Symbol">(</a><a id="709" href="MonoidType.html#699" class="Bound">x</a> <a id="711" href="MonoidType.html#532" class="Field Operator">&lt;&gt;</a> <a id="714" href="MonoidType.html#583" class="Field">e</a><a id="715" class="Symbol">)</a> <a id="717" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="720" href="MonoidType.html#699" class="Bound">x</a>
      <a id="Monoid.assoc"></a><a id="728" href="MonoidType.html#728" class="Field">assoc</a> <a id="734" class="Symbol">:</a> <a id="736" class="Symbol">(</a><a id="737" href="MonoidType.html#737" class="Bound">x</a> <a id="739" href="MonoidType.html#739" class="Bound">y</a> <a id="741" href="MonoidType.html#741" class="Bound">z</a> <a id="743" class="Symbol">:</a> <a id="745" href="MonoidType.html#492" class="Field">G</a><a id="746" class="Symbol">)</a> <a id="748" class="Symbol">→</a> <a id="750" class="Symbol">(</a><a id="751" href="MonoidType.html#737" class="Bound">x</a> <a id="753" href="MonoidType.html#532" class="Field Operator">&lt;&gt;</a> <a id="756" class="Symbol">(</a><a id="757" href="MonoidType.html#739" class="Bound">y</a> <a id="759" href="MonoidType.html#532" class="Field Operator">&lt;&gt;</a> <a id="762" href="MonoidType.html#741" class="Bound">z</a><a id="763" class="Symbol">))</a> <a id="766" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="769" class="Symbol">((</a><a id="771" href="MonoidType.html#737" class="Bound">x</a> <a id="773" href="MonoidType.html#532" class="Field Operator">&lt;&gt;</a> <a id="776" href="MonoidType.html#739" class="Bound">y</a><a id="777" class="Symbol">)</a> <a id="779" href="MonoidType.html#532" class="Field Operator">&lt;&gt;</a> <a id="782" href="MonoidType.html#741" class="Bound">z</a><a id="783" class="Symbol">)</a>
</pre>