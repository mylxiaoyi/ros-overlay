# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python3_{8..10} )

inherit ament-cmake

DESCRIPTION="Wrapper around assimp, providing nothing but a dependency on assimp, on som[...]"
HOMEPAGE="http://assimp.sourceforge.net/index.html"
SRC_URI="https://github.com/ros2-gbp/rviz-release/archive/release/galactic/${PN}/8.5.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-galactic/ament_cmake_lint_cmake )
	test? ( ros-galactic/ament_cmake_xmllint )
	test? ( ros-galactic/ament_lint_auto )
	media-libs/assimp
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
