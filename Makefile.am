AUTOMAKE_OPTIONS = subdir-objects

bdir       = $(top_srcdir)/build-aux
themedir   = $(bdir)/themes
dthemedir  = $(themedir)/AdG-Dark
lthemedir  = $(themedir)/AdG-Light

DESTDIR=$(prefix)

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
	$(MKDIR_P) $(DESTDIR)
	cp -r $(dthemedir) $(DESTDIR)
	cp -r $(lthemedir) $(DESTDIR)

uninstall-local:
	rm -rf $(DESTDIR)/AdG-Dark
	rm -rf $(DESTDIR)/AdG-Light


