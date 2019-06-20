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
{% include_relative Intro.md %}
{% endcapture %}
{{ Intro | markdownify }}


{% capture BasicTypes %}
{% include_relative BasicTypes.md %}
{% endcapture %}
{{ BasicTypes | markdownify }}

{% capture BasicFunctions %}
{% include_relative BasicFunctions.md %}
{% endcapture %}
{{ BasicFunctions | markdownify }}


{% capture AlgebraOnPaths %}
{% include_relative AlgebraOnPaths.md %}
{% endcapture %}
{{ AlgebraOnPaths | markdownify }}


{% capture Transport %}
{% include_relative Transport.md %}
{% endcapture %}
{{ Transport | markdownify }}

{% capture TransportLemmas %}
{% include_relative TransportLemmas.md %}
{% endcapture %}
{{ TransportLemmas | markdownify }}

{% capture CoproductIdentities %}
{% include_relative CoproductIdentities.md %}
{% endcapture %}
{{ CoproductIdentities | markdownify }}

{% capture ProductIdentities %}
{% include_relative ProductIdentities.md %}
{% endcapture %}
{{ ProductIdentities | markdownify }}

{% capture FiberType %}
{% include_relative FiberType.md %}
{% endcapture %}
{{ FiberType | markdownify }}


{% capture EquivalenceType %}
{% include_relative EquivalenceType.md %}
{% endcapture %}
{{ EquivalenceType | markdownify }}


{% capture HomotopyType %}
{% include_relative HomotopyType.md %}
{% endcapture %}
{{ HomotopyType | markdownify }}

{% capture HomotopyLemmas %}
{% include_relative HomotopyLemmas.md %}
{% endcapture %}
{{ HomotopyLemmas | markdownify }}


{% capture FunExtAxiom %}
{% include_relative FunExtAxiom.md %}
{% endcapture %}
{{ FunExtAxiom | markdownify }}

{% capture FunExtTransport %}
{% include_relative FunExtTransport.md %}
{% endcapture %}
{{ FunExtTransport | markdownify }}

{% capture FunExtTransportDependent %}
{% include_relative FunExtTransportDependent.md %}
{% endcapture %}
{{ FunExtTransportDependent | markdownify }}


{% capture DecidableEquality %}
{% include_relative DecidableEquality.md %}
{% endcapture %}
{{ DecidableEquality | markdownify }}


{% capture HalfAdjointType %}
{% include_relative HalfAdjointType.md %}
{% endcapture %}
{{ HalfAdjointType | markdownify }}


{% capture QuasiinverseType %}
{% include_relative QuasiinverseType.md %}
{% endcapture %}
{{ QuasiinverseType | markdownify }}

{% capture QuasiinverseLemmas %}
{% include_relative QuasiinverseLemmas.md %}
{% endcapture %}
{{ QuasiinverseLemmas | markdownify }}



{% capture SigmaEquivalence %}
{% include_relative SigmaEquivalence.md %}
{% endcapture %}
{{ SigmaEquivalence | markdownify }}

{% capture SigmaPreserves %}
{% include_relative SigmaPreserves.md %}
{% endcapture %}
{{ SigmaPreserves | markdownify }}


{% capture PiPreserves %}
{% include_relative PiPreserves.md %}
{% endcapture %}
{{ PiPreserves | markdownify }}


{% capture UnivalenceAxiom %}
{% include_relative UnivalenceAxiom.md %}
{% endcapture %}
{{ UnivalenceAxiom | markdownify }}


{% capture HLevelTypes %}
{% include_relative HLevelTypes.md %}
{% endcapture %}
{{ HLevelTypes | markdownify }}

{% capture HLevelLemmas %}
{% include_relative HLevelLemmas.md %}
{% endcapture %}
{{ HLevelLemmas | markdownify }}


{% capture HedbergLemmas %}
{% include_relative HedbergLemmas.md %}
{% endcapture %}
{{ HedbergLemmas | markdownify }}



{% capture EquivalenceReasoning %}
{% include_relative EquivalenceReasoning.md %}
{% endcapture %}
{{ EquivalenceReasoning | markdownify }}

{% capture UnivalenceTransport %}
{% include_relative UnivalenceTransport.md %}
{% endcapture %}
{{ UnivalenceTransport | markdownify }}


{% capture CircleType %}
{% include_relative CircleType.md %}
{% endcapture %}
{{ CircleType | markdownify }}

{% capture IntervalType %}
{% include_relative IntervalType.md %}
{% endcapture %}
{{ IntervalType | markdownify }}

{% capture SuspensionType %}
{% include_relative SuspensionType.md %}
{% endcapture %}
{{ SuspensionType | markdownify }}

{% capture TruncationType %}
{% include_relative TruncationType.md %}
{% endcapture %}
{{ TruncationType | markdownify }}

{% capture SetTruncationType %}
{% include_relative SetTruncationType.md %}
{% endcapture %}
{{ SetTruncationType | markdownify }}


{% capture NaturalType %}
{% include_relative NaturalType.md %}
{% endcapture %}
{{ NaturalType | markdownify }}

{% capture IntegerType %}
{% include_relative IntegerType.md %}
{% endcapture %}
{{ IntegerType | markdownify }}

{% capture QuotientType %}
{% include_relative QuotientType.md %}
{% endcapture %}
{{ QuotientType | markdownify }}

{% capture RelationType %}
{% include_relative RelationType.md %}
{% endcapture %}
{{ RelationType | markdownify }}


{% capture MonoidType %}
{% include_relative MonoidType.md %}
{% endcapture %}
{{ MonoidType | markdownify }}

{% capture GroupType %}
{% include_relative GroupType.md %}
{% endcapture %}
{{ GroupType | markdownify }}


{% capture FundamentalGroupType %}
{% include_relative FundamentalGroupType.md %}
{% endcapture %}
{{ FundamentalGroupType | markdownify }}

## References

We based on the following Agda libraries.

{: .links}

  - Introduction to Univalent Foundations of Mathematics with Agda:  https://www.cs.bham.ac.uk/~mhe/HoTT-UF-in-Agda-Lecture-Notes/
  - Agda-HoTT: https://mroman42.github.io/ctlc/agda-hott/Total.html
  - HoTT-Agda: https://github.com/dlicata335/hott-agda/
  - Agda-premises: https://hub.darcs.net/gylterud/agda-premises
