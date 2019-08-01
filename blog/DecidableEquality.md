---
layout: page
title: "Decidable Equality"
category: lemmas functions homotopy
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
<a id="218" class="Symbol">{-#</a> <a id="222" class="Keyword">OPTIONS</a> <a id="230" class="Pragma">--without-K</a> <a id="242" class="Symbol">#-}</a>
<a id="246" class="Keyword">open</a> <a id="251" class="Keyword">import</a> <a id="258" href="TransportLemmas.html" class="Module">TransportLemmas</a>
<a id="274" class="Keyword">open</a> <a id="279" class="Keyword">import</a> <a id="286" href="ProductIdentities.html" class="Module">ProductIdentities</a>
<a id="304" class="Keyword">open</a> <a id="309" class="Keyword">import</a> <a id="316" href="EquivalenceType.html" class="Module">EquivalenceType</a>
<a id="332" class="Keyword">open</a> <a id="337" class="Keyword">import</a> <a id="344" href="HomotopyType.html" class="Module">HomotopyType</a>
</pre>
</div>


## Decidable equality

A type has decidable equality if any two of its
elements are equal or different. This would be a particular
instance of the Law of Excluded Middle that holds even if we do not
assume Excluded Middle.

<pre class="Agda">
<a id="614" class="Keyword">module</a> <a id="621" href="DecidableEquality.html" class="Module">DecidableEquality</a> <a id="639" class="Symbol">{</a><a id="640" href="DecidableEquality.html#640" class="Bound">ℓ</a><a id="641" class="Symbol">}</a> <a id="643" class="Keyword">where</a>
</pre>

<pre class="Agda">
  <a id="decEq"></a><a id="676" href="DecidableEquality.html#676" class="Function">decEq</a>
    <a id="686" class="Symbol">:</a> <a id="688" class="Symbol">(</a><a id="689" href="DecidableEquality.html#689" class="Bound">A</a> <a id="691" class="Symbol">:</a> <a id="693" href="Intro.html#2793" class="Function">Type</a> <a id="698" href="DecidableEquality.html#640" class="Bound">ℓ</a><a id="699" class="Symbol">)</a> <a id="701" class="Symbol">→</a> <a id="703" href="Intro.html#2793" class="Function">Type</a> <a id="708" href="DecidableEquality.html#640" class="Bound">ℓ</a>

  <a id="713" href="DecidableEquality.html#676" class="Function">decEq</a> <a id="719" href="DecidableEquality.html#719" class="Bound">A</a> <a id="721" class="Symbol">=</a> <a id="723" class="Symbol">(</a><a id="724" href="DecidableEquality.html#724" class="Bound">a</a> <a id="726" href="DecidableEquality.html#726" class="Bound">b</a> <a id="728" class="Symbol">:</a> <a id="730" href="DecidableEquality.html#719" class="Bound">A</a><a id="731" class="Symbol">)</a> <a id="733" class="Symbol">→</a> <a id="735" class="Symbol">(</a><a id="736" href="DecidableEquality.html#724" class="Bound">a</a> <a id="738" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="741" href="DecidableEquality.html#726" class="Bound">b</a><a id="742" class="Symbol">)</a> <a id="744" href="BasicTypes.html#2351" class="Datatype Operator">+</a> <a id="746" href="BasicTypes.html#885" class="Function">¬</a> <a id="748" class="Symbol">(</a><a id="749" href="DecidableEquality.html#724" class="Bound">a</a> <a id="751" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="754" href="DecidableEquality.html#726" class="Bound">b</a><a id="755" class="Symbol">)</a>
</pre>

The product of types with decidable equality is a type with
decidable equality.

{: .foldable until="5" }
<pre class="Agda">
  <a id="decEqProd"></a><a id="890" href="DecidableEquality.html#890" class="Function">decEqProd</a>
    <a id="904" class="Symbol">:</a> <a id="906" class="Symbol">{</a><a id="907" href="DecidableEquality.html#907" class="Bound">A</a> <a id="909" href="DecidableEquality.html#909" class="Bound">B</a> <a id="911" class="Symbol">:</a> <a id="913" href="Intro.html#2793" class="Function">Type</a> <a id="918" href="DecidableEquality.html#640" class="Bound">ℓ</a><a id="919" class="Symbol">}</a>
    <a id="925" class="Symbol">→</a> <a id="927" href="DecidableEquality.html#676" class="Function">decEq</a> <a id="933" href="DecidableEquality.html#907" class="Bound">A</a> <a id="935" class="Symbol">→</a> <a id="937" href="DecidableEquality.html#676" class="Function">decEq</a> <a id="943" href="DecidableEquality.html#909" class="Bound">B</a>
    <a id="949" class="Comment">-------------------</a>
    <a id="973" class="Symbol">→</a> <a id="975" href="DecidableEquality.html#676" class="Function">decEq</a> <a id="981" class="Symbol">(</a><a id="982" href="DecidableEquality.html#907" class="Bound">A</a> <a id="984" href="BasicTypes.html#2148" class="Function Operator">×</a> <a id="986" href="DecidableEquality.html#909" class="Bound">B</a><a id="987" class="Symbol">)</a>

  <a id="992" href="DecidableEquality.html#890" class="Function">decEqProd</a> <a id="1002" href="DecidableEquality.html#1002" class="Bound">da</a> <a id="1005" href="DecidableEquality.html#1005" class="Bound">db</a> <a id="1008" class="Symbol">(</a><a id="1009" href="DecidableEquality.html#1009" class="Bound">a1</a> <a id="1012" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="1014" href="DecidableEquality.html#1014" class="Bound">b1</a><a id="1016" class="Symbol">)</a> <a id="1018" class="Symbol">(</a><a id="1019" href="DecidableEquality.html#1019" class="Bound">a2</a> <a id="1022" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="1024" href="DecidableEquality.html#1024" class="Bound">b2</a><a id="1026" class="Symbol">)</a>
   <a id="1031" class="Keyword">with</a> <a id="1036" class="Symbol">(</a><a id="1037" href="DecidableEquality.html#1002" class="Bound">da</a> <a id="1040" href="DecidableEquality.html#1009" class="Bound">a1</a> <a id="1043" href="DecidableEquality.html#1019" class="Bound">a2</a><a id="1045" class="Symbol">)</a> <a id="1047" class="Symbol">|</a> <a id="1049" class="Symbol">(</a><a id="1050" href="DecidableEquality.html#1005" class="Bound">db</a> <a id="1053" href="DecidableEquality.html#1014" class="Bound">b1</a> <a id="1056" href="DecidableEquality.html#1024" class="Bound">b2</a><a id="1058" class="Symbol">)</a>
  <a id="1062" class="Symbol">...</a> <a id="1066" class="Symbol">|</a> <a id="1068" href="BasicTypes.html#2414" class="InductiveConstructor">inl</a> <a id="1072" href="DecidableEquality.html#1072" class="Bound">aeq</a> <a id="1076" class="Symbol">|</a> <a id="1078" href="BasicTypes.html#2414" class="InductiveConstructor">inl</a> <a id="1082" href="DecidableEquality.html#1082" class="Bound">beq</a> <a id="1086" class="Symbol">=</a> <a id="1088" href="BasicTypes.html#2414" class="InductiveConstructor">inl</a> <a id="1092" class="Symbol">(</a><a id="1093" href="ProductIdentities.html#741" class="Function">prodByComponents</a> <a id="1110" class="Symbol">(</a><a id="1111" href="DecidableEquality.html#1072" class="Bound">aeq</a> <a id="1115" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="1117" href="DecidableEquality.html#1082" class="Bound">beq</a><a id="1120" class="Symbol">))</a>
  <a id="1125" class="Symbol">...</a> <a id="1129" class="Symbol">|</a> <a id="1131" href="BasicTypes.html#2414" class="InductiveConstructor">inl</a> <a id="1135" class="Symbol">_</a>   <a id="1139" class="Symbol">|</a> <a id="1141" href="BasicTypes.html#2432" class="InductiveConstructor">inr</a> <a id="1145" href="DecidableEquality.html#1145" class="Bound">bnq</a> <a id="1149" class="Symbol">=</a> <a id="1151" href="BasicTypes.html#2432" class="InductiveConstructor">inr</a> <a id="1155" class="Symbol">λ</a> <a id="1157" href="DecidableEquality.html#1157" class="Bound">b</a> <a id="1159" class="Symbol">→</a> <a id="1161" href="DecidableEquality.html#1145" class="Bound">bnq</a> <a id="1165" class="Symbol">(</a><a id="1166" href="AlgebraOnPaths.html#389" class="Function">ap</a> <a id="1169" href="BasicTypes.html#1608" class="Field">π₂</a> <a id="1172" href="DecidableEquality.html#1157" class="Bound">b</a><a id="1173" class="Symbol">)</a>
  <a id="1177" class="Symbol">...</a> <a id="1181" class="Symbol">|</a> <a id="1183" href="BasicTypes.html#2432" class="InductiveConstructor">inr</a> <a id="1187" href="DecidableEquality.html#1187" class="Bound">anq</a> <a id="1191" class="Symbol">|</a> <a id="1193" class="Symbol">_</a>       <a id="1201" class="Symbol">=</a> <a id="1203" href="BasicTypes.html#2432" class="InductiveConstructor">inr</a> <a id="1207" class="Symbol">λ</a> <a id="1209" href="DecidableEquality.html#1209" class="Bound">b</a> <a id="1211" class="Symbol">→</a> <a id="1213" href="DecidableEquality.html#1187" class="Bound">anq</a> <a id="1217" class="Symbol">(</a><a id="1218" href="AlgebraOnPaths.html#389" class="Function">ap</a> <a id="1221" href="BasicTypes.html#1597" class="Field">π₁</a> <a id="1224" href="DecidableEquality.html#1209" class="Bound">b</a><a id="1225" class="Symbol">)</a>
</pre>

This surely can be extend to other types.
