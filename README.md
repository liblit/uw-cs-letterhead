General Use
-----------

Start your document with `\documentclass{uw-cs-letterhead}`.  Then
proceed as you ordinarily would if you were using the
[`letter` document class](http://www.texdoc.net/pkg/letter).  For
example, use `\name{...}`, `\signature{...}`, `\closing{...}`,
`\begin{letter}{} ... \end{letter}`, etc.  Everything expected in the
standard `letter` class works here too.


Customization
-------------

If you use the standard `\name{...}` macro from the `letter` document
class to set the sender's name, this will also appear in the footer
before “Department of Computer Sciences”.

The footer mentions a generic departmental e-mail address and web
site.  Use the `username=...` document class option for a more custom
look.  The value of this option should be your CS user name.  For
example, if you are reachable by e-mail as `bucky@cs.wisc.edu` and
your departmental home page is `http://pages.cs.wisc.edu/~bucky`,
then use `username=bucky`.

The footer also mentions a generic departmental phone number.  Use the
`extension=...` document class option to customize this.  The value of
this option should be your 5-digit on-campus phone number, with a
hyphen after the first digit.  For example, if your full office number
is “+1 (608) 262-1940”, then use `extension=2-1940`.

The generated document includes extra letterhead content in the header
and footer of the first page of each letter.  If you are using
pre-printed letterhead paper, then use the `preprinted` document class
option to leave these areas blank.  Note that `preprinted` makes the
`username=...` and `extension=...` options moot.

The footer text on the first page of each letter uses the default
sans-serif font.  If you load other packages that change the default
sans-serif font, that change will apply to the footer as well.


Design
------

The first page of each letter should closely resemble the preprinted
departmental letterhead found in the `letterhead` printer on the 5th
floor of the CS building.  The following are known deviations from
that paper reference:

* This document class uses the official UW logo derived from material
  provided by
  [University Marketing](http://umark.wisc.edu/brand/print/).  The
  paper letterhead uses an older or alternate logo.

* The footer of this document class refers to the department as the
  “Department of Computer Sciences”, which is its proper name.  The
  paper letterhead incorrectly refers to the department as the
  “Computer Sciences Department”.

* The footer of this document class uses a proper en dash before
  “Madison”.  The paper letterhead incorrectly uses a hyphen.

* The footer of the paper letterhead uses Friz Quadrata Bold on the
  first line and Optima on the remaining lines.  These commercial
  fonts are not available in a standard TeXLive installation.
  Therefore, this document class uses the default sans-serif font for
  the entire footer, boldfaced on the first line.  As mentioned above,
  if you have loaded other packages that change the default sans-serif
  font, that change will apply to the footer as well.


Non-Bugs
--------

Evince 2.28 as found in Red Hat Enterprise Linux 6 omits the red
portion of the “W” crest in the upper letterhead graphic.  This is an
Evince bug, and it also affects paper copies printed from Evince 2.28.
Avoid this bug by viewing or printing the document from Acrobat Reader
or a later version of Evince.
