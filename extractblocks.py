import re

from pathlib import Path

import os
import sys

tex = [i for i in list(Path("latex/").glob('*.tex'))]

for i in tex:
  if i.is_file():
    lines = [line.rstrip('\n') for line in open(i, 'r')]
    with open(i, 'w') as outf:
      print("% This file is generated automatically. ", file=outf)
      I = 0
      while I < len(lines):
        line = lines[I]
        s = re.search('.*latex:(.*)%.*', line, re.IGNORECASE)
        if line.startswith("\\begin{code}") and s:
          print("\\CodeMiniHoTT{"+str(s.group(1))+"}{%", file=outf)
          while I < len(lines) and not (line.startswith("\\end{code}")):
            line = lines[I]
            print(line, file=outf)
            I = I+1
          if line.startswith("\\end{code}"):
            print("} %end of mini-hott def.", file=outf)
        I = I + 1
