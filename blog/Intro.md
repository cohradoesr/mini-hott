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

This is a library to learn Univalent Type Theory in [Agda](http://github.com/agda/agda).
It's been developing at [University of Bergen](https://www.uib.no/) in the Programming Theory Research Group
of the department of informatics.

No other libraries are required to use this Agda library. To ease its adoption, we have included synonyms
and syntax sugar for types, lemmas, and theorems. Naming things and remember them has always been a hassle.
We think all the synomyms included aliviate this issue. Regarding performance, we would recommend you another option, maybe
`HoTT-Agda` library. As with any other work, please see the references at the end, which they
might contain better explanation of our exposition.

# Code

## Installation

- Install [Agda (v2.6.0+)](http://github.com/agda/agda)

- Clone this repository [http://github.com/jonaprieto/mini-hott](http://github.com/jonaprieto/mini-hott) with:

  - `git clone http://github.com/jonaprieto/mini-hott`

- Or install the library in `~/.agda` or even better, use [agda-pkg](http://github.com/agda/agda-pkg)
as follows:

  - `pip install agda-pkg`
  - `apkg install mini-hott`

- Use the library by including the following import at the top of your source code:

    - `open import MiniHoTT`

## Style

Definitions and theorems are typed with unicode characteres, we believe they
improve significantly its readability. Very often, we present them as rule
inferences (with hyphens), to denote after the line the main conclusion or the output.

```
termName
  :  {...} {t1 : type1}
  → (t2 : type2)
  → ...
  ---------------------
  → ... (t1 t2) → ... 
```

On the website, we often collapse the term definitions but if you are interested on these,
you can expand them by clicking on their types.

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

![path](/assets/png-images/mini-hott.jpeg){: width="150px" align="right" style="padding:5px"}

To be consistent with univalent type theory, we tell `Agda` to not use *Axiom K*
for type-checking by using the option `without-K`.

<pre class="Agda">
<a id="2285" class="Symbol">{-#</a> <a id="2289" class="Keyword">OPTIONS</a> <a id="2297" class="Pragma">--without-K</a> <a id="2309" class="Symbol">#-}</a>
</pre>

In addition, without Axiom K, `Agda`'s `Set` is not a good name for universes in HoTT. So, we
rename `Set` to `Type`. Our type judgments then will include the universe level
as one explicit argument.

<pre class="Agda">
<a id="2539" class="Keyword">open</a> <a id="2544" class="Keyword">import</a> <a id="2551" href="Agda.Primitive.html" class="Module">Agda.Primitive</a>
  <a id="2568" class="Keyword">using</a> <a id="2574" class="Symbol">(</a> <a id="2576" href="Agda.Primitive.html#408" class="Postulate">Level</a> <a id="2582" class="Symbol">;</a> <a id="2584" href="Agda.Primitive.html#627" class="Primitive">lsuc</a><a id="2588" class="Symbol">;</a> <a id="2590" href="Agda.Primitive.html#611" class="Primitive">lzero</a><a id="2595" class="Symbol">;</a> <a id="2597" href="Agda.Primitive.html#657" class="Primitive Operator">_⊔_</a> <a id="2601" class="Symbol">)</a> <a id="2603" class="Keyword">public</a>
</pre>

Note that `l ⊔ q` is the maximum of two hierarchy levels `l` and `q` and we
use this later on to define types in full generality.

<pre class="Agda">
<a id="Type"></a><a id="2766" href="Intro.html#2766" class="Function">Type</a>
  <a id="2773" class="Symbol">:</a> <a id="2775" class="Symbol">(</a><a id="2776" href="Intro.html#2776" class="Bound">ℓ</a> <a id="2778" class="Symbol">:</a> <a id="2780" href="Agda.Primitive.html#408" class="Postulate">Level</a><a id="2785" class="Symbol">)</a>
  <a id="2789" class="Symbol">→</a> <a id="2791" class="PrimitiveType">Set</a> <a id="2795" class="Symbol">(</a><a id="2796" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="2801" href="Intro.html#2776" class="Bound">ℓ</a><a id="2802" class="Symbol">)</a>

<a id="2805" href="Intro.html#2766" class="Function">Type</a> <a id="2810" href="Intro.html#2810" class="Bound">ℓ</a> <a id="2812" class="Symbol">=</a> <a id="2814" class="PrimitiveType">Set</a> <a id="2818" href="Intro.html#2810" class="Bound">ℓ</a>
</pre>

<pre class="Agda">
<a id="Type₀"></a><a id="2845" href="Intro.html#2845" class="Function">Type₀</a>
  <a id="2853" class="Symbol">:</a> <a id="2855" href="Intro.html#2766" class="Function">Type</a> <a id="2860" class="Symbol">(</a><a id="2861" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="2866" href="Agda.Primitive.html#611" class="Primitive">lzero</a><a id="2871" class="Symbol">)</a>

<a id="2874" href="Intro.html#2845" class="Function">Type₀</a> <a id="2880" class="Symbol">=</a> <a id="2882" href="Intro.html#2766" class="Function">Type</a> <a id="2887" href="Agda.Primitive.html#611" class="Primitive">lzero</a>
</pre>

The following type is to lift a type to a higher universe.

<pre class="Agda">
<a id="2978" class="Keyword">record</a>
  <a id="↑"></a><a id="2987" href="Intro.html#2987" class="Record">↑</a> <a id="2989" class="Symbol">{</a><a id="2990" href="Intro.html#2990" class="Bound">a</a> <a id="2992" class="Symbol">:</a> <a id="2994" href="Agda.Primitive.html#408" class="Postulate">Level</a><a id="2999" class="Symbol">}</a> <a id="3001" href="Intro.html#3001" class="Bound">ℓ</a> <a id="3003" class="Symbol">(</a><a id="3004" href="Intro.html#3004" class="Bound">A</a> <a id="3006" class="Symbol">:</a> <a id="3008" href="Intro.html#2766" class="Function">Type</a> <a id="3013" href="Intro.html#2990" class="Bound">a</a><a id="3014" class="Symbol">)</a>
    <a id="3020" class="Symbol">:</a> <a id="3022" href="Intro.html#2766" class="Function">Type</a> <a id="3027" class="Symbol">(</a><a id="3028" href="Intro.html#2990" class="Bound">a</a> <a id="3030" href="Agda.Primitive.html#657" class="Primitive Operator">⊔</a> <a id="3032" href="Intro.html#3001" class="Bound">ℓ</a><a id="3033" class="Symbol">)</a>
  <a id="3037" class="Keyword">where</a>
  <a id="3045" class="Keyword">constructor</a> <a id="↑.Lift"></a><a id="3057" href="Intro.html#3057" class="InductiveConstructor">Lift</a>
  <a id="3064" class="Keyword">field</a>
    <a id="↑.lower"></a><a id="3074" href="Intro.html#3074" class="Field">lower</a> <a id="3080" class="Symbol">:</a> <a id="3082" href="Intro.html#3004" class="Bound">A</a>

<a id="3085" class="Keyword">open</a> <a id="3090" href="Intro.html#2987" class="Module">↑</a> <a id="3092" class="Keyword">public</a>
</pre>

Since `Agda v2.6.0`, it is possible to use *global* variables
to simplify the typing. These kind of variables are implicit and
included in every single type definition that comes below unless
other are stated.

<pre class="Agda">
<a id="3335" class="Keyword">variable</a>
  <a id="3346" href="Intro.html#3346" class="Generalizable">ℓ</a> <a id="3348" href="Intro.html#3348" class="Generalizable">ℓᵢ</a> <a id="3351" href="Intro.html#3351" class="Generalizable">ℓⱼ</a> <a id="3354" href="Intro.html#3354" class="Generalizable">ℓₖ</a> <a id="3357" class="Symbol">:</a> <a id="3359" href="Agda.Primitive.html#408" class="Postulate">Level</a>
</pre>
