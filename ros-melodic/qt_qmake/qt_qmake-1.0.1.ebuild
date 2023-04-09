# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python3_{8..10} )

inherit ros-cmake

DESCRIPTION="qt*-qmake metapackage supporting qt4 and qt5"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/swri-robotics-gbp/qt_metapackages-release/archive/release/melodic/${PN}/1.0.1-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="( United States Government Purpose SwRI Proprietary )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-qt/qtcore:5
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
