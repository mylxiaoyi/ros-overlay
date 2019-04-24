# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Configuration and launch files to control the Desistek SAGA ROV"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uuvsimulator/desistek_saga-release/archive/release/lunar/${PN}/0.3.2-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/desistek_saga_description
	ros-lunar/uuv_control_cascaded_pid
	ros-lunar/uuv_thruster_manager
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
