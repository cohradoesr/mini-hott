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

  <a id="864" class="Comment">-- open import HalfAdjointType public</a>

  <a id="905" class="Comment">-- open import QuasiinverseType public</a>
  <a id="946" class="Comment">-- open import QuasiinverseLemmas public</a>


  <a id="991" class="Keyword">open</a> <a id="996" class="Keyword">import</a> <a id="1003" href="SigmaEquivalence.html" class="Module">SigmaEquivalence</a> <a id="1020" class="Keyword">public</a>
  <a id="1029" class="Keyword">open</a> <a id="1034" class="Keyword">import</a> <a id="1041" href="SigmaPreserves.html" class="Module">SigmaPreserves</a> <a id="1056" class="Keyword">public</a>

  <a id="1066" class="Keyword">open</a> <a id="1071" class="Keyword">import</a> <a id="1078" href="PiPreserves.html" class="Module">PiPreserves</a> <a id="1090" class="Keyword">public</a>

  <a id="1100" class="Keyword">open</a> <a id="1105" class="Keyword">import</a> <a id="1112" href="UnivalenceAxiom.html" class="Module">UnivalenceAxiom</a> <a id="1128" class="Keyword">public</a>

  <a id="1138" class="Keyword">open</a> <a id="1143" class="Keyword">import</a> <a id="1150" href="HLevelLemmas.html" class="Module">HLevelLemmas</a> <a id="1163" class="Keyword">public</a>

  <a id="1173" class="Keyword">open</a> <a id="1178" class="Keyword">import</a> <a id="1185" href="HedbergLemmas.html" class="Module">HedbergLemmas</a> <a id="1199" class="Keyword">public</a>

  <a id="1209" class="Comment">-- open import UnivalenceLemmas public</a>

  <a id="1251" class="Keyword">open</a> <a id="1256" class="Keyword">import</a> <a id="1263" href="EquivalenceReasoning.html" class="Module">EquivalenceReasoning</a> <a id="1284" class="Keyword">public</a>
  <a id="1293" class="Keyword">open</a> <a id="1298" class="Keyword">import</a> <a id="1305" href="UnivalenceTransport.html" class="Module">UnivalenceTransport</a> <a id="1325" class="Keyword">public</a>

  <a id="1335" class="Keyword">open</a> <a id="1340" class="Keyword">import</a> <a id="1347" href="CircleType.html" class="Module">CircleType</a> <a id="1358" class="Keyword">public</a>
  <a id="1367" class="Keyword">open</a> <a id="1372" class="Keyword">import</a> <a id="1379" href="IntervalType.html" class="Module">IntervalType</a> <a id="1392" class="Keyword">public</a>
  <a id="1401" class="Keyword">open</a> <a id="1406" class="Keyword">import</a> <a id="1413" href="SuspensionType.html" class="Module">SuspensionType</a> <a id="1428" class="Keyword">public</a>
  <a id="1437" class="Keyword">open</a> <a id="1442" class="Keyword">import</a> <a id="1449" href="TruncationType.html" class="Module">TruncationType</a> <a id="1464" class="Keyword">public</a>
  <a id="1473" class="Keyword">open</a> <a id="1478" class="Keyword">import</a> <a id="1485" href="SetTruncationType.html" class="Module">SetTruncationType</a> <a id="1503" class="Keyword">public</a>

  <a id="1513" class="Keyword">open</a> <a id="1518" class="Keyword">import</a> <a id="1525" href="TypesofMorphisms.html" class="Module">TypesofMorphisms</a> <a id="1542" class="Keyword">public</a>

  <a id="1552" class="Keyword">open</a> <a id="1557" class="Keyword">import</a> <a id="1564" href="NaturalType.html" class="Module">NaturalType</a> <a id="1576" class="Keyword">public</a>
  <a id="1585" class="Keyword">open</a> <a id="1590" class="Keyword">import</a> <a id="1597" href="IntegerType.html" class="Module">IntegerType</a> <a id="1609" class="Keyword">public</a>


  <a id="1620" class="Keyword">open</a> <a id="1625" class="Keyword">import</a> <a id="1632" href="QuotientType.html" class="Module">QuotientType</a> <a id="1645" class="Keyword">public</a>
  <a id="1654" class="Keyword">open</a> <a id="1659" class="Keyword">import</a> <a id="1666" href="RelationType.html" class="Module">RelationType</a> <a id="1679" class="Keyword">public</a>

  <a id="1689" class="Keyword">open</a> <a id="1694" class="Keyword">import</a> <a id="1701" href="MonoidType.html" class="Module">MonoidType</a> <a id="1712" class="Keyword">public</a>
  <a id="1721" class="Keyword">open</a> <a id="1726" class="Keyword">import</a> <a id="1733" href="GroupType.html" class="Module">GroupType</a> <a id="1743" class="Keyword">public</a>

  <a id="1753" class="Comment">--   open import FundamentalGroupType public</a>

</pre>
