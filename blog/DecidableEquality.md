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

{: .foldable until="5"}
<pre class="Agda">
<a id="638" class="Keyword">module</a> <a id="645" href="DecidableEquality.html" class="Module">DecidableEquality</a> <a id="663" class="Symbol">{</a><a id="664" href="DecidableEquality.html#664" class="Bound">ℓ</a><a id="665" class="Symbol">}</a> <a id="667" class="Keyword">where</a>

</pre>

<pre class="Agda">
  <a id="decEq"></a><a id="701" href="DecidableEquality.html#701" class="Function">decEq</a>
    <a id="711" class="Symbol">:</a> <a id="713" class="Symbol">(</a><a id="714" href="DecidableEquality.html#714" class="Bound">A</a> <a id="716" class="Symbol">:</a> <a id="718" href="Intro.html#2793" class="Function">Type</a> <a id="723" href="DecidableEquality.html#664" class="Bound">ℓ</a><a id="724" class="Symbol">)</a> <a id="726" class="Symbol">→</a> <a id="728" href="Intro.html#2793" class="Function">Type</a> <a id="733" href="DecidableEquality.html#664" class="Bound">ℓ</a>

  <a id="738" href="DecidableEquality.html#701" class="Function">decEq</a> <a id="744" href="DecidableEquality.html#744" class="Bound">A</a> <a id="746" class="Symbol">=</a> <a id="748" class="Symbol">(</a><a id="749" href="DecidableEquality.html#749" class="Bound">a</a> <a id="751" href="DecidableEquality.html#751" class="Bound">b</a> <a id="753" class="Symbol">:</a> <a id="755" href="DecidableEquality.html#744" class="Bound">A</a><a id="756" class="Symbol">)</a> <a id="758" class="Symbol">→</a> <a id="760" class="Symbol">(</a><a id="761" href="DecidableEquality.html#749" class="Bound">a</a> <a id="763" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="766" href="DecidableEquality.html#751" class="Bound">b</a><a id="767" class="Symbol">)</a> <a id="769" href="BasicTypes.html#2351" class="Datatype Operator">+</a> <a id="771" href="BasicTypes.html#885" class="Function">¬</a> <a id="773" class="Symbol">(</a><a id="774" href="DecidableEquality.html#749" class="Bound">a</a> <a id="776" href="BasicTypes.html#4338" class="Datatype Operator">==</a> <a id="779" href="DecidableEquality.html#751" class="Bound">b</a><a id="780" class="Symbol">)</a>
</pre>

The product of types with decidable equality is a type with
decidable equality.

