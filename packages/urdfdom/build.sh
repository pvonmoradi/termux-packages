TERMUX_PKG_HOMEPAGE="https://github.com/ros/urdfdom"
TERMUX_PKG_DESCRIPTION="Unified Robot Description Format (URDF) parser library and tools"
TERMUX_PKG_GROUPS="science"
TERMUX_PKG_LICENSE="BSD 3-Clause"
TERMUX_PKG_MAINTAINER="Pooya Moradi <pvonmoradi@gmail.com>"
TERMUX_PKG_VERSION="3.1.0"
TERMUX_PKG_SRCURL="https://github.com/ros/urdfdom/archive/refs/tags/$TERMUX_PKG_VERSION.tar.gz"
TERMUX_PKG_SHA256=fe3bbdfdedbc91359d1be8f094d6a544a941e664ccd6a0c08b061b714e32d216
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="libtinyxml, urdfdom-headers, console-bridge"
TERMUX_PKG_FORCE_CMAKE=true
# block architectures unsupported by libtinyxml
TERMUX_PKG_BLACKLISTED_ARCHES="aarch64, arm, i686"
