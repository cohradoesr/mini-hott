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
  
  <a id="314" class="Keyword">open</a> <a id="319" class="Keyword">import</a> <a id="326" href="BasicFunctions.html" class="Module">BasicFunctions</a> <a id="341" class="Keyword">public</a>


  <a id="352" class="Keyword">open</a> <a id="357" class="Keyword">import</a> <a id="364" href="AlgebraOnPaths.html" class="Module">AlgebraOnPaths</a> <a id="379" class="Keyword">public</a>

  <a id="389" class="Keyword">open</a> <a id="394" class="Keyword">import</a> <a id="401" href="Transport.html" class="Module">Transport</a> <a id="411" class="Keyword">public</a>
  <a id="420" class="Keyword">open</a> <a id="425" class="Keyword">import</a> <a id="432" href="TransportLemmas.html" class="Module">TransportLemmas</a> <a id="448" class="Keyword">public</a>


  <a id="459" class="Keyword">open</a> <a id="464" class="Keyword">import</a> <a id="471" href="ProductIdentities.html" class="Module">ProductIdentities</a> <a id="489" class="Keyword">public</a>
  <a id="498" class="Keyword">open</a> <a id="503" class="Keyword">import</a> <a id="510" href="CoproductIdentities.html" class="Module">CoproductIdentities</a> <a id="530" class="Keyword">public</a>

   <a id="541" class="Keyword">public</a>
  <a id="550" class="Keyword">open</a> <a id="555" class="Keyword">import</a> <a id="562" href="FiberType.html" class="Module">FiberType</a> <a id="572" class="Keyword">public</a>

  <a id="582" class="Keyword">open</a> <a id="587" class="Keyword">import</a> <a id="594" href="EquivalenceType.html" class="Module">EquivalenceType</a> <a id="610" class="Keyword">public</a>

  <a id="620" class="Keyword">open</a> <a id="625" class="Keyword">import</a> <a id="632" href="HomotopyType.html" class="Module">HomotopyType</a> <a id="645" class="Keyword">public</a>
  <a id="654" class="Keyword">open</a> <a id="659" class="Keyword">import</a> <a id="666" href="HomotopyLemmas.html" class="Module">HomotopyLemmas</a> <a id="681" class="Keyword">public</a>

  <a id="691" class="Keyword">open</a> <a id="696" class="Keyword">import</a> <a id="703" href="FunExtAxiom.html" class="Module">FunExtAxiom</a> <a id="715" class="Keyword">public</a>
  <a id="724" class="Keyword">open</a> <a id="729" class="Keyword">import</a> <a id="736" href="FunExtTransport.html" class="Module">FunExtTransport</a> <a id="752" class="Keyword">public</a>
  <a id="761" class="Keyword">open</a> <a id="766" class="Keyword">import</a> <a id="773" href="FunExtTransportDependent.html" class="Module">FunExtTransportDependent</a> <a id="798" class="Keyword">public</a>

  <a id="808" class="Keyword">open</a> <a id="813" class="Keyword">import</a> <a id="820" href="DecidableEquality.html" class="Module">DecidableEquality</a> <a id="838" class="Keyword">public</a>

  <a id="848" class="Keyword">open</a> <a id="853" class="Keyword">import</a> <a id="860" href="HalfAdjointType.html" class="Module">HalfAdjointType</a> <a id="876" class="Keyword">public</a>

  <a id="886" class="Keyword">open</a> <a id="891" class="Keyword">import</a> <a id="898" href="QuasiinverseType.html" class="Module">QuasiinverseType</a> <a id="915" class="Keyword">public</a>
  <a id="924" class="Keyword">open</a> <a id="929" class="Keyword">import</a> <a id="936" href="QuasiinverseLemmas.html" class="Module">QuasiinverseLemmas</a> <a id="955" class="Keyword">public</a>


  <a id="966" class="Keyword">open</a> <a id="971" class="Keyword">import</a> <a id="978" href="SigmaEquivalence.html" class="Module">SigmaEquivalence</a> <a id="995" class="Keyword">public</a>
  <a id="1004" class="Keyword">open</a> <a id="1009" class="Keyword">import</a> <a id="1016" href="SigmaPreserves.html" class="Module">SigmaPreserves</a> <a id="1031" class="Keyword">public</a>

  <a id="1041" class="Keyword">open</a> <a id="1046" class="Keyword">import</a> <a id="1053" href="PiPreserves.html" class="Module">PiPreserves</a> <a id="1065" class="Keyword">public</a>

  <a id="1075" class="Keyword">open</a> <a id="1080" class="Keyword">import</a> <a id="1087" href="UnivalenceAxiom.html" class="Module">UnivalenceAxiom</a> <a id="1103" class="Keyword">public</a>

  <a id="1113" class="Keyword">open</a> <a id="1118" class="Keyword">import</a> <a id="1125" href="HLevelLemmas.html" class="Module">HLevelLemmas</a> <a id="1138" class="Keyword">public</a>

  <a id="1148" class="Keyword">open</a> <a id="1153" class="Keyword">import</a> <a id="1160" href="HedbergLemmas.html" class="Module">HedbergLemmas</a> <a id="1174" class="Keyword">public</a>

  <a id="1184" class="Comment">-- open import UnivalenceLemmas public</a>

  <a id="1226" class="Keyword">open</a> <a id="1231" class="Keyword">import</a> <a id="1238" href="EquivalenceReasoning.html" class="Module">EquivalenceReasoning</a> <a id="1259" class="Keyword">public</a>
  <a id="1268" class="Keyword">open</a> <a id="1273" class="Keyword">import</a> <a id="1280" href="UnivalenceTransport.html" class="Module">UnivalenceTransport</a> <a id="1300" class="Keyword">public</a>

  <a id="1310" class="Keyword">open</a> <a id="1315" class="Keyword">import</a> <a id="1322" href="CircleType.html" class="Module">CircleType</a> <a id="1333" class="Keyword">public</a>
  <a id="1342" class="Keyword">open</a> <a id="1347" class="Keyword">import</a> <a id="1354" href="IntervalType.html" class="Module">IntervalType</a> <a id="1367" class="Keyword">public</a>
  <a id="1376" class="Keyword">open</a> <a id="1381" class="Keyword">import</a> <a id="1388" href="SuspensionType.html" class="Module">SuspensionType</a> <a id="1403" class="Keyword">public</a>
  <a id="1412" class="Keyword">open</a> <a id="1417" class="Keyword">import</a> <a id="1424" href="TruncationType.html" class="Module">TruncationType</a> <a id="1439" class="Keyword">public</a>
  <a id="1448" class="Keyword">open</a> <a id="1453" class="Keyword">import</a> <a id="1460" href="SetTruncationType.html" class="Module">SetTruncationType</a> <a id="1478" class="Keyword">public</a>

  <a id="1488" class="Keyword">open</a> <a id="1493" class="Keyword">import</a> <a id="1500" href="EquivalencesForSets.html" class="Module">EquivalencesForSets</a> <a id="1520" class="Keyword">public</a>

  <a id="1530" class="Keyword">open</a> <a id="1535" class="Keyword">import</a> <a id="1542" href="NaturalType.html" class="Module">NaturalType</a> <a id="1554" class="Keyword">public</a>
  <a id="1563" class="Keyword">open</a> <a id="1568" class="Keyword">import</a> <a id="1575" href="IntegerType.html" class="Module">IntegerType</a> <a id="1587" class="Keyword">public</a>


  <a id="1598" class="Keyword">open</a> <a id="1603" class="Keyword">import</a> <a id="1610" href="QuotientType.html" class="Module">QuotientType</a> <a id="1623" class="Keyword">public</a>
  <a id="1632" class="Keyword">open</a> <a id="1637" class="Keyword">import</a> <a id="1644" href="RelationType.html" class="Module">RelationType</a> <a id="1657" class="Keyword">public</a>

  <a id="1667" class="Keyword">open</a> <a id="1672" class="Keyword">import</a> <a id="1679" href="MonoidType.html" class="Module">MonoidType</a> <a id="1690" class="Keyword">public</a>
  <a id="1699" class="Keyword">open</a> <a id="1704" class="Keyword">import</a> <a id="1711" href="GroupType.html" class="Module">GroupType</a> <a id="1721" class="Keyword">public</a>

  <a id="1731" class="Keyword">open</a> <a id="1736" class="Keyword">import</a> <a id="1743" href="FundamentalGroupType.html" class="Module">FundamentalGroupType</a> <a id="1764" class="Keyword">public</a>

</pre>
