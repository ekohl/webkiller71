# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python2_7 python3_{4,5} )

inherit distutils-r1

DESCRIPTION="Python implementation of git-up"
HOMEPAGE="https://github.com/msiemens/PyGitUp"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.zip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
S="${WORKDIR}/PyGitUp-${PV}"

RDEPEND=">=dev-python/click-6.0.0
	>=dev-python/colorama-0.3.7
	>=dev-python/git-python-2.0.0
	>=dev-python/six-1.10.0
	>=dev-python/termcolor-1.1.0"
DEPEND="${RDEPEND}"
