---
layout: page
title: "Contractible Type"
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
<a id="191" class="Symbol">{-#</a> <a id="195" class="Keyword">OPTIONS</a> <a id="203" class="Pragma">--without-K</a> <a id="215" class="Symbol">#-}</a>
<a id="219" class="Keyword">open</a> <a id="224" class="Keyword">import</a> <a id="231" href="EqualityType.html" class="Module">EqualityType</a>
<a id="244" class="Keyword">open</a> <a id="249" class="Keyword">import</a> <a id="256" href="FiberType.html" class="Module">FiberType</a>
</pre>
</div>


<pre class="Agda">
<a id="299" class="Keyword">module</a> <a id="306" href="ContractibleType.html" class="Module">ContractibleType</a> <a id="323" class="Keyword">where</a>
</pre>

A *contractible* type is a type such that **every**
element is equal to a point, the *center* of contraction.

<pre class="Agda">
  <a id="467" class="Comment">-- Def.</a>
  <a id="isContr"></a><a id="477" href="ContractibleType.html#477" class="Function">isContr</a>
    <a id="489" class="Symbol">:</a> <a id="491" class="Symbol">∀</a> <a id="493" class="Symbol">{</a><a id="494" href="ContractibleType.html#494" class="Bound">ℓ</a><a id="495" class="Symbol">}</a>
    <a id="501" class="Symbol">→</a> <a id="503" class="Symbol">(</a><a id="504" href="ContractibleType.html#504" class="Bound">A</a> <a id="506" class="Symbol">:</a> <a id="508" href="Intro.html#1442" class="Function">Type</a> <a id="513" href="ContractibleType.html#494" class="Bound">ℓ</a><a id="514" class="Symbol">)</a>
    <a id="520" class="Comment">--------------</a>
    <a id="539" class="Symbol">→</a> <a id="541" href="Intro.html#1442" class="Function">Type</a> <a id="546" href="ContractibleType.html#494" class="Bound">ℓ</a>

  <a id="551" href="ContractibleType.html#477" class="Function">isContr</a> <a id="559" href="ContractibleType.html#559" class="Bound">A</a> <a id="561" class="Symbol">=</a> <a id="563" href="BasicTypes.html#1401" class="Record">Σ</a> <a id="565" href="ContractibleType.html#559" class="Bound">A</a> <a id="567" class="Symbol">(λ</a> <a id="570" href="ContractibleType.html#570" class="Bound">a</a> <a id="572" class="Symbol">→</a> <a id="574" class="Symbol">((</a><a id="576" href="ContractibleType.html#576" class="Bound">x</a> <a id="578" class="Symbol">:</a> <a id="580" href="ContractibleType.html#559" class="Bound">A</a><a id="581" class="Symbol">)</a> <a id="583" class="Symbol">→</a> <a id="585" href="ContractibleType.html#570" class="Bound">a</a> <a id="587" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="590" href="ContractibleType.html#576" class="Bound">x</a><a id="591" class="Symbol">))</a>

</pre>

If a type is contractible, any of its points is a center of contraction:

<pre class="Agda">
  <a id="696" class="Comment">-- Lemma.</a>
  <a id="allAreCenter"></a><a id="708" href="ContractibleType.html#708" class="Function">allAreCenter</a>
    <a id="725" class="Symbol">:</a> <a id="727" class="Symbol">∀</a> <a id="729" class="Symbol">{</a><a id="730" href="ContractibleType.html#730" class="Bound">ℓ</a><a id="731" class="Symbol">}</a> <a id="733" class="Symbol">{</a><a id="734" href="ContractibleType.html#734" class="Bound">A</a> <a id="736" class="Symbol">:</a> <a id="738" href="Intro.html#1442" class="Function">Type</a> <a id="743" href="ContractibleType.html#730" class="Bound">ℓ</a><a id="744" class="Symbol">}</a>
    <a id="750" class="Symbol">→</a> <a id="752" class="Symbol">(</a><a id="753" href="ContractibleType.html#753" class="Bound">c₁</a> <a id="756" class="Symbol">:</a> <a id="758" href="ContractibleType.html#734" class="Bound">A</a><a id="759" class="Symbol">)</a> <a id="761" class="Symbol">→</a> <a id="763" class="Symbol">(</a><a id="764" href="ContractibleType.html#764" class="Bound">f</a> <a id="766" class="Symbol">:</a> <a id="768" class="Symbol">(</a><a id="769" href="ContractibleType.html#769" class="Bound">x</a> <a id="771" class="Symbol">:</a> <a id="773" href="ContractibleType.html#734" class="Bound">A</a><a id="774" class="Symbol">)</a> <a id="776" class="Symbol">→</a> <a id="778" href="ContractibleType.html#753" class="Bound">c₁</a> <a id="781" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="784" href="ContractibleType.html#769" class="Bound">x</a><a id="785" class="Symbol">)</a>
    <a id="791" class="Symbol">→</a> <a id="793" class="Symbol">(∀</a> <a id="796" class="Symbol">(</a><a id="797" href="ContractibleType.html#797" class="Bound">c₂</a> <a id="800" class="Symbol">:</a> <a id="802" href="ContractibleType.html#734" class="Bound">A</a><a id="803" class="Symbol">)</a> <a id="805" class="Symbol">→</a> <a id="807" class="Symbol">(∀</a> <a id="810" class="Symbol">(</a><a id="811" href="ContractibleType.html#811" class="Bound">x</a> <a id="813" class="Symbol">:</a> <a id="815" href="ContractibleType.html#734" class="Bound">A</a><a id="816" class="Symbol">)</a> <a id="818" class="Symbol">→</a> <a id="820" href="ContractibleType.html#797" class="Bound">c₂</a> <a id="823" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="826" href="ContractibleType.html#811" class="Bound">x</a><a id="827" class="Symbol">))</a>
  <a id="832" href="ContractibleType.html#708" class="Function">allAreCenter</a> <a id="845" href="ContractibleType.html#845" class="Bound">c₁</a> <a id="848" href="ContractibleType.html#848" class="Bound">f</a> <a id="850" href="ContractibleType.html#850" class="Bound">c₂</a> <a id="853" href="ContractibleType.html#853" class="Bound">x</a> <a id="855" class="Symbol">=</a> <a id="857" href="EqualityType.html#2565" class="Function Operator">!</a> <a id="859" class="Symbol">(</a><a id="860" href="ContractibleType.html#848" class="Bound">f</a> <a id="862" href="ContractibleType.html#850" class="Bound">c₂</a><a id="864" class="Symbol">)</a> <a id="866" href="EqualityType.html#2151" class="Function Operator">·</a> <a id="868" class="Symbol">(</a><a id="869" href="ContractibleType.html#848" class="Bound">f</a> <a id="871" href="ContractibleType.html#853" class="Bound">x</a><a id="872" class="Symbol">)</a>

</pre>

## Contractible maps.

A map is *contractible* if the fiber in any point is contractible, that is, each
element has a unique preimage.

<pre class="Agda">
  <a id="1038" class="Comment">-- Def.</a>
  <a id="isContrMap"></a><a id="1048" href="ContractibleType.html#1048" class="Function">isContrMap</a>
    <a id="1063" class="Symbol">:</a> <a id="1065" class="Symbol">∀</a> <a id="1067" class="Symbol">{</a><a id="1068" href="ContractibleType.html#1068" class="Bound">ℓᵢ</a> <a id="1071" href="ContractibleType.html#1071" class="Bound">ℓⱼ</a><a id="1073" class="Symbol">}</a> <a id="1075" class="Symbol">{</a><a id="1076" href="ContractibleType.html#1076" class="Bound">A</a> <a id="1078" class="Symbol">:</a> <a id="1080" href="Intro.html#1442" class="Function">Type</a> <a id="1085" href="ContractibleType.html#1068" class="Bound">ℓᵢ</a><a id="1087" class="Symbol">}</a> <a id="1089" class="Symbol">{</a><a id="1090" href="ContractibleType.html#1090" class="Bound">B</a> <a id="1092" class="Symbol">:</a> <a id="1094" href="Intro.html#1442" class="Function">Type</a> <a id="1099" href="ContractibleType.html#1071" class="Bound">ℓⱼ</a><a id="1101" class="Symbol">}</a>
    <a id="1107" class="Symbol">→</a> <a id="1109" class="Symbol">(</a><a id="1110" href="ContractibleType.html#1110" class="Bound">f</a> <a id="1112" class="Symbol">:</a> <a id="1114" href="ContractibleType.html#1076" class="Bound">A</a> <a id="1116" class="Symbol">→</a> <a id="1118" href="ContractibleType.html#1090" class="Bound">B</a><a id="1119" class="Symbol">)</a>
    <a id="1125" class="Symbol">→</a> <a id="1127" href="Intro.html#1442" class="Function">Type</a> <a id="1132" class="Symbol">(</a><a id="1133" href="ContractibleType.html#1068" class="Bound">ℓᵢ</a> <a id="1136" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="1138" href="ContractibleType.html#1071" class="Bound">ℓⱼ</a><a id="1140" class="Symbol">)</a>

  <a id="1145" href="ContractibleType.html#1048" class="Function">isContrMap</a> <a id="1156" class="Symbol">{</a><a id="1157" class="Argument">B</a> <a id="1159" class="Symbol">=</a> <a id="1161" href="ContractibleType.html#1161" class="Bound">B</a><a id="1162" class="Symbol">}</a> <a id="1164" href="ContractibleType.html#1164" class="Bound">f</a> <a id="1166" class="Symbol">=</a> <a id="1168" class="Symbol">(</a><a id="1169" href="ContractibleType.html#1169" class="Bound">b</a> <a id="1171" class="Symbol">:</a> <a id="1173" href="ContractibleType.html#1161" class="Bound">B</a><a id="1174" class="Symbol">)</a> <a id="1176" class="Symbol">→</a> <a id="1178" href="ContractibleType.html#477" class="Function">isContr</a> <a id="1186" class="Symbol">(</a><a id="1187" href="FiberType.html#434" class="Function">fib</a> <a id="1191" href="ContractibleType.html#1164" class="Bound">f</a> <a id="1193" href="ContractibleType.html#1169" class="Bound">b</a><a id="1194" class="Symbol">)</a>
</pre>