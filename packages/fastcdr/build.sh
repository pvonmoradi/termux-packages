TERMUX_PKG_HOMEPAGE="https://github.com/eProsima/Fast-CDR"
TERMUX_PKG_DESCRIPTION="eProsima Fast-CDR for serialization and deserialization mechanisms"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="Pooya Moradi <pvonmoradi@gmail.com>"
TERMUX_PKG_VERSION="1.0.25"
TERMUX_PKG_SRCURL="https://github.com/eProsima/Fast-CDR/archive/refs/tags/v$TERMUX_PKG_VERSION.tar.gz"
TERMUX_PKG_SHA256=57c39a86aa852a7fd5c496bc6e18ffe097b8402fac070e2c3ecb601d804cc15d
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="libc++"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DBUILD_SHARED_LIBS=ON
-DEPROSIMA_BUILD_TESTS=OFF
"