{: .foldable until="5" }
<pre class="Agda">
  <a id="decEqProd"></a><a id="915" href="DecidableEquality.html#915" class="Function">decEqProd</a>
    <a id="929" class="Symbol">:</a> <a id="931" class="Symbol">{</a><a id="932" href="DecidableEquality.html#932" class="Bound">A</a> <a id="934" href="DecidableEquality.html#934" class="Bound">B</a> <a id="936" class="Symbol">:</a> <a id="938" href="Intro.html#2793" class="Function">Type</a> <a id="943" href="DecidableEquality.html#664" class="Bound">ℓ</a><a id="944" class="Symbol">}</a>
    <a id="950" class="Symbol">→</a> <a id="952" href="DecidableEquality.html#701" class="Function">decEq</a> <a id="958" href="DecidableEquality.html#932" class="Bound">A</a> <a id="960" class="Symbol">→</a> <a id="962" href="DecidableEquality.html#701" class="Function">decEq</a> <a id="968" href="DecidableEquality.html#934" class="Bound">B</a>
    <a id="974" class="Comment">-------------------</a>
    <a id="998" class="Symbol">→</a> <a id="1000" href="DecidableEquality.html#701" class="Function">decEq</a> <a id="1006" class="Symbol">(</a><a id="1007" href="DecidableEquality.html#932" class="Bound">A</a> <a id="1009" href="BasicTypes.html#2148" class="Function Operator">×</a> <a id="1011" href="DecidableEquality.html#934" class="Bound">B</a><a id="1012" class="Symbol">)</a>

  <a id="1017" href="DecidableEquality.html#915" class="Function">decEqProd</a> <a id="1027" href="DecidableEquality.html#1027" class="Bound">da</a> <a id="1030" href="DecidableEquality.html#1030" class="Bound">db</a> <a id="1033" class="Symbol">(</a><a id="1034" href="DecidableEquality.html#1034" class="Bound">a1</a> <a id="1037" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="1039" href="DecidableEquality.html#1039" class="Bound">b1</a><a id="1041" class="Symbol">)</a> <a id="1043" class="Symbol">(</a><a id="1044" href="DecidableEquality.html#1044" class="Bound">a2</a> <a id="1047" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="1049" href="DecidableEquality.html#1049" class="Bound">b2</a><a id="1051" class="Symbol">)</a>
   <a id="1056" class="Keyword">with</a> <a id="1061" class="Symbol">(</a><a id="1062" href="DecidableEquality.html#1027" class="Bound">da</a> <a id="1065" href="DecidableEquality.html#1034" class="Bound">a1</a> <a id="1068" href="DecidableEquality.html#1044" class="Bound">a2</a><a id="1070" class="Symbol">)</a> <a id="1072" class="Symbol">|</a> <a id="1074" class="Symbol">(</a><a id="1075" href="DecidableEquality.html#1030" class="Bound">db</a> <a id="1078" href="DecidableEquality.html#1039" class="Bound">b1</a> <a id="1081" href="DecidableEquality.html#1049" class="Bound">b2</a><a id="1083" class="Symbol">)</a>
  <a id="1087" class="Symbol">...</a> <a id="1091" class="Symbol">|</a> <a id="1093" href="BasicTypes.html#2414" class="InductiveConstructor">inl</a> <a id="1097" href="DecidableEquality.html#1097" class="Bound">aeq</a> <a id="1101" class="Symbol">|</a> <a id="1103" href="BasicTypes.html#2414" class="InductiveConstructor">inl</a> <a id="1107" href="DecidableEquality.html#1107" class="Bound">beq</a> <a id="1111" class="Symbol">=</a> <a id="1113" href="BasicTypes.html#2414" class="InductiveConstructor">inl</a> <a id="1117" class="Symbol">(</a><a id="1118" href="ProductIdentities.html#741" class="Function">prodByComponents</a> <a id="1135" class="Symbol">(</a><a id="1136" href="DecidableEquality.html#1097" class="Bound">aeq</a> <a id="1140" href="BasicTypes.html#1581" class="InductiveConstructor Operator">,</a> <a id="1142" href="DecidableEquality.html#1107" class="Bound">beq</a><a id="1145" class="Symbol">))</a>
  <a id="1150" class="Symbol">...</a> <a id="1154" class="Symbol">|</a> <a id="1156" href="BasicTypes.html#2414" class="InductiveConstructor">inl</a> <a id="1160" class="Symbol">_</a>   <a id="1164" class="Symbol">|</a> <a id="1166" href="BasicTypes.html#2432" class="InductiveConstructor">inr</a> <a id="1170" href="DecidableEquality.html#1170" class="Bound">bnq</a> <a id="1174" class="Symbol">=</a> <a id="1176" href="BasicTypes.html#2432" class="InductiveConstructor">inr</a> <a id="1180" class="Symbol">λ</a> <a id="1182" href="DecidableEquality.html#1182" class="Bound">b</a> <a id="1184" class="Symbol">→</a> <a id="1186" href="DecidableEquality.html#1170" class="Bound">bnq</a> <a id="1190" class="Symbol">(</a><a id="1191" href="AlgebraOnPaths.html#389" class="Function">ap</a> <a id="1194" href="BasicTypes.html#1608" class="Field">π₂</a> <a id="1197" href="DecidableEquality.html#1182" class="Bound">b</a><a id="1198" class="Symbol">)</a>
  <a id="1202" class="Symbol">...</a> <a id="1206" class="Symbol">|</a> <a id="1208" href="BasicTypes.html#2432" class="InductiveConstructor">inr</a> <a id="1212" href="DecidableEquality.html#1212" class="Bound">anq</a> <a id="1216" class="Symbol">|</a> <a id="1218" class="Symbol">_</a>       <a id="1226" class="Symbol">=</a> <a id="1228" href="BasicTypes.html#2432" class="InductiveConstructor">inr</a> <a id="1232" class="Symbol">λ</a> <a id="1234" href="DecidableEquality.html#1234" class="Bound">b</a> <a id="1236" class="Symbol">→</a> <a id="1238" href="DecidableEquality.html#1212" class="Bound">anq</a> <a id="1242" class="Symbol">(</a><a id="1243" href="AlgebraOnPaths.html#389" class="Function">ap</a> <a id="1246" href="BasicTypes.html#1597" class="Field">π₁</a> <a id="1249" href="DecidableEquality.html#1234" class="Bound">b</a><a id="1250" class="Symbol">)</a>
</pre>

This surely can be extend to other types.
