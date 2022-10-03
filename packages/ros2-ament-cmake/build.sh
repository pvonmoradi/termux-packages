TERMUX_PKG_HOMEPAGE="https://github.com/ament/ament_cmake"
TERMUX_PKG_DESCRIPTION="Supporting CMake packages for working with ament"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="Pooya Moradi <pvonmoradi@gmail.com>"
TERMUX_PKG_VERSION="1.5.1"
TERMUX_PKG_SRCURL="https://github.com/ament/ament_cmake/archive/refs/tags/$TERMUX_PKG_VERSION.tar.gz"
TERMUX_PKG_SHA256=fef9ee3bdcd34dd330ba9d52db6faa9ce7cc7e38fdcd1c7a6b32201a32e23e95
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="libc++"
# TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
# -DBUILD_SHARED_LIBS=ON
# -DEPROSIMA_BUILD_TESTS=OFF
# "

termux_step_pre_configure() {
	TERMUX_PKG_SRCDIR+="/ament_cmake_core"
}
