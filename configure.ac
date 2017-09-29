#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_CONFIG_AUX_DIR([build-aux])
AC_INIT([adg-gtk-theme], [3.22.3], [https://github.com/leipero/adg-gtk-theme])
AM_INIT_AUTOMAKE([-Wall foreign])

# Checks for programs.

AC_PATH_PROG([SASSC], [sassc])
if test x"$SASSC" = x; then
	AC_MSG_ERROR(['sassc' not found.])
fi

# Checks for libraries.

# Checks for header files.

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.

AC_CONFIG_FILES([Makefile
                 src/Makefile])
AC_OUTPUT
