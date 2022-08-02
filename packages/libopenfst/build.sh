TERMUX_PKG_HOMEPAGE="https://www.openfst.org/twiki/bin/view/FST/WebHome"
TERMUX_PKG_DESCRIPTION="Library for constructing, combining, optimizing, and searching weighted finite-state transducers"
TERMUX_PKG_GROUPS="science"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="1.8.2"
TERMUX_PKG_SRCURL="https://www.openfst.org/twiki/pub/FST/FstDownload/openfst-1.8.2.tar.gz"
TERMUX_PKG_SHA256=de987bf3624721c5d5ba321af95751898e4f4bb41c8a36e2d64f0627656d8b42
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS='
--enable-compact-fsts
--enable-compress
--enable-const-fsts
--enable-far
--enable-linear-fsts
--enable-lookahead-fsts
--enable-mpdt
--enable-ngram-fsts
--enable-pdt
'

termux_step_pre_configure() {
    autoreconf -fi
}
# fatal error: 'ac_nonexistent.h' file not found
