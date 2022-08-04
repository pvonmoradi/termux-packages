TERMUX_PKG_HOMEPAGE="https://github.com/RTimothyEdwards/irsim"
TERMUX_PKG_DESCRIPTION="IRSIM switch-level simulator for digital circuits"
TERMUX_PKG_GROUPS="science"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="9.7.113"
TERMUX_PKG_SRCURL="https://github.com/RTimothyEdwards/irsim/archive/refs/tags/$TERMUX_PKG_VERSION.tar.gz"
TERMUX_PKG_SHA256=d24b1453f86087e6383c678568a47f2c8d06576f8436823f25dd3410ccb80fb9
TERMUX_PKG_BUILD_IN_SRC=true

TERMUX_PKG_EXTRA_CONFIGURE_ARGS='
--prefix="$TERMUX_PREFIX/"
'

termux_step_pre_configure() {
    ls -alhF
    pwd
}

# termux_step_make() {
#     cd src
#     make
# }

# termux_step_make_install() {
#     cd src
#     make install
# }

