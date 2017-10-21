AUTOMAKE_OPTIONS = subdir-objects

bdir       = $(top_srcdir)/build-aux
themedir   = $(bdir)/themes
dthemedir  = $(themedir)/AdG-Dark
lthemedir  = $(themedir)/AdG-Light

all:
	cd $(srcdir)/gnome-shell && sassc gnome-shell.scss gnome-shell.css && sassc gnome-shell-light.scss gnome-shell-light.css
	cd $(srcdir)/gtk-3.0 && ./parse-sass.sh
	$(MKDIR_P) $(themedir)
	$(MKDIR_P) $(lthemedir)/gnome-shell
	$(MKDIR_P) $(dthemedir)/gnome-shell
	$(MKDIR_P) $(lthemedir)/gtk-2.0
	$(MKDIR_P) $(dthemedir)/gtk-2.0
	$(MKDIR_P) $(lthemedir)/gtk-3.0
	$(MKDIR_P) $(dthemedir)/gtk-3.0
	cp $(srcdir)/index.theme $(lthemedir)
	cp $(srcdir)/dark-index.theme $(dthemedir)
	cp -r $(srcdir)/gnome-shell/assets $(lthemedir)/gnome-shell
	cp -r $(srcdir)/gnome-shell/assets $(dthemedir)/gnome-shell
	cp $(srcdir)/gnome-shell/gnome-shell-light.css $(lthemedir)/gnome-shell/gnome-shell.css
	cp $(srcdir)/gnome-shell/gnome-shell.css $(dthemedir)/gnome-shell/gnome-shell.css
	cp $(srcdir)/gtk-2.0/*.rc $(lthemedir)/gtk-2.0
	cp $(srcdir)/gtk-2.0/*.rc $(dthemedir)/gtk-2.0
	cp -r $(srcdir)/gtk-2.0/assets $(lthemedir)/gtk-2.0
	cp -r $(srcdir)/gtk-2.0/assets-dark $(dthemedir)/gtk-2.0/assets
	cp $(srcdir)/gtk-2.0/gtkrc $(lthemedir)/gtk-2.0
	cp $(srcdir)/gtk-2.0/gtkrc-dark $(dthemedir)/gtk-2.0/gtkrc
	rm $(lthemedir)/gtk-2.0/hacks-dark.rc
	cp -r $(srcdir)/gtk-3.0/assets $(lthemedir)/gtk-3.0/
	cp -r $(srcdir)/gtk-3.0/assets $(dthemedir)/gtk-3.0/
	cp -r $(srcdir)/gtk-3.0/gtk-contained.css $(lthemedir)/gtk-3.0/gtk.css
	cp -r $(srcdir)/gtk-3.0/gtk-contained-dark.css $(lthemedir)/gtk-3.0/gtk-dark.css
	cp -r $(srcdir)/gtk-3.0/gtk-contained-dark.css $(dthemedir)/gtk-3.0/gtk.css

if ENABLE_GDM
	$(MKDIR_P) $(themedir)/gdm
	$(MKDIR_P) $(themedir)/gdm/dark
	$(MKDIR_P) $(themedir)/gdm/light
	cp -r $(srcdir)/gnome-shell/assets $(themedir)/gdm
	cp $(srcdir)/gnome-shell/gnome-shell-light.css $(themedir)/gdm
	cp $(srcdir)/gnome-shell/gnome-shell.css $(themedir)/gdm
	cp $(srcdir)/gnome-shell/gdm/gnome-shell-theme.gresource.xml $(themedir)/gdm
	cd $(themedir)/gdm && glib-compile-resources gnome-shell-theme.gresource.xml
	mv $(themedir)/gdm/gnome-shell-light.css $(themedir)/gdm/gnome-shell.css
	mv $(themedir)/gdm/gnome-shell-theme.gresource $(themedir)/gdm/dark
	cd $(themedir)/gdm && glib-compile-resources gnome-shell-theme.gresource.xml
	mv $(themedir)/gdm/gnome-shell-theme.gresource $(themedir)/gdm/light
	rm -rf $(themedir)/gdm/assets
	rm $(themedir)/gdm/gnome-shell-theme.gresource.xml
	rm $(themedir)/gdm/gnome-shell.css
endif ENABLE_GDM


EXTRA_DIST = $(srcdir)/gnome-shell \
	     $(srcdir)/gtk-2.0 \
	     $(srcdir)/gtk-3.0 \
	     $(srcdir)/index.theme \
	     $(srcdir)/dark-index.theme

CLEANFILES = $(srcdir)/gnome-shell/gnome-shell-light.css \
	     $(srcdir)/gnome-shell/gnome-shell.css \
	     $(srcdir)/gtk-3.0/gtk-contained.css \
	     $(srcdir)/gtk-3.0/gtk-contained-dark.css \
	     $(srcdir)/Makefile

DISTCLEANFILES = $(CLEANFILES)
