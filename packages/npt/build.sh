TERMUX_PKG_HOMEPAGE="https://github.com/nptcl/npt"
TERMUX_PKG_DESCRIPTION="ANSI Common Lisp implementation"
TERMUX_PKG_LICENSE="Unlicense"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="1.1.1"
TERMUX_PKG_SRCURL="https://github.com/nptcl/npt/archive/refs/tags/v$TERMUX_PKG_VERSION.tar.gz"
TERMUX_PKG_SHA256=f154eb622b0fd96efde678d8292ac2bdbb899be64221441eadf0a963b4fc0429
TERMUX_PKG_DEPENDS="readline, libandroid-support"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--with-readline
"

termux_step_pre_configure() {
	./bootstrap.sh
	autoreconf -fi
}
