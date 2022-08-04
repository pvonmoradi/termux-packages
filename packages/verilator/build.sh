TERMUX_PKG_HOMEPAGE="https://www.veripool.org/verilator/"
TERMUX_PKG_DESCRIPTION="Fast and robust (System)Verilog simulator/compiler"
TERMUX_PKG_GROUPS="science"
TERMUX_PKG_LICENSE="LGPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="4.224"
TERMUX_PKG_SRCURL="https://github.com/verilator/verilator/archive/refs/tags/v$TERMUX_PKG_VERSION.tar.gz"
TERMUX_PKG_SHA256=010ff2b5c76d4dbc2ed4a3278a5599ba35c8ed4c05690e57296d6b281591367b
TERMUX_PKG_BUILD_IN_SRC=true

TERMUX_PKG_EXTRA_CONFIGURE_ARGS='
'

termux_step_pre_configure() {
    CFLAGS+=" -std=c++11"
    autoreconf -fi
}

# termux_step_make() {
#     cd src
#     make
# }

# termux_step_make_install() {
#     cd src
#     make install
# }

