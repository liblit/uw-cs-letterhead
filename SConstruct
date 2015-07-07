from itertools import chain
from os import environ
from SCons.Script import *

env = Environment()
env.AppendUnique(PDFLATEXFLAGS=['-interaction=batchmode', '-file-line-error'])
env.PrependENVPath('PATH', '/s/texlive-2014/bin')


########################################################################


original = Command('UWlogo_ctr_4c.pdf', Value('http://www.uc.wisc.edu/brand/templates-and-downloads/downloads/print/UWlogo_ctr_4c.pdf'), 'wget --no-verbose --output-document=$TARGET $SOURCE')
cropped = env.Command('uw-logo.pdf', original, 'pdfcrop $SOURCE $TARGET')
eps = env.Command('uw-logo.eps', cropped, 'pdftops -eps $SOURCE $TARGET')

pdf = env.PDF('example.tex')
Depends(pdf, cropped)

dvi = env.DVI('example.tex')
ps = env.PostScript(dvi)
Depends((dvi, ps), eps)

cls = File('uw-cs-letterhead.cls')
Depends((pdf, dvi), cls)
