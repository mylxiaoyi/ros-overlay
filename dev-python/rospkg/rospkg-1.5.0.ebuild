EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..10} pypy3 )

inherit distutils-r1

DESCRIPTION="Package manager for ROS."
HOMEPAGE="http://wiki.ros.org/rospkg"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm ~arm64"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		"
RDEPEND="${DEPEND}"

# @todo tests
