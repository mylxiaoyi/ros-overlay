# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python3_{8..10} )

inherit ament-cmake

DESCRIPTION="Code to benchmark rosbag2"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosbag2-release/archive/release/galactic/${PN}/0.9.2-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/rclcpp
	ros-galactic/rmw
	ros-galactic/rosbag2_compression
	ros-galactic/rosbag2_cpp
	ros-galactic/rosbag2_storage
	ros-galactic/std_msgs
	ros-galactic/yaml_cpp_vendor
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
