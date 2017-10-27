AUTOMAKE_OPTIONS = subdir-objects

bdir       = $(top_srcdir)/build-aux
themedir   = $(bdir)/themes
dthemedir  = $(themedir)/AdG-Dark
lthemedir  = $(themedir)/AdG-Light
gdmdir     = $(themedir)/gdm
dgdmdir    = $(gdmdir)/dark
lgdmdir    = $(gdmdir)/light
igdmdir    = /usr/share/gnome-shell

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
if ENABLE_GTK
	$(MKDIR_P) $(DESTDIR)
	cp -r $(dthemedir) $(DESTDIR)
	cp -r $(lthemedir) $(DESTDIR)
endif ENABLE_GTK
if ENABLE_GDM_DARK
	mv $(igdmdir)/gnome-shell-theme.gresource $(igdmdir)/gnome-shell-theme.gresource.bak
	cp $(dgdmdir)/gnome-shell-theme.gresource $(igdmdir)
	printf "\033[1;31mRestart GDM or reboot in order for the changes to take effect\033[0m\n"
endif ENABLE_GDM_DARK
if ENABLE_GDM_LIGHT
	mv $(igdmdir)/gnome-shell-theme.gresource $(igdmdir)/gnome-shell-theme.gresource.bak
	cp $(lgdmdir)/gnome-shell-theme.gresource $(igdmdir)
	printf "\033[1;31mRestart GDM or reboot in order for the changes to take effect\033[0m\n"
endif ENABLE_GDM_LIGHT

uninstall-local:
if ENABLE_GTK
	rm -rf $(DESTDIR)/AdG-Dark
	rm -rf $(DESTDIR)/AdG-Light
endif ENABLE_GTK
if ENABLE_GDM_DARK
	rm $(igdmdir)/gnome-shell-theme.gresource
	mv $(igdmdir)/gnome-shell-theme.gresource.bak $(igdmdir)/gnome-shell-theme.gresource
	printf "\033[1;31mRestart GDM or reboot in order for the changes to take effect\033[0m\n"
endif ENABLE_GDM_DARK
if ENABLE_GDM_LIGHT
	rm $(igdmdir)/gnome-shell-theme.gresource
	mv $(igdmdir)/gnome-shell-theme.gresource.bak $(igdmdir)/gnome-shell-theme.gresource
	printf "\033[1;31mRestart GDM or reboot in order for the changes to take effect\033[0m\n"
endif ENABLE_GDM_LIGHT
