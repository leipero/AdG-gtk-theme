AUTOMAKE_OPTIONS = subdir-objects

bdir       = $(top_srcdir)/build-aux
themedir   = $(bdir)/themes
dthemedir  = $(themedir)/AdG-Dark
lthemedir  = $(themedir)/AdG-Light

ithemedir  = $(DESTDIR)

DESTDIR=/usr/share/

EXTRA_DIST = \
	README.md \
	COPYING

SUBDIRS = src

CLEANFILES = $(srcdir)/config.log \
	     $(srcdir)/config.status \
	     $(srcdir)/Makefile \
	     rm -rf $(themedir)

DISTCLEANFILES = $(CLEANFILES)

install-data-local:
	cp -r $(themedir) $(ithemedir)

uninstall-local:
	rm -rf $(ithemedir)themes/AdG-Dark
	rm -rf $(ithemedir)themes/AdG-Light


