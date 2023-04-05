# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake

DESCRIPTION="A 3D multiple robot simulator with dynamics"
HOMEPAGE="https://gazebosim.org/home"
SRC_URI="https://github.com/gazebosim/gz-fuel-tools/archive/refs/tags/gz-fuel-tools8_${PV}.tar.gz -> ${P}.tar.gz"

S=${WORKDIR}/gz-fuel-tools-gz-fuel-tools8_${PV}

LICENSE="Apache-2.0"
# Subslot = major version = soname of libs
SLOT="0/7"
KEYWORDS="~amd64"
#IUSE="cpu_flags_x86_sse2 test"
#RESTRICT="!test? ( test )"

RDEPEND="
	sci-electronics/gz-common
"
DEPEND="${RDEPEND}
"
#BDEPEND="
#	|| ( app-text/ronn-ng app-text/ronn )
#	app-arch/gzip
#	virtual/pkgconfig
#"
CMAKE_BUILD_TYPE=RelWithDebInfo
#PATCHES=(
#	"${FILESDIR}/qwt2.patch"
#	"${FILESDIR}/cmake.patch"
#)

#src_configure() {
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
#	cmake_src_configure
#}
