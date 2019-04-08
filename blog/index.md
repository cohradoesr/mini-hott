---
layout: home
toc: true
agda: true
gallery: true
latex: true
references: true
linkify: true
showcitation: true
home: true
---

{% capture Intro %}
{% include_relative pages/Intro.md %}
{% endcapture %}
{{ Intro | markdownify }}


{% capture BasicTypes %}
{% include_relative pages/BasicTypes.md %}
{% endcapture %}
{{ BasicTypes | markdownify }}


{% capture BasicFunctions %}
{% include_relative pages/BasicFunctions.md %}
{% endcapture %}
{{ BasicFunctions | markdownify }}


{% capture EqualityType %}
{% include_relative pages/EqualityType.md %}
{% endcapture %}
{{ EqualityType | markdownify }}

{% capture AlgebraOnPaths %}
{% include_relative pages/AlgebraOnPaths.md %}
{% endcapture %}
{{ AlgebraOnPaths | markdownify }}


{% capture Transport %}
{% include_relative pages/Transport.md %}
{% endcapture %}
{{ Transport | markdownify }}

{% capture TransportLemmas %}
{% include_relative pages/TransportLemmas.md %}
{% endcapture %}
{{ TransportLemmas | markdownify }}


{% capture ContractibleType %}
{% include_relative pages/ContractibleType.md %}
{% endcapture %}
{{ ContractibleType | markdownify }}

{% capture FiberType %}
{% include_relative pages/FiberType.md %}
{% endcapture %}
{{ FiberType | markdownify }}


{% capture EquivalenceType %}
{% include_relative pages/EquivalenceType.md %}
{% endcapture %}
{{ EquivalenceType | markdownify }}


{% capture HomotopyType %}
{% include_relative pages/HomotopyType.md %}
{% endcapture %}
{{ HomotopyType | markdownify }}

{% capture HomotopyLemmas %}
{% include_relative pages/HomotopyLemmas.md %}
{% endcapture %}
{{ HomotopyLemmas | markdownify }}


{% capture FunExtAxiom %}
{% include_relative pages/FunExtAxiom.md %}
{% endcapture %}
{{ FunExtAxiom | markdownify }}

{% capture FunExtTransport %}
{% include_relative pages/FunExtTransport.md %}
{% endcapture %}
{{ FunExtTransport | markdownify }}

{% capture FunExtTransportDependent %}
{% include_relative pages/FunExtTransportDependent.md %}
{% endcapture %}
{{ FunExtTransportDependent | markdownify }}


{% capture DecidableEquality %}
{% include_relative pages/DecidableEquality.md %}
{% endcapture %}
{{ DecidableEquality | markdownify }}


{% capture HalfAdjointType %}
{% include_relative pages/HalfAdjointType.md %}
{% endcapture %}
{{ HalfAdjointType | markdownify }}


{% capture QuasiinverseType %}
{% include_relative pages/QuasiinverseType.md %}
{% endcapture %}
{{ QuasiinverseType | markdownify }}

{% capture QuasiinverseLemmas %}
{% include_relative pages/QuasiinverseLemmas.md %}
{% endcapture %}
{{ QuasiinverseLemmas | markdownify }}



{% capture SigmaEquivalence %}
{% include_relative pages/SigmaEquivalence.md %}
{% endcapture %}
{{ SigmaEquivalence | markdownify }}

{% capture SigmaPreserves %}
{% include_relative pages/SigmaPreserves.md %}
{% endcapture %}
{{ SigmaPreserves | markdownify }}


{% capture PiPreserves %}
{% include_relative pages/PiPreserves.md %}
{% endcapture %}
{{ PiPreserves | markdownify }}


{% capture UnivalenceAxiom %}
{% include_relative pages/UnivalenceAxiom.md %}
{% endcapture %}
{{ UnivalenceAxiom | markdownify }}


{% capture HLevelTypes %}
{% include_relative pages/HLevelTypes.md %}
{% endcapture %}
{{ HLevelTypes | markdownify }}

{% capture HLevelLemmas %}
{% include_relative pages/HLevelLemmas.md %}
{% endcapture %}
{{ HLevelLemmas | markdownify }}


{% capture HedbergLemmas %}
{% include_relative pages/HedbergLemmas.md %}
{% endcapture %}
{{ HedbergLemmas | markdownify }}



{% capture EquivalenceReasoning %}
{% include_relative pages/EquivalenceReasoning.md %}
{% endcapture %}
{{ EquivalenceReasoning | markdownify }}

{% capture UnivalenceTransport %}
{% include_relative pages/UnivalenceTransport.md %}
{% endcapture %}
{{ UnivalenceTransport | markdownify }}


{% capture CircleType %}
{% include_relative pages/CircleType.md %}
{% endcapture %}
{{ CircleType | markdownify }}

{% capture IntervalType %}
{% include_relative pages/IntervalType.md %}
{% endcapture %}
{{ IntervalType | markdownify }}

{% capture SuspensionType %}
{% include_relative pages/SuspensionType.md %}
{% endcapture %}
{{ SuspensionType | markdownify }}

{% capture TruncationType %}
{% include_relative pages/TruncationType.md %}
{% endcapture %}
{{ TruncationType | markdownify }}

{% capture SetTruncationType %}
{% include_relative pages/SetTruncationType.md %}
{% endcapture %}
{{ SetTruncationType | markdownify }}


{% capture NaturalType %}
{% include_relative pages/NaturalType.md %}
{% endcapture %}
{{ NaturalType | markdownify }}

{% capture IntegerType %}
{% include_relative pages/IntegerType.md %}
{% endcapture %}
{{ IntegerType | markdownify }}



{% capture QuotientType %}
{% include_relative pages/QuotientType.md %}
{% endcapture %}
{{ QuotientType | markdownify }}

{% capture RelationType %}
{% include_relative pages/RelationType.md %}
{% endcapture %}
{{ RelationType | markdownify }}


{% capture MonoidType %}
{% include_relative pages/MonoidType.md %}
{% endcapture %}
{{ MonoidType | markdownify }}

{% capture GroupType %}
{% include_relative pages/GroupType.md %}
{% endcapture %}
{{ GroupType | markdownify }}


{% capture FundamentalGroupType %}
{% include_relative pages/FundamentalGroupType.md %}
{% endcapture %}
{{ FundamentalGroupType | markdownify }}

## References

We based on the following Agda libraries.

{: .links}

  - Agda-HoTT: https://mroman42.github.io/ctlc/agda-hott/Total.html
  - Hott-Agda: https://github.com/dlicata335/hott-agda/
