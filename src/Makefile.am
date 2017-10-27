AUTOMAKE_OPTIONS = subdir-objects

bdir       = $(top_srcdir)/build-aux
themedir   = $(bdir)/themes
dthemedir  = $(themedir)/AdG-Dark
lthemedir  = $(themedir)/AdG-Light
gdmdir     = $(themedir)/gdm
dgdmdir    = $(gdmdir)/dark
lgdmdir    = $(gdmdir)/light

all:
if ENABLE_ASSETS
	rm $(srcdir)/gtk-3.0/assets/*.png
	cd $(srcdir)/gtk-3.0 && ./render-assets.sh
	cp $(srcdir)/gtk-3.0/common/* $(srcdir)/gtk-3.0/assets/
	rm $(srcdir)/gtk-2.0/assets/*.png
	rm $(srcdir)/gtk-2.0/assets-dark/*.png
	cd $(srcdir)/gtk-2.0 && ./render-assets.sh
	cd $(srcdir)/gtk-2.0 && ./render-assets-external.sh
endif ENABLE_ASSETS
if ENABLE_GNOME_SHELL
	$(MKDIR_P) $(lthemedir)/gnome-shell
	$(MKDIR_P) $(dthemedir)/gnome-shell
	cd $(srcdir)/gnome-shell && sassc gnome-shell.scss gnome-shell.css && sassc gnome-shell-light.scss gnome-shell-light.css
	cp -r $(srcdir)/gnome-shell/assets $(lthemedir)/gnome-shell
	cp -r $(srcdir)/gnome-shell/assets $(dthemedir)/gnome-shell
	cp $(srcdir)/gnome-shell/gnome-shell-light.css $(lthemedir)/gnome-shell/gnome-shell.css
	cp $(srcdir)/gnome-shell/gnome-shell.css $(dthemedir)/gnome-shell/gnome-shell.css
endif ENABLE_GNOME_SHELL
if ENABLE_GTK
	$(MKDIR_P) $(lthemedir)/gtk-2.0
	$(MKDIR_P) $(dthemedir)/gtk-2.0
	$(MKDIR_P) $(lthemedir)/gtk-3.0
	$(MKDIR_P) $(dthemedir)/gtk-3.0
	cd $(srcdir)/gtk-3.0 && ./parse-sass.sh
	cp $(srcdir)/index.theme $(lthemedir)
	cp $(srcdir)/dark-index.theme $(dthemedir)
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
endif ENABLE_GTK
if ENABLE_GDM
	$(MKDIR_P) $(dgdmdir)
	$(MKDIR_P) $(lgdmdir)
	cd $(srcdir)/gnome-shell && sassc gnome-shell.scss gnome-shell.css && sassc gnome-shell-light.scss gnome-shell-light.css
	cp -r $(srcdir)/gnome-shell/assets $(gdmdir)
	cp $(srcdir)/gnome-shell/gnome-shell-light.css $(gdmdir)
	cp $(srcdir)/gnome-shell/gnome-shell.css $(gdmdir)
	cp $(srcdir)/gnome-shell/gdm/gnome-shell-theme.gresource.xml $(gdmdir)
	cd $(gdmdir) && glib-compile-resources gnome-shell-theme.gresource.xml
	mv $(gdmdir)/gnome-shell-light.css $(gdmdir)/gnome-shell.css
	mv $(gdmdir)/gnome-shell-theme.gresource $(dgdmdir)
	cd $(gdmdir) && glib-compile-resources gnome-shell-theme.gresource.xml
	mv $(gdmdir)/gnome-shell-theme.gresource $(lgdmdir)
	rm -rf $(gdmdir)/assets
	rm $(gdmdir)/gnome-shell-theme.gresource.xml
	rm $(gdmdir)/gnome-shell.css
endif ENABLE_GDM
if ENABLE_GDM_DARK
	$(MKDIR_P) $(dgdmdir)
	cd $(srcdir)/gnome-shell && sassc gnome-shell.scss gnome-shell.css
	cp -r $(srcdir)/gnome-shell/assets $(gdmdir)
	cp $(srcdir)/gnome-shell/gnome-shell.css $(gdmdir)
	cp $(srcdir)/gnome-shell/gdm/gnome-shell-theme.gresource.xml $(gdmdir)
	cd $(gdmdir) && glib-compile-resources gnome-shell-theme.gresource.xml
	mv $(gdmdir)/gnome-shell-theme.gresource $(dgdmdir)
	rm -rf $(gdmdir)/assets
	rm $(gdmdir)/gnome-shell-theme.gresource.xml
	rm $(gdmdir)/gnome-shell.css
endif ENABLE_GDM_DARK
if ENABLE_GDM_LIGHT
	$(MKDIR_P) $(lgdmdir)
	cd $(srcdir)/gnome-shell && sassc gnome-shell-light.scss gnome-shell-light.css
	cp -r $(srcdir)/gnome-shell/assets $(gdmdir)
	cp $(srcdir)/gnome-shell/gnome-shell-light.css $(gdmdir)/gnome-shell.css
	cp $(srcdir)/gnome-shell/gdm/gnome-shell-theme.gresource.xml $(gdmdir)
	cd $(gdmdir) && glib-compile-resources gnome-shell-theme.gresource.xml
	mv $(gdmdir)/gnome-shell-theme.gresource $(lgdmdir)
	rm -rf $(gdmdir)/assets
	rm $(gdmdir)/gnome-shell-theme.gresource.xml
	rm $(gdmdir)/gnome-shell.css
endif ENABLE_GDM_LIGHT

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
