# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python{2_6,2_7} )
inherit distutils-r1

DESCRIPTION="Tool to submit code to Gerrit"
HOMEPAGE="https://launchpad.net/git-review"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=virtual/python-argparse-1"

python_install() {
	distutils-r1_python_install

	# Hack around installing to /usr/man
	doman git-review.1
	rm -rf "${D}/usr/man"
}
