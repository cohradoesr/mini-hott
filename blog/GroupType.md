---
layout: page
title: "Group Type"
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
<a id="202" class="Keyword">open</a> <a id="207" class="Keyword">import</a> <a id="214" href="TransportLemmas.html" class="Module">TransportLemmas</a>
<a id="230" class="Keyword">open</a> <a id="235" class="Keyword">import</a> <a id="242" href="EquivalenceType.html" class="Module">EquivalenceType</a>

<a id="259" class="Keyword">open</a> <a id="264" class="Keyword">import</a> <a id="271" href="HomotopyType.html" class="Module">HomotopyType</a>
<a id="284" class="Keyword">open</a> <a id="289" class="Keyword">import</a> <a id="296" href="FunExtAxiom.html" class="Module">FunExtAxiom</a>
<a id="308" class="Keyword">open</a> <a id="313" class="Keyword">import</a> <a id="320" href="HLevelTypes.html" class="Module">HLevelTypes</a>
<a id="332" class="Keyword">open</a> <a id="337" class="Keyword">import</a> <a id="344" href="MonoidType.html" class="Module">MonoidType</a>
</pre>
</div>

### Groups

<pre class="Agda">
<a id="399" class="Keyword">module</a>
  <a id="408" href="GroupType.html" class="Module">GroupType</a>
    <a id="422" class="Keyword">where</a>
</pre>

A group $G$ is a monoid with something else, *inverses* for each element.
This means, there is a function $\mathsf{inverse} : G → G$ such that:

$$∀ (x : G) → \mathsf{inverse}(x) <> x ≡ e\text {  and  }x <>
\mathsf{inverse}(x)  ≡ e,$$

where $G$ is the group, $e$ the unit and $<>$ the operation from the underlined
monoid. This is the following type for groups:


<pre class="Agda">
  <a id="Group"></a><a id="820" href="GroupType.html#820" class="Function">Group</a>
    <a id="830" class="Symbol">:</a> <a id="832" class="Symbol">∀</a> <a id="834" class="Symbol">{</a><a id="835" href="GroupType.html#835" class="Bound">ℓ</a><a id="836" class="Symbol">}</a> <a id="838" class="Symbol">→</a> <a id="840" href="Intro.html#2793" class="Function">Type</a> <a id="845" class="Symbol">(</a><a id="846" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="851" href="GroupType.html#835" class="Bound">ℓ</a><a id="852" class="Symbol">)</a>

  <a id="857" href="GroupType.html#820" class="Function">Group</a>
    <a id="867" class="Symbol">=</a> <a id="869" href="BasicTypes.html#1497" class="Record">∑</a> <a id="871" class="Symbol">(</a><a id="872" href="MonoidType.html#872" class="Record">Monoid</a><a id="878" class="Symbol">)</a> <a id="880" class="Symbol">(λ</a> <a id="883" class="Symbol">{(</a><a id="885" href="MonoidType.html#929" class="InductiveConstructor">monoid</a> <a id="892" href="GroupType.html#892" class="Bound">G</a> <a id="894" href="GroupType.html#894" class="Bound">e</a> <a id="896" href="GroupType.html#896" class="Bound Operator">_&lt;&gt;_</a> <a id="901" href="GroupType.html#901" class="Bound">GisSet</a> <a id="908" href="GroupType.html#908" class="Bound">lunit</a> <a id="914" href="GroupType.html#914" class="Bound">runit</a> <a id="920" href="GroupType.html#920" class="Bound">assoc</a><a id="925" class="Symbol">)</a>
      <a id="933" class="Symbol">→</a> <a id="935" href="BasicTypes.html#1497" class="Record">∑</a> <a id="937" class="Symbol">(</a><a id="938" href="GroupType.html#892" class="Bound">G</a> <a id="940" class="Symbol">→</a> <a id="942" href="GroupType.html#892" class="Bound">G</a><a id="943" class="Symbol">)</a> <a id="945" class="Symbol">(λ</a> <a id="948" href="GroupType.html#948" class="Bound">inverse</a> <a id="956" class="Symbol">→</a>
        <a id="966" href="BasicTypes.html#2031" class="Function">∏</a> <a id="968" href="GroupType.html#892" class="Bound">G</a> <a id="970" class="Symbol">(λ</a> <a id="973" href="GroupType.html#973" class="Bound">x</a> <a id="975" class="Symbol">→</a>
          <a id="987" class="Comment">-- properties:</a>
          <a id="1012" class="Symbol">(</a>   <a id="1016" class="Symbol">(</a><a id="1017" href="GroupType.html#973" class="Bound">x</a> <a id="1019" href="GroupType.html#896" class="Bound Operator">&lt;&gt;</a> <a id="1022" href="GroupType.html#948" class="Bound">inverse</a> <a id="1030" href="GroupType.html#973" class="Bound">x</a><a id="1031" class="Symbol">)</a> <a id="1033" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="1036" href="GroupType.html#894" class="Bound">e</a><a id="1037" class="Symbol">)</a>
          <a id="1049" href="BasicTypes.html#2148" class="Function Operator">×</a> <a id="1051" class="Symbol">(</a> <a id="1053" class="Symbol">(</a><a id="1054" href="GroupType.html#948" class="Bound">inverse</a> <a id="1062" href="GroupType.html#973" class="Bound">x</a> <a id="1064" href="GroupType.html#896" class="Bound Operator">&lt;&gt;</a> <a id="1067" href="GroupType.html#973" class="Bound">x</a><a id="1068" class="Symbol">)</a> <a id="1070" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="1073" href="GroupType.html#894" class="Bound">e</a> <a id="1075" class="Symbol">))</a>
          <a id="1088" class="Symbol">)})</a>
</pre>
