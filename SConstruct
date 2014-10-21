from itertools import chain
from os import environ
from SCons.Script import *

env = Environment()
env.AppendUnique(PDFLATEXFLAGS=['-interaction=batchmode', '-file-line-error'])
env.PrependENVPath('PATH', '/s/texlive-2012/bin')


########################################################################


original = Command('UWlogo_ctr_4c.pdf', Value('http://www.uc.wisc.edu/brand/templates-and-downloads/downloads/print/UWlogo_ctr_4c.pdf'), 'wget --no-verbose --output-document=$TARGET $SOURCE')
cropped = Command('uw-logo.pdf', original, 'pdfcrop $SOURCE $TARGET')
eps = Command('uw-logo.eps', cropped, 'pdftops -eps $SOURCE $TARGET')

example = env.PDF('example.tex')
Depends(example, cropped)
