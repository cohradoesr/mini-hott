---
layout: page
title: "Contractible Type"
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
<a id="191" class="Symbol">{-#</a> <a id="195" class="Keyword">OPTIONS</a> <a id="203" class="Pragma">--without-K</a> <a id="215" class="Symbol">#-}</a>
<a id="219" class="Keyword">open</a> <a id="224" class="Keyword">import</a> <a id="231" href="BasicTypes.html" class="Module">BasicTypes</a>
<a id="242" class="Keyword">open</a> <a id="247" class="Keyword">import</a> <a id="254" href="BasicFunctions.html" class="Module">BasicFunctions</a>
<a id="269" class="Keyword">open</a> <a id="274" class="Keyword">import</a> <a id="281" href="FiberType.html" class="Module">FiberType</a>
</pre>
</div>


<pre class="Agda">
<a id="324" class="Keyword">module</a> <a id="331" href="ContractibleType.html" class="Module">ContractibleType</a> <a id="348" class="Keyword">where</a>
</pre>

A *contractible* type is a type such that **every**
element is equal to a point, the *center* of contraction.

<pre class="Agda">
  <a id="492" class="Comment"></a>
  <a id="isContr"></a><a id="502" href="ContractibleType.html#502" class="Function">isContr</a>
    <a id="514" class="Symbol">:</a> <a id="516" class="Symbol">∀</a> <a id="518" class="Symbol">{</a><a id="519" href="ContractibleType.html#519" class="Bound">ℓ</a><a id="520" class="Symbol">}</a>
    <a id="526" class="Symbol">→</a> <a id="528" class="Symbol">(</a><a id="529" href="ContractibleType.html#529" class="Bound">A</a> <a id="531" class="Symbol">:</a> <a id="533" href="Intro.html#1621" class="Function">Type</a> <a id="538" href="ContractibleType.html#519" class="Bound">ℓ</a><a id="539" class="Symbol">)</a>
    <a id="545" class="Comment">--------------</a>
    <a id="564" class="Symbol">→</a> <a id="566" href="Intro.html#1621" class="Function">Type</a> <a id="571" href="ContractibleType.html#519" class="Bound">ℓ</a>

  <a id="576" href="ContractibleType.html#502" class="Function">isContr</a> <a id="584" href="ContractibleType.html#584" class="Bound">A</a> <a id="586" class="Symbol">=</a> <a id="588" href="BasicTypes.html#1503" class="Function">Σ</a> <a id="590" href="ContractibleType.html#584" class="Bound">A</a> <a id="592" class="Symbol">(λ</a> <a id="595" href="ContractibleType.html#595" class="Bound">a</a> <a id="597" class="Symbol">→</a> <a id="599" class="Symbol">((</a><a id="601" href="ContractibleType.html#601" class="Bound">x</a> <a id="603" class="Symbol">:</a> <a id="605" href="ContractibleType.html#584" class="Bound">A</a><a id="606" class="Symbol">)</a> <a id="608" class="Symbol">→</a> <a id="610" href="ContractibleType.html#595" class="Bound">a</a> <a id="612" href="BasicTypes.html#4564" class="Datatype Operator">==</a> <a id="615" href="ContractibleType.html#601" class="Bound">x</a><a id="616" class="Symbol">))</a>

</pre>

If a type is contractible, any of its points is a center of contraction:

<pre class="Agda">
  <a id="721" class="Comment">-- Lemma.</a>
  <a id="allAreCenter"></a><a id="733" href="ContractibleType.html#733" class="Function">allAreCenter</a>
    <a id="750" class="Symbol">:</a> <a id="752" class="Symbol">∀</a> <a id="754" class="Symbol">{</a><a id="755" href="ContractibleType.html#755" class="Bound">ℓ</a><a id="756" class="Symbol">}</a> <a id="758" class="Symbol">{</a><a id="759" href="ContractibleType.html#759" class="Bound">A</a> <a id="761" class="Symbol">:</a> <a id="763" href="Intro.html#1621" class="Function">Type</a> <a id="768" href="ContractibleType.html#755" class="Bound">ℓ</a><a id="769" class="Symbol">}</a>
    <a id="775" class="Symbol">→</a> <a id="777" class="Symbol">(</a><a id="778" href="ContractibleType.html#778" class="Bound">c₁</a> <a id="781" class="Symbol">:</a> <a id="783" href="ContractibleType.html#759" class="Bound">A</a><a id="784" class="Symbol">)</a> <a id="786" class="Symbol">→</a> <a id="788" class="Symbol">(</a><a id="789" href="ContractibleType.html#789" class="Bound">f</a> <a id="791" class="Symbol">:</a> <a id="793" class="Symbol">(</a><a id="794" href="ContractibleType.html#794" class="Bound">x</a> <a id="796" class="Symbol">:</a> <a id="798" href="ContractibleType.html#759" class="Bound">A</a><a id="799" class="Symbol">)</a> <a id="801" class="Symbol">→</a> <a id="803" href="ContractibleType.html#778" class="Bound">c₁</a> <a id="806" href="BasicTypes.html#4564" class="Datatype Operator">==</a> <a id="809" href="ContractibleType.html#794" class="Bound">x</a><a id="810" class="Symbol">)</a>
    <a id="816" class="Symbol">→</a> <a id="818" class="Symbol">(∀</a> <a id="821" class="Symbol">(</a><a id="822" href="ContractibleType.html#822" class="Bound">c₂</a> <a id="825" class="Symbol">:</a> <a id="827" href="ContractibleType.html#759" class="Bound">A</a><a id="828" class="Symbol">)</a> <a id="830" class="Symbol">→</a> <a id="832" class="Symbol">(∀</a> <a id="835" class="Symbol">(</a><a id="836" href="ContractibleType.html#836" class="Bound">x</a> <a id="838" class="Symbol">:</a> <a id="840" href="ContractibleType.html#759" class="Bound">A</a><a id="841" class="Symbol">)</a> <a id="843" class="Symbol">→</a> <a id="845" href="ContractibleType.html#822" class="Bound">c₂</a> <a id="848" href="BasicTypes.html#4564" class="Datatype Operator">==</a> <a id="851" href="ContractibleType.html#836" class="Bound">x</a><a id="852" class="Symbol">))</a>
  <a id="857" href="ContractibleType.html#733" class="Function">allAreCenter</a> <a id="870" href="ContractibleType.html#870" class="Bound">c₁</a> <a id="873" href="ContractibleType.html#873" class="Bound">f</a> <a id="875" href="ContractibleType.html#875" class="Bound">c₂</a> <a id="878" href="ContractibleType.html#878" class="Bound">x</a> <a id="880" class="Symbol">=</a> <a id="882" href="BasicFunctions.html#3165" class="Function Operator">!</a> <a id="884" class="Symbol">(</a><a id="885" href="ContractibleType.html#873" class="Bound">f</a> <a id="887" href="ContractibleType.html#875" class="Bound">c₂</a><a id="889" class="Symbol">)</a> <a id="891" href="BasicFunctions.html#2759" class="Function Operator">·</a> <a id="893" class="Symbol">(</a><a id="894" href="ContractibleType.html#873" class="Bound">f</a> <a id="896" href="ContractibleType.html#878" class="Bound">x</a><a id="897" class="Symbol">)</a>

</pre>

## Contractible maps.

A map is *contractible* if the fiber in any point is contractible, that is, each
element has a unique preimagen.

<pre class="Agda">
  <a id="1064" class="Comment"></a>
  <a id="isContrMap"></a><a id="1074" href="ContractibleType.html#1074" class="Function">isContrMap</a>
    <a id="1089" class="Symbol">:</a> <a id="1091" class="Symbol">∀</a> <a id="1093" class="Symbol">{</a><a id="1094" href="ContractibleType.html#1094" class="Bound">ℓᵢ</a> <a id="1097" href="ContractibleType.html#1097" class="Bound">ℓⱼ</a><a id="1099" class="Symbol">}</a> <a id="1101" class="Symbol">{</a><a id="1102" href="ContractibleType.html#1102" class="Bound">A</a> <a id="1104" class="Symbol">:</a> <a id="1106" href="Intro.html#1621" class="Function">Type</a> <a id="1111" href="ContractibleType.html#1094" class="Bound">ℓᵢ</a><a id="1113" class="Symbol">}</a> <a id="1115" class="Symbol">{</a><a id="1116" href="ContractibleType.html#1116" class="Bound">B</a> <a id="1118" class="Symbol">:</a> <a id="1120" href="Intro.html#1621" class="Function">Type</a> <a id="1125" href="ContractibleType.html#1097" class="Bound">ℓⱼ</a><a id="1127" class="Symbol">}</a>
    <a id="1133" class="Symbol">→</a> <a id="1135" class="Symbol">(</a><a id="1136" href="ContractibleType.html#1136" class="Bound">f</a> <a id="1138" class="Symbol">:</a> <a id="1140" href="ContractibleType.html#1102" class="Bound">A</a> <a id="1142" class="Symbol">→</a> <a id="1144" href="ContractibleType.html#1116" class="Bound">B</a><a id="1145" class="Symbol">)</a>
    <a id="1151" class="Symbol">→</a> <a id="1153" href="Intro.html#1621" class="Function">Type</a> <a id="1158" class="Symbol">(</a><a id="1159" href="ContractibleType.html#1094" class="Bound">ℓᵢ</a> <a id="1162" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="1164" href="ContractibleType.html#1097" class="Bound">ℓⱼ</a><a id="1166" class="Symbol">)</a>

  <a id="1171" href="ContractibleType.html#1074" class="Function">isContrMap</a> <a id="1182" class="Symbol">{</a><a id="1183" class="Argument">B</a> <a id="1185" class="Symbol">=</a> <a id="1187" href="ContractibleType.html#1187" class="Bound">B</a><a id="1188" class="Symbol">}</a> <a id="1190" href="ContractibleType.html#1190" class="Bound">f</a> <a id="1192" class="Symbol">=</a> <a id="1194" class="Symbol">(</a><a id="1195" href="ContractibleType.html#1195" class="Bound">b</a> <a id="1197" class="Symbol">:</a> <a id="1199" href="ContractibleType.html#1187" class="Bound">B</a><a id="1200" class="Symbol">)</a> <a id="1202" class="Symbol">→</a> <a id="1204" href="ContractibleType.html#502" class="Function">isContr</a> <a id="1212" class="Symbol">(</a><a id="1213" href="FiberType.html#599" class="Function">fib</a> <a id="1217" href="ContractibleType.html#1190" class="Bound">f</a> <a id="1219" href="ContractibleType.html#1195" class="Bound">b</a><a id="1220" class="Symbol">)</a>
</pre>
