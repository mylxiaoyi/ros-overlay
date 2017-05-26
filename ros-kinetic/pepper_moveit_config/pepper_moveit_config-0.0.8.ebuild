# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="An automatically generated package with all the configuration and launch files for using the Pepper robot with the MoveIt Motion Planning Framework"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-naoqi/pepper_moveit_config-release/archive/release/kinetic/pepper_moveit_config/0.0.8-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/xacro
    ros-kinetic/moveit_simple_controller_manager
    ros-kinetic/moveit_ros_move_group
    ros-kinetic/moveit_planners_ompl
    ros-kinetic/moveit_fake_controller_manager
    ros-kinetic/robot_state_publisher
    ros-kinetic/joint_state_publisher
    ros-kinetic/pepper_description
"
DEPEND="
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