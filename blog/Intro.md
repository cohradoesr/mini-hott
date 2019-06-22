---
layout: page
title: "Introduction"
toc: true
agda: true
gallery: true
latex: true
references: false
linkify: true
showcitation: true
---

This is a library for Univalent Type Theory in `Agda` developed at [University
of Bergen](https://www.uib.no/). No other libraries are required to type-check
it. To ease its adoption, we have included synonyms and syntax sugar for types,
lemmas, and theorems. Regarding performance, we recommend to see the library
`HoTT-Agda`. This development was based on others in its initial stage, so
please see the references at the end.

# Installation

- Install [Agda (v2.6.0+)](http://github.com/agda/agda)

- Clone this repository [http://github.com/jonaprieto/mini-hott](http://github.com/jonaprieto/mini-hott)

  - `git clone http://github.com/jonaprieto/mini-hott`

- Install the library in `~/.agda` or use [agda-pkg](http://github.com/agda/agda-pkg) as follows:

  - `pip install agda-pkg`
  - `apkg install mini-hott`

- Use the library by including the import at the top of your source code:

    - `open import MiniHoTT`

# Code

## Proof relevancy

![path](/assets/png-images/mini-hott.jpeg){: width="150px" align="right" style="padding:5px"}

To be consistent with univalent type theory, we tell `Agda` to not use *Axiom K*
for type-checking by using the option `without-K`.

<pre class="Agda">
<a id="1347" class="Symbol">{-#</a> <a id="1351" class="Keyword">OPTIONS</a> <a id="1359" class="Pragma">--without-K</a> <a id="1371" class="Symbol">#-}</a>
</pre>

Without Axiom K, `Agda`'s `Set` is not a good name for universes in HoTT. So, we
rename `Set` to `Type`. Our type judgments then will include the universe level
as one explicit argument.

<pre class="Agda">
<a id="1588" class="Keyword">open</a> <a id="1593" class="Keyword">import</a> <a id="1600" href="Agda.Primitive.html" class="Module">Agda.Primitive</a> <a id="1615" class="Keyword">using</a> <a id="1621" class="Symbol">(</a> <a id="1623" href="Agda.Primitive.html#408" class="Postulate">Level</a> <a id="1629" class="Symbol">;</a> <a id="1631" href="Agda.Primitive.html#627" class="Primitive">lsuc</a><a id="1635" class="Symbol">;</a> <a id="1637" href="Agda.Primitive.html#611" class="Primitive">lzero</a><a id="1642" class="Symbol">;</a> <a id="1644" href="Agda.Primitive.html#657" class="Primitive Operator">_⊔_</a> <a id="1648" class="Symbol">)</a> <a id="1650" class="Keyword">public</a>
</pre>

Note that `l ⊔ q` is the maximum of two hierarchy levels `l` and `q` and we
use this later on to define types in full generality.

<pre class="Agda">
<a id="Type"></a><a id="1813" href="Intro.html#1813" class="Function">Type</a>
  <a id="1820" class="Symbol">:</a> <a id="1822" class="Symbol">(</a><a id="1823" href="Intro.html#1823" class="Bound">ℓ</a> <a id="1825" class="Symbol">:</a> <a id="1827" href="Agda.Primitive.html#408" class="Postulate">Level</a><a id="1832" class="Symbol">)</a>
  <a id="1836" class="Symbol">→</a> <a id="1838" class="PrimitiveType">Set</a> <a id="1842" class="Symbol">(</a><a id="1843" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="1848" href="Intro.html#1823" class="Bound">ℓ</a><a id="1849" class="Symbol">)</a>

<a id="1852" href="Intro.html#1813" class="Function">Type</a> <a id="1857" href="Intro.html#1857" class="Bound">ℓ</a> <a id="1859" class="Symbol">=</a> <a id="1861" class="PrimitiveType">Set</a> <a id="1865" href="Intro.html#1857" class="Bound">ℓ</a>
</pre>

<pre class="Agda">
<a id="Type₀"></a><a id="1892" href="Intro.html#1892" class="Function">Type₀</a>
  <a id="1900" class="Symbol">:</a> <a id="1902" href="Intro.html#1813" class="Function">Type</a> <a id="1907" class="Symbol">(</a><a id="1908" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="1913" href="Agda.Primitive.html#611" class="Primitive">lzero</a><a id="1918" class="Symbol">)</a>

<a id="1921" href="Intro.html#1892" class="Function">Type₀</a> <a id="1927" class="Symbol">=</a> <a id="1929" href="Intro.html#1813" class="Function">Type</a> <a id="1934" href="Agda.Primitive.html#611" class="Primitive">lzero</a>
</pre>

<pre class="Agda">
<a id="1965" class="Keyword">record</a>
  <a id="↑"></a><a id="1974" href="Intro.html#1974" class="Record">↑</a> <a id="1976" class="Symbol">{</a><a id="1977" href="Intro.html#1977" class="Bound">a</a> <a id="1979" class="Symbol">:</a> <a id="1981" href="Agda.Primitive.html#408" class="Postulate">Level</a><a id="1986" class="Symbol">}</a> <a id="1988" href="Intro.html#1988" class="Bound">ℓ</a> <a id="1990" class="Symbol">(</a><a id="1991" href="Intro.html#1991" class="Bound">A</a> <a id="1993" class="Symbol">:</a> <a id="1995" href="Intro.html#1813" class="Function">Type</a> <a id="2000" href="Intro.html#1977" class="Bound">a</a><a id="2001" class="Symbol">)</a>
    <a id="2007" class="Symbol">:</a> <a id="2009" href="Intro.html#1813" class="Function">Type</a> <a id="2014" class="Symbol">(</a><a id="2015" href="Intro.html#1977" class="Bound">a</a> <a id="2017" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="2019" href="Intro.html#1988" class="Bound">ℓ</a><a id="2020" class="Symbol">)</a>
  <a id="2024" class="Keyword">where</a>
  <a id="2032" class="Keyword">constructor</a> <a id="↑.Lift"></a><a id="2044" href="Intro.html#2044" class="InductiveConstructor">Lift</a>
  <a id="2051" class="Keyword">field</a>
    <a id="↑.lower"></a><a id="2061" href="Intro.html#2061" class="Field">lower</a> <a id="2067" class="Symbol">:</a> <a id="2069" href="Intro.html#1991" class="Bound">A</a>

<a id="2072" class="Keyword">open</a> <a id="2077" href="Intro.html#1974" class="Module">↑</a> <a id="2079" class="Keyword">public</a>
</pre>

We use the following variables along to simplify the typing. Be aware these
variables are implicit variables hidden in the types.

<pre class="Agda">
<a id="2242" class="Keyword">variable</a>
  <a id="2253" href="Intro.html#2253" class="Generalizable">ℓ</a> <a id="2255" href="Intro.html#2255" class="Generalizable">ℓᵢ</a> <a id="2258" href="Intro.html#2258" class="Generalizable">ℓⱼ</a> <a id="2261" href="Intro.html#2261" class="Generalizable">ℓₖ</a> <a id="2264" class="Symbol">:</a> <a id="2266" href="Agda.Primitive.html#408" class="Postulate">Level</a>
</pre>
