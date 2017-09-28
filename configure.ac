AC_INIT([AdG-Dark],[AdG-Light])
AC_CONFIG_AUX_DIR([build-aux])
AM_INIT_AUTOMAKE([
	foreign \
	subdir-objects \
	1.9])
AC_PATH_PROG([SASSC], [sassc])
if test x"$SASSC" = x; then
	AC_MSG_ERROR(['sassc' not found.])
fi
AC_CONFIG_FILES([
	Makefile \
	src/Makefile
])
AC_PREFIX_DEFAULT(/usr)
AC_OUTPUT
