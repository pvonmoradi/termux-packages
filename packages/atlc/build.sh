TERMUX_PKG_HOMEPAGE="http://atlc.sourceforge.net/"
TERMUX_PKG_DESCRIPTION="Arbitrary Transmission Line Calculator (for transmission lines and directional couplers)"
TERMUX_PKG_GROUPS="science"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="4.6.1"
TERMUX_PKG_SRCURL="https://cfhcable.dl.sourceforge.net/project/atlc/atlc/atlc-$TERMUX_PKG_VERSION/atlc-$TERMUX_PKG_VERSION.tar.bz2"
TERMUX_PKG_SHA256=0ad8f9bb2a9c59ed452ffd8fdbad85a53d0c3022e69d479caa4ab9c0a6841321
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-hardware-info
"
