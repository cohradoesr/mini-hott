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

<a id="165" class="Symbol">{-#</a> <a id="169" class="Keyword">OPTIONS</a> <a id="177" class="Pragma">--without-K</a> <a id="189" class="Symbol">#-}</a>

<a id="194" class="Keyword">module</a> <a id="201" href="MiniHoTT.html" class="Module">MiniHoTT</a> <a id="210" class="Keyword">where</a>

  <a id="219" class="Keyword">open</a> <a id="224" class="Keyword">import</a> <a id="231" href="Intro.html" class="Module">Intro</a> <a id="237" class="Keyword">public</a>

  <a id="247" class="Keyword">open</a> <a id="252" class="Keyword">import</a> <a id="259" href="BasicTypes.html" class="Module">BasicTypes</a> <a id="270" class="Keyword">public</a>
  <a id="279" class="Keyword">open</a> <a id="284" class="Keyword">import</a> <a id="291" href="BasicFunctions.html" class="Module">BasicFunctions</a> <a id="306" class="Keyword">public</a>

  <a id="316" class="Keyword">open</a> <a id="321" class="Keyword">import</a> <a id="328" href="EqualityType.html" class="Module">EqualityType</a> <a id="341" class="Keyword">public</a>
  <a id="350" class="Keyword">open</a> <a id="355" class="Keyword">import</a> <a id="362" href="AlgebraOnPaths.html" class="Module">AlgebraOnPaths</a> <a id="377" class="Keyword">public</a>

  <a id="387" class="Keyword">open</a> <a id="392" class="Keyword">import</a> <a id="399" href="Transport.html" class="Module">Transport</a> <a id="409" class="Keyword">public</a>
  <a id="418" class="Keyword">open</a> <a id="423" class="Keyword">import</a> <a id="430" href="TransportLemmas.html" class="Module">TransportLemmas</a> <a id="446" class="Keyword">public</a>

  <a id="456" class="Keyword">open</a> <a id="461" class="Keyword">import</a> <a id="468" href="ContractibleType.html" class="Module">ContractibleType</a> <a id="485" class="Keyword">public</a>
  <a id="494" class="Keyword">open</a> <a id="499" class="Keyword">import</a> <a id="506" href="FiberType.html" class="Module">FiberType</a> <a id="516" class="Keyword">public</a>

  <a id="526" class="Keyword">open</a> <a id="531" class="Keyword">import</a> <a id="538" href="EquivalenceType.html" class="Module">EquivalenceType</a> <a id="554" class="Keyword">public</a>

  <a id="564" class="Keyword">open</a> <a id="569" class="Keyword">import</a> <a id="576" href="HomotopyType.html" class="Module">HomotopyType</a> <a id="589" class="Keyword">public</a>
  <a id="598" class="Keyword">open</a> <a id="603" class="Keyword">import</a> <a id="610" href="HomotopyLemmas.html" class="Module">HomotopyLemmas</a> <a id="625" class="Keyword">public</a>

  <a id="635" class="Keyword">open</a> <a id="640" class="Keyword">import</a> <a id="647" href="FunExtAxiom.html" class="Module">FunExtAxiom</a> <a id="659" class="Keyword">public</a>
  <a id="668" class="Keyword">open</a> <a id="673" class="Keyword">import</a> <a id="680" href="FunExtTransport.html" class="Module">FunExtTransport</a> <a id="696" class="Keyword">public</a>
  <a id="705" class="Keyword">open</a> <a id="710" class="Keyword">import</a> <a id="717" href="FunExtTransportDependent.html" class="Module">FunExtTransportDependent</a> <a id="742" class="Keyword">public</a>

  <a id="752" class="Keyword">open</a> <a id="757" class="Keyword">import</a> <a id="764" href="DecidableEquality.html" class="Module">DecidableEquality</a> <a id="782" class="Keyword">public</a>

  <a id="792" class="Keyword">open</a> <a id="797" class="Keyword">import</a> <a id="804" href="HalfAdjointType.html" class="Module">HalfAdjointType</a> <a id="820" class="Keyword">public</a>

  <a id="830" class="Keyword">open</a> <a id="835" class="Keyword">import</a> <a id="842" href="QuasiinverseType.html" class="Module">QuasiinverseType</a> <a id="859" class="Keyword">public</a>
  <a id="868" class="Keyword">open</a> <a id="873" class="Keyword">import</a> <a id="880" href="QuasiinverseLemmas.html" class="Module">QuasiinverseLemmas</a> <a id="899" class="Keyword">public</a>


  <a id="910" class="Keyword">open</a> <a id="915" class="Keyword">import</a> <a id="922" href="SigmaEquivalence.html" class="Module">SigmaEquivalence</a> <a id="939" class="Keyword">public</a>
  <a id="948" class="Keyword">open</a> <a id="953" class="Keyword">import</a> <a id="960" href="SigmaPreserves.html" class="Module">SigmaPreserves</a> <a id="975" class="Keyword">public</a>

  <a id="985" class="Keyword">open</a> <a id="990" class="Keyword">import</a> <a id="997" href="PiPreserves.html" class="Module">PiPreserves</a> <a id="1009" class="Keyword">public</a>

  <a id="1019" class="Keyword">open</a> <a id="1024" class="Keyword">import</a> <a id="1031" href="UnivalenceAxiom.html" class="Module">UnivalenceAxiom</a> <a id="1047" class="Keyword">public</a>

  <a id="1057" class="Keyword">open</a> <a id="1062" class="Keyword">import</a> <a id="1069" href="HLevelTypes.html" class="Module">HLevelTypes</a> <a id="1081" class="Keyword">public</a>
  <a id="1090" class="Keyword">open</a> <a id="1095" class="Keyword">import</a> <a id="1102" href="HLevelLemmas.html" class="Module">HLevelLemmas</a> <a id="1115" class="Keyword">public</a>

  <a id="1125" class="Keyword">open</a> <a id="1130" class="Keyword">import</a> <a id="1137" href="HedbergLemmas.html" class="Module">HedbergLemmas</a> <a id="1151" class="Keyword">public</a>

  <a id="1161" class="Comment">-- open import UnivalenceLemmas public</a>

  <a id="1203" class="Keyword">open</a> <a id="1208" class="Keyword">import</a> <a id="1215" href="EquivalenceReasoning.html" class="Module">EquivalenceReasoning</a> <a id="1236" class="Keyword">public</a>
  <a id="1245" class="Keyword">open</a> <a id="1250" class="Keyword">import</a> <a id="1257" href="UnivalenceTransport.html" class="Module">UnivalenceTransport</a> <a id="1277" class="Keyword">public</a>

  <a id="1287" class="Keyword">open</a> <a id="1292" class="Keyword">import</a> <a id="1299" href="CircleType.html" class="Module">CircleType</a> <a id="1310" class="Keyword">public</a>
  <a id="1319" class="Keyword">open</a> <a id="1324" class="Keyword">import</a> <a id="1331" href="IntervalType.html" class="Module">IntervalType</a> <a id="1344" class="Keyword">public</a>
  <a id="1353" class="Keyword">open</a> <a id="1358" class="Keyword">import</a> <a id="1365" href="SuspensionType.html" class="Module">SuspensionType</a> <a id="1380" class="Keyword">public</a>
  <a id="1389" class="Keyword">open</a> <a id="1394" class="Keyword">import</a> <a id="1401" href="TruncationType.html" class="Module">TruncationType</a> <a id="1416" class="Keyword">public</a>
  <a id="1425" class="Keyword">open</a> <a id="1430" class="Keyword">import</a> <a id="1437" href="SetTruncationType.html" class="Module">SetTruncationType</a> <a id="1455" class="Keyword">public</a>

  <a id="1465" class="Keyword">open</a> <a id="1470" class="Keyword">import</a> <a id="1477" href="EquivalencesForSets.html" class="Module">EquivalencesForSets</a> <a id="1497" class="Keyword">public</a>

  <a id="1507" class="Keyword">open</a> <a id="1512" class="Keyword">import</a> <a id="1519" href="NaturalType.html" class="Module">NaturalType</a> <a id="1531" class="Keyword">public</a>
  <a id="1540" class="Keyword">open</a> <a id="1545" class="Keyword">import</a> <a id="1552" href="IntegerType.html" class="Module">IntegerType</a> <a id="1564" class="Keyword">public</a>


  <a id="1575" class="Keyword">open</a> <a id="1580" class="Keyword">import</a> <a id="1587" href="QuotientType.html" class="Module">QuotientType</a> <a id="1600" class="Keyword">public</a>
  <a id="1609" class="Keyword">open</a> <a id="1614" class="Keyword">import</a> <a id="1621" href="RelationType.html" class="Module">RelationType</a> <a id="1634" class="Keyword">public</a>

  <a id="1644" class="Keyword">open</a> <a id="1649" class="Keyword">import</a> <a id="1656" href="MonoidType.html" class="Module">MonoidType</a> <a id="1667" class="Keyword">public</a>
  <a id="1676" class="Keyword">open</a> <a id="1681" class="Keyword">import</a> <a id="1688" href="GroupType.html" class="Module">GroupType</a> <a id="1698" class="Keyword">public</a>

  <a id="1708" class="Keyword">open</a> <a id="1713" class="Keyword">import</a> <a id="1720" href="FundamentalGroupType.html" class="Module">FundamentalGroupType</a> <a id="1741" class="Keyword">public</a>

</pre>
