---
layout: page
title: "Truncation Type"
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
<a id="189" class="Symbol">{-#</a> <a id="193" class="Keyword">OPTIONS</a> <a id="201" class="Pragma">--without-K</a> <a id="213" class="Symbol">#-}</a>
<a id="217" class="Keyword">open</a> <a id="222" class="Keyword">import</a> <a id="229" href="TransportLemmas.html" class="Module">TransportLemmas</a>
<a id="245" class="Keyword">open</a> <a id="250" class="Keyword">import</a> <a id="257" href="EquivalenceType.html" class="Module">EquivalenceType</a>

<a id="274" class="Keyword">open</a> <a id="279" class="Keyword">import</a> <a id="286" href="HomotopyType.html" class="Module">HomotopyType</a>
<a id="299" class="Keyword">open</a> <a id="304" class="Keyword">import</a> <a id="311" href="FunExtAxiom.html" class="Module">FunExtAxiom</a>
<a id="323" class="Keyword">open</a> <a id="328" class="Keyword">import</a> <a id="335" href="QuasiinverseType.html" class="Module">QuasiinverseType</a>
<a id="352" class="Keyword">open</a> <a id="357" class="Keyword">import</a> <a id="364" href="DecidableEquality.html" class="Module">DecidableEquality</a>
<a id="382" class="Keyword">open</a> <a id="387" class="Keyword">import</a> <a id="394" href="NaturalType.html" class="Module">NaturalType</a>
<a id="406" class="Keyword">open</a> <a id="411" class="Keyword">import</a> <a id="418" href="HLevelTypes.html" class="Module">HLevelTypes</a>
<a id="430" class="Keyword">open</a> <a id="435" class="Keyword">import</a> <a id="442" href="HLevelLemmas.html" class="Module">HLevelLemmas</a>
<a id="455" class="Keyword">open</a> <a id="460" class="Keyword">import</a> <a id="467" href="HedbergLemmas.html" class="Module">HedbergLemmas</a>
</pre>
</div>


## Truncation

<pre class="Agda">
<a id="529" class="Keyword">module</a> <a id="536" href="TruncationType.html" class="Module">TruncationType</a> <a id="551" class="Keyword">where</a>

  <a id="560" class="Keyword">private</a>
    <a id="572" class="Comment">-- Higher inductive type, defined with equalities between any two</a>
    <a id="642" class="Comment">-- members.</a>
    <a id="658" class="Keyword">data</a> <a id="!∥_∥"></a><a id="663" href="TruncationType.html#663" class="Datatype Operator">!∥_∥</a> <a id="668" class="Symbol">{</a><a id="669" href="TruncationType.html#669" class="Bound">ℓ</a><a id="670" class="Symbol">}</a> <a id="672" class="Symbol">(</a><a id="673" href="TruncationType.html#673" class="Bound">A</a> <a id="675" class="Symbol">:</a> <a id="677" href="Intro.html#1593" class="Function">Type</a> <a id="682" href="TruncationType.html#669" class="Bound">ℓ</a><a id="683" class="Symbol">)</a> <a id="685" class="Symbol">:</a> <a id="687" href="Intro.html#1593" class="Function">Type</a> <a id="692" href="TruncationType.html#669" class="Bound">ℓ</a> <a id="694" class="Keyword">where</a>
      <a id="!∥_∥.!∣_∣"></a><a id="706" href="TruncationType.html#706" class="InductiveConstructor Operator">!∣_∣</a> <a id="711" class="Symbol">:</a> <a id="713" href="TruncationType.html#673" class="Bound">A</a> <a id="715" class="Symbol">→</a> <a id="717" href="TruncationType.html#663" class="Datatype Operator">!∥</a> <a id="720" href="TruncationType.html#673" class="Bound">A</a> <a id="722" href="TruncationType.html#663" class="Datatype Operator">∥</a>

  <a id="∥_∥"></a><a id="727" href="TruncationType.html#727" class="Function Operator">∥_∥</a> <a id="731" class="Symbol">:</a> <a id="733" class="Symbol">∀</a> <a id="735" class="Symbol">{</a><a id="736" href="TruncationType.html#736" class="Bound">ℓ</a><a id="737" class="Symbol">}</a> <a id="739" class="Symbol">(</a><a id="740" href="TruncationType.html#740" class="Bound">A</a> <a id="742" class="Symbol">:</a> <a id="744" href="Intro.html#1593" class="Function">Type</a> <a id="749" href="TruncationType.html#736" class="Bound">ℓ</a><a id="750" class="Symbol">)</a> <a id="752" class="Symbol">→</a> <a id="754" href="Intro.html#1593" class="Function">Type</a> <a id="759" href="TruncationType.html#736" class="Bound">ℓ</a>
  <a id="763" href="TruncationType.html#727" class="Function Operator">∥</a> <a id="765" href="TruncationType.html#765" class="Bound">A</a> <a id="767" href="TruncationType.html#727" class="Function Operator">∥</a> <a id="769" class="Symbol">=</a> <a id="771" href="TruncationType.html#663" class="Datatype Operator">!∥</a> <a id="774" href="TruncationType.html#765" class="Bound">A</a> <a id="776" href="TruncationType.html#663" class="Datatype Operator">∥</a>

  <a id="∣_∣"></a><a id="781" href="TruncationType.html#781" class="Function Operator">∣_∣</a> <a id="785" class="Symbol">:</a> <a id="787" class="Symbol">∀</a> <a id="789" class="Symbol">{</a><a id="790" href="TruncationType.html#790" class="Bound">ℓ</a><a id="791" class="Symbol">}</a> <a id="793" class="Symbol">{</a><a id="794" href="TruncationType.html#794" class="Bound">X</a> <a id="796" class="Symbol">:</a> <a id="798" href="Intro.html#1593" class="Function">Type</a> <a id="803" href="TruncationType.html#790" class="Bound">ℓ</a><a id="804" class="Symbol">}</a> <a id="806" class="Symbol">→</a> <a id="808" href="TruncationType.html#794" class="Bound">X</a> <a id="810" class="Symbol">→</a> <a id="812" href="TruncationType.html#727" class="Function Operator">∥</a> <a id="814" href="TruncationType.html#794" class="Bound">X</a> <a id="816" href="TruncationType.html#727" class="Function Operator">∥</a>
  <a id="820" href="TruncationType.html#781" class="Function Operator">∣</a> <a id="822" href="TruncationType.html#822" class="Bound">x</a> <a id="824" href="TruncationType.html#781" class="Function Operator">∣</a> <a id="826" class="Symbol">=</a> <a id="828" href="TruncationType.html#706" class="InductiveConstructor Operator">!∣</a> <a id="831" href="TruncationType.html#822" class="Bound">x</a> <a id="833" href="TruncationType.html#706" class="InductiveConstructor Operator">∣</a>

  <a id="838" class="Comment">-- Any two elements of the truncated type are equal</a>
  <a id="892" class="Keyword">postulate</a>
    <a id="trunc"></a><a id="906" href="TruncationType.html#906" class="Postulate">trunc</a> <a id="912" class="Symbol">:</a> <a id="914" class="Symbol">∀</a> <a id="916" class="Symbol">{</a><a id="917" href="TruncationType.html#917" class="Bound">ℓ</a><a id="918" class="Symbol">}</a> <a id="920" class="Symbol">{</a><a id="921" href="TruncationType.html#921" class="Bound">A</a> <a id="923" class="Symbol">:</a> <a id="925" href="Intro.html#1593" class="Function">Type</a> <a id="930" href="TruncationType.html#917" class="Bound">ℓ</a><a id="931" class="Symbol">}</a> <a id="933" class="Symbol">→</a> <a id="935" href="HLevelTypes.html#757" class="Function">isProp</a> <a id="942" href="TruncationType.html#727" class="Function Operator">∥</a> <a id="944" href="TruncationType.html#921" class="Bound">A</a> <a id="946" href="TruncationType.html#727" class="Function Operator">∥</a>

  <a id="951" class="Comment">-- Recursion principle</a>
  <a id="trunc-rec"></a><a id="976" href="TruncationType.html#976" class="Function">trunc-rec</a> <a id="986" class="Symbol">:</a> <a id="988" class="Symbol">∀</a> <a id="990" class="Symbol">{</a><a id="991" href="TruncationType.html#991" class="Bound">ℓᵢ</a> <a id="994" href="TruncationType.html#994" class="Bound">ℓⱼ</a><a id="996" class="Symbol">}</a> <a id="998" class="Symbol">{</a><a id="999" href="TruncationType.html#999" class="Bound">A</a> <a id="1001" class="Symbol">:</a> <a id="1003" href="Intro.html#1593" class="Function">Type</a> <a id="1008" href="TruncationType.html#991" class="Bound">ℓᵢ</a><a id="1010" class="Symbol">}</a> <a id="1012" class="Symbol">{</a><a id="1013" href="TruncationType.html#1013" class="Bound">P</a> <a id="1015" class="Symbol">:</a> <a id="1017" href="Intro.html#1593" class="Function">Type</a> <a id="1022" href="TruncationType.html#994" class="Bound">ℓⱼ</a><a id="1024" class="Symbol">}</a>
            <a id="1038" class="Symbol">→</a> <a id="1040" href="HLevelTypes.html#757" class="Function">isProp</a> <a id="1047" href="TruncationType.html#1013" class="Bound">P</a>
            <a id="1061" class="Symbol">→</a> <a id="1063" class="Symbol">(</a><a id="1064" href="TruncationType.html#999" class="Bound">A</a> <a id="1066" class="Symbol">→</a> <a id="1068" href="TruncationType.html#1013" class="Bound">P</a><a id="1069" class="Symbol">)</a>
            <a id="1083" class="Comment">---------</a>
            <a id="1105" class="Symbol">→</a> <a id="1107" href="TruncationType.html#727" class="Function Operator">∥</a> <a id="1109" href="TruncationType.html#999" class="Bound">A</a> <a id="1111" href="TruncationType.html#727" class="Function Operator">∥</a> <a id="1113" class="Symbol">→</a> <a id="1115" href="TruncationType.html#1013" class="Bound">P</a>
  <a id="1119" href="TruncationType.html#976" class="Function">trunc-rec</a> <a id="1129" class="Symbol">_</a> <a id="1131" href="TruncationType.html#1131" class="Bound">f</a> <a id="1133" href="TruncationType.html#706" class="InductiveConstructor Operator">!∣</a> <a id="1136" href="TruncationType.html#1136" class="Bound">x</a> <a id="1138" href="TruncationType.html#706" class="InductiveConstructor Operator">∣</a> <a id="1140" class="Symbol">=</a> <a id="1142" href="TruncationType.html#1131" class="Bound">f</a> <a id="1144" href="TruncationType.html#1136" class="Bound">x</a>
</pre>
