# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python3_{8..10} )

inherit ament-cmake

DESCRIPTION="The ability to run Python tests using pytest in the ament buildsystem in CMake."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ament_cmake-release/archive/release/foxy/${PN}/0.9.6-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_core
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
