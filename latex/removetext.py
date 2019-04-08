import re

from pathlib import Path 


# with open('/tmp/workfile', 'r') as f:
#       for line in f:
#           print re.match(REGEX,line)

import os
import sys

tex = [i for i in list(Path(".").glob('*.tex'))]

for i in tex:
  if i.is_file():
    lines = [line.rstrip('\n') for line in open(i, 'r')]
    keep = False
    with open(i, 'wt') as outf:
      for line in lines:
        if line.startswith("\\begin{code}"):
          try:
            pp = re.search('.*latex:(.*)\%.*', line, re.IGNORECASE).group(1)
            print("\\CodeMiniHoTT{%}{%"%pp, file=outf)
          except: pass
          keep = True
          print(line, file=outf)
        else:
          if keep:
            print(line, file=outf)
          if line.startswith("\\end{code}"):
            keep = False
            print("} %end of mini-hott def.")


