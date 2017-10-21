# AdG-gtk-theme
Slight gray modification of Adwaita theme from the GNOME Project.

Two versions are available, Light and Dark, only Gnome 3 is supported.

### Installation
Building requirements:
* 'autoconf'
* 'automake'
* 'sassc'
* 'git'
* 'inkscape (optional for assets)'
* 'optipng (optional for assets)'

#### Clone repository with:

      git clone https://github.com/leipero/adg-gtk-theme.git
      
#### Build and install themes with:

      ./configure
      make
      sudo make install
      
#### Build GDM theme with (you need to install it manutally):

      ./configure --enable-gdm
      make
      
You can find GDM themes in '.../build-aux/themes/gdm/...' (dark and light version), copy 'gnome-shell-theme.gresource' to your '/usr/share/gnome-shell' directory (if GDM is upgraded theme will reset to default and you need to do it again). Do it at your own risk.

#### Uninstall with (from cloned git directory):

      sudo make uninstall

#### Sources:

      https://github.com/GNOME/gtk.git
      https://github.com/GNOME/gnome-themes-standard
      https://github.com/GNOME/gnome-shell
      https://github.com/Jazqa/adwaita-tweaks
