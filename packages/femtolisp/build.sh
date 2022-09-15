TERMUX_PKG_HOMEPAGE="https://github.com/JeffBezanson/femtolisp"
TERMUX_PKG_DESCRIPTION="a lightweight, robust, scheme-like lisp implementation"
TERMUX_PKG_LICENSE="BSD 3-Clause"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_SRCURL="https://github.com/JeffBezanson/femtolisp.git"
TERMUX_PKG_GIT_BRANCH="master"
_COMMIT="ec7601076a976f845bc05ad6bd3ed5b8cde58a97"
TERMUX_PKG_VERSION="2019.06.06"
TERMUX_PKG_BUILD_IN_SRC=true
# TERMUX_PKG_EXTRA_MAKE_ARGS=""
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
