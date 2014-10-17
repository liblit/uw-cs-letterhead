General Use
-----------

Start your document with `\documentclass{uw-letterhead}`.  Then
proceed as you ordinarily would if you were using the `letter`
document class.  For example, use `\name{...}`, `\signature{...}`,
`\closing{...}`, `\begin{letter}{} ... \end{letter}`, etc.  Everything
expected in the standard `letter` class works here too.

Render your document to PDF using `pdflatex`.  I have made no effort
to support rendering to DVI using `latex`.


Customization
-------------

The footer mentions a generic departmental e-mail address and web
site.  Use the `username=...` document class option for a more custom
look.  The value of this option should be your CS user name.  For
example, if you are reachable by e-mail as `example@cs.wisc.edu` and
your departmental home page is `http://pages.cs.wisc.edu/~example`,
then use `username=example`.

The footer also mentions a generic departmental phone number.  Use the
`extension=...` document class option to customize this.  The value of
this option should be your 5-digit on-campus phone number, with a
hyphen after the first digit.  For example, if your full office number
is "+1 (608) 261-2345", then use `extension=1-2345`.

The generated document includes extra letterhead content in the header
and footer of the first page of each letter.  If you are using
pre-printed letterhead paper, then use the `preprinted` document class
option to leave these areas blank.  Note that `preprinted` makes the
`username=...` and `extension=...` options moot.


Design
------

The first page of each letter should closely resemble the preprinted
departmental letterhead found in the `letterhead` printer on the 5th
floor of the CS building.  The following are known, intentional
deviations from that paper reference:

* This document class uses the official UW logo derived from material
  provided by
  [University Marketing](http://umark.wisc.edu/brand/print/).  The
  paper letterhead uses an older or alternate logo.

* This document class uses a proper en dash before "Madison" in the
  footer.  The paper letterhead incorrectly uses a hyphen.

* The footer font used by this document class resembles that used by
  the paper letterhead, but the two are not identical.


Non-Bugs
--------

Evince 2.28 as found in RHEL 6 omits the red portion of the "W" crest
in the upper letterhead graphic.  This is an Evince bug, and it also
affects paper copies printed from Evince 2.28.  Avoid this bug by
viewing or printing the document from Acrobat Reader or a later
version of Evince.
