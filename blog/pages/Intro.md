---
layout: page
title: "Introduction"
toc: true
agda: true
gallery: true
latex: true
references: true
linkify: true
showcitation: true
home: true
---

This is a basic overview of homotopy type theory (HoTT) formalized in `Agda` and
developed at [UiB](https://www.uib.no/). This library is just one file and it's
type-checked by `Agda 2.5.4`.  No other libraries are required, zero
dependencies. Our intention is to be practical and helpful to learning HoTT. The
majority of lemmas or functions comes with synonyms to make much easier its
adoption. Still working in progress with more reviews to come. We base this
development on others at the beginning of this project, so we encourage to see
their works as well, see the references.

## Proof relevant

![path](/assets/png-images/mini-hott.jpeg){: width="220px" align="right" }

To be consistent with homotopy type theory, we tell `Agda` to not use *Axiom K*
for type-checking by using the option `without-K`.

<pre class="Agda">
<a id="977" class="Symbol">{-#</a> <a id="981" class="Keyword">OPTIONS</a> <a id="989" class="Pragma">--without-K</a> <a id="1001" class="Symbol">#-}</a>
</pre>

Without Axiom K, `Agda`'s `Set` is not a good name for universes in HoTT and we
rename `Set` to `Type`. Our type judgments then will include the universe level
as one explicit argument.

<pre class="Agda">
<a id="1217" class="Keyword">open</a> <a id="1222" class="Keyword">import</a> <a id="1229" href="Agda.Primitive.html" class="Module">Agda.Primitive</a> <a id="1244" class="Keyword">using</a> <a id="1250" class="Symbol">(</a> <a id="1252" href="Agda.Primitive.html#408" class="Postulate">Level</a> <a id="1258" class="Symbol">;</a> <a id="1260" href="Agda.Primitive.html#627" class="Primitive">lsuc</a><a id="1264" class="Symbol">;</a> <a id="1266" href="Agda.Primitive.html#611" class="Primitive">lzero</a><a id="1271" class="Symbol">;</a> <a id="1273" href="Agda.Primitive.html#657" class="Primitive Operator">_⊔_</a> <a id="1277" class="Symbol">)</a> <a id="1279" class="Keyword">public</a>
</pre>

Note that `l ⊔ q` is the maximum of two hierarchy levels `l` and `q` and we
use this later on to define types in full generality.

<pre class="Agda">
<a id="Type"></a><a id="1442" href="Intro.html#1442" class="Function">Type</a> <a id="1447" class="Symbol">:</a> <a id="1449" class="Symbol">(</a><a id="1450" href="Intro.html#1450" class="Bound">ℓ</a> <a id="1452" class="Symbol">:</a> <a id="1454" href="Agda.Primitive.html#408" class="Postulate">Level</a><a id="1459" class="Symbol">)</a> <a id="1461" class="Symbol">→</a> <a id="1463" class="PrimitiveType">Set</a> <a id="1467" class="Symbol">(</a><a id="1468" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="1473" href="Intro.html#1450" class="Bound">ℓ</a><a id="1474" class="Symbol">)</a>
<a id="1476" href="Intro.html#1442" class="Function">Type</a> <a id="1481" href="Intro.html#1481" class="Bound">ℓ</a> <a id="1483" class="Symbol">=</a> <a id="1485" class="PrimitiveType">Set</a> <a id="1489" href="Intro.html#1481" class="Bound">ℓ</a>
</pre>

<pre class="Agda">
<a id="Type₀"></a><a id="1516" href="Intro.html#1516" class="Function">Type₀</a> <a id="1522" class="Symbol">:</a> <a id="1524" href="Intro.html#1442" class="Function">Type</a> <a id="1529" class="Symbol">(</a><a id="1530" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="1535" href="Agda.Primitive.html#611" class="Primitive">lzero</a><a id="1540" class="Symbol">)</a>
<a id="1542" href="Intro.html#1516" class="Function">Type₀</a> <a id="1548" class="Symbol">=</a> <a id="1550" href="Intro.html#1442" class="Function">Type</a> <a id="1555" href="Agda.Primitive.html#611" class="Primitive">lzero</a>
</pre>
