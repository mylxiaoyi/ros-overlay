# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license
EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..10} pypy3 )

inherit distutils-r1

DESCRIPTION="Library for managing source code trees."
HOMEPAGE="http://wiki.ros.org/vcstools"
SRC_URI="https://github.com/${PN}/${PN}/archive/${PV}.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm ~arm64"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
        dev-python/pyyaml[${PYTHON_USEDEP}]
        dev-python/python-dateutil[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
