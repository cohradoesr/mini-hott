---
layout: page
title: "Fundamental Group Type"
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
<a id="197" class="Symbol">{-#</a> <a id="201" class="Keyword">OPTIONS</a> <a id="209" class="Pragma">--without-K</a> <a id="221" class="Symbol">#-}</a>
<a id="225" class="Keyword">open</a> <a id="230" class="Keyword">import</a> <a id="237" href="TransportLemmas.html" class="Module">TransportLemmas</a>
<a id="253" class="Keyword">open</a> <a id="258" class="Keyword">import</a> <a id="265" href="EquivalenceType.html" class="Module">EquivalenceType</a>

<a id="282" class="Keyword">open</a> <a id="287" class="Keyword">import</a> <a id="294" href="HomotopyType.html" class="Module">HomotopyType</a>
<a id="307" class="Keyword">open</a> <a id="312" class="Keyword">import</a> <a id="319" href="FunExtAxiom.html" class="Module">FunExtAxiom</a>
<a id="331" class="Keyword">open</a> <a id="336" class="Keyword">import</a> <a id="343" href="HLevelTypes.html" class="Module">HLevelTypes</a>
<a id="355" class="Keyword">open</a> <a id="360" class="Keyword">import</a> <a id="367" href="CircleType.html" class="Module">CircleType</a>
<a id="378" class="Keyword">open</a> <a id="383" class="Keyword">import</a> <a id="390" href="GroupType.html" class="Module">GroupType</a>
</pre>
</div>

## Fundamental group

Definition of the fundamental group of a type.
Let `a:A` be one point of the type. The fundamental group on `a` is the
group given by proofs of the equality (`a=a`).

<pre class="Agda">
<a id="621" class="Keyword">module</a> <a id="628" href="FundamentalGroupType.html" class="Module">FundamentalGroupType</a> <a id="649" class="Keyword">where</a>
</pre>

Definition of the fundamental group.
<pre class="Agda">
  <a id="Ω"></a><a id="719" href="FundamentalGroupType.html#719" class="Function">Ω</a>
    <a id="725" class="Symbol">:</a> <a id="727" class="Symbol">(</a><a id="728" href="FundamentalGroupType.html#728" class="Bound">A</a> <a id="730" class="Symbol">:</a> <a id="732" href="Intro.html#1813" class="Function">Type</a> <a id="737" href="Intro.html#2253" class="Generalizable">ℓ</a><a id="738" class="Symbol">)</a>
    <a id="744" class="Comment">------------------</a>
    <a id="767" class="Symbol">→</a> <a id="769" class="Symbol">(</a><a id="770" href="FundamentalGroupType.html#770" class="Bound">a</a> <a id="772" class="Symbol">:</a> <a id="774" href="FundamentalGroupType.html#728" class="Bound">A</a><a id="775" class="Symbol">)</a> <a id="777" class="Symbol">→</a> <a id="779" href="Intro.html#1813" class="Function">Type</a> <a id="784" href="Intro.html#2253" class="Generalizable">ℓ</a>
    
  <a id="793" href="FundamentalGroupType.html#719" class="Function">Ω</a> <a id="795" href="FundamentalGroupType.html#795" class="Bound">A</a> <a id="797" href="FundamentalGroupType.html#797" class="Bound">a</a> <a id="799" class="Symbol">=</a> <a id="801" class="Symbol">(</a><a id="802" href="FundamentalGroupType.html#797" class="Bound">a</a> <a id="804" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="807" href="FundamentalGroupType.html#797" class="Bound">a</a><a id="808" class="Symbol">)</a>
</pre>

<pre class="Agda">
  <a id="Ω-gr"></a><a id="837" href="FundamentalGroupType.html#837" class="Function">Ω-gr</a>
    <a id="846" class="Symbol">:</a> <a id="848" class="Symbol">(</a><a id="849" href="FundamentalGroupType.html#849" class="Bound">A</a> <a id="851" class="Symbol">:</a> <a id="853" href="Intro.html#1813" class="Function">Type</a> <a id="858" href="Intro.html#2253" class="Generalizable">ℓ</a><a id="859" class="Symbol">)</a>
    <a id="865" class="Symbol">→</a> <a id="867" class="Symbol">(</a><a id="868" href="FundamentalGroupType.html#868" class="Bound">a</a> <a id="870" class="Symbol">:</a> <a id="872" href="FundamentalGroupType.html#849" class="Bound">A</a><a id="873" class="Symbol">)</a> <a id="875" class="Symbol">→</a> <a id="877" href="GroupType.html#741" class="Function">Group</a> <a id="883" class="Symbol">{</a><a id="884" href="Intro.html#2253" class="Generalizable">ℓ</a><a id="885" class="Symbol">}</a>
  <a id="889" href="FundamentalGroupType.html#837" class="Function">Ω-gr</a> <a id="894" href="FundamentalGroupType.html#894" class="Bound">A</a> <a id="896" href="FundamentalGroupType.html#896" class="Bound">a</a> <a id="898" class="Symbol">=</a>
    <a id="904" href="MonoidType.html#515" class="InductiveConstructor">monoid</a>
      <a id="917" class="Symbol">(</a><a id="918" href="FundamentalGroupType.html#719" class="Function">Ω</a> <a id="920" href="FundamentalGroupType.html#894" class="Bound">A</a> <a id="922" href="FundamentalGroupType.html#896" class="Bound">a</a><a id="923" class="Symbol">)</a>
      <a id="931" class="Symbol">(</a><a id="932" href="BasicTypes.html#4586" class="Function">refl</a> <a id="937" href="FundamentalGroupType.html#896" class="Bound">a</a><a id="938" class="Symbol">)</a>
      <a id="946" href="BasicFunctions.html#3903" class="Function Operator">_·_</a>
      <a id="956" class="Symbol">(λ</a> <a id="959" href="FundamentalGroupType.html#959" class="Bound">x</a> <a id="961" href="FundamentalGroupType.html#961" class="Bound">y</a> <a id="963" href="FundamentalGroupType.html#963" class="Bound">p</a> <a id="965" href="FundamentalGroupType.html#965" class="Bound">q</a> <a id="967" class="Symbol">→</a> <a id="969" class="UnsolvedMeta Symbol">_</a><a id="970" class="Symbol">)</a>
      <a id="978" class="Symbol">(λ</a> <a id="981" class="Symbol">(</a><a id="982" href="FundamentalGroupType.html#982" class="Bound">x</a> <a id="984" class="Symbol">:</a> <a id="986" href="FundamentalGroupType.html#719" class="Function">Ω</a> <a id="988" href="FundamentalGroupType.html#894" class="Bound">A</a> <a id="990" href="FundamentalGroupType.html#896" class="Bound">a</a><a id="991" class="Symbol">)</a> <a id="993" class="Symbol">→</a> <a id="995" href="BasicTypes.html#4586" class="Function">refl</a> <a id="1000" href="FundamentalGroupType.html#982" class="Bound">x</a><a id="1001" class="Symbol">)</a>
      <a id="1009" class="Symbol">(λ</a> <a id="1012" class="Symbol">(</a><a id="1013" href="FundamentalGroupType.html#1013" class="Bound">x</a> <a id="1015" class="Symbol">:</a> <a id="1017" href="FundamentalGroupType.html#719" class="Function">Ω</a> <a id="1019" href="FundamentalGroupType.html#894" class="Bound">A</a> <a id="1021" href="FundamentalGroupType.html#896" class="Bound">a</a><a id="1022" class="Symbol">)</a> <a id="1024" class="Symbol">→</a> <a id="1026" href="BasicFunctions.html#4309" class="Function Operator">!</a> <a id="1028" class="Symbol">(</a><a id="1029" href="AlgebraOnPaths.html#2688" class="Function">·-runit</a> <a id="1037" href="FundamentalGroupType.html#1013" class="Bound">x</a><a id="1038" class="Symbol">))</a>
      <a id="1047" class="Symbol">(λ</a> <a id="1050" href="FundamentalGroupType.html#1050" class="Bound">x</a> <a id="1052" href="FundamentalGroupType.html#1052" class="Bound">y</a> <a id="1054" href="FundamentalGroupType.html#1054" class="Bound">z</a> <a id="1056" class="Symbol">→</a> <a id="1058" href="BasicFunctions.html#4309" class="Function Operator">!</a> <a id="1060" class="Symbol">(</a><a id="1061" href="AlgebraOnPaths.html#3542" class="Function">·-assoc</a> <a id="1069" href="FundamentalGroupType.html#1050" class="Bound">x</a> <a id="1071" href="FundamentalGroupType.html#1052" class="Bound">y</a> <a id="1073" href="FundamentalGroupType.html#1054" class="Bound">z</a><a id="1074" class="Symbol">)</a>  <a id="1077" class="Symbol">)</a>
    <a id="1083" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="1085" href="BasicFunctions.html#4160" class="Function">inv</a> <a id="1089" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="1091" class="Symbol">λ</a> <a id="1093" href="FundamentalGroupType.html#1093" class="Bound">x</a> <a id="1095" class="Symbol">→</a> <a id="1097" href="AlgebraOnPaths.html#3186" class="Function">·-rinv</a> <a id="1104" href="FundamentalGroupType.html#1093" class="Bound">x</a> <a id="1106" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="1108" href="AlgebraOnPaths.html#3002" class="Function">·-linv</a> <a id="1115" href="FundamentalGroupType.html#1093" class="Bound">x</a>
    <a id="1121" class="Keyword">where</a> <a id="1127" class="Keyword">open</a> <a id="1132" class="Keyword">import</a> <a id="1139" href="MonoidType.html" class="Module">MonoidType</a>
</pre>
