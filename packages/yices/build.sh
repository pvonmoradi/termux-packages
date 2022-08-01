TERMUX_PKG_HOMEPAGE="https://github.com/SRI-CSL/yices2"
TERMUX_PKG_DESCRIPTION="The Yices SMT Solver"
TERMUX_PKG_GROUPS="science"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_LICENSE_FILE="LICENSE.txt"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="2.6.4"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_SRCURL="https://github.com/SRI-CSL/yices2/archive/refs/tags/Yices-$TERMUX_PKG_VERSION.tar.gz"
TERMUX_PKG_SHA256=533a24e020ecb7d64c03a965d598430d193651e2887e6f46924dec5786db78cb
TERMUX_PKG_DEPENDS="libgmp, gperf"
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_configure() {
    ls -alhF
    pwd
    build=$(./config.guess)
    autoreconf -fi
    ./configure --prefix="$TERMUX_PREFIX" \
        --build="$build"
}

termux_step_make() {
    make
}

termux_step_make_install() {
    make install
}
