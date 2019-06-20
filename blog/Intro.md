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

This is a library for Univalent Type Theory in `Agda` developed at [University
of Bergen](https://www.uib.no/).

No other libraries are required to type-check it. To ease its adoption, we have
included synonyms and syntax sugar for types, lemmas, and theorems. Regarding
performance, we recommend you check out the library `HoTT-Agda`. Last but not
least, this development was based on others in its initial stage, so please see
the references at the end.

# Installation

- Install [Agda (v2.6.0)](http://github.com/agda/agda)

- Clone this repository [http://github.com/jonaprieto/mini-hott](http://github.com/jonaprieto/mini-hott)

Alternative way to install Agda libraries:

- `pip install agda-pkg`
- `apkg install mini-hott`


# Code

## Proof relevancy

![path](/assets/png-images/mini-hott.jpeg){: width="150px" align="right" style="padding:5px"}

To be consistent with univalent type theory, we tell `Agda` to not use *Axiom K*
for type-checking by using the option `without-K`.

<pre class="Agda">
<a id="1155" class="Symbol">{-#</a> <a id="1159" class="Keyword">OPTIONS</a> <a id="1167" class="Pragma">--without-K</a> <a id="1179" class="Symbol">#-}</a>
</pre>

Without Axiom K, `Agda`'s `Set` is not a good name for universes in HoTT. So, we
rename `Set` to `Type`. Our type judgments then will include the universe level
as one explicit argument.

<pre class="Agda">
<a id="1396" class="Keyword">open</a> <a id="1401" class="Keyword">import</a> <a id="1408" href="Agda.Primitive.html" class="Module">Agda.Primitive</a> <a id="1423" class="Keyword">using</a> <a id="1429" class="Symbol">(</a> <a id="1431" href="Agda.Primitive.html#408" class="Postulate">Level</a> <a id="1437" class="Symbol">;</a> <a id="1439" href="Agda.Primitive.html#627" class="Primitive">lsuc</a><a id="1443" class="Symbol">;</a> <a id="1445" href="Agda.Primitive.html#611" class="Primitive">lzero</a><a id="1450" class="Symbol">;</a> <a id="1452" href="Agda.Primitive.html#657" class="Primitive Operator">_⊔_</a> <a id="1456" class="Symbol">)</a> <a id="1458" class="Keyword">public</a>
</pre>

Note that `l ⊔ q` is the maximum of two hierarchy levels `l` and `q` and we
use this later on to define types in full generality.

<pre class="Agda">
<a id="Type"></a><a id="1621" href="Intro.html#1621" class="Function">Type</a>
  <a id="1628" class="Symbol">:</a> <a id="1630" class="Symbol">(</a><a id="1631" href="Intro.html#1631" class="Bound">ℓ</a> <a id="1633" class="Symbol">:</a> <a id="1635" href="Agda.Primitive.html#408" class="Postulate">Level</a><a id="1640" class="Symbol">)</a>
  <a id="1644" class="Symbol">→</a> <a id="1646" class="PrimitiveType">Set</a> <a id="1650" class="Symbol">(</a><a id="1651" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="1656" href="Intro.html#1631" class="Bound">ℓ</a><a id="1657" class="Symbol">)</a>

<a id="1660" href="Intro.html#1621" class="Function">Type</a> <a id="1665" href="Intro.html#1665" class="Bound">ℓ</a> <a id="1667" class="Symbol">=</a> <a id="1669" class="PrimitiveType">Set</a> <a id="1673" href="Intro.html#1665" class="Bound">ℓ</a>
</pre>

<pre class="Agda">
<a id="Type₀"></a><a id="1700" href="Intro.html#1700" class="Function">Type₀</a>
  <a id="1708" class="Symbol">:</a> <a id="1710" href="Intro.html#1621" class="Function">Type</a> <a id="1715" class="Symbol">(</a><a id="1716" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="1721" href="Agda.Primitive.html#611" class="Primitive">lzero</a><a id="1726" class="Symbol">)</a>

<a id="1729" href="Intro.html#1700" class="Function">Type₀</a> <a id="1735" class="Symbol">=</a> <a id="1737" href="Intro.html#1621" class="Function">Type</a> <a id="1742" href="Agda.Primitive.html#611" class="Primitive">lzero</a>
</pre>

<pre class="Agda">
<a id="1773" class="Keyword">record</a>
  <a id="↑"></a><a id="1782" href="Intro.html#1782" class="Record">↑</a> <a id="1784" class="Symbol">{</a><a id="1785" href="Intro.html#1785" class="Bound">a</a> <a id="1787" class="Symbol">:</a> <a id="1789" href="Agda.Primitive.html#408" class="Postulate">Level</a><a id="1794" class="Symbol">}</a> <a id="1796" href="Intro.html#1796" class="Bound">ℓ</a> <a id="1798" class="Symbol">(</a><a id="1799" href="Intro.html#1799" class="Bound">A</a> <a id="1801" class="Symbol">:</a> <a id="1803" href="Intro.html#1621" class="Function">Type</a> <a id="1808" href="Intro.html#1785" class="Bound">a</a><a id="1809" class="Symbol">)</a>
    <a id="1815" class="Symbol">:</a> <a id="1817" href="Intro.html#1621" class="Function">Type</a> <a id="1822" class="Symbol">(</a><a id="1823" href="Intro.html#1785" class="Bound">a</a> <a id="1825" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="1827" href="Intro.html#1796" class="Bound">ℓ</a><a id="1828" class="Symbol">)</a>
  <a id="1832" class="Keyword">where</a>
  <a id="1840" class="Keyword">constructor</a> <a id="↑.Lift"></a><a id="1852" href="Intro.html#1852" class="InductiveConstructor">Lift</a>
  <a id="1859" class="Keyword">field</a>
    <a id="↑.lower"></a><a id="1869" href="Intro.html#1869" class="Field">lower</a> <a id="1875" class="Symbol">:</a> <a id="1877" href="Intro.html#1799" class="Bound">A</a>

<a id="1880" class="Keyword">open</a> <a id="1885" href="Intro.html#1782" class="Module">↑</a> <a id="1887" class="Keyword">public</a>
</pre>

We use the following variables along to simplify the typing. Be aware these
variables are implicit variables hidden in the types.

<pre class="Agda">
<a id="2050" class="Keyword">variable</a>
  <a id="2061" href="Intro.html#2061" class="Generalizable">ℓ</a> <a id="2063" href="Intro.html#2063" class="Generalizable">ℓᵢ</a> <a id="2066" href="Intro.html#2066" class="Generalizable">ℓⱼ</a> <a id="2069" href="Intro.html#2069" class="Generalizable">ℓₖ</a> <a id="2072" class="Symbol">:</a> <a id="2074" href="Agda.Primitive.html#408" class="Postulate">Level</a>
</pre>
