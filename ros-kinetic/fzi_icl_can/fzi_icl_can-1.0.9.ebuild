# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The fzi_icl_can package"
HOMEPAGE="http://wiki.ros.org/fzi_icl_can"
SRC_URI="https://github.com/fzi-forschungszentrum-informatik/fzi_icl_can-release/archive/release/kinetic/fzi_icl_can/1.0.9-0.tar.gz"

LICENSE="LGPLv3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/catkin
    ros-kinetic/fzi_icl_core
    sys-kernel/linux-headers
    dev-libs/popt
"
DEPEND="
    ros-kinetic/fzi_icl_core
    dev-libs/popt
    net-misc/wget
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