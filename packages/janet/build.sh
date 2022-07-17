TERMUX_PKG_HOMEPAGE="https://github.com/janet-lang/janet"
TERMUX_PKG_DESCRIPTION="A dynamic language and bytecode vm"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="1.25.1"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_SRCURL="https://github.com/janet-lang/janet/archive/refs/tags/v$TERMUX_PKG_VERSION.tar.gz"
TERMUX_PKG_SHA256=0f8a4afaf7b58091e0a61c972ddd959bd61acb2a6306d3120492dee936bf751e
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_DEPENDS="libandroid-spawn, libandroid-support"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
"
termux_step_pre_configure() {
	LDFLAGS+=" -landroid-spawn"
	rm -f "meson.build" "meson_options.txt"
}
