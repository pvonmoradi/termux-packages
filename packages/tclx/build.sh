TERMUX_PKG_HOMEPAGE=https://github.com/flightaware/tclx
TERMUX_PKG_DESCRIPTION="Provides OS primitives, file scanning, data records, etc. for Tcl"
TERMUX_PKG_LICENSE="BSD"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=8.4.4
TERMUX_PKG_SRCURL="https://github.com/flightaware/tclx/archive/v$TERMUX_PKG_VERSION.tar.gz"
TERMUX_PKG_SHA256=44d834d0996e9a7bbaf22d85d9dc17eac2ccc43ab0243a21087e3944c7bc3825
TERMUX_PKG_DEPENDS="tcl"
TERMUX_PKG_NO_STATICSPLIT=true

TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
ac_cv_func_memcmp_working=yes
ac_cv_func_memcmp=yes
ac_cv_func_strtod=yes
ac_cv_func_strtoul=yes
tcl_cv_strstr_unbroken=ok
tcl_cv_strtod_buggy=ok
tcl_cv_strtod_unbroken=ok
tcl_cv_strtoul_unbroken=ok
--disable-rpath
--enable-man-symlinks
--mandir=$TERMUX_PREFIX/share/man
"

termux_step_pre_configure() {
	CFLAGS+=" -DBIONIC_IOCTL_NO_SIGNEDNESS_OVERLOAD"
}

termux_step_post_make_install() {
	# expect needs private headers
	make install-private-headers
}
