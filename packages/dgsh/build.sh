TERMUX_PKG_HOMEPAGE="https://www.spinellis.gr/sw/dgsh"
TERMUX_PKG_DESCRIPTION="Directed Graph Shell"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.1.2
TERMUX_PKG_GIT_BRANCH="master"
TERMUX_PKG_SRCURL="https://github.com/dspinellis/dgsh.git"
TERMUX_PKG_BUILD_IN_SRC=true
# TERMUX_PKG_EXTRA_CONFIGURE_ARGS='
# --host=$TERMUX_HOST_PLATFORM
# '


termux_step_get_source() {
	mkdir -p "$TERMUX_PKG_SRCDIR"
	cd "$TERMUX_PKG_SRCDIR"
	git clone --recursive "$TERMUX_PKG_SRCURL"
}

termux_step_make() {
    cd "$TERMUX_PKG_SRCDIR"
    make -j $TERMUX_MAKE_PROCESSES PREFIX="$TERMUX_PREFIX" config
}

# termux_step_host_build() {
# 	cp -rf $TERMUX_PKG_SRCDIR/* ./
# 	./configure --disable-liblua
# 	make bin/generate
# 	make bin/tl-parser
# }

# termux_step_pre_configure() {
# 	# avoid duplicated symbol errors
# 	CFLAGS+=" -fcommon"
# }

# termux_step_post_configure() {
# 	cp -a $TERMUX_PKG_HOSTBUILD_DIR/bin ./
# 	touch -d "next hour" bin/generate bin/tl-parser
# 	sed -i -e 's@-I/usr/local/include@@g' -e 's@-I/usr/include@@g' Makefile
# }

# termux_step_make_install() {
# 	install -Dm700 -t "$TERMUX_PREFIX"/bin/ bin/telegram-cli
# 	install -Dm600 tg-server.pub "$TERMUX_PREFIX"/etc/telegram-cli/server.pub
# 	install -Dm600 -t "$TERMUX_PREFIX"/share/man/man8/ debian/telegram-cli.8
# }
