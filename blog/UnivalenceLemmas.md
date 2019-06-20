---
layout: page
title: "Univalence Lemmas"
category: lemmas functions homotopy
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
<a id="227" class="Symbol">{-#</a> <a id="231" class="Keyword">OPTIONS</a> <a id="239" class="Pragma">--without-K</a> <a id="251" class="Symbol">#-}</a>
<a id="255" class="Keyword">module</a> <a id="262" href="UnivalenceLemmas.html" class="Module">_</a> <a id="264" class="Keyword">where</a>
<a id="270" class="Keyword">open</a> <a id="275" class="Keyword">import</a> <a id="282" href="TransportLemmas.html" class="Module">TransportLemmas</a>
<a id="298" class="Keyword">open</a> <a id="303" class="Keyword">import</a> <a id="310" href="EquivalenceType.html" class="Module">EquivalenceType</a>

<a id="327" class="Keyword">open</a> <a id="332" class="Keyword">import</a> <a id="339" href="HomotopyType.html" class="Module">HomotopyType</a>
<a id="352" class="Keyword">open</a> <a id="357" class="Keyword">import</a> <a id="364" href="FunExtAxiom.html" class="Module">FunExtAxiom</a>

<a id="377" class="Keyword">open</a> <a id="382" class="Keyword">import</a> <a id="389" href="EquivalenceType.html" class="Module">EquivalenceType</a>
<a id="405" class="Keyword">open</a> <a id="410" class="Keyword">import</a> <a id="417" href="QuasiinverseType.html" class="Module">QuasiinverseType</a>
<a id="434" class="Keyword">open</a> <a id="439" class="Keyword">import</a> <a id="446" href="QuasiinverseLemmas.html" class="Module">QuasiinverseLemmas</a>
<a id="465" class="Keyword">open</a> <a id="470" class="Keyword">import</a> <a id="477" href="UnivalenceAxiom.html" class="Module">UnivalenceAxiom</a>

<a id="494" class="Keyword">open</a> <a id="499" class="Keyword">import</a> <a id="506" href="HLevelLemmas.html" class="Module">HLevelLemmas</a>
</pre>
</div>

### Univalence lemmas

<pre class="Agda">
<a id="574" class="Keyword">module</a> <a id="UnivalenceLemmas"></a><a id="581" href="UnivalenceLemmas.html#581" class="Module">UnivalenceLemmas</a> <a id="598" class="Symbol">{</a><a id="599" href="UnivalenceLemmas.html#599" class="Bound">ℓ</a><a id="600" class="Symbol">}</a> <a id="602" class="Keyword">where</a>
</pre>

- The identity equivalence creates the trivial path.
{: .foldable}
<pre class="Agda">
  <a id="UnivalenceLemmas.ua-id"></a><a id="702" href="UnivalenceLemmas.html#702" class="Function">ua-id</a> <a id="708" class="Symbol">:</a> <a id="710" class="Symbol">{</a><a id="711" href="UnivalenceLemmas.html#711" class="Bound">A</a> <a id="713" class="Symbol">:</a> <a id="715" href="Intro.html#1593" class="Function">Type</a> <a id="720" href="UnivalenceLemmas.html#599" class="Bound">ℓ</a><a id="721" class="Symbol">}</a> <a id="723" class="Symbol">→</a> <a id="725" href="UnivalenceAxiom.html#1389" class="Function">ua</a> <a id="728" href="QuasiinverseLemmas.html#1413" class="Function">idEqv</a> <a id="734" href="EqualityType.html#1038" class="Datatype Operator">==</a> <a id="737" href="EqualityType.html#1305" class="Function">refl</a> <a id="742" href="UnivalenceLemmas.html#711" class="Bound">A</a>
  <a id="746" href="UnivalenceLemmas.html#702" class="Function">ua-id</a> <a id="752" class="Symbol">{</a><a id="753" href="UnivalenceLemmas.html#753" class="Bound">A</a><a id="754" class="Symbol">}</a> <a id="756" class="Symbol">=</a>
    <a id="762" href="EqualityType.html#4493" class="Function Operator">begin</a>
      <a id="774" href="UnivalenceAxiom.html#1389" class="Function">ua</a> <a id="777" href="QuasiinverseLemmas.html#1413" class="Function">idEqv</a>              <a id="796" href="EqualityType.html#4195" class="Function Operator">==⟨</a> <a id="800" href="AlgebraOnPaths.html#454" class="Function">ap</a> <a id="803" href="UnivalenceAxiom.html#1389" class="Function">ua</a> <a id="806" class="Symbol">(</a><a id="807" href="HLevelLemmas.html#7450" class="Function">sameEqv</a> <a id="815" class="Symbol">(</a><a id="816" href="EqualityType.html#1305" class="Function">refl</a> <a id="821" href="BasicFunctions.html#364" class="Function">id</a><a id="823" class="Symbol">))</a> <a id="826" href="EqualityType.html#4195" class="Function Operator">⟩</a>
      <a id="834" href="UnivalenceAxiom.html#1389" class="Function">ua</a> <a id="837" class="Symbol">(</a><a id="838" href="UnivalenceAxiom.html#705" class="Function">idtoeqv</a> <a id="846" class="Symbol">(</a><a id="847" href="EqualityType.html#1305" class="Function">refl</a> <a id="852" href="UnivalenceLemmas.html#753" class="Bound">A</a><a id="853" class="Symbol">))</a> <a id="856" href="EqualityType.html#4195" class="Function Operator">==⟨</a> <a id="860" href="UnivalenceAxiom.html#1739" class="Function">ua-η</a> <a id="865" class="Symbol">(</a><a id="866" href="EqualityType.html#1305" class="Function">refl</a> <a id="871" href="UnivalenceLemmas.html#753" class="Bound">A</a><a id="872" class="Symbol">)</a> <a id="874" href="EqualityType.html#4195" class="Function Operator">⟩</a>
      <a id="882" href="EqualityType.html#1305" class="Function">refl</a> <a id="887" href="UnivalenceLemmas.html#753" class="Bound">A</a>
    <a id="893" href="EqualityType.html#4390" class="Function Operator">∎</a>

    <a id="900" class="Comment">-- The composition of equivalences is preserved into composition</a>
    <a id="969" class="Comment">-- of equalities.</a>
</pre>
-
{: .foldable}
<pre class="Agda">
  <a id="1029" class="Keyword">postulate</a>
    <a id="UnivalenceLemmas.ua-comp"></a><a id="1043" href="UnivalenceLemmas.html#1043" class="Postulate">ua-comp</a>
      <a id="1057" class="Symbol">:</a> <a id="1059" class="Symbol">{</a><a id="1060" href="UnivalenceLemmas.html#1060" class="Bound">A</a> <a id="1062" href="UnivalenceLemmas.html#1062" class="Bound">B</a> <a id="1064" href="UnivalenceLemmas.html#1064" class="Bound">C</a> <a id="1066" class="Symbol">:</a> <a id="1068" href="Intro.html#1593" class="Function">Type</a> <a id="1073" href="UnivalenceLemmas.html#599" class="Bound">ℓ</a><a id="1074" class="Symbol">}</a>
      <a id="1082" class="Symbol">→</a> <a id="1084" class="Symbol">(</a><a id="1085" href="UnivalenceLemmas.html#1085" class="Bound">α</a> <a id="1087" class="Symbol">:</a> <a id="1089" href="UnivalenceLemmas.html#1060" class="Bound">A</a> <a id="1091" href="EquivalenceType.html#764" class="Function Operator">≃</a> <a id="1093" href="UnivalenceLemmas.html#1062" class="Bound">B</a><a id="1094" class="Symbol">)</a>
      <a id="1102" class="Symbol">→</a> <a id="1104" class="Symbol">(</a><a id="1105" href="UnivalenceLemmas.html#1105" class="Bound">β</a> <a id="1107" class="Symbol">:</a> <a id="1109" href="UnivalenceLemmas.html#1062" class="Bound">B</a> <a id="1111" href="EquivalenceType.html#764" class="Function Operator">≃</a> <a id="1113" href="UnivalenceLemmas.html#1064" class="Bound">C</a><a id="1114" class="Symbol">)</a>
      <a id="1122" class="Comment">---------------------------------</a>
      <a id="1162" class="Symbol">→</a> <a id="1164" href="UnivalenceAxiom.html#1389" class="Function">ua</a> <a id="1167" class="Symbol">(</a><a id="1168" href="QuasiinverseLemmas.html#1653" class="Function">≃-trans</a> <a id="1176" href="UnivalenceLemmas.html#1085" class="Bound">α</a> <a id="1178" href="UnivalenceLemmas.html#1105" class="Bound">β</a><a id="1179" class="Symbol">)</a> <a id="1181" href="EqualityType.html#1038" class="Datatype Operator">==</a> <a id="1184" href="UnivalenceAxiom.html#1389" class="Function">ua</a> <a id="1187" href="UnivalenceLemmas.html#1085" class="Bound">α</a> <a id="1189" href="EqualityType.html#2296" class="Function Operator">·</a> <a id="1191" href="UnivalenceAxiom.html#1389" class="Function">ua</a> <a id="1194" href="UnivalenceLemmas.html#1105" class="Bound">β</a>

    <a id="1201" class="Comment">-- ua-comp α β =</a>
    <a id="1222" class="Comment">--   begin</a>
    <a id="1237" class="Comment">--     ua (≃-trans α β)                               ==⟨ ap (λ x → ua (≃-trans x β)) (inv (ua-β α)) ⟩</a>
    <a id="1344" class="Comment">--     ua (≃-trans (idtoeqv (ua α)) β)                ==⟨ ap (λ x → ua (≃-trans (idtoeqv (ua α)) x))</a>
    <a id="1449" class="Comment">--                                                        (inv (ua-β β)) ⟩</a>
    <a id="1528" class="Comment">--     ua (≃-trans (idtoeqv (ua α)) (idtoeqv (ua β))) ==⟨ ap ua lemma ⟩</a>
    <a id="1604" class="Comment">--     ua (idtoeqv (ua α · ua β))                     ==⟨ ua-η (ua α · ua β) ⟩</a>
    <a id="1687" class="Comment">--     ua α · ua β</a>
    <a id="1710" class="Comment">--   ∎</a>
    <a id="1721" class="Comment">--   where</a>
    <a id="1736" class="Comment">--     lemma : ≃-trans (idtoeqv (ua α)) (idtoeqv (ua β)) == idtoeqv (ua α · ua β)</a>
    <a id="1822" class="Comment">--     lemma = sameEqv (</a>
    <a id="1851" class="Comment">--       begin</a>
    <a id="1870" class="Comment">--         π₁ (idtoeqv (ua β)) ∘ π₁ (idtoeqv (ua α))                 ==⟨ refl _ ⟩</a>
    <a id="1956" class="Comment">--         (transport (λ x → x) (ua β)) ∘ (transport (λ x → x) (ua α)) ==⟨ transport-comp (ua α) (ua β) ⟩</a>
    <a id="2066" class="Comment">--         transport (λ x → x) (ua α · ua β)                           ==⟨ refl _ ⟩</a>
    <a id="2154" class="Comment">--         π₁ (idtoeqv (ua α · ua β))</a>
    <a id="2196" class="Comment">--       ∎)</a>
</pre>

- Inverses are preserved
{: .foldable}
<pre class="Agda">
  <a id="UnivalenceLemmas.ua-inv-r"></a><a id="2274" href="UnivalenceLemmas.html#2274" class="Function">ua-inv-r</a>
    <a id="2287" class="Symbol">:</a> <a id="2289" class="Symbol">{</a><a id="2290" href="UnivalenceLemmas.html#2290" class="Bound">A</a> <a id="2292" href="UnivalenceLemmas.html#2292" class="Bound">B</a> <a id="2294" class="Symbol">:</a> <a id="2296" href="Intro.html#1593" class="Function">Type</a> <a id="2301" href="UnivalenceLemmas.html#599" class="Bound">ℓ</a><a id="2302" class="Symbol">}</a>
    <a id="2308" class="Symbol">→</a> <a id="2310" class="Symbol">(</a><a id="2311" href="UnivalenceLemmas.html#2311" class="Bound">α</a> <a id="2313" class="Symbol">:</a> <a id="2315" href="UnivalenceLemmas.html#2290" class="Bound">A</a> <a id="2317" href="EquivalenceType.html#764" class="Function Operator">≃</a> <a id="2319" href="UnivalenceLemmas.html#2292" class="Bound">B</a><a id="2320" class="Symbol">)</a>
    <a id="2326" class="Symbol">→</a> <a id="2328" href="UnivalenceAxiom.html#1389" class="Function">ua</a> <a id="2331" href="UnivalenceLemmas.html#2311" class="Bound">α</a> <a id="2333" href="EqualityType.html#2296" class="Function Operator">·</a> <a id="2335" href="UnivalenceAxiom.html#1389" class="Function">ua</a> <a id="2338" class="Symbol">(</a><a id="2339" href="QuasiinverseLemmas.html#2010" class="Function">≃-sym</a> <a id="2345" href="UnivalenceLemmas.html#2311" class="Bound">α</a><a id="2346" class="Symbol">)</a> <a id="2348" href="EqualityType.html#1038" class="Datatype Operator">==</a> <a id="2351" href="EqualityType.html#1305" class="Function">refl</a> <a id="2356" href="UnivalenceLemmas.html#2290" class="Bound">A</a>
  <a id="2360" href="UnivalenceLemmas.html#2274" class="Function">ua-inv-r</a> <a id="2369" href="UnivalenceLemmas.html#2369" class="Bound">α</a> <a id="2371" class="Symbol">=</a>
    <a id="2377" href="EqualityType.html#4493" class="Function Operator">begin</a>
      <a id="2389" href="UnivalenceAxiom.html#1389" class="Function">ua</a> <a id="2392" href="UnivalenceLemmas.html#2369" class="Bound">α</a> <a id="2394" href="EqualityType.html#2296" class="Function Operator">·</a> <a id="2396" href="UnivalenceAxiom.html#1389" class="Function">ua</a> <a id="2399" class="Symbol">(</a><a id="2400" href="QuasiinverseLemmas.html#2010" class="Function">≃-sym</a> <a id="2406" href="UnivalenceLemmas.html#2369" class="Bound">α</a><a id="2407" class="Symbol">)</a>      <a id="2414" href="EqualityType.html#4195" class="Function Operator">==⟨</a> <a id="2418" href="EqualityType.html#2553" class="Function">inv</a> <a id="2422" class="Symbol">(</a><a id="2423" href="UnivalenceLemmas.html#1043" class="Postulate">ua-comp</a> <a id="2431" href="UnivalenceLemmas.html#2369" class="Bound">α</a> <a id="2433" class="Symbol">(</a><a id="2434" href="QuasiinverseLemmas.html#2010" class="Function">≃-sym</a> <a id="2440" href="UnivalenceLemmas.html#2369" class="Bound">α</a><a id="2441" class="Symbol">))</a> <a id="2444" href="EqualityType.html#4195" class="Function Operator">⟩</a>
      <a id="2452" href="UnivalenceAxiom.html#1389" class="Function">ua</a> <a id="2455" class="Symbol">(</a><a id="2456" href="QuasiinverseLemmas.html#1653" class="Function">≃-trans</a> <a id="2464" href="UnivalenceLemmas.html#2369" class="Bound">α</a> <a id="2466" class="Symbol">(</a><a id="2467" href="QuasiinverseLemmas.html#2010" class="Function">≃-sym</a> <a id="2473" href="UnivalenceLemmas.html#2369" class="Bound">α</a><a id="2474" class="Symbol">))</a> <a id="2477" href="EqualityType.html#4195" class="Function Operator">==⟨</a> <a id="2481" href="AlgebraOnPaths.html#454" class="Function">ap</a> <a id="2484" href="UnivalenceAxiom.html#1389" class="Function">ua</a> <a id="2487" class="Symbol">(</a><a id="2488" href="HLevelLemmas.html#7976" class="Function">≃-trans-inv</a> <a id="2500" href="UnivalenceLemmas.html#2369" class="Bound">α</a><a id="2501" class="Symbol">)</a> <a id="2503" href="EqualityType.html#4195" class="Function Operator">⟩</a>
      <a id="2511" href="UnivalenceAxiom.html#1389" class="Function">ua</a> <a id="2514" href="QuasiinverseLemmas.html#1413" class="Function">idEqv</a>                  <a id="2537" href="EqualityType.html#4195" class="Function Operator">==⟨</a> <a id="2541" href="UnivalenceLemmas.html#702" class="Function">ua-id</a> <a id="2547" href="EqualityType.html#4195" class="Function Operator">⟩</a>
      <a id="2555" href="EqualityType.html#1305" class="Function">refl</a> <a id="2560" class="Symbol">_</a>
    <a id="2566" href="EqualityType.html#4390" class="Function Operator">∎</a>
</pre>

- Missing description
{: .foldable}
<pre class="Agda">
  <a id="2631" class="Keyword">postulate</a>
    <a id="UnivalenceLemmas.ua-inv"></a><a id="2645" href="UnivalenceLemmas.html#2645" class="Postulate">ua-inv</a> <a id="2652" class="Symbol">:</a> <a id="2654" class="Symbol">{</a><a id="2655" href="UnivalenceLemmas.html#2655" class="Bound">A</a> <a id="2657" href="UnivalenceLemmas.html#2657" class="Bound">B</a> <a id="2659" class="Symbol">:</a> <a id="2661" href="Intro.html#1593" class="Function">Type</a> <a id="2666" href="UnivalenceLemmas.html#599" class="Bound">ℓ</a><a id="2667" class="Symbol">}</a> <a id="2669" class="Symbol">→</a> <a id="2671" class="Symbol">(</a><a id="2672" href="UnivalenceLemmas.html#2672" class="Bound">α</a> <a id="2674" class="Symbol">:</a> <a id="2676" href="UnivalenceLemmas.html#2655" class="Bound">A</a> <a id="2678" href="EquivalenceType.html#764" class="Function Operator">≃</a> <a id="2680" href="UnivalenceLemmas.html#2657" class="Bound">B</a><a id="2681" class="Symbol">)</a> <a id="2683" class="Symbol">→</a> <a id="2685" href="UnivalenceAxiom.html#1389" class="Function">ua</a> <a id="2688" class="Symbol">(</a><a id="2689" href="QuasiinverseLemmas.html#2010" class="Function">≃-sym</a> <a id="2695" href="UnivalenceLemmas.html#2672" class="Bound">α</a><a id="2696" class="Symbol">)</a> <a id="2698" href="EqualityType.html#1038" class="Datatype Operator">==</a> <a id="2701" href="EqualityType.html#2553" class="Function">inv</a> <a id="2705" class="Symbol">(</a><a id="2706" href="UnivalenceAxiom.html#1389" class="Function">ua</a> <a id="2709" href="UnivalenceLemmas.html#2672" class="Bound">α</a><a id="2710" class="Symbol">)</a>
    <a id="2716" class="Comment">-- ua-inv α =</a>
    <a id="2734" class="Comment">--   begin</a>
    <a id="2749" class="Comment">--     ua (≃-sym α)                       ==⟨ ap (_· ua (≃-sym α)) (inv (·-linv (ua α))) ⟩</a>
    <a id="2844" class="Comment">--     inv (ua α) · ua α · ua (≃-sym α)   ==⟨ ·-assoc (inv (ua α)) _ _ ⟩</a>
    <a id="2921" class="Comment">--     inv (ua α) · (ua α · ua (≃-sym α)) ==⟨ ap (inv (ua α) ·_) (ua-inv-r α) ⟩</a>
    <a id="3005" class="Comment">--     inv (ua α) · refl _                 ==⟨ inv (·-runit (inv ((ua α)))) ⟩</a>
    <a id="3087" class="Comment">--     inv (ua α)</a>
    <a id="3109" class="Comment">--   ∎</a>
</pre>
