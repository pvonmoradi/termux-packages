TERMUX_PKG_HOMEPAGE="https://github.com/jart/cosmopolitan"
TERMUX_PKG_DESCRIPTION="Build-once run-anywhere C library"
TERMUX_PKG_LICENSE="ISC"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="2.1"
TERMUX_PKG_SRCURL="https://github.com/jart/cosmopolitan/releases/download/2.1/cosmopolitan-$TERMUX_PKG_VERSION.tar.gz"
TERMUX_PKG_SHA256=dfeed442340a84c844dad1b58a63d9ea9b1662823c133e779c5ddf0cbdb5bb6c
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_BUILD_IN_SRC=true
#TERMUX_PKG_DEPENDS=""

termux_step_make() {
    make CFLAGS= CXXFLAGS= CPPFLAGS= LDFLAGS= MODE=rel \
        o/cosmopolitan.h \
        o/cosmopolitan.html \
        o/rel/ape \
        o/rel/cosmopolitan.a \
        o/rel/libc
    ls -alhF
}
