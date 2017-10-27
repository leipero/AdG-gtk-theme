AC_CONFIG_AUX_DIR([build-aux])
AC_INIT([adg-gtk-theme], [3.22.3], [https://github.com/leipero/adg-gtk-theme])
AM_INIT_AUTOMAKE([-Wall foreign])

AC_PATH_PROG([SASSC], [sassc])
if test x"$SASSC" = x; then
	AC_MSG_ERROR(['sassc' not found.])
fi

AC_ARG_ENABLE(assets,
    [  --enable-assets         Render GTK assets.],
    [ENABLE_ASSETS="yes"],
    [ENABLE_ASSETS="no"])
AM_CONDITIONAL([ENABLE_ASSETS], [test "x$ENABLE_ASSETS" = "xyes"])

AC_ARG_ENABLE(gdm,
    [  --enable-gdm            Build both GDM themes without installing them.],
    [ENABLE_GDM="yes"],
    [ENABLE_GDM="no"])
AM_CONDITIONAL([ENABLE_GDM], [test "x$ENABLE_GDM" = "xyes"])

AC_ARG_ENABLE(gtk,
    [  --disable-gtk           Disable GTK building and installation.],
    [ENABLE_GTK="yes"],
    [ENABLE_GTK="no"])
AM_CONDITIONAL([ENABLE_GTK], [test "x$ENABLE_GTK" = "xno"])

AC_ARG_ENABLE(gnome-shell,
    [  --disable-gnome-shell   Disable Gnome-Shell building and installation.],
    [ENABLE_GNOME_SHELL="yes"],
    [ENABLE_GNOME_SHELL="no"])
AM_CONDITIONAL([ENABLE_GNOME_SHELL], [test "x$ENABLE_GNOME_SHELL" = "xno"])

AC_ARG_ENABLE(gdm-dark,
    [  --enable-gdm-dark       Build and install Dark GDM theme, use with care!],
    [ENABLE_GDM_DARK="yes"],
    [ENABLE_GDM_DARK="no"])
AM_CONDITIONAL([ENABLE_GDM_DARK], [test "x$ENABLE_GDM_DARK" = "xyes"])

AC_ARG_ENABLE(gdm-light,
    [  --enable-gdm-light      Build and install Light GDM theme, use with care!],
    [ENABLE_GDM_LIGHT="yes"],
    [ENABLE_GDM_LIGHT="no"])
AM_CONDITIONAL([ENABLE_GDM_LIGHT], [test "x$ENABLE_GDM_LIGHT" = "xyes"])

AC_PREFIX_DEFAULT(/usr/share/themes/)
AC_CONFIG_FILES([Makefile
                 src/Makefile])
AC_OUTPUT
