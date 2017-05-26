# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="ROS interface for the grid map library to manage two-dimensional grid maps with multiple data layers."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ethz-asl/grid_map-release/archive/release/kinetic/grid_map_ros/1.4.2-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/grid_map_msgs
    ros-kinetic/costmap_2d
    ros-kinetic/sensor_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/cv_bridge
    ros-kinetic/roscpp
    ros-kinetic/rosbag
    ros-kinetic/grid_map_cv
    ros-kinetic/tf
    ros-kinetic/std_msgs
    ros-kinetic/visualization_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/grid_map_core
"
DEPEND="
    ros-kinetic/grid_map_msgs
    ros-kinetic/costmap_2d
    ros-kinetic/sensor_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/cv_bridge
    ros-kinetic/roscpp
    ros-kinetic/rosbag
    ros-kinetic/grid_map_cv
    ros-kinetic/tf
    ros-kinetic/std_msgs
    ros-kinetic/visualization_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/grid_map_core
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

src_unpack() {
    wget -O ${P}.tar.gz ${SRC_URI}
    tar -xf ${P}.tar.gz
    rm -f ${P}.tar.gz
    mv *${P}* ${P}
}

src_configure() {
    mkdir ${WORKDIR}/src
    cp -R ${WORKDIR}/${P} ${WORKDIR}/src/${P}
}

src_compile() {
    echo ""
}

src_install() {
    echo ""
}

pkg_postinst() {
    cd ../work
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/kinetic" || die
}