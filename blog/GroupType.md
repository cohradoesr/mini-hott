---
layout: page
title: "Group Type"
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
<a id="184" class="Symbol">{-#</a> <a id="188" class="Keyword">OPTIONS</a> <a id="196" class="Pragma">--without-K</a> <a id="208" class="Symbol">#-}</a>
<a id="212" class="Keyword">open</a> <a id="217" class="Keyword">import</a> <a id="224" href="TransportLemmas.html" class="Module">TransportLemmas</a>
<a id="240" class="Keyword">open</a> <a id="245" class="Keyword">import</a> <a id="252" href="EquivalenceType.html" class="Module">EquivalenceType</a>

<a id="269" class="Keyword">open</a> <a id="274" class="Keyword">import</a> <a id="281" href="HomotopyType.html" class="Module">HomotopyType</a>
<a id="294" class="Keyword">open</a> <a id="299" class="Keyword">import</a> <a id="306" href="FunExtAxiom.html" class="Module">FunExtAxiom</a>
<a id="318" class="Keyword">open</a> <a id="323" class="Keyword">import</a> <a id="330" href="HLevelTypes.html" class="Module">HLevelTypes</a>
</pre>
</div>

<pre class="Agda">
<a id="374" class="Keyword">module</a> <a id="381" href="GroupType.html" class="Module">GroupType</a> <a id="391" class="Keyword">where</a>
  <a id="399" class="Keyword">record</a> <a id="GroupStructure"></a><a id="406" href="GroupType.html#406" class="Record">GroupStructure</a> <a id="421" class="Symbol">{</a><a id="422" href="GroupType.html#422" class="Bound">ℓ</a><a id="423" class="Symbol">}</a> <a id="425" class="Symbol">(</a><a id="426" href="GroupType.html#426" class="Bound">M</a> <a id="428" class="Symbol">:</a> <a id="430" href="Intro.html#1442" class="Function">Type</a> <a id="435" href="GroupType.html#422" class="Bound">ℓ</a><a id="436" class="Symbol">)</a> <a id="438" class="Symbol">:</a> <a id="440" href="Intro.html#1442" class="Function">Type</a> <a id="445" href="GroupType.html#422" class="Bound">ℓ</a> <a id="447" class="Keyword">where</a>
    <a id="457" class="Keyword">constructor</a> <a id="GroupStructure.group-structure"></a><a id="469" href="GroupType.html#469" class="InductiveConstructor">group-structure</a>
    <a id="489" class="Keyword">field</a>
      <a id="501" class="Comment">-- A group is a monoid</a>
      <a id="GroupStructure._*_"></a><a id="530" href="GroupType.html#530" class="Field Operator">_*_</a>   <a id="536" class="Symbol">:</a> <a id="538" href="GroupType.html#426" class="Bound">M</a> <a id="540" class="Symbol">→</a> <a id="542" href="GroupType.html#426" class="Bound">M</a> <a id="544" class="Symbol">→</a> <a id="546" href="GroupType.html#426" class="Bound">M</a>
      <a id="GroupStructure.e"></a><a id="554" href="GroupType.html#554" class="Field">e</a>     <a id="560" class="Symbol">:</a> <a id="562" href="GroupType.html#426" class="Bound">M</a>

      <a id="GroupStructure.lunit"></a><a id="571" href="GroupType.html#571" class="Field">lunit</a> <a id="577" class="Symbol">:</a> <a id="579" class="Symbol">∀</a> <a id="581" href="GroupType.html#581" class="Bound">x</a> <a id="583" class="Symbol">→</a> <a id="585" class="Symbol">(</a><a id="586" href="GroupType.html#554" class="Field">e</a> <a id="588" href="GroupType.html#530" class="Field Operator">*</a> <a id="590" href="GroupType.html#581" class="Bound">x</a><a id="591" class="Symbol">)</a> <a id="593" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="596" href="GroupType.html#581" class="Bound">x</a>
      <a id="GroupStructure.runit"></a><a id="604" href="GroupType.html#604" class="Field">runit</a> <a id="610" class="Symbol">:</a> <a id="612" class="Symbol">∀</a> <a id="614" href="GroupType.html#614" class="Bound">x</a> <a id="616" class="Symbol">→</a> <a id="618" class="Symbol">(</a><a id="619" href="GroupType.html#614" class="Bound">x</a> <a id="621" href="GroupType.html#530" class="Field Operator">*</a> <a id="623" href="GroupType.html#554" class="Field">e</a><a id="624" class="Symbol">)</a> <a id="626" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="629" href="GroupType.html#614" class="Bound">x</a>
      <a id="GroupStructure.assoc"></a><a id="637" href="GroupType.html#637" class="Field">assoc</a> <a id="643" class="Symbol">:</a> <a id="645" class="Symbol">∀</a> <a id="647" href="GroupType.html#647" class="Bound">x</a> <a id="649" href="GroupType.html#649" class="Bound">y</a> <a id="651" href="GroupType.html#651" class="Bound">z</a> <a id="653" class="Symbol">→</a> <a id="655" class="Symbol">(</a><a id="656" href="GroupType.html#647" class="Bound">x</a> <a id="658" href="GroupType.html#530" class="Field Operator">*</a> <a id="660" class="Symbol">(</a><a id="661" href="GroupType.html#649" class="Bound">y</a> <a id="663" href="GroupType.html#530" class="Field Operator">*</a> <a id="665" href="GroupType.html#651" class="Bound">z</a><a id="666" class="Symbol">))</a> <a id="669" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="672" class="Symbol">((</a><a id="674" href="GroupType.html#647" class="Bound">x</a> <a id="676" href="GroupType.html#530" class="Field Operator">*</a> <a id="678" href="GroupType.html#649" class="Bound">y</a><a id="679" class="Symbol">)</a> <a id="681" href="GroupType.html#530" class="Field Operator">*</a> <a id="683" href="GroupType.html#651" class="Bound">z</a><a id="684" class="Symbol">)</a>

      <a id="693" class="Comment">-- With inverses</a>
      <a id="GroupStructure.ginv"></a><a id="716" href="GroupType.html#716" class="Field">ginv</a> <a id="721" class="Symbol">:</a> <a id="723" href="GroupType.html#426" class="Bound">M</a> <a id="725" class="Symbol">→</a> <a id="727" href="GroupType.html#426" class="Bound">M</a>
      <a id="GroupStructure.glinv"></a><a id="735" href="GroupType.html#735" class="Field">glinv</a> <a id="741" class="Symbol">:</a> <a id="743" class="Symbol">∀</a> <a id="745" href="GroupType.html#745" class="Bound">g</a> <a id="747" class="Symbol">→</a> <a id="749" class="Symbol">(</a><a id="750" href="GroupType.html#745" class="Bound">g</a> <a id="752" href="GroupType.html#530" class="Field Operator">*</a> <a id="754" href="GroupType.html#716" class="Field">ginv</a> <a id="759" href="GroupType.html#745" class="Bound">g</a><a id="760" class="Symbol">)</a> <a id="762" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="765" href="GroupType.html#554" class="Field">e</a>
      <a id="GroupStructure.grinv"></a><a id="773" href="GroupType.html#773" class="Field">grinv</a> <a id="779" class="Symbol">:</a> <a id="781" class="Symbol">∀</a> <a id="783" href="GroupType.html#783" class="Bound">g</a> <a id="785" class="Symbol">→</a> <a id="787" class="Symbol">(</a><a id="788" href="GroupType.html#716" class="Field">ginv</a> <a id="793" href="GroupType.html#783" class="Bound">g</a> <a id="795" href="GroupType.html#530" class="Field Operator">*</a> <a id="797" href="GroupType.html#783" class="Bound">g</a><a id="798" class="Symbol">)</a> <a id="800" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="803" href="GroupType.html#554" class="Field">e</a>

  <a id="808" class="Keyword">record</a> <a id="Group"></a><a id="815" href="GroupType.html#815" class="Record">Group</a> <a id="821" class="Symbol">{</a><a id="822" href="GroupType.html#822" class="Bound">ℓ</a><a id="823" class="Symbol">}</a> <a id="825" class="Symbol">:</a> <a id="827" href="Intro.html#1442" class="Function">Type</a> <a id="832" class="Symbol">(</a><a id="833" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="838" href="GroupType.html#822" class="Bound">ℓ</a><a id="839" class="Symbol">)</a> <a id="841" class="Keyword">where</a>
    <a id="851" class="Keyword">constructor</a> <a id="Group.group"></a><a id="863" href="GroupType.html#863" class="InductiveConstructor">group</a>
    <a id="873" class="Keyword">field</a>
      <a id="Group.M"></a><a id="885" href="GroupType.html#885" class="Field">M</a> <a id="887" class="Symbol">:</a> <a id="889" href="Intro.html#1442" class="Function">Type</a> <a id="894" href="GroupType.html#822" class="Bound">ℓ</a>
      <a id="Group.str"></a><a id="902" href="GroupType.html#902" class="Field">str</a> <a id="906" class="Symbol">:</a> <a id="908" href="GroupType.html#406" class="Record">GroupStructure</a> <a id="923" href="GroupType.html#885" class="Field">M</a>
  <a id="927" class="Keyword">open</a> <a id="932" href="GroupType.html#815" class="Module">Group</a> <a id="938" class="Symbol">{{...}}</a> <a id="946" class="Keyword">public</a>
</pre>