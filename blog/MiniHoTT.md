---
layout: page
title: "Mini-HoTT"
toc: true
agda: true
gallery: true
latex: true
references: false
linkify: true
showcitation: true
---

<pre class="Agda">

<a id="154" class="Symbol">{-#</a> <a id="158" class="Keyword">OPTIONS</a> <a id="166" class="Pragma">--without-K</a> <a id="178" class="Symbol">#-}</a>

<a id="183" class="Keyword">module</a> <a id="190" href="MiniHoTT.html" class="Module">MiniHoTT</a> <a id="199" class="Keyword">where</a>

  <a id="208" class="Keyword">open</a> <a id="213" class="Keyword">import</a> <a id="220" href="Intro.html" class="Module">Intro</a> <a id="226" class="Keyword">public</a>

  <a id="236" class="Keyword">open</a> <a id="241" class="Keyword">import</a> <a id="248" href="BasicTypes.html" class="Module">BasicTypes</a> <a id="259" class="Keyword">public</a>
  <a id="268" class="Keyword">open</a> <a id="273" class="Keyword">import</a> <a id="280" href="HLevelTypes.html" class="Module">HLevelTypes</a> <a id="292" class="Keyword">public</a>

  <a id="302" class="Keyword">open</a> <a id="307" class="Keyword">import</a> <a id="314" href="BasicFunctions.html" class="Module">BasicFunctions</a> <a id="329" class="Keyword">public</a>

  <a id="339" class="Keyword">open</a> <a id="344" class="Keyword">import</a> <a id="351" href="AlgebraOnPaths.html" class="Module">AlgebraOnPaths</a> <a id="366" class="Keyword">public</a>

  <a id="376" class="Keyword">open</a> <a id="381" class="Keyword">import</a> <a id="388" href="Transport.html" class="Module">Transport</a> <a id="398" class="Keyword">public</a>
  <a id="407" class="Keyword">open</a> <a id="412" class="Keyword">import</a> <a id="419" href="TransportLemmas.html" class="Module">TransportLemmas</a> <a id="435" class="Keyword">public</a>


  <a id="446" class="Keyword">open</a> <a id="451" class="Keyword">import</a> <a id="458" href="ProductIdentities.html" class="Module">ProductIdentities</a> <a id="476" class="Keyword">public</a>
  <a id="485" class="Keyword">open</a> <a id="490" class="Keyword">import</a> <a id="497" href="CoproductIdentities.html" class="Module">CoproductIdentities</a> <a id="517" class="Keyword">public</a>

  <a id="527" class="Keyword">open</a> <a id="532" class="Keyword">import</a> <a id="539" href="FibreType.html" class="Module">FibreType</a> <a id="549" class="Keyword">public</a>

  <a id="559" class="Keyword">open</a> <a id="564" class="Keyword">import</a> <a id="571" href="EquivalenceType.html" class="Module">EquivalenceType</a> <a id="587" class="Keyword">public</a>

  <a id="597" class="Keyword">open</a> <a id="602" class="Keyword">import</a> <a id="609" href="DependentAlgebra.html" class="Module">DependentAlgebra</a> <a id="626" class="Keyword">public</a>

  <a id="636" class="Keyword">open</a> <a id="641" class="Keyword">import</a> <a id="648" href="HomotopyType.html" class="Module">HomotopyType</a> <a id="661" class="Keyword">public</a>
  <a id="670" class="Keyword">open</a> <a id="675" class="Keyword">import</a> <a id="682" href="HomotopyLemmas.html" class="Module">HomotopyLemmas</a> <a id="697" class="Keyword">public</a>

  <a id="707" class="Keyword">open</a> <a id="712" class="Keyword">import</a> <a id="719" href="FunExtAxiom.html" class="Module">FunExtAxiom</a> <a id="731" class="Keyword">public</a>
  <a id="740" class="Keyword">open</a> <a id="745" class="Keyword">import</a> <a id="752" href="FunExtTransport.html" class="Module">FunExtTransport</a> <a id="768" class="Keyword">public</a>
  <a id="777" class="Keyword">open</a> <a id="782" class="Keyword">import</a> <a id="789" href="FunExtTransportDependent.html" class="Module">FunExtTransportDependent</a> <a id="814" class="Keyword">public</a>

  <a id="824" class="Keyword">open</a> <a id="829" class="Keyword">import</a> <a id="836" href="DecidableEquality.html" class="Module">DecidableEquality</a> <a id="854" class="Keyword">public</a>

  <a id="864" class="Keyword">open</a> <a id="869" class="Keyword">import</a> <a id="876" href="HalfAdjointType.html" class="Module">HalfAdjointType</a> <a id="892" class="Keyword">public</a>

  <a id="902" class="Keyword">open</a> <a id="907" class="Keyword">import</a> <a id="914" href="QuasiinverseType.html" class="Module">QuasiinverseType</a> <a id="931" class="Keyword">public</a>
  <a id="940" class="Keyword">open</a> <a id="945" class="Keyword">import</a> <a id="952" href="QuasiinverseLemmas.html" class="Module">QuasiinverseLemmas</a> <a id="971" class="Keyword">public</a>


  <a id="982" class="Keyword">open</a> <a id="987" class="Keyword">import</a> <a id="994" href="SigmaEquivalence.html" class="Module">SigmaEquivalence</a> <a id="1011" class="Keyword">public</a>
  <a id="1020" class="Keyword">open</a> <a id="1025" class="Keyword">import</a> <a id="1032" href="SigmaPreserves.html" class="Module">SigmaPreserves</a> <a id="1047" class="Keyword">public</a>

  <a id="1057" class="Keyword">open</a> <a id="1062" class="Keyword">import</a> <a id="1069" href="PiPreserves.html" class="Module">PiPreserves</a> <a id="1081" class="Keyword">public</a>

  <a id="1091" class="Keyword">open</a> <a id="1096" class="Keyword">import</a> <a id="1103" href="UnivalenceAxiom.html" class="Module">UnivalenceAxiom</a> <a id="1119" class="Keyword">public</a>

  <a id="1129" class="Keyword">open</a> <a id="1134" class="Keyword">import</a> <a id="1141" href="HLevelLemmas.html" class="Module">HLevelLemmas</a> <a id="1154" class="Keyword">public</a>

  <a id="1164" class="Keyword">open</a> <a id="1169" class="Keyword">import</a> <a id="1176" href="HedbergLemmas.html" class="Module">HedbergLemmas</a> <a id="1190" class="Keyword">public</a>

  <a id="1200" class="Comment">-- open import UnivalenceLemmas public</a>

  <a id="1242" class="Keyword">open</a> <a id="1247" class="Keyword">import</a> <a id="1254" href="EquivalenceReasoning.html" class="Module">EquivalenceReasoning</a> <a id="1275" class="Keyword">public</a>
  <a id="1284" class="Keyword">open</a> <a id="1289" class="Keyword">import</a> <a id="1296" href="UnivalenceTransport.html" class="Module">UnivalenceTransport</a> <a id="1316" class="Keyword">public</a>

  <a id="1326" class="Keyword">open</a> <a id="1331" class="Keyword">import</a> <a id="1338" href="CircleType.html" class="Module">CircleType</a> <a id="1349" class="Keyword">public</a>
  <a id="1358" class="Keyword">open</a> <a id="1363" class="Keyword">import</a> <a id="1370" href="IntervalType.html" class="Module">IntervalType</a> <a id="1383" class="Keyword">public</a>
  <a id="1392" class="Keyword">open</a> <a id="1397" class="Keyword">import</a> <a id="1404" href="SuspensionType.html" class="Module">SuspensionType</a> <a id="1419" class="Keyword">public</a>
  <a id="1428" class="Keyword">open</a> <a id="1433" class="Keyword">import</a> <a id="1440" href="TruncationType.html" class="Module">TruncationType</a> <a id="1455" class="Keyword">public</a>
  <a id="1464" class="Keyword">open</a> <a id="1469" class="Keyword">import</a> <a id="1476" href="SetTruncationType.html" class="Module">SetTruncationType</a> <a id="1494" class="Keyword">public</a>

  <a id="1504" class="Keyword">open</a> <a id="1509" class="Keyword">import</a> <a id="1516" href="EquivalencesForSets.html" class="Module">EquivalencesForSets</a> <a id="1536" class="Keyword">public</a>

  <a id="1546" class="Keyword">open</a> <a id="1551" class="Keyword">import</a> <a id="1558" href="NaturalType.html" class="Module">NaturalType</a> <a id="1570" class="Keyword">public</a>
  <a id="1579" class="Keyword">open</a> <a id="1584" class="Keyword">import</a> <a id="1591" href="IntegerType.html" class="Module">IntegerType</a> <a id="1603" class="Keyword">public</a>


  <a id="1614" class="Keyword">open</a> <a id="1619" class="Keyword">import</a> <a id="1626" href="QuotientType.html" class="Module">QuotientType</a> <a id="1639" class="Keyword">public</a>
  <a id="1648" class="Keyword">open</a> <a id="1653" class="Keyword">import</a> <a id="1660" href="RelationType.html" class="Module">RelationType</a> <a id="1673" class="Keyword">public</a>

  <a id="1683" class="Keyword">open</a> <a id="1688" class="Keyword">import</a> <a id="1695" href="MonoidType.html" class="Module">MonoidType</a> <a id="1706" class="Keyword">public</a>
  <a id="1715" class="Keyword">open</a> <a id="1720" class="Keyword">import</a> <a id="1727" href="GroupType.html" class="Module">GroupType</a> <a id="1737" class="Keyword">public</a>

  <a id="1747" class="Comment">--   open import FundamentalGroupType public</a>

</pre>
