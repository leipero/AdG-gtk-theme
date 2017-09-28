bdir       = $(top_srcdir)/install
themedir   = $(bdir)/themes
dthemedir  = $(themedir)/AdG-Dark
lthemedir  = $(themedir)/AdG-Light

ithemeldir = $(DESTDIR_LOCAL)
ithemedir  = $(DESTDIR)

DESTDIR=/usr/share
DESTDIR_LOCAL=$(top_srcdir)

EXTRA_DIST = \
	README.md \
	COPYING

SUBDIRS = src

CLEANFILES = $(srcdir)/config.log \
	     $(srcdir)/config.status \
	     $(srcdir)/Makefile \
	     rm -rf $(bdir)

DISTCLEANFILES = $(CLEANFILES)

install-exec-hook:

install-data:
	cp -r $(themedir) $(ithemedir)

uninstall-data:
	rm -rf $(ithemedir)/themes/AdG-Dark
	rm -rf $(ithemedir)/themes/AdG-Light

install-data-local:
	cp -r $(themedir) $(ithemeldir)

uninstall-local:
	rm -rf $(ithemeldir)/themes


