With latex:

You must to define this in your tex file.


```
...
\newcommand{\MiniHoTTPath}{/Users/jonaprieto/mini-hott}
\newcommand{\DefineMiniHoTT}[2]{%
  \expandafter\newcommand\csname rmk-#1\endcsname{#2}%
}
\newcommand{\MiniHoTT}[1]{\csname rmk-#1\endcsname}

\DefineMiniHoTT{prop}{Prop!}


\begin{document}

\MiniHoTT{prop}
```