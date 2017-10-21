#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_CONFIG_AUX_DIR([build-aux])
AC_INIT([adg-gtk-theme], [3.22.3], [https://github.com/leipero/adg-gtk-theme])
AM_INIT_AUTOMAKE([-Wall foreign])


AC_PATH_PROG([SASSC], [sassc])
if test x"$SASSC" = x; then
	AC_MSG_ERROR(['sassc' not found.])
fi

AC_ARG_ENABLE(gdm,
    [  --enable-gdm         Build GDM theme],
    [ENABLE_GDM="$enableval"],
    [ENABLE_GDM="no"])
AM_CONDITIONAL([ENABLE_GDM], [test "x$ENABLE_GDM" = "xyes"])

AC_ARG_ENABLE(assets,
    [  --enable-assets         Render GTK assets],
    [ENABLE_ASSETS="$enableval"],
    [ENABLE_ASSETS="no"])
AM_CONDITIONAL([ENABLE_ASSETS], [test "x$ENABLE_ASSETS" = "xyes"])

AC_CONFIG_FILES([Makefile
                 src/Makefile])
AC_OUTPUT
