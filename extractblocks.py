import re

from pathlib import Path 

import os
import sys

tex = [i for i in list(Path("latex/").glob('*.tex'))]

for i in tex:
  if i.is_file():
    lines = [line.rstrip('\n') for line in open(i, 'r')]
    keep = False
    with open(i, 'w') as outf:
      print("% This file is generated automatically. ", file=outf)
      for line in lines:
        s = re.search('.*latex:(.*)%.*', line, re.IGNORECASE)
        if line.startswith("\\begin{code}") and s:
<<<<<<< HEAD
          # print("line:",line)
=======
          print("line:",line)
>>>>>>> ba1950e7c1bf172e8b9d0dd5d8c6573770e232b6
          print("\\CodeMiniHoTT{"+str(s.group(1))+"}{%", file=outf)
          keep = True
          print(line, file=outf)
        else:
          if keep:
            print(line, file=outf)
            if line.startswith("\\end{code}"):
              keep = False
              print("} %end of mini-hott def.", file=outf)


