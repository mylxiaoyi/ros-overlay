# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python3_{8..10} )

inherit ament-cmake

DESCRIPTION="Vendor library for SDL2."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/joystick_drivers-release/archive/release/galactic/${PN}/3.0.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	media-libs/libsdl2
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
