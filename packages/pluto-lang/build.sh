TERMUX_PKG_HOMEPAGE="https://github.com/well-in-that-case/Pluto"
TERMUX_PKG_DESCRIPTION="A superset of Lua 5.4 — with unique features, optimizations, and improvements"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="0.3.2"
TERMUX_PKG_SRCURL="https://github.com/well-in-that-case/Pluto/archive/refs/tags/$TERMUX_PKG_VERSION.tar.gz"
TERMUX_PKG_SHA256=eea057115ea4351b55a2795e39530c5c96378560389843f277c260f99ed778d4
TERMUX_PKG_DEPENDS="readline, liblua54"
TERMUX_PKG_BUILD_IN_SRC=true

# termux_step_pre_configure() {
# }

# termux_step_make() {
# 	ls -alhF
# 	pwd
# 	make
# }
