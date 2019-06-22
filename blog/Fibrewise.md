---
layout: page
title: "Fiberwise"
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
<a id="183" class="Symbol">{-#</a> <a id="187" class="Keyword">OPTIONS</a> <a id="195" class="Pragma">--without-K</a> <a id="207" class="Symbol">#-}</a>
<a id="211" class="Keyword">open</a> <a id="216" class="Keyword">import</a> <a id="223" href="BasicTypes.html" class="Module">BasicTypes</a>
<a id="234" class="Keyword">open</a> <a id="239" class="Keyword">import</a> <a id="246" href="Transport.html" class="Module">Transport</a>
<a id="256" class="Keyword">open</a> <a id="261" class="Keyword">import</a> <a id="268" href="FibreType.html" class="Module">FibreType</a>
</pre>
</div>


<pre class="Agda">
<a id="fibre-transport"></a><a id="311" href="Fibrewise.html#311" class="Function">fibre-transport</a>
  <a id="329" class="Symbol">:</a> <a id="331" class="Symbol">{</a><a id="332" href="Fibrewise.html#332" class="Bound">A</a> <a id="334" class="Symbol">:</a> <a id="336" href="Intro.html#1813" class="Function">Type</a> <a id="341" href="Intro.html#2255" class="Generalizable">ℓᵢ</a><a id="343" class="Symbol">}</a> <a id="345" class="Symbol">{</a><a id="346" href="Fibrewise.html#346" class="Bound">B</a> <a id="348" class="Symbol">:</a> <a id="350" href="Intro.html#1813" class="Function">Type</a> <a id="355" href="Intro.html#2258" class="Generalizable">ℓⱼ</a><a id="357" class="Symbol">}</a>
  <a id="361" class="Symbol">→</a> <a id="363" class="Symbol">(</a><a id="364" href="Fibrewise.html#364" class="Bound">f</a> <a id="366" class="Symbol">:</a> <a id="368" href="Fibrewise.html#332" class="Bound">A</a> <a id="370" class="Symbol">→</a> <a id="372" href="Fibrewise.html#346" class="Bound">B</a><a id="373" class="Symbol">)</a>
  <a id="377" class="Symbol">→</a> <a id="379" class="Symbol">{</a><a id="380" href="Fibrewise.html#380" class="Bound">b</a> <a id="382" href="Fibrewise.html#382" class="Bound">b&#39;</a> <a id="385" class="Symbol">:</a> <a id="387" href="Fibrewise.html#346" class="Bound">B</a><a id="388" class="Symbol">}</a> <a id="390" class="Symbol">→</a> <a id="392" class="Symbol">(</a><a id="393" href="Fibrewise.html#393" class="Bound">h</a> <a id="395" class="Symbol">:</a> <a id="397" href="Fibrewise.html#380" class="Bound">b</a> <a id="399" href="BasicTypes.html#4294" class="Datatype Operator">==</a> <a id="402" href="Fibrewise.html#382" class="Bound">b&#39;</a><a id="404" class="Symbol">)</a>
  <a id="408" class="Comment">------------------------------------------------</a>
  <a id="459" class="Symbol">→</a> <a id="461" class="Symbol">∀</a> <a id="463" href="Fibrewise.html#463" class="Bound">a</a> <a id="465" href="Fibrewise.html#465" class="Bound">e</a> <a id="467" class="Symbol">→</a> <a id="469" class="Symbol">(</a><a id="470" href="Fibrewise.html#463" class="Bound">a</a> <a id="472" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="474" href="Fibrewise.html#465" class="Bound">e</a><a id="475" class="Symbol">)</a> <a id="477" href="Transport.html#1447" class="Function">==</a> <a id="480" class="Symbol">(</a><a id="481" href="Fibrewise.html#463" class="Bound">a</a> <a id="483" href="BasicTypes.html#1582" class="InductiveConstructor Operator">,</a> <a id="485" class="Symbol">(</a><a id="486" href="Fibrewise.html#465" class="Bound">e</a> <a id="488" href="BasicFunctions.html#3903" class="Function Operator">·</a> <a id="490" href="Fibrewise.html#393" class="Bound">h</a><a id="491" class="Symbol">))</a> <a id="494" href="Transport.html#1447" class="Function">[</a> <a id="496" class="Symbol">(</a><a id="497" href="FibreType.html#377" class="Function">fibre</a> <a id="503" href="Fibrewise.html#364" class="Bound">f</a><a id="504" class="Symbol">)</a> <a id="506" href="Transport.html#1447" class="Function">↓</a> <a id="508" href="Fibrewise.html#393" class="Bound">h</a> <a id="510" href="Transport.html#1447" class="Function">]</a>

<a id="513" href="Fibrewise.html#311" class="Function">fibre-transport</a> <a id="529" href="Fibrewise.html#529" class="Bound">f</a> <a id="531" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a> <a id="535" href="Fibrewise.html#535" class="Bound">a</a> <a id="537" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a> <a id="541" class="Symbol">=</a> <a id="543" href="BasicTypes.html#4349" class="InductiveConstructor">idp</a>
</pre>
