TERMUX_PKG_HOMEPAGE="https://github.com/eProsima/Fast-DDS"
TERMUX_PKG_DESCRIPTION=""
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="Pooya Moradi <pvonmoradi@gmail.com>"
TERMUX_PKG_VERSION="2.6.2"
TERMUX_PKG_SRCURL="https://github.com/eProsima/Fast-DDS/archive/refs/tags/v$TERMUX_PKG_VERSION.tar.gz"
TERMUX_PKG_SHA256=463af750b4d956710611d58179e02817de65f3f9beb94c600c74d826b0746a84
TERMUX_PKG_AUTO_UPDATE=false
TERMUX_PKG_DEPENDS="libc++, openssl, p11-kit, libsqlite, fastcdr, libasio, libtinyxml2, boost, foonathan-memory"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DBUILD_SHARED_LIBS=ON
-DSECURITY=ON
-DNO_TLS=OFF
-DSQLITE3_SUPPORT=ON
-DSHM_TRANSPORT_DEFAULT=OFF
-DFASTDDS_STATISTICS=ON
-DCOMPILE_EXAMPLES=OFF
-DINSTALL_EXAMPLES=OFF
-DINSTALL_TOOLS=ON
"

#FIXME related to SHM_TRANSPORT_DEFAULT ?
# -- Change Dir: /home/builder/.termux-build/fastdds/build/CMakeFiles/CMakeTmp

# Run Build Command(s):/home/builder/.termux-build/_cache/ninja-1.10.2/ninja cmTC_108ca && [1/2] Building CXX object CMakeFiles/cmTC_108ca.dir/ThirdpartyBoostCompile_test.cp
# p.o
# [2/2] Linking CXX executable cmTC_108ca
# FAILED: cmTC_108ca
# : && /home/builder/.termux-build/_cache/android-r25b-api-24-v0/bin/clang++ --target=aarch64-none-linux-android --gcc-toolchain=/home/builder/.termux-build/_cache/android-r
# 25b-api-24-v0 --sysroot=/home/builder/.termux-build/_cache/android-r25b-api-24-v0/sysroot -fstack-protector-strong -Oz --target=aarch64-linux-android24  -I/data/data/com.t
# ermux/files/usr/include -Wall -pedantic -Wextra -Wno-unknown-pragmas -Wno-error=deprecated-declarations  -O2 -g -DNDEBUG -fPIE -pie -Wl,--gc-sections -L/data/data/com.term
# ux/files/usr/lib -Wl,-rpath=/data/data/com.termux/files/usr/lib -fopenmp -static-openmp -Wl,--enable-new-dtags -Wl,--as-needed -Wl,-z,relro,-z,now -Wl,--no-as-needed,-land
# roid-support,--as-needed --target=aarch64-linux-android24 CMakeFiles/cmTC_108ca.dir/ThirdpartyBoostCompile_test.cpp.o -o cmTC_108ca   && :
# ld: error: undefined symbol: libandroid_sem_unlink
# >>> referenced by semaphore_wrapper.hpp:132 (/home/builder/.termux-build/fastdds/src/thirdparty/boost/include/boost/interprocess/sync/posix/semaphore_wrapper.hpp:132)
# >>>               CMakeFiles/cmTC_108ca.dir/ThirdpartyBoostCompile_test.cpp.o:(boost::interprocess::ipcdetail::semaphore_unlink(char const*))
# clang-14: error: linker command failed with exit code 1 (use -v to see invocation)
# ninja: build stopped: subcommand failed.
