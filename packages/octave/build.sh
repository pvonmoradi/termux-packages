TERMUX_PKG_HOMEPAGE="https://octave.org"
TERMUX_PKG_DESCRIPTION="Scientific Programming Language"
TERMUX_PKG_GROUPS="science"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="7.2.0"
TERMUX_PKG_SRCURL="https://ftpmirror.gnu.org/octave/octave-$TERMUX_PKG_VERSION.tar.gz"
TERMUX_PKG_SHA256=b12cb652587d31c5c382b39ed73463c22a5259ecb2fa6b323a27da409222dacc
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_DEPENDS="fftw, curl, graphicsmagick, libhdf5, lfortran, libandroid-glob"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS='
--enable-shared
--disable-jit
--disable-java
--with-hdf5
--disable-docs
'

# termux_step_make() {
#     cd src
#     make
# }

# termux_step_make_install() {
#     cd src
#     make install
# }

