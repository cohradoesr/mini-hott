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
  <a id="278" class="Keyword">open</a> <a id="283" class="Keyword">import</a> <a id="290" href="BasicFunctions.html" class="Module">BasicFunctions</a> <a id="305" class="Keyword">public</a>


  <a id="316" class="Keyword">open</a> <a id="321" class="Keyword">import</a> <a id="328" href="AlgebraOnPaths.html" class="Module">AlgebraOnPaths</a> <a id="343" class="Keyword">public</a>

  <a id="353" class="Keyword">open</a> <a id="358" class="Keyword">import</a> <a id="365" href="Transport.html" class="Module">Transport</a> <a id="375" class="Keyword">public</a>
  <a id="384" class="Keyword">open</a> <a id="389" class="Keyword">import</a> <a id="396" href="TransportLemmas.html" class="Module">TransportLemmas</a> <a id="412" class="Keyword">public</a>


  <a id="423" class="Keyword">open</a> <a id="428" class="Keyword">import</a> <a id="435" href="ProductIdentities.html" class="Module">ProductIdentities</a> <a id="453" class="Keyword">public</a>
  <a id="462" class="Keyword">open</a> <a id="467" class="Keyword">import</a> <a id="474" href="CoproductIdentities.html" class="Module">CoproductIdentities</a> <a id="494" class="Keyword">public</a>

  <a id="504" class="Keyword">open</a> <a id="509" class="Keyword">import</a> <a id="516" href="ContractibleType.html" class="Module">ContractibleType</a> <a id="533" class="Keyword">public</a>
  <a id="542" class="Keyword">open</a> <a id="547" class="Keyword">import</a> <a id="554" href="FiberType.html" class="Module">FiberType</a> <a id="564" class="Keyword">public</a>

  <a id="574" class="Keyword">open</a> <a id="579" class="Keyword">import</a> <a id="586" href="EquivalenceType.html" class="Module">EquivalenceType</a> <a id="602" class="Keyword">public</a>

  <a id="612" class="Keyword">open</a> <a id="617" class="Keyword">import</a> <a id="624" href="HomotopyType.html" class="Module">HomotopyType</a> <a id="637" class="Keyword">public</a>
  <a id="646" class="Keyword">open</a> <a id="651" class="Keyword">import</a> <a id="658" href="HomotopyLemmas.html" class="Module">HomotopyLemmas</a> <a id="673" class="Keyword">public</a>

  <a id="683" class="Keyword">open</a> <a id="688" class="Keyword">import</a> <a id="695" href="FunExtAxiom.html" class="Module">FunExtAxiom</a> <a id="707" class="Keyword">public</a>
  <a id="716" class="Keyword">open</a> <a id="721" class="Keyword">import</a> <a id="728" href="FunExtTransport.html" class="Module">FunExtTransport</a> <a id="744" class="Keyword">public</a>
  <a id="753" class="Keyword">open</a> <a id="758" class="Keyword">import</a> <a id="765" href="FunExtTransportDependent.html" class="Module">FunExtTransportDependent</a> <a id="790" class="Keyword">public</a>

  <a id="800" class="Keyword">open</a> <a id="805" class="Keyword">import</a> <a id="812" href="DecidableEquality.html" class="Module">DecidableEquality</a> <a id="830" class="Keyword">public</a>

  <a id="840" class="Keyword">open</a> <a id="845" class="Keyword">import</a> <a id="852" href="HalfAdjointType.html" class="Module">HalfAdjointType</a> <a id="868" class="Keyword">public</a>

  <a id="878" class="Keyword">open</a> <a id="883" class="Keyword">import</a> <a id="890" href="QuasiinverseType.html" class="Module">QuasiinverseType</a> <a id="907" class="Keyword">public</a>
  <a id="916" class="Keyword">open</a> <a id="921" class="Keyword">import</a> <a id="928" href="QuasiinverseLemmas.html" class="Module">QuasiinverseLemmas</a> <a id="947" class="Keyword">public</a>


  <a id="958" class="Keyword">open</a> <a id="963" class="Keyword">import</a> <a id="970" href="SigmaEquivalence.html" class="Module">SigmaEquivalence</a> <a id="987" class="Keyword">public</a>
  <a id="996" class="Keyword">open</a> <a id="1001" class="Keyword">import</a> <a id="1008" href="SigmaPreserves.html" class="Module">SigmaPreserves</a> <a id="1023" class="Keyword">public</a>

  <a id="1033" class="Keyword">open</a> <a id="1038" class="Keyword">import</a> <a id="1045" href="PiPreserves.html" class="Module">PiPreserves</a> <a id="1057" class="Keyword">public</a>

  <a id="1067" class="Keyword">open</a> <a id="1072" class="Keyword">import</a> <a id="1079" href="UnivalenceAxiom.html" class="Module">UnivalenceAxiom</a> <a id="1095" class="Keyword">public</a>

  <a id="1105" class="Keyword">open</a> <a id="1110" class="Keyword">import</a> <a id="1117" href="HLevelTypes.html" class="Module">HLevelTypes</a> <a id="1129" class="Keyword">public</a>
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

  <a id="1513" class="Keyword">open</a> <a id="1518" class="Keyword">import</a> <a id="1525" href="EquivalencesForSets.html" class="Module">EquivalencesForSets</a> <a id="1545" class="Keyword">public</a>

  <a id="1555" class="Keyword">open</a> <a id="1560" class="Keyword">import</a> <a id="1567" href="NaturalType.html" class="Module">NaturalType</a> <a id="1579" class="Keyword">public</a>
  <a id="1588" class="Keyword">open</a> <a id="1593" class="Keyword">import</a> <a id="1600" href="IntegerType.html" class="Module">IntegerType</a> <a id="1612" class="Keyword">public</a>


  <a id="1623" class="Keyword">open</a> <a id="1628" class="Keyword">import</a> <a id="1635" href="QuotientType.html" class="Module">QuotientType</a> <a id="1648" class="Keyword">public</a>
  <a id="1657" class="Keyword">open</a> <a id="1662" class="Keyword">import</a> <a id="1669" href="RelationType.html" class="Module">RelationType</a> <a id="1682" class="Keyword">public</a>

  <a id="1692" class="Keyword">open</a> <a id="1697" class="Keyword">import</a> <a id="1704" href="MonoidType.html" class="Module">MonoidType</a> <a id="1715" class="Keyword">public</a>
  <a id="1724" class="Keyword">open</a> <a id="1729" class="Keyword">import</a> <a id="1736" href="GroupType.html" class="Module">GroupType</a> <a id="1746" class="Keyword">public</a>

  <a id="1756" class="Keyword">open</a> <a id="1761" class="Keyword">import</a> <a id="1768" href="FundamentalGroupType.html" class="Module">FundamentalGroupType</a> <a id="1789" class="Keyword">public</a>

</pre>
