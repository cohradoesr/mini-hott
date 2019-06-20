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
of Bergen](https://www.uib.no/). No other libraries are required to type-check
it. To ease its adoption, we have included synonyms and syntax sugar for types,
lemmas, and theorems. Regarding performance, we recommend to see the library
`HoTT-Agda`. This development was based on others in its initial stage, so
please see the references at the end.

# Installation

- Install [Agda (v2.6.0+)](http://github.com/agda/agda)

- Clone this repository [http://github.com/jonaprieto/mini-hott](http://github.com/jonaprieto/mini-hott)

  - `git clone http://github.com/jonaprieto/mini-hott`

- Install the library or use [agda-pkg](http://github.com/agda/agda-pkg)

  - `pip install agda-pkg`
  - `apkg install mini-hott`

- Use the library by including the import:

    - `open import MiniHoTT`

# Code

## Proof relevancy

![path](/assets/png-images/mini-hott.jpeg){: width="150px" align="right" style="padding:5px"}

To be consistent with univalent type theory, we tell `Agda` to not use *Axiom K*
for type-checking by using the option `without-K`.

<pre class="Agda">
<a id="1291" class="Symbol">{-#</a> <a id="1295" class="Keyword">OPTIONS</a> <a id="1303" class="Pragma">--without-K</a> <a id="1315" class="Symbol">#-}</a>
</pre>

Without Axiom K, `Agda`'s `Set` is not a good name for universes in HoTT. So, we
rename `Set` to `Type`. Our type judgments then will include the universe level
as one explicit argument.

<pre class="Agda">
<a id="1532" class="Keyword">open</a> <a id="1537" class="Keyword">import</a> <a id="1544" href="Agda.Primitive.html" class="Module">Agda.Primitive</a> <a id="1559" class="Keyword">using</a> <a id="1565" class="Symbol">(</a> <a id="1567" href="Agda.Primitive.html#408" class="Postulate">Level</a> <a id="1573" class="Symbol">;</a> <a id="1575" href="Agda.Primitive.html#627" class="Primitive">lsuc</a><a id="1579" class="Symbol">;</a> <a id="1581" href="Agda.Primitive.html#611" class="Primitive">lzero</a><a id="1586" class="Symbol">;</a> <a id="1588" href="Agda.Primitive.html#657" class="Primitive Operator">_⊔_</a> <a id="1592" class="Symbol">)</a> <a id="1594" class="Keyword">public</a>
</pre>

Note that `l ⊔ q` is the maximum of two hierarchy levels `l` and `q` and we
use this later on to define types in full generality.

<pre class="Agda">
<a id="Type"></a><a id="1757" href="Intro.html#1757" class="Function">Type</a>
  <a id="1764" class="Symbol">:</a> <a id="1766" class="Symbol">(</a><a id="1767" href="Intro.html#1767" class="Bound">ℓ</a> <a id="1769" class="Symbol">:</a> <a id="1771" href="Agda.Primitive.html#408" class="Postulate">Level</a><a id="1776" class="Symbol">)</a>
  <a id="1780" class="Symbol">→</a> <a id="1782" class="PrimitiveType">Set</a> <a id="1786" class="Symbol">(</a><a id="1787" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="1792" href="Intro.html#1767" class="Bound">ℓ</a><a id="1793" class="Symbol">)</a>

<a id="1796" href="Intro.html#1757" class="Function">Type</a> <a id="1801" href="Intro.html#1801" class="Bound">ℓ</a> <a id="1803" class="Symbol">=</a> <a id="1805" class="PrimitiveType">Set</a> <a id="1809" href="Intro.html#1801" class="Bound">ℓ</a>
</pre>

<pre class="Agda">
<a id="Type₀"></a><a id="1836" href="Intro.html#1836" class="Function">Type₀</a>
  <a id="1844" class="Symbol">:</a> <a id="1846" href="Intro.html#1757" class="Function">Type</a> <a id="1851" class="Symbol">(</a><a id="1852" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="1857" href="Agda.Primitive.html#611" class="Primitive">lzero</a><a id="1862" class="Symbol">)</a>

<a id="1865" href="Intro.html#1836" class="Function">Type₀</a> <a id="1871" class="Symbol">=</a> <a id="1873" href="Intro.html#1757" class="Function">Type</a> <a id="1878" href="Agda.Primitive.html#611" class="Primitive">lzero</a>
</pre>

<pre class="Agda">
<a id="1909" class="Keyword">record</a>
  <a id="↑"></a><a id="1918" href="Intro.html#1918" class="Record">↑</a> <a id="1920" class="Symbol">{</a><a id="1921" href="Intro.html#1921" class="Bound">a</a> <a id="1923" class="Symbol">:</a> <a id="1925" href="Agda.Primitive.html#408" class="Postulate">Level</a><a id="1930" class="Symbol">}</a> <a id="1932" href="Intro.html#1932" class="Bound">ℓ</a> <a id="1934" class="Symbol">(</a><a id="1935" href="Intro.html#1935" class="Bound">A</a> <a id="1937" class="Symbol">:</a> <a id="1939" href="Intro.html#1757" class="Function">Type</a> <a id="1944" href="Intro.html#1921" class="Bound">a</a><a id="1945" class="Symbol">)</a>
    <a id="1951" class="Symbol">:</a> <a id="1953" href="Intro.html#1757" class="Function">Type</a> <a id="1958" class="Symbol">(</a><a id="1959" href="Intro.html#1921" class="Bound">a</a> <a id="1961" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="1963" href="Intro.html#1932" class="Bound">ℓ</a><a id="1964" class="Symbol">)</a>
  <a id="1968" class="Keyword">where</a>
  <a id="1976" class="Keyword">constructor</a> <a id="↑.Lift"></a><a id="1988" href="Intro.html#1988" class="InductiveConstructor">Lift</a>
  <a id="1995" class="Keyword">field</a>
    <a id="↑.lower"></a><a id="2005" href="Intro.html#2005" class="Field">lower</a> <a id="2011" class="Symbol">:</a> <a id="2013" href="Intro.html#1935" class="Bound">A</a>

<a id="2016" class="Keyword">open</a> <a id="2021" href="Intro.html#1918" class="Module">↑</a> <a id="2023" class="Keyword">public</a>
</pre>

We use the following variables along to simplify the typing. Be aware these
variables are implicit variables hidden in the types.

<pre class="Agda">
<a id="2186" class="Keyword">variable</a>
  <a id="2197" href="Intro.html#2197" class="Generalizable">ℓ</a> <a id="2199" href="Intro.html#2199" class="Generalizable">ℓᵢ</a> <a id="2202" href="Intro.html#2202" class="Generalizable">ℓⱼ</a> <a id="2205" href="Intro.html#2205" class="Generalizable">ℓₖ</a> <a id="2208" class="Symbol">:</a> <a id="2210" href="Agda.Primitive.html#408" class="Postulate">Level</a>
</pre>
