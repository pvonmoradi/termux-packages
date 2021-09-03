TERMUX_PKG_HOMEPAGE=https://www.spinellis.gr/sw/dgsh/
TERMUX_PKG_DESCRIPTION="Directed Graph Shell"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.0.0
TERMUX_PKG_SRCURL="https://github.com/dspinellis/dgsh.git"
TERMUX_PKG_GIT_BRANCH=v${TERMUX_PKG_VERSION}
TERMUX_PKG_DEPENDS="fftw,rsync,check,libelf"
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_configure() {
	cd $TERMUX_PKG_SRCDIR
	sed 's/\.\/configure\ --prefix=$(PREFIX)/\.\/configure\ --prefix=$(PREFIX)\ --host=$(TERMUX_HOST_PLATFORM)/g' -i Makefile
	sed 's/\.\/configure\ --prefix=$(PREFIX)/\.\/configure\ --prefix=$(PREFIX)\ --host=$(TERMUX_HOST_PLATFORM)/g' -i unix-tools/Makefile
	make PREFIX=$TERMUX_PREFIX TERMUX_HOST_PLATFORM=$TERMUX_HOST_PLATFORM config
}
