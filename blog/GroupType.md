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

A group is a monoid with something else, which is, the property of having an
inverse of the operation. Thus, exists the function $\mathsf{inverse} : G → G}$
such that:

$$∀ (x : G) → \mathsf{inverse}(x) <> x ≡ e\text {  and  }x <>
\mathsf{inverse}(x)  ≡ e,$$

where $G$ is the group, $e$ the unit and $<>$ the operation from the underlined
monoid. This is the following type for groups:


<pre class="Agda">
  <a id="Group"></a><a id="844" href="GroupType.html#844" class="Function">Group</a>
    <a id="854" class="Symbol">:</a> <a id="856" class="Symbol">∀</a> <a id="858" class="Symbol">{</a><a id="859" href="GroupType.html#859" class="Bound">ℓ</a><a id="860" class="Symbol">}</a> <a id="862" class="Symbol">→</a> <a id="864" href="Intro.html#1803" class="Function">Type</a> <a id="869" class="Symbol">(</a><a id="870" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="875" href="GroupType.html#859" class="Bound">ℓ</a><a id="876" class="Symbol">)</a>

  <a id="881" href="GroupType.html#844" class="Function">Group</a>
    <a id="891" class="Symbol">=</a> <a id="893" href="BasicTypes.html#1497" class="Record">∑</a> <a id="895" class="Symbol">(</a><a id="896" href="MonoidType.html#872" class="Record">Monoid</a><a id="902" class="Symbol">)</a> <a id="904" class="Symbol">(λ</a> <a id="907" class="Symbol">{(</a><a id="909" href="MonoidType.html#929" class="InductiveConstructor">monoid</a> <a id="916" href="GroupType.html#916" class="Bound">G</a> <a id="918" href="GroupType.html#918" class="Bound">e</a> <a id="920" href="GroupType.html#920" class="Bound Operator">_&lt;&gt;_</a> <a id="925" href="GroupType.html#925" class="Bound">GisSet</a> <a id="932" href="GroupType.html#932" class="Bound">lunit</a> <a id="938" href="GroupType.html#938" class="Bound">runit</a> <a id="944" href="GroupType.html#944" class="Bound">assoc</a><a id="949" class="Symbol">)</a>
      <a id="957" class="Symbol">→</a> <a id="959" href="BasicTypes.html#1497" class="Record">∑</a> <a id="961" class="Symbol">(</a><a id="962" href="GroupType.html#916" class="Bound">G</a> <a id="964" class="Symbol">→</a> <a id="966" href="GroupType.html#916" class="Bound">G</a><a id="967" class="Symbol">)</a> <a id="969" class="Symbol">(λ</a> <a id="972" href="GroupType.html#972" class="Bound">inverse</a> <a id="980" class="Symbol">→</a>
        <a id="990" href="BasicTypes.html#2022" class="Function">∏</a> <a id="992" href="GroupType.html#916" class="Bound">G</a> <a id="994" class="Symbol">(λ</a> <a id="997" href="GroupType.html#997" class="Bound">x</a> <a id="999" class="Symbol">→</a>
          <a id="1011" class="Comment">-- properties:</a>
          <a id="1036" class="Symbol">(</a>   <a id="1040" class="Symbol">(</a><a id="1041" href="GroupType.html#997" class="Bound">x</a> <a id="1043" href="GroupType.html#920" class="Bound Operator">&lt;&gt;</a> <a id="1046" href="GroupType.html#972" class="Bound">inverse</a> <a id="1054" href="GroupType.html#997" class="Bound">x</a><a id="1055" class="Symbol">)</a> <a id="1057" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="1060" href="GroupType.html#918" class="Bound">e</a><a id="1061" class="Symbol">)</a>
          <a id="1073" href="BasicTypes.html#2139" class="Function Operator">×</a> <a id="1075" class="Symbol">(</a> <a id="1077" class="Symbol">(</a><a id="1078" href="GroupType.html#972" class="Bound">inverse</a> <a id="1086" href="GroupType.html#997" class="Bound">x</a> <a id="1088" href="GroupType.html#920" class="Bound Operator">&lt;&gt;</a> <a id="1091" href="GroupType.html#997" class="Bound">x</a><a id="1092" class="Symbol">)</a> <a id="1094" href="BasicTypes.html#4284" class="Datatype Operator">==</a> <a id="1097" href="GroupType.html#918" class="Bound">e</a> <a id="1099" class="Symbol">))</a>
          <a id="1112" class="Symbol">)})</a>
</pre>
