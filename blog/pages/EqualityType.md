---
layout: page
title: "Identity type"
category: types
toc: true
agda: true
gallery: true
latex: true
references: true
linkify: true
showcitation: true
home: true
---

In HoTT, we have a different interpretation of type theory in which the
set-theoretical notion of *sets* for *types* is replaced by the topological
notion of *spaces*. A type judgment like `x : A` means that the point `x`‌‌ is
*in* the topological space `A`‌‌. Furthermore, we include the *Identity type* as
a primary type. The inhabitants of these identity types will not be longer
interpreted as *proofs of equalities* but as *paths* in a Path space, an
Identity type.

<div class="hide" >
<pre class="Agda">
<a id="675" class="Symbol">{-#</a> <a id="679" class="Keyword">OPTIONS</a> <a id="687" class="Pragma">--without-K</a> <a id="699" class="Symbol">#-}</a>
<a id="703" class="Keyword">open</a> <a id="708" class="Keyword">import</a> <a id="715" href="BasicTypes.html" class="Module">BasicTypes</a>     <a id="730" class="Keyword">public</a>
<a id="737" class="Keyword">open</a> <a id="742" class="Keyword">import</a> <a id="749" href="BasicFunctions.html" class="Module">BasicFunctions</a> <a id="764" class="Keyword">public</a>
</pre>
</div>

### Homogeneous equality

The Identity type is defined as an inductive type. Its induction principle is
the J-eliminator.

<pre class="Agda">
<a id="926" class="Keyword">data</a> <a id="_==_"></a><a id="931" href="EqualityType.html#931" class="Datatype Operator">_==_</a> <a id="936" class="Symbol">{</a><a id="937" href="EqualityType.html#937" class="Bound">ℓᵢ</a><a id="939" class="Symbol">}</a> <a id="941" class="Symbol">{</a><a id="942" href="EqualityType.html#942" class="Bound">A</a> <a id="944" class="Symbol">:</a> <a id="946" href="Intro.html#1442" class="Function">Type</a> <a id="951" href="EqualityType.html#937" class="Bound">ℓᵢ</a><a id="953" class="Symbol">}</a> <a id="955" class="Symbol">(</a><a id="956" href="EqualityType.html#956" class="Bound">a</a> <a id="958" class="Symbol">:</a> <a id="960" href="EqualityType.html#942" class="Bound">A</a><a id="961" class="Symbol">)</a> <a id="963" class="Symbol">:</a> <a id="965" href="EqualityType.html#942" class="Bound">A</a> <a id="967" class="Symbol">→</a> <a id="969" href="Intro.html#1442" class="Function">Type</a> <a id="974" href="EqualityType.html#937" class="Bound">ℓᵢ</a> <a id="977" class="Keyword">where</a>
  <a id="_==_.idp"></a><a id="985" href="EqualityType.html#985" class="InductiveConstructor">idp</a> <a id="989" class="Symbol">:</a> <a id="991" href="EqualityType.html#956" class="Bound">a</a> <a id="993" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="996" href="EqualityType.html#956" class="Bound">a</a>

<a id="999" class="Keyword">infix</a> <a id="1005" class="Number">30</a> <a id="1008" href="EqualityType.html#931" class="Datatype Operator">_==_</a>
<a id="1013" class="Symbol">{-#</a> <a id="1017" class="Keyword">BUILTIN</a> <a id="1025" class="Pragma">EQUALITY</a> <a id="1034" href="EqualityType.html#931" class="Datatype Operator">_==_</a> <a id="1039" class="Symbol">#-}</a>

<a id="1044" class="Comment">-- synonyms for identity type</a>
<a id="Path"></a><a id="1074" href="EqualityType.html#1074" class="Function">Path</a> <a id="1079" class="Symbol">=</a> <a id="1081" href="EqualityType.html#931" class="Datatype Operator">_==_</a>
</pre>

<pre class="Agda">
<a id="refl"></a><a id="1111" href="EqualityType.html#1111" class="Function">refl</a>
  <a id="1118" class="Symbol">:</a> <a id="1120" class="Symbol">∀</a> <a id="1122" class="Symbol">{</a><a id="1123" href="EqualityType.html#1123" class="Bound">ℓᵢ</a><a id="1125" class="Symbol">}</a> <a id="1127" class="Symbol">{</a><a id="1128" href="EqualityType.html#1128" class="Bound">A</a> <a id="1130" class="Symbol">:</a> <a id="1132" href="Intro.html#1442" class="Function">Type</a> <a id="1137" href="EqualityType.html#1123" class="Bound">ℓᵢ</a><a id="1139" class="Symbol">}</a>
  <a id="1143" class="Symbol">→</a> <a id="1145" class="Symbol">(</a><a id="1146" href="EqualityType.html#1146" class="Bound">a</a> <a id="1148" class="Symbol">:</a> <a id="1150" href="EqualityType.html#1128" class="Bound">A</a><a id="1151" class="Symbol">)</a>
  <a id="1155" class="Comment">---------</a>
  <a id="1167" class="Symbol">→</a> <a id="1169" href="EqualityType.html#1146" class="Bound">a</a> <a id="1171" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="1174" href="EqualityType.html#1146" class="Bound">a</a>

<a id="1177" href="EqualityType.html#1111" class="Function">refl</a> <a id="1182" class="Symbol">{</a><a id="1183" href="EqualityType.html#1183" class="Bound">ℓᵢ</a><a id="1185" class="Symbol">}{</a><a id="1187" href="EqualityType.html#1187" class="Bound">A</a><a id="1188" class="Symbol">}</a> <a id="1190" href="EqualityType.html#1190" class="Bound">a</a> <a id="1192" class="Symbol">=</a> <a id="1194" href="EqualityType.html#985" class="InductiveConstructor">idp</a> <a id="1198" class="Symbol">{</a><a id="1199" class="Argument">ℓᵢ</a> <a id="1202" class="Symbol">=</a> <a id="1204" href="EqualityType.html#1183" class="Bound">ℓᵢ</a><a id="1206" class="Symbol">}{</a><a id="1208" class="Argument">A</a> <a id="1210" class="Symbol">=</a> <a id="1212" href="EqualityType.html#1187" class="Bound">A</a><a id="1213" class="Symbol">}</a>
</pre>


Symmetry property

<pre class="Agda">
<a id="sym"></a><a id="1260" href="EqualityType.html#1260" class="Function">sym</a> <a id="1264" class="Symbol">:</a> <a id="1266" class="Symbol">∀</a> <a id="1268" class="Symbol">{</a><a id="1269" href="EqualityType.html#1269" class="Bound">ℓ</a><a id="1270" class="Symbol">}{</a><a id="1272" href="EqualityType.html#1272" class="Bound">A</a> <a id="1274" class="Symbol">:</a> <a id="1276" href="Intro.html#1442" class="Function">Type</a> <a id="1281" href="EqualityType.html#1269" class="Bound">ℓ</a><a id="1282" class="Symbol">}{</a><a id="1284" href="EqualityType.html#1284" class="Bound">x</a> <a id="1286" href="EqualityType.html#1286" class="Bound">y</a> <a id="1288" class="Symbol">:</a> <a id="1290" href="EqualityType.html#1272" class="Bound">A</a><a id="1291" class="Symbol">}</a> <a id="1293" class="Symbol">→</a> <a id="1295" href="EqualityType.html#1284" class="Bound">x</a> <a id="1297" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="1300" href="EqualityType.html#1286" class="Bound">y</a> <a id="1302" class="Symbol">→</a> <a id="1304" href="EqualityType.html#1286" class="Bound">y</a> <a id="1306" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="1309" href="EqualityType.html#1284" class="Bound">x</a>
<a id="1311" href="EqualityType.html#1260" class="Function">sym</a> <a id="1315" href="EqualityType.html#985" class="InductiveConstructor">idp</a> <a id="1319" class="Symbol">=</a> <a id="1321" href="EqualityType.html#985" class="InductiveConstructor">idp</a>
</pre>

#### J eliminator

The elimination principle for the identity type is the path induction. It allows
us to define an outgoing function from the identity type to a dependent type ‌‌
as we see in the `J` definition below.

*Paulin-Mohring J rule*

{: .foldable until="6" }
<pre class="Agda">
<a id="J"></a><a id="1620" href="EqualityType.html#1620" class="Function">J</a>
  <a id="1624" class="Symbol">:</a> <a id="1626" class="Symbol">∀</a> <a id="1628" class="Symbol">{</a><a id="1629" href="EqualityType.html#1629" class="Bound">ℓᵢ</a> <a id="1632" href="EqualityType.html#1632" class="Bound">ℓⱼ</a><a id="1634" class="Symbol">}</a> <a id="1636" class="Symbol">{</a><a id="1637" href="EqualityType.html#1637" class="Bound">A</a> <a id="1639" class="Symbol">:</a> <a id="1641" href="Intro.html#1442" class="Function">Type</a> <a id="1646" href="EqualityType.html#1629" class="Bound">ℓᵢ</a><a id="1648" class="Symbol">}</a> <a id="1650" class="Symbol">{</a><a id="1651" href="EqualityType.html#1651" class="Bound">a</a> <a id="1653" class="Symbol">:</a> <a id="1655" href="EqualityType.html#1637" class="Bound">A</a><a id="1656" class="Symbol">}</a>
  <a id="1660" class="Symbol">→</a> <a id="1662" class="Symbol">(</a><a id="1663" href="EqualityType.html#1663" class="Bound">B</a> <a id="1665" class="Symbol">:</a> <a id="1667" class="Symbol">(</a><a id="1668" href="EqualityType.html#1668" class="Bound">a&#39;</a> <a id="1671" class="Symbol">:</a> <a id="1673" href="EqualityType.html#1637" class="Bound">A</a><a id="1674" class="Symbol">)</a> <a id="1676" class="Symbol">(</a><a id="1677" href="EqualityType.html#1677" class="Bound">p</a> <a id="1679" class="Symbol">:</a> <a id="1681" href="EqualityType.html#1651" class="Bound">a</a> <a id="1683" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="1686" href="EqualityType.html#1668" class="Bound">a&#39;</a><a id="1688" class="Symbol">)</a> <a id="1690" class="Symbol">→</a> <a id="1692" href="Intro.html#1442" class="Function">Type</a> <a id="1697" href="EqualityType.html#1632" class="Bound">ℓⱼ</a><a id="1699" class="Symbol">)</a>
  <a id="1703" class="Symbol">→</a> <a id="1705" class="Symbol">(</a><a id="1706" href="EqualityType.html#1706" class="Bound">d</a> <a id="1708" class="Symbol">:</a> <a id="1710" href="EqualityType.html#1663" class="Bound">B</a> <a id="1712" href="EqualityType.html#1651" class="Bound">a</a> <a id="1714" href="EqualityType.html#985" class="InductiveConstructor">idp</a><a id="1717" class="Symbol">)</a>
  <a id="1721" class="Comment">----------------------------------------</a>
  <a id="1764" class="Symbol">→</a> <a id="1766" class="Symbol">{</a><a id="1767" href="EqualityType.html#1767" class="Bound">a&#39;</a> <a id="1770" class="Symbol">:</a> <a id="1772" href="EqualityType.html#1637" class="Bound">A</a><a id="1773" class="Symbol">}</a> <a id="1775" class="Symbol">(</a><a id="1776" href="EqualityType.html#1776" class="Bound">p</a> <a id="1778" class="Symbol">:</a> <a id="1780" href="EqualityType.html#1651" class="Bound">a</a> <a id="1782" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="1785" href="EqualityType.html#1767" class="Bound">a&#39;</a><a id="1787" class="Symbol">)</a> <a id="1789" class="Symbol">→</a> <a id="1791" href="EqualityType.html#1663" class="Bound">B</a> <a id="1793" href="EqualityType.html#1767" class="Bound">a&#39;</a> <a id="1796" href="EqualityType.html#1776" class="Bound">p</a>

<a id="1799" href="EqualityType.html#1620" class="Function">J</a> <a id="1801" class="Symbol">{</a><a id="1802" class="Argument">a</a> <a id="1804" class="Symbol">=</a> <a id="1806" href="EqualityType.html#1806" class="Bound">a</a><a id="1807" class="Symbol">}</a> <a id="1809" href="EqualityType.html#1809" class="Bound">B</a> <a id="1811" href="EqualityType.html#1811" class="Bound">d</a> <a id="1813" href="EqualityType.html#985" class="InductiveConstructor">idp</a> <a id="1817" class="Symbol">=</a> <a id="1819" href="EqualityType.html#1811" class="Bound">d</a>
</pre>

{: .foldable until="6" }
<pre class="Agda">
<a id="J&#39;"></a><a id="1871" href="EqualityType.html#1871" class="Function">J&#39;</a>
  <a id="1876" class="Symbol">:</a> <a id="1878" class="Symbol">∀</a> <a id="1880" class="Symbol">{</a><a id="1881" href="EqualityType.html#1881" class="Bound">ℓᵢ</a> <a id="1884" href="EqualityType.html#1884" class="Bound">ℓⱼ</a><a id="1886" class="Symbol">}</a> <a id="1888" class="Symbol">{</a><a id="1889" href="EqualityType.html#1889" class="Bound">A</a> <a id="1891" class="Symbol">:</a> <a id="1893" href="Intro.html#1442" class="Function">Type</a> <a id="1898" href="EqualityType.html#1881" class="Bound">ℓᵢ</a><a id="1900" class="Symbol">}</a> <a id="1902" class="Symbol">{</a><a id="1903" href="EqualityType.html#1903" class="Bound">a</a> <a id="1905" class="Symbol">:</a> <a id="1907" href="EqualityType.html#1889" class="Bound">A</a><a id="1908" class="Symbol">}</a>
  <a id="1912" class="Symbol">→</a> <a id="1914" class="Symbol">(</a><a id="1915" href="EqualityType.html#1915" class="Bound">B</a> <a id="1917" class="Symbol">:</a> <a id="1919" class="Symbol">(</a><a id="1920" href="EqualityType.html#1920" class="Bound">a&#39;</a> <a id="1923" class="Symbol">:</a> <a id="1925" href="EqualityType.html#1889" class="Bound">A</a><a id="1926" class="Symbol">)</a> <a id="1928" class="Symbol">(</a><a id="1929" href="EqualityType.html#1929" class="Bound">p</a> <a id="1931" class="Symbol">:</a> <a id="1933" href="EqualityType.html#1920" class="Bound">a&#39;</a> <a id="1936" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="1939" href="EqualityType.html#1903" class="Bound">a</a><a id="1940" class="Symbol">)</a> <a id="1942" class="Symbol">→</a> <a id="1944" href="Intro.html#1442" class="Function">Type</a> <a id="1949" href="EqualityType.html#1884" class="Bound">ℓⱼ</a><a id="1951" class="Symbol">)</a>
  <a id="1955" class="Symbol">→</a> <a id="1957" class="Symbol">(</a><a id="1958" href="EqualityType.html#1958" class="Bound">d</a> <a id="1960" class="Symbol">:</a> <a id="1962" href="EqualityType.html#1915" class="Bound">B</a> <a id="1964" href="EqualityType.html#1903" class="Bound">a</a> <a id="1966" href="EqualityType.html#985" class="InductiveConstructor">idp</a><a id="1969" class="Symbol">)</a>
  <a id="1973" class="Comment">----------------------------------------</a>
  <a id="2016" class="Symbol">→</a> <a id="2018" class="Symbol">{</a><a id="2019" href="EqualityType.html#2019" class="Bound">a&#39;</a> <a id="2022" class="Symbol">:</a> <a id="2024" href="EqualityType.html#1889" class="Bound">A</a><a id="2025" class="Symbol">}</a> <a id="2027" class="Symbol">(</a><a id="2028" href="EqualityType.html#2028" class="Bound">p</a> <a id="2030" class="Symbol">:</a> <a id="2032" href="EqualityType.html#2019" class="Bound">a&#39;</a> <a id="2035" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="2038" href="EqualityType.html#1903" class="Bound">a</a><a id="2039" class="Symbol">)</a> <a id="2041" class="Symbol">→</a> <a id="2043" href="EqualityType.html#1915" class="Bound">B</a> <a id="2045" href="EqualityType.html#2019" class="Bound">a&#39;</a> <a id="2048" href="EqualityType.html#2028" class="Bound">p</a>

<a id="2051" href="EqualityType.html#1871" class="Function">J&#39;</a> <a id="2054" class="Symbol">{</a><a id="2055" class="Argument">a</a> <a id="2057" class="Symbol">=</a> <a id="2059" href="EqualityType.html#2059" class="Bound">a</a><a id="2060" class="Symbol">}</a> <a id="2062" href="EqualityType.html#2062" class="Bound">B</a> <a id="2064" href="EqualityType.html#2064" class="Bound">d</a> <a id="2066" href="EqualityType.html#985" class="InductiveConstructor">idp</a> <a id="2070" class="Symbol">=</a> <a id="2072" href="EqualityType.html#2064" class="Bound">d</a>
</pre>

#### Composition of paths

{: .foldable until="6" }
<pre class="Agda">
<a id="_·_"></a><a id="2151" href="EqualityType.html#2151" class="Function Operator">_·_</a>
  <a id="2157" class="Symbol">:</a> <a id="2159" class="Symbol">∀</a> <a id="2161" class="Symbol">{</a><a id="2162" href="EqualityType.html#2162" class="Bound">ℓ</a><a id="2163" class="Symbol">}</a> <a id="2165" class="Symbol">{</a><a id="2166" href="EqualityType.html#2166" class="Bound">A</a> <a id="2168" class="Symbol">:</a> <a id="2170" href="Intro.html#1442" class="Function">Type</a> <a id="2175" href="EqualityType.html#2162" class="Bound">ℓ</a><a id="2176" class="Symbol">}</a> <a id="2178" class="Symbol">{</a><a id="2179" href="EqualityType.html#2179" class="Bound">x</a> <a id="2181" href="EqualityType.html#2181" class="Bound">y</a> <a id="2183" href="EqualityType.html#2183" class="Bound">z</a> <a id="2185" class="Symbol">:</a> <a id="2187" href="EqualityType.html#2166" class="Bound">A</a><a id="2188" class="Symbol">}</a>
  <a id="2192" class="Symbol">→</a> <a id="2194" class="Symbol">(</a><a id="2195" href="EqualityType.html#2195" class="Bound">p</a> <a id="2197" class="Symbol">:</a> <a id="2199" href="EqualityType.html#2179" class="Bound">x</a> <a id="2201" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="2204" href="EqualityType.html#2181" class="Bound">y</a><a id="2205" class="Symbol">)</a>
  <a id="2209" class="Symbol">→</a> <a id="2211" class="Symbol">(</a><a id="2212" href="EqualityType.html#2212" class="Bound">q</a> <a id="2214" class="Symbol">:</a> <a id="2216" href="EqualityType.html#2181" class="Bound">y</a> <a id="2218" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="2221" href="EqualityType.html#2183" class="Bound">z</a><a id="2222" class="Symbol">)</a>
  <a id="2226" class="Comment">--------------</a>
  <a id="2243" class="Symbol">→</a> <a id="2245" href="EqualityType.html#2179" class="Bound">x</a> <a id="2247" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="2250" href="EqualityType.html#2183" class="Bound">z</a>

<a id="2253" href="EqualityType.html#2151" class="Function Operator">_·_</a> <a id="2257" href="EqualityType.html#985" class="InductiveConstructor">idp</a> <a id="2261" href="EqualityType.html#2261" class="Bound">q</a> <a id="2263" class="Symbol">=</a> <a id="2265" href="EqualityType.html#2261" class="Bound">q</a>

<a id="2268" class="Keyword">infixl</a> <a id="2275" class="Number">50</a> <a id="2278" href="EqualityType.html#2151" class="Function Operator">_·_</a>
</pre>

![path](/assets/ipe-images/path-concatenation.png){: width="60%" align="right" }

#### Inverse of paths

<pre class="Agda">
<a id="inv"></a><a id="2412" href="EqualityType.html#2412" class="Function">inv</a>
  <a id="2418" class="Symbol">:</a> <a id="2420" class="Symbol">∀</a> <a id="2422" class="Symbol">{</a><a id="2423" href="EqualityType.html#2423" class="Bound">ℓ</a><a id="2424" class="Symbol">}</a> <a id="2426" class="Symbol">{</a><a id="2427" href="EqualityType.html#2427" class="Bound">A</a> <a id="2429" class="Symbol">:</a> <a id="2431" href="Intro.html#1442" class="Function">Type</a> <a id="2436" href="EqualityType.html#2423" class="Bound">ℓ</a><a id="2437" class="Symbol">}</a> <a id="2439" class="Symbol">{</a><a id="2440" href="EqualityType.html#2440" class="Bound">a</a> <a id="2442" href="EqualityType.html#2442" class="Bound">b</a> <a id="2444" class="Symbol">:</a> <a id="2446" href="EqualityType.html#2427" class="Bound">A</a><a id="2447" class="Symbol">}</a>
  <a id="2451" class="Symbol">→</a> <a id="2453" href="EqualityType.html#2440" class="Bound">a</a> <a id="2455" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="2458" href="EqualityType.html#2442" class="Bound">b</a>
  <a id="2462" class="Comment">--------</a>
  <a id="2473" class="Symbol">→</a> <a id="2475" href="EqualityType.html#2442" class="Bound">b</a> <a id="2477" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="2480" href="EqualityType.html#2440" class="Bound">a</a>

<a id="2483" href="EqualityType.html#2412" class="Function">inv</a> <a id="2487" href="EqualityType.html#985" class="InductiveConstructor">idp</a> <a id="2491" class="Symbol">=</a> <a id="2493" href="EqualityType.html#985" class="InductiveConstructor">idp</a>

<a id="2498" class="Comment">-- synonyms for inverse path</a>
<a id="2527" class="Keyword">infixl</a> <a id="2534" class="Number">60</a> <a id="2537" href="EqualityType.html#2541" class="Function Operator">_⁻¹</a>
<a id="_⁻¹"></a><a id="2541" href="EqualityType.html#2541" class="Function Operator">_⁻¹</a> <a id="2545" class="Symbol">=</a> <a id="2547" href="EqualityType.html#2412" class="Function">inv</a>

<a id="2552" class="Keyword">infixr</a> <a id="2559" class="Number">60</a> <a id="2562" href="EqualityType.html#2565" class="Function Operator">!_</a>
<a id="!_"></a><a id="2565" href="EqualityType.html#2565" class="Function Operator">!_</a>  <a id="2569" class="Symbol">=</a> <a id="2571" href="EqualityType.html#2412" class="Function">inv</a>
</pre>

#### Associativity of composition

- Left associativity

{: .foldable until="5" }
<pre class="Agda">
<a id="∘-lassoc"></a><a id="2682" href="EqualityType.html#2682" class="Function">∘-lassoc</a>
  <a id="2693" class="Symbol">:</a> <a id="2695" class="Symbol">∀</a> <a id="2697" class="Symbol">{</a><a id="2698" href="EqualityType.html#2698" class="Bound">ℓ</a><a id="2699" class="Symbol">}</a> <a id="2701" class="Symbol">{</a><a id="2702" href="EqualityType.html#2702" class="Bound">A</a> <a id="2704" href="EqualityType.html#2704" class="Bound">B</a> <a id="2706" href="EqualityType.html#2706" class="Bound">C</a> <a id="2708" href="EqualityType.html#2708" class="Bound">D</a> <a id="2710" class="Symbol">:</a> <a id="2712" href="Intro.html#1442" class="Function">Type</a> <a id="2717" href="EqualityType.html#2698" class="Bound">ℓ</a><a id="2718" class="Symbol">}</a>
  <a id="2722" class="Symbol">→</a> <a id="2724" class="Symbol">(</a><a id="2725" href="EqualityType.html#2725" class="Bound">h</a> <a id="2727" class="Symbol">:</a> <a id="2729" href="EqualityType.html#2706" class="Bound">C</a> <a id="2731" class="Symbol">→</a> <a id="2733" href="EqualityType.html#2708" class="Bound">D</a><a id="2734" class="Symbol">)</a> <a id="2736" class="Symbol">→</a> <a id="2738" class="Symbol">(</a><a id="2739" href="EqualityType.html#2739" class="Bound">g</a> <a id="2741" class="Symbol">:</a> <a id="2743" href="EqualityType.html#2704" class="Bound">B</a> <a id="2745" class="Symbol">→</a> <a id="2747" href="EqualityType.html#2706" class="Bound">C</a><a id="2748" class="Symbol">)</a> <a id="2750" class="Symbol">→</a> <a id="2752" class="Symbol">(</a><a id="2753" href="EqualityType.html#2753" class="Bound">f</a> <a id="2755" class="Symbol">:</a> <a id="2757" href="EqualityType.html#2702" class="Bound">A</a> <a id="2759" class="Symbol">→</a> <a id="2761" href="EqualityType.html#2704" class="Bound">B</a><a id="2762" class="Symbol">)</a>
  <a id="2766" class="Comment">-----------------------------------------</a>
  <a id="2810" class="Symbol">→</a> <a id="2812" class="Symbol">(</a><a id="2813" href="EqualityType.html#2725" class="Bound">h</a> <a id="2815" href="BasicFunctions.html#910" class="Function Operator">∘</a> <a id="2817" class="Symbol">(</a><a id="2818" href="EqualityType.html#2739" class="Bound">g</a> <a id="2820" href="BasicFunctions.html#910" class="Function Operator">∘</a> <a id="2822" href="EqualityType.html#2753" class="Bound">f</a><a id="2823" class="Symbol">))</a> <a id="2826" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="2829" class="Symbol">((</a><a id="2831" href="EqualityType.html#2725" class="Bound">h</a> <a id="2833" href="BasicFunctions.html#910" class="Function Operator">∘</a> <a id="2835" href="EqualityType.html#2739" class="Bound">g</a><a id="2836" class="Symbol">)</a> <a id="2838" href="BasicFunctions.html#910" class="Function Operator">∘</a> <a id="2840" href="EqualityType.html#2753" class="Bound">f</a><a id="2841" class="Symbol">)</a>

<a id="2844" href="EqualityType.html#2682" class="Function">∘-lassoc</a> <a id="2853" href="EqualityType.html#2853" class="Bound">h</a> <a id="2855" href="EqualityType.html#2855" class="Bound">g</a> <a id="2857" href="EqualityType.html#2857" class="Bound">f</a> <a id="2859" class="Symbol">=</a> <a id="2861" href="EqualityType.html#985" class="InductiveConstructor">idp</a> <a id="2865" class="Symbol">{</a><a id="2866" class="Argument">a</a> <a id="2868" class="Symbol">=</a> <a id="2870" class="Symbol">(λ</a> <a id="2873" href="EqualityType.html#2873" class="Bound">x</a> <a id="2875" class="Symbol">→</a> <a id="2877" href="EqualityType.html#2853" class="Bound">h</a> <a id="2879" class="Symbol">(</a><a id="2880" href="EqualityType.html#2855" class="Bound">g</a> <a id="2882" class="Symbol">(</a><a id="2883" href="EqualityType.html#2857" class="Bound">f</a> <a id="2885" href="EqualityType.html#2873" class="Bound">x</a><a id="2886" class="Symbol">)))}</a>
</pre>

- Right associativity

{: .foldable until="5" }
<pre class="Agda">
<a id="∘-rassoc"></a><a id="2964" href="EqualityType.html#2964" class="Function">∘-rassoc</a>
  <a id="2975" class="Symbol">:</a> <a id="2977" class="Symbol">∀</a> <a id="2979" class="Symbol">{</a><a id="2980" href="EqualityType.html#2980" class="Bound">ℓ</a><a id="2981" class="Symbol">}</a> <a id="2983" class="Symbol">{</a><a id="2984" href="EqualityType.html#2984" class="Bound">A</a> <a id="2986" href="EqualityType.html#2986" class="Bound">B</a> <a id="2988" href="EqualityType.html#2988" class="Bound">C</a> <a id="2990" href="EqualityType.html#2990" class="Bound">D</a> <a id="2992" class="Symbol">:</a> <a id="2994" href="Intro.html#1442" class="Function">Type</a> <a id="2999" href="EqualityType.html#2980" class="Bound">ℓ</a><a id="3000" class="Symbol">}</a>
  <a id="3004" class="Symbol">→</a> <a id="3006" class="Symbol">(</a><a id="3007" href="EqualityType.html#3007" class="Bound">h</a> <a id="3009" class="Symbol">:</a> <a id="3011" href="EqualityType.html#2988" class="Bound">C</a> <a id="3013" class="Symbol">→</a> <a id="3015" href="EqualityType.html#2990" class="Bound">D</a><a id="3016" class="Symbol">)</a> <a id="3018" class="Symbol">→</a> <a id="3020" class="Symbol">(</a><a id="3021" href="EqualityType.html#3021" class="Bound">g</a> <a id="3023" class="Symbol">:</a> <a id="3025" href="EqualityType.html#2986" class="Bound">B</a> <a id="3027" class="Symbol">→</a> <a id="3029" href="EqualityType.html#2988" class="Bound">C</a><a id="3030" class="Symbol">)</a> <a id="3032" class="Symbol">→</a> <a id="3034" class="Symbol">(</a><a id="3035" href="EqualityType.html#3035" class="Bound">f</a> <a id="3037" class="Symbol">:</a> <a id="3039" href="EqualityType.html#2984" class="Bound">A</a> <a id="3041" class="Symbol">→</a> <a id="3043" href="EqualityType.html#2986" class="Bound">B</a><a id="3044" class="Symbol">)</a>
  <a id="3048" class="Comment">-----------------------------------------</a>
  <a id="3092" class="Symbol">→</a> <a id="3094" class="Symbol">((</a><a id="3096" href="EqualityType.html#3007" class="Bound">h</a> <a id="3098" href="BasicFunctions.html#910" class="Function Operator">∘</a> <a id="3100" href="EqualityType.html#3021" class="Bound">g</a><a id="3101" class="Symbol">)</a> <a id="3103" href="BasicFunctions.html#910" class="Function Operator">∘</a> <a id="3105" href="EqualityType.html#3035" class="Bound">f</a><a id="3106" class="Symbol">)</a> <a id="3108" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="3111" class="Symbol">(</a><a id="3112" href="EqualityType.html#3007" class="Bound">h</a> <a id="3114" href="BasicFunctions.html#910" class="Function Operator">∘</a> <a id="3116" class="Symbol">(</a><a id="3117" href="EqualityType.html#3021" class="Bound">g</a> <a id="3119" href="BasicFunctions.html#910" class="Function Operator">∘</a> <a id="3121" href="EqualityType.html#3035" class="Bound">f</a><a id="3122" class="Symbol">))</a>

<a id="3126" href="EqualityType.html#2964" class="Function">∘-rassoc</a> <a id="3135" href="EqualityType.html#3135" class="Bound">h</a> <a id="3137" href="EqualityType.html#3137" class="Bound">g</a> <a id="3139" href="EqualityType.html#3139" class="Bound">f</a> <a id="3141" class="Symbol">=</a> <a id="3143" class="Symbol">(</a><a id="3144" href="EqualityType.html#2682" class="Function">∘-lassoc</a> <a id="3153" href="EqualityType.html#3135" class="Bound">h</a> <a id="3155" href="EqualityType.html#3137" class="Bound">g</a> <a id="3157" href="EqualityType.html#3139" class="Bound">f</a><a id="3158" class="Symbol">)</a> <a id="3160" href="EqualityType.html#2541" class="Function Operator">⁻¹</a>
</pre>

### Heterogeneous equality

<pre class="Agda">
<a id="3216" class="Keyword">data</a> <a id="HEq"></a><a id="3221" href="EqualityType.html#3221" class="Datatype">HEq</a> <a id="3225" class="Symbol">{</a><a id="3226" href="EqualityType.html#3226" class="Bound">ℓ</a><a id="3227" class="Symbol">}</a> <a id="3229" class="Symbol">(</a><a id="3230" href="EqualityType.html#3230" class="Bound">A</a> <a id="3232" class="Symbol">:</a> <a id="3234" href="Intro.html#1442" class="Function">Type</a> <a id="3239" href="EqualityType.html#3226" class="Bound">ℓ</a><a id="3240" class="Symbol">)</a>
           <a id="3253" class="Symbol">:</a> <a id="3255" class="Symbol">(</a><a id="3256" href="EqualityType.html#3256" class="Bound">B</a> <a id="3258" class="Symbol">:</a> <a id="3260" href="Intro.html#1442" class="Function">Type</a> <a id="3265" href="EqualityType.html#3226" class="Bound">ℓ</a><a id="3266" class="Symbol">)</a>
           <a id="3279" class="Symbol">→</a> <a id="3281" class="Symbol">(</a><a id="3282" href="EqualityType.html#3282" class="Bound">α</a> <a id="3284" class="Symbol">:</a> <a id="3286" href="EqualityType.html#3230" class="Bound">A</a> <a id="3288" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="3291" href="EqualityType.html#3256" class="Bound">B</a><a id="3292" class="Symbol">)</a> <a id="3294" class="Symbol">(</a><a id="3295" href="EqualityType.html#3295" class="Bound">a</a> <a id="3297" class="Symbol">:</a> <a id="3299" href="EqualityType.html#3230" class="Bound">A</a><a id="3300" class="Symbol">)</a> <a id="3302" class="Symbol">(</a><a id="3303" href="EqualityType.html#3303" class="Bound">b</a> <a id="3305" class="Symbol">:</a> <a id="3307" href="EqualityType.html#3256" class="Bound">B</a><a id="3308" class="Symbol">)</a>
           <a id="3321" class="Symbol">→</a> <a id="3323" href="Intro.html#1442" class="Function">Type</a> <a id="3328" class="Symbol">(</a><a id="3329" href="Agda.Primitive.html#627" class="Primitive">lsuc</a> <a id="3334" href="EqualityType.html#3226" class="Bound">ℓ</a><a id="3335" class="Symbol">)</a> <a id="3337" class="Keyword">where</a>
  <a id="HEq.idp"></a><a id="3345" href="EqualityType.html#3345" class="InductiveConstructor">idp</a> <a id="3349" class="Symbol">:</a> <a id="3351" class="Symbol">∀</a> <a id="3353" class="Symbol">{</a><a id="3354" href="EqualityType.html#3354" class="Bound">a</a> <a id="3356" class="Symbol">:</a> <a id="3358" href="EqualityType.html#3230" class="Bound">A</a><a id="3359" class="Symbol">}</a> <a id="3361" class="Symbol">→</a> <a id="3363" href="EqualityType.html#3221" class="Datatype">HEq</a> <a id="3367" href="EqualityType.html#3230" class="Bound">A</a> <a id="3369" href="EqualityType.html#3230" class="Bound">A</a> <a id="3371" href="EqualityType.html#985" class="InductiveConstructor">idp</a> <a id="3375" href="EqualityType.html#3354" class="Bound">a</a> <a id="3377" href="EqualityType.html#3354" class="Bound">a</a>
</pre>

## Equational reasoning

Equational reasoning is a way to write readable chains of equalities.

{% raw %}
```agda
  t : a == e
  t = a =⟨ p ⟩
      b =⟨ q ⟩
      c =⟨ r ⟩
      d =⟨ s ⟩
      e ∎
```
{% endraw %}

where `p` is a path from `a` to `b`, `q` is a path from `b` to `c`, and so on.

<pre class="Agda">
<a id="3699" class="Keyword">module</a> <a id="EquationalReasoning"></a><a id="3706" href="EqualityType.html#3706" class="Module">EquationalReasoning</a> <a id="3726" class="Symbol">{</a><a id="3727" href="EqualityType.html#3727" class="Bound">ℓᵢ</a><a id="3729" class="Symbol">}</a> <a id="3731" class="Symbol">{</a><a id="3732" href="EqualityType.html#3732" class="Bound">A</a> <a id="3734" class="Symbol">:</a> <a id="3736" href="Intro.html#1442" class="Function">Type</a> <a id="3741" href="EqualityType.html#3727" class="Bound">ℓᵢ</a><a id="3743" class="Symbol">}</a> <a id="3745" class="Keyword">where</a>
</pre>

Definitional equals:

<pre class="Agda">
  <a id="3800" class="Comment">-- Reasoning.</a>
  <a id="EquationalReasoning._==⟨⟩_"></a><a id="3816" href="EqualityType.html#3816" class="Function Operator">_==⟨⟩_</a>
    <a id="3827" class="Symbol">:</a> <a id="3829" class="Symbol">∀</a> <a id="3831" class="Symbol">(</a><a id="3832" href="EqualityType.html#3832" class="Bound">x</a> <a id="3834" class="Symbol">{</a><a id="3835" href="EqualityType.html#3835" class="Bound">y</a><a id="3836" class="Symbol">}</a> <a id="3838" class="Symbol">:</a> <a id="3840" href="EqualityType.html#3732" class="Bound">A</a><a id="3841" class="Symbol">)</a>
    <a id="3847" class="Symbol">→</a> <a id="3849" href="EqualityType.html#3832" class="Bound">x</a> <a id="3851" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="3854" href="EqualityType.html#3835" class="Bound">y</a> <a id="3856" class="Symbol">→</a> <a id="3858" href="EqualityType.html#3832" class="Bound">x</a> <a id="3860" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="3863" href="EqualityType.html#3835" class="Bound">y</a>

  <a id="3868" class="Symbol">_</a> <a id="3870" href="EqualityType.html#3816" class="Function Operator">==⟨⟩</a> <a id="3875" href="EqualityType.html#3875" class="Bound">p</a> <a id="3877" class="Symbol">=</a> <a id="3879" href="EqualityType.html#3875" class="Bound">p</a>

  <a id="3884" class="Comment">-- synonyms for _==⟨⟩</a>
  <a id="EquationalReasoning._==⟨idp⟩_"></a><a id="3908" href="EqualityType.html#3908" class="Function Operator">_==⟨idp⟩_</a>  <a id="3919" class="Symbol">=</a> <a id="3921" href="EqualityType.html#3816" class="Function Operator">_==⟨⟩_</a>
  <a id="EquationalReasoning._==⟨refl⟩_"></a><a id="3930" href="EqualityType.html#3930" class="Function Operator">_==⟨refl⟩_</a> <a id="3941" class="Symbol">=</a> <a id="3943" href="EqualityType.html#3816" class="Function Operator">_==⟨⟩_</a>

  <a id="3953" class="Keyword">infixr</a> <a id="3960" class="Number">2</a> <a id="3962" href="EqualityType.html#3816" class="Function Operator">_==⟨⟩_</a>
</pre>

<pre class="Agda">
  <a id="3996" class="Comment">-- chain</a>
  <a id="EquationalReasoning._==⟨_⟩_"></a><a id="4007" href="EqualityType.html#4007" class="Function Operator">_==⟨_⟩_</a>
    <a id="4019" class="Symbol">:</a> <a id="4021" class="Symbol">(</a><a id="4022" href="EqualityType.html#4022" class="Bound">x</a> <a id="4024" class="Symbol">:</a> <a id="4026" href="EqualityType.html#3732" class="Bound">A</a><a id="4027" class="Symbol">)</a> <a id="4029" class="Symbol">{</a><a id="4030" href="EqualityType.html#4030" class="Bound">y</a> <a id="4032" href="EqualityType.html#4032" class="Bound">z</a> <a id="4034" class="Symbol">:</a> <a id="4036" href="EqualityType.html#3732" class="Bound">A</a><a id="4037" class="Symbol">}</a>
    <a id="4043" class="Symbol">→</a> <a id="4045" href="EqualityType.html#4022" class="Bound">x</a> <a id="4047" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="4050" href="EqualityType.html#4030" class="Bound">y</a>
    <a id="4056" class="Symbol">→</a> <a id="4058" href="EqualityType.html#4030" class="Bound">y</a> <a id="4060" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="4063" href="EqualityType.html#4032" class="Bound">z</a>
    <a id="4069" class="Symbol">→</a> <a id="4071" href="EqualityType.html#4022" class="Bound">x</a> <a id="4073" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="4076" href="EqualityType.html#4032" class="Bound">z</a>

  <a id="4081" class="Symbol">_</a> <a id="4083" href="EqualityType.html#4007" class="Function Operator">==⟨</a> <a id="4087" href="EqualityType.html#4087" class="Bound">thm</a> <a id="4091" href="EqualityType.html#4007" class="Function Operator">⟩</a> <a id="4093" href="EqualityType.html#4093" class="Bound">q</a> <a id="4095" class="Symbol">=</a> <a id="4097" href="EqualityType.html#4087" class="Bound">thm</a> <a id="4101" href="EqualityType.html#2151" class="Function Operator">·</a> <a id="4103" href="EqualityType.html#4093" class="Bound">q</a>

  <a id="4108" class="Keyword">infixr</a> <a id="4115" class="Number">2</a> <a id="4117" href="EqualityType.html#4007" class="Function Operator">_==⟨_⟩_</a>
</pre>

<pre class="Agda">
  <a id="4152" class="Comment">-- Q.E.D</a>
  <a id="4163" class="Keyword">infix</a> <a id="4169" class="Number">3</a> <a id="4171" href="EqualityType.html#4176" class="Function Operator">_∎</a>
  <a id="EquationalReasoning._∎"></a><a id="4176" href="EqualityType.html#4176" class="Function Operator">_∎</a>
    <a id="4183" class="Symbol">:</a> <a id="4185" class="Symbol">(</a><a id="4186" href="EqualityType.html#4186" class="Bound">x</a> <a id="4188" class="Symbol">:</a> <a id="4190" href="EqualityType.html#3732" class="Bound">A</a><a id="4191" class="Symbol">)</a>
    <a id="4197" class="Symbol">→</a> <a id="4199" href="EqualityType.html#4186" class="Bound">x</a> <a id="4201" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="4204" href="EqualityType.html#4186" class="Bound">x</a>

  <a id="4209" href="EqualityType.html#4176" class="Function Operator">_∎</a> <a id="4212" class="Symbol">=</a> <a id="4214" class="Symbol">λ</a> <a id="4216" href="EqualityType.html#4216" class="Bound">x</a> <a id="4218" class="Symbol">→</a> <a id="4220" href="EqualityType.html#985" class="InductiveConstructor">idp</a>
</pre>

<pre class="Agda">
  <a id="4251" class="Comment">-- Begin</a>
  <a id="4262" class="Keyword">infix</a> <a id="4268" class="Number">1</a> <a id="4270" href="EqualityType.html#4279" class="Function Operator">begin_</a>
  <a id="EquationalReasoning.begin_"></a><a id="4279" href="EqualityType.html#4279" class="Function Operator">begin_</a>
    <a id="4290" class="Symbol">:</a> <a id="4292" class="Symbol">{</a><a id="4293" href="EqualityType.html#4293" class="Bound">x</a> <a id="4295" href="EqualityType.html#4295" class="Bound">y</a> <a id="4297" class="Symbol">:</a> <a id="4299" href="EqualityType.html#3732" class="Bound">A</a><a id="4300" class="Symbol">}</a>
    <a id="4306" class="Symbol">→</a> <a id="4308" href="EqualityType.html#4293" class="Bound">x</a> <a id="4310" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="4313" href="EqualityType.html#4295" class="Bound">y</a>
    <a id="4319" class="Symbol">→</a> <a id="4321" href="EqualityType.html#4293" class="Bound">x</a> <a id="4323" href="EqualityType.html#931" class="Datatype Operator">==</a> <a id="4326" href="EqualityType.html#4295" class="Bound">y</a>

  <a id="4331" href="EqualityType.html#4279" class="Function Operator">begin_</a> <a id="4338" href="EqualityType.html#4338" class="Bound">p</a> <a id="4340" class="Symbol">=</a> <a id="4342" href="EqualityType.html#4338" class="Bound">p</a>
</pre>

<pre class="Agda">
<a id="4369" class="Keyword">open</a> <a id="4374" href="EqualityType.html#3706" class="Module">EquationalReasoning</a> <a id="4394" class="Keyword">public</a>
</pre>
