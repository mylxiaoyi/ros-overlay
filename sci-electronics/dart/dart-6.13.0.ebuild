# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake

DESCRIPTION="DART: Dynamic Animation and Robotics Toolkit"
HOMEPAGE="https://dartsim.github.io"
SRC_URI="https://github.com/dartsim/dart/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

#S=${WORKDIR}/gz-cmake-gz-cmake3_${PV}

LICENSE="BSD"
# Subslot = major version = soname of libs
SLOT="0"
KEYWORDS="~amd64"
#IUSE="cpu_flags_x86_sse2 test"
#RESTRICT="!test? ( test )"

RDEPEND="
	sci-libs/libccd
	sci-libs/fcl
	app-doc/doxygen
	sci-libs/ipopt
	sci-libs/nlopt
	dev-python/pytest
	sci-electronics/pagmo2
	dev-games/ode
"
DEPEND="${RDEPEND}
"
#BDEPEND="
#	|| ( app-text/ronn-ng app-text/ronn )
#	app-arch/gzip
#	virtual/pkgconfig
#"
CMAKE_BUILD_TYPE=RelWithDebInfo
CMAKE_CXX_FLAGS="${CMAKE_CXX_FLAGS} -Wno-error=maybe-uninitialized"
#PATCHES=(
#	"${FILESDIR}/qwt2.patch"
#	"${FILESDIR}/cmake.patch"
#)

src_configure() {
#	# find OGRE properly
#	sed -e "s#lib/OGRE#$(get_libdir)/OGRE#" -i cmake/gazebo-config.cmake.in || die

#	local mycmakeargs=(
#		"-DUSE_UPSTREAM_CFLAGS=OFF"
#		"-DSSE2_FOUND=$(usex cpu_flags_x86_sse2 TRUE FALSE)"
#		"-DUSE_HOST_CFLAGS=FALSE"
#		"-DBUILD_TESTING=$(usex test TRUE FALSE)"
#		"-DENABLE_SCREEN_TESTS=FALSE"
#		"-DUSE_EXTERNAL_TINYXML2=TRUE"
#	)
	local mycmakeargs=(
		"-DDART_TREAT_WARNINGS_AS_ERRORS=OFF"
	)
	cmake_src_configure
}
