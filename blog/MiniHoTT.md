---
layout: page
title: "Mini-HoTT"
toc: true
agda: true
gallery: true
latex: true
references: true
linkify: true
showcitation: true
home: true
---

<pre class="Agda">

<a id="164" class="Symbol">{-#</a> <a id="168" class="Keyword">OPTIONS</a> <a id="176" class="Pragma">--without-K</a> <a id="188" class="Symbol">#-}</a>

<a id="193" class="Keyword">module</a> <a id="200" href="MiniHoTT.html" class="Module">MiniHoTT</a> <a id="209" class="Keyword">where</a>

  <a id="218" class="Keyword">open</a> <a id="223" class="Keyword">import</a> <a id="230" href="Intro.html" class="Module">Intro</a> <a id="236" class="Keyword">public</a>

  <a id="246" class="Keyword">open</a> <a id="251" class="Keyword">import</a> <a id="258" href="BasicTypes.html" class="Module">BasicTypes</a> <a id="269" class="Keyword">public</a>
  <a id="278" class="Keyword">open</a> <a id="283" class="Keyword">import</a> <a id="290" href="HLevelTypes.html" class="Module">HLevelTypes</a> <a id="302" class="Keyword">public</a>

  <a id="312" class="Keyword">open</a> <a id="317" class="Keyword">import</a> <a id="324" href="BasicFunctions.html" class="Module">BasicFunctions</a> <a id="339" class="Keyword">public</a>

  <a id="349" class="Keyword">open</a> <a id="354" class="Keyword">import</a> <a id="361" href="AlgebraOnPaths.html" class="Module">AlgebraOnPaths</a> <a id="376" class="Keyword">public</a>

  <a id="386" class="Keyword">open</a> <a id="391" class="Keyword">import</a> <a id="398" href="Transport.html" class="Module">Transport</a> <a id="408" class="Keyword">public</a>
  <a id="417" class="Keyword">open</a> <a id="422" class="Keyword">import</a> <a id="429" href="TransportLemmas.html" class="Module">TransportLemmas</a> <a id="445" class="Keyword">public</a>


  <a id="456" class="Keyword">open</a> <a id="461" class="Keyword">import</a> <a id="468" href="ProductIdentities.html" class="Module">ProductIdentities</a> <a id="486" class="Keyword">public</a>
  <a id="495" class="Keyword">open</a> <a id="500" class="Keyword">import</a> <a id="507" href="CoproductIdentities.html" class="Module">CoproductIdentities</a> <a id="527" class="Keyword">public</a>

  <a id="537" class="Keyword">open</a> <a id="542" class="Keyword">import</a> <a id="549" href="FibreType.html" class="Module">FibreType</a> <a id="559" class="Keyword">public</a>

  <a id="569" class="Keyword">open</a> <a id="574" class="Keyword">import</a> <a id="581" href="EquivalenceType.html" class="Module">EquivalenceType</a> <a id="597" class="Keyword">public</a>

  <a id="607" class="Keyword">open</a> <a id="612" class="Keyword">import</a> <a id="619" href="DependentAlgebra.html" class="Module">DependentAlgebra</a> <a id="636" class="Keyword">public</a>

  <a id="646" class="Keyword">open</a> <a id="651" class="Keyword">import</a> <a id="658" href="HomotopyType.html" class="Module">HomotopyType</a> <a id="671" class="Keyword">public</a>
  <a id="680" class="Keyword">open</a> <a id="685" class="Keyword">import</a> <a id="692" href="HomotopyLemmas.html" class="Module">HomotopyLemmas</a> <a id="707" class="Keyword">public</a>

  <a id="717" class="Keyword">open</a> <a id="722" class="Keyword">import</a> <a id="729" href="FunExtAxiom.html" class="Module">FunExtAxiom</a> <a id="741" class="Keyword">public</a>
  <a id="750" class="Keyword">open</a> <a id="755" class="Keyword">import</a> <a id="762" href="FunExtTransport.html" class="Module">FunExtTransport</a> <a id="778" class="Keyword">public</a>
  <a id="787" class="Keyword">open</a> <a id="792" class="Keyword">import</a> <a id="799" href="FunExtTransportDependent.html" class="Module">FunExtTransportDependent</a> <a id="824" class="Keyword">public</a>

  <a id="834" class="Keyword">open</a> <a id="839" class="Keyword">import</a> <a id="846" href="DecidableEquality.html" class="Module">DecidableEquality</a> <a id="864" class="Keyword">public</a>

  <a id="874" class="Keyword">open</a> <a id="879" class="Keyword">import</a> <a id="886" href="HalfAdjointType.html" class="Module">HalfAdjointType</a> <a id="902" class="Keyword">public</a>

  <a id="912" class="Keyword">open</a> <a id="917" class="Keyword">import</a> <a id="924" href="QuasiinverseType.html" class="Module">QuasiinverseType</a> <a id="941" class="Keyword">public</a>
  <a id="950" class="Keyword">open</a> <a id="955" class="Keyword">import</a> <a id="962" href="QuasiinverseLemmas.html" class="Module">QuasiinverseLemmas</a> <a id="981" class="Keyword">public</a>


  <a id="992" class="Keyword">open</a> <a id="997" class="Keyword">import</a> <a id="1004" href="SigmaEquivalence.html" class="Module">SigmaEquivalence</a> <a id="1021" class="Keyword">public</a>
  <a id="1030" class="Keyword">open</a> <a id="1035" class="Keyword">import</a> <a id="1042" href="SigmaPreserves.html" class="Module">SigmaPreserves</a> <a id="1057" class="Keyword">public</a>

  <a id="1067" class="Keyword">open</a> <a id="1072" class="Keyword">import</a> <a id="1079" href="PiPreserves.html" class="Module">PiPreserves</a> <a id="1091" class="Keyword">public</a>

  <a id="1101" class="Keyword">open</a> <a id="1106" class="Keyword">import</a> <a id="1113" href="UnivalenceAxiom.html" class="Module">UnivalenceAxiom</a> <a id="1129" class="Keyword">public</a>

  <a id="1139" class="Keyword">open</a> <a id="1144" class="Keyword">import</a> <a id="1151" href="HLevelLemmas.html" class="Module">HLevelLemmas</a> <a id="1164" class="Keyword">public</a>

  <a id="1174" class="Keyword">open</a> <a id="1179" class="Keyword">import</a> <a id="1186" href="HedbergLemmas.html" class="Module">HedbergLemmas</a> <a id="1200" class="Keyword">public</a>

  <a id="1210" class="Comment">-- open import UnivalenceLemmas public</a>

  <a id="1252" class="Keyword">open</a> <a id="1257" class="Keyword">import</a> <a id="1264" href="EquivalenceReasoning.html" class="Module">EquivalenceReasoning</a> <a id="1285" class="Keyword">public</a>
  <a id="1294" class="Keyword">open</a> <a id="1299" class="Keyword">import</a> <a id="1306" href="UnivalenceTransport.html" class="Module">UnivalenceTransport</a> <a id="1326" class="Keyword">public</a>

  <a id="1336" class="Keyword">open</a> <a id="1341" class="Keyword">import</a> <a id="1348" href="CircleType.html" class="Module">CircleType</a> <a id="1359" class="Keyword">public</a>
  <a id="1368" class="Keyword">open</a> <a id="1373" class="Keyword">import</a> <a id="1380" href="IntervalType.html" class="Module">IntervalType</a> <a id="1393" class="Keyword">public</a>
  <a id="1402" class="Keyword">open</a> <a id="1407" class="Keyword">import</a> <a id="1414" href="SuspensionType.html" class="Module">SuspensionType</a> <a id="1429" class="Keyword">public</a>
  <a id="1438" class="Keyword">open</a> <a id="1443" class="Keyword">import</a> <a id="1450" href="TruncationType.html" class="Module">TruncationType</a> <a id="1465" class="Keyword">public</a>
  <a id="1474" class="Keyword">open</a> <a id="1479" class="Keyword">import</a> <a id="1486" href="SetTruncationType.html" class="Module">SetTruncationType</a> <a id="1504" class="Keyword">public</a>

  <a id="1514" class="Keyword">open</a> <a id="1519" class="Keyword">import</a> <a id="1526" href="EquivalencesForSets.html" class="Module">EquivalencesForSets</a> <a id="1546" class="Keyword">public</a>

  <a id="1556" class="Keyword">open</a> <a id="1561" class="Keyword">import</a> <a id="1568" href="NaturalType.html" class="Module">NaturalType</a> <a id="1580" class="Keyword">public</a>
  <a id="1589" class="Keyword">open</a> <a id="1594" class="Keyword">import</a> <a id="1601" href="IntegerType.html" class="Module">IntegerType</a> <a id="1613" class="Keyword">public</a>


  <a id="1624" class="Keyword">open</a> <a id="1629" class="Keyword">import</a> <a id="1636" href="QuotientType.html" class="Module">QuotientType</a> <a id="1649" class="Keyword">public</a>
  <a id="1658" class="Keyword">open</a> <a id="1663" class="Keyword">import</a> <a id="1670" href="RelationType.html" class="Module">RelationType</a> <a id="1683" class="Keyword">public</a>

  <a id="1693" class="Keyword">open</a> <a id="1698" class="Keyword">import</a> <a id="1705" href="MonoidType.html" class="Module">MonoidType</a> <a id="1716" class="Keyword">public</a>
  <a id="1725" class="Keyword">open</a> <a id="1730" class="Keyword">import</a> <a id="1737" href="GroupType.html" class="Module">GroupType</a> <a id="1747" class="Keyword">public</a>

  <a id="1757" class="Keyword">open</a> <a id="1762" class="Keyword">import</a> <a id="1769" href="FundamentalGroupType.html" class="Module">FundamentalGroupType</a> <a id="1790" class="Keyword">public</a>

</pre>
