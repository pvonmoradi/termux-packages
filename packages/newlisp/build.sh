TERMUX_PKG_HOMEPAGE=http://www.newlisp.org/index.cgi?Home
TERMUX_PKG_DESCRIPTION="A LISP like, general purpose scripting language"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=10.6.2
TERMUX_PKG_SRCURL="http://www.newlisp.org/code/newlisp-ndk-$TERMUX_PKG_VERSION.tgz"
TERMUX_PKG_SHA256=4afb8aedb182805b6bf392bd2258e2324e98084f137292bb74698616d4bc0efb
TERMUX_PKG_DEPENDS="readline,libffi"
TERMUX_PKG_BUILD_IN_SRC=true
# TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--with-ffi --with-readline"
