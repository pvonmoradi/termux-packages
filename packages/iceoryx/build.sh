TERMUX_PKG_HOMEPAGE="https://iceoryx.io"
TERMUX_PKG_DESCRIPTION="Eclipse iceoryx™ - true zero-copy inter-process-communication"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="Pooya Moradi <pvonmoradi@gmail.com>"
TERMUX_PKG_VERSION="2.0.2"
TERMUX_PKG_SRCURL="https://github.com/eclipse-iceoryx/iceoryx/archive/refs/tags/v$TERMUX_PKG_VERSION.tar.gz"
TERMUX_PKG_SHA256=99871bcaa8da4361d1baae9cf1507683058de8572ac3080edc41e590ffba06c0
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="libc++, libacl, ncurses, cpptoml, ndk-sysroot"
# FIXME ERROR pthread_mutexattr_setprotocol not found
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DBINDING_C=ON
-DBUILD_ALL=OFF
-DBUILD_DOC=OFF
-DBUILD_SHARED_LIBS=ON
-DBUILD_STRICT=OFF
-DBUILD_TEST=OFF
-DCCACHE=OFF
-DCOVERAGE=OFF
-DDOWNLOAD_TOML_LIB=OFF
-DEXAMPLES=OFF
-DINTROSPECTION=ON
-DONE_TO_MANY_ONLY=OFF
-DROUDI_ENVIRONMENT=OFF
-DSANITIZE=OFF
-DTEST_WITH_ADDITIONAL_USER=OFF
-DTOML_CONFIG=ON
"

termux_step_pre_configure() {
	TERMUX_PKG_SRCDIR+="/iceoryx_meta"
	ls -alhF "$TERMUX_PREFIX/include"
	ls -alhF "$NDK/sources/android"
	echo "$NDK"
}
