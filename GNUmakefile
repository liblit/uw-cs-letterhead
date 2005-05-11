uw-logo.pdf: %.pdf: %.eps
	epstopdf $<

uw-logo.eps:
	wget -nv -O- http://www.uc.wisc.edu/logo/images/UW_logo_4color_pc.eps | mac2unix >$@

