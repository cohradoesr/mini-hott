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

![path](/assets/png-images/mini-hott.jpeg){: width="150px" align="right" style="padding:5px"}

This is a library for Univalent Type Theory in
[Agda](http://github.com/agda/agda) developed at [University of
Bergen](https://www.uib.no/) in the Programming Theory Research Group of the
department of informatics.

No other libraries are required to use this `Agda` library. To ease its adoption,
we have included synonyms and syntax sugar for types, lemmas, and theorems.
Because naming things and remember names is difficult, we think all the
synonyms included will alleviate this issue. Regarding performance, we would
recommend you another option, maybe `HoTT-Agda` library. As with any other work,
please see the references at the end, which they might contain better
explanation of our exposition.

# Code

## Installation

- Install [Agda (v2.6.0+)](http://github.com/agda/agda)

- Clone this repository [http://github.com/jonaprieto/mini-hott](http://github.com/jonaprieto/mini-hott) with:

  - `git clone http://github.com/jonaprieto/mini-hott`

- Or install the library in `~/.agda` or even better, use [agda-pkg](http://github.com/agda/agda-pkg)
as follows:

  - `pip install agda-pkg`
  - `apkg install mini-hott` (not indexed at the moment until it's more stable)

- Use the library by including the following import at the top of your source code:

    - `open import MiniHoTT`

## Style

Definitions and theorems are typed with unicode characters, we believe they
improve significantly the readability. We usually present lemmas and theorems as
rule inferences as in the following example.

```
termName
  :  {...} {t1 : type1}
  → (t2 : type2)
  → ...
  ---------------------
  → ... (t1 t2) → ...
```

On the website, we show the type for each term and the term definition is
collapsed. However, you can expand them by clicking on the code boxes (this
requires Javascript).

```
termName = definition
  where
  helper1 : ...
  helper2 = def...
```

Infix precedence:

```
infix X termName
```

## Proof relevancy

To be consistent with Univalent Type Theory, we tell `Agda` to not use *Axiom K*
for type-checking by using the option `without-K`.

<pre class="Agda">
<a id="2312" class="Symbol">{-#</a> <a id="2316" class="Keyword">OPTIONS</a> <a id="2324" class="Pragma">--without-K</a> <a id="2336" class="Symbol">#-}</a>
</pre>

In addition, without Axiom K, `Agda`'s `Set` is not a good name for universes in HoTT. So, we
rename `Set` to `Type`. Our type judgments then will include the universe level
as one explicit argument.

<pre class="Agda">
<a id="2566" class="Keyword">open</a> <a id="2571" class="Keyword">import</a> <a id="2578" href="Agda.Primitive.html" class="Module">Agda.Primitive</a>
  <a id="2595" class="Keyword">using</a> <a id="2601" class="Symbol">(</a> <a id="2603" href="Agda.Primitive.html#408" class="Postulate">Level</a> <a id="2609" class="Symbol">;</a> <a id="2611" href="Agda.Primitive.html#627" class="Primitive">lsuc</a><a id="2615" class="Symbol">;</a> <a id="2617" href="Agda.Primitive.html#611" class="Primitive">lzero</a><a id="2622" class="Symbol">;</a> <a id="2624" href="Agda.Primitive.html#657" class="Primitive Operator">_⊔_</a> <a id="2628" class="Symbol">)</a> <a id="2630" class="Keyword">public</a>
</pre>

Note that `l ⊔ q` is the maximum of two hierarchy levels `l` and `q` and we
use this later on to define types in full generality.

<pre class="Agda">
<a id="Type"></a><a id="2793" href="Intro.html#2793" class="Function">Type</a>
  <a id="2800" class="Symbol">:</a> <a id="2802" class="Symbol">(</a><a id="2803" href="Intro.html#2803" class="Bound">ℓ</a> <a id="2805" class="Symbol">:</a> <a id="2807" href="Agda.Primitive.html#408" class="Postulate">Level</a><a id="2812" class="Symbol">)</a>
  <a id="2816" class="Symbol">→</a> <a id="2818" class="PrimitiveType">Set</a> <a id="2822" class="Symbol">(</a><a id="2823" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="2828" href="Intro.html#2803" class="Bound">ℓ</a><a id="2829" class="Symbol">)</a>

<a id="2832" href="Intro.html#2793" class="Function">Type</a> <a id="2837" href="Intro.html#2837" class="Bound">ℓ</a> <a id="2839" class="Symbol">=</a> <a id="2841" class="PrimitiveType">Set</a> <a id="2845" href="Intro.html#2837" class="Bound">ℓ</a>
</pre>

<pre class="Agda">
<a id="Type₀"></a><a id="2872" href="Intro.html#2872" class="Function">Type₀</a>
  <a id="2880" class="Symbol">:</a> <a id="2882" href="Intro.html#2793" class="Function">Type</a> <a id="2887" class="Symbol">(</a><a id="2888" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="2893" href="Agda.Primitive.html#611" class="Primitive">lzero</a><a id="2898" class="Symbol">)</a>

<a id="2901" href="Intro.html#2872" class="Function">Type₀</a> <a id="2907" class="Symbol">=</a> <a id="2909" href="Intro.html#2793" class="Function">Type</a> <a id="2914" href="Agda.Primitive.html#611" class="Primitive">lzero</a>
</pre>

The following type is to lift a type to a higher universe.

<pre class="Agda">
<a id="3005" class="Keyword">record</a>
  <a id="↑"></a><a id="3014" href="Intro.html#3014" class="Record">↑</a> <a id="3016" class="Symbol">{</a><a id="3017" href="Intro.html#3017" class="Bound">a</a> <a id="3019" class="Symbol">:</a> <a id="3021" href="Agda.Primitive.html#408" class="Postulate">Level</a><a id="3026" class="Symbol">}</a> <a id="3028" href="Intro.html#3028" class="Bound">ℓ</a> <a id="3030" class="Symbol">(</a><a id="3031" href="Intro.html#3031" class="Bound">A</a> <a id="3033" class="Symbol">:</a> <a id="3035" href="Intro.html#2793" class="Function">Type</a> <a id="3040" href="Intro.html#3017" class="Bound">a</a><a id="3041" class="Symbol">)</a>
    <a id="3047" class="Symbol">:</a> <a id="3049" href="Intro.html#2793" class="Function">Type</a> <a id="3054" class="Symbol">(</a><a id="3055" href="Intro.html#3017" class="Bound">a</a> <a id="3057" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="3059" href="Intro.html#3028" class="Bound">ℓ</a><a id="3060" class="Symbol">)</a>
  <a id="3064" class="Keyword">where</a>
  <a id="3072" class="Keyword">constructor</a> <a id="↑.Lift"></a><a id="3084" href="Intro.html#3084" class="InductiveConstructor">Lift</a>
  <a id="3091" class="Keyword">field</a>
    <a id="↑.lower"></a><a id="3101" href="Intro.html#3101" class="Field">lower</a> <a id="3107" class="Symbol">:</a> <a id="3109" href="Intro.html#3031" class="Bound">A</a>

<a id="3112" class="Keyword">open</a> <a id="3117" href="Intro.html#3014" class="Module">↑</a> <a id="3119" class="Keyword">public</a>
</pre>

Since `Agda v2.6.0`, it is possible to use *global* variables
to simplify the typing. These kind of variables are implicit and
included in every single type definition that comes below unless
other are stated.

<pre class="Agda">
<a id="3362" class="Keyword">variable</a>
  <a id="3373" href="Intro.html#3373" class="Generalizable">ℓ</a> <a id="3375" href="Intro.html#3375" class="Generalizable">ℓᵢ</a> <a id="3378" href="Intro.html#3378" class="Generalizable">ℓⱼ</a> <a id="3381" href="Intro.html#3381" class="Generalizable">ℓₖ</a> <a id="3384" class="Symbol">:</a> <a id="3386" href="Agda.Primitive.html#408" class="Postulate">Level</a>
</pre>
