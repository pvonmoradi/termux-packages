TERMUX_PKG_HOMEPAGE="https://sr.ht/~lattis/muon"
TERMUX_PKG_DESCRIPTION="An implementation of the meson build system in c99 with minimal dependencies"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_SRCURL="https://git.sr.ht/~lattis/muon"
TERMUX_PKG_GIT_BRANCH=master
TERMUX_PKG_SHA256=SKIP_CHECKSUM
TERMUX_PKG_VERSION=2022.09.30
_COMMIT=697a69b5ec91c4568a77ff666bae049931e709b3
TERMUX_PKG_DEPENDS="clang, ninja, pkg-config, libcurl, libarchive, samurai"
TERMUX_PKG_BUILD_DEPENDS="scdoc"

termux_step_get_source() {
	termux_git_clone_src
}

termux_step_post_get_source() {
	git fetch --unshallow
	git checkout $_COMMIT

	local version="$(git log -1 --date=format:"%Y.%m.%d" --format="%ad")"
	if [ "$version" != "$TERMUX_PKG_VERSION" ]; then
		echo -n "ERROR: The specified version \"$TERMUX_PKG_VERSION\""
		echo " is different from what is expected to be: \"$version\""
		return 1
	fi
}
