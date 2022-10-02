TERMUX_PKG_HOMEPAGE="https://github.com/skystrife/cpptoml"
TERMUX_PKG_DESCRIPTION="A header-only library for parsing TOML"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="0.1.1"
TERMUX_PKG_SRCURL="https://github.com/skystrife/cpptoml/archive/refs/tags/v$TERMUX_PKG_VERSION.tar.gz"
TERMUX_PKG_SHA256=23af72468cfd4040984d46a0dd2a609538579c78ddc429d6b8fd7a10a6e24403
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="libc++"
#FIXME ENABLE_LIBCXX should be on. Why:
# Could not find a package configuration file provided by "LIBCXX" with any
#   of the following names:

#     LIBCXXConfig.cmake
#     libcxx-config.cmake
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DENABLE_LIBCXX=OFF
-DCPPTOML_BUILD_EXAMPLES=OFF
"
