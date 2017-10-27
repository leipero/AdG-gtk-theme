# AdG-gtk-theme
Slight gray modification of Adwaita theme from the GNOME Project.

Two versions are available, Light and Dark, only Gnome 3 is supported, but it should work on other GTK DE's.

### Installation
Building requirements:
* `autoconf`
* `automake`
* `sassc`
* `git`
* `inkscape (optional for assets)`
* `optipng (optional for assets)`

#### Clone repository with:

      git clone https://github.com/leipero/adg-gtk-theme.git
      
#### Build and install themes with:

      ./configure
      make
      sudo make install
      
#### Other building options (./configure --help):

      --enable-assets          Render GTK assets
      --enable-gdm             Build both GDM themes without installing them.
      --disable-gtk            Disable GTK building and installation.
      --disable-gnome-shell    Disable Gnome-Shell building and installation.
      --enable-gdm-dark        Build and install Dark GDM theme, use with caution!
      --enable-gdm-light       Build and install Light GDM theme, use with caution!

#### GDM themes:

Installation (`make install`) of GDM themes requires root privileges regardless of prefix used, if installing locally but you want to build GDM themes, use `--enable-gdm` and follow Option 2 in this readme.

##### GDM Option 1:

      ./configure --enable-gdm-light
      make
      sudo make install

you can't use `--enable-gdm-dark` at the same time (and vice-versa), if you use both, durring instalation last one will be installed. If you disable GTK theme (`--disable-gtk`) Gnome-Shell theme will be built but not installed (will be available in build directory).
      
##### GDM Option 2:

      ./configure --enable-gdm
      make
      
You can find GDM themes in `.../build-aux/themes/gdm/...` (dark and light version), copy `gnome-shell-theme.gresource` to your `/usr/share/gnome-shell` directory (if GDM is upgraded theme will reset to default and you need to do it again). Do it at your own risk.

#### Uninstall with (from cloned git directory):

      sudo make uninstall

#### Sources:

   https://github.com/GNOME/gtk.git
   https://github.com/GNOME/gnome-themes-standard
   https://github.com/GNOME/gnome-shell
   https://github.com/Jazqa/adwaita-tweaks
