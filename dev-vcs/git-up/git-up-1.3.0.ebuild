# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python{2_7,3_3,3_4} )
inherit distutils-r1

DESCRIPTION="A python implementation of git up"
HOMEPAGE="https://github.com/msiemens/PyGitUp"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.zip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	>=dev-python/colorama-0.3.3[${PYTHON_USEDEP}]
	>=dev-python/docopt-0.6.2[${PYTHON_USEDEP}]
	>=dev-python/git-python-1.0.1[${PYTHON_USEDEP}]
	>=dev-python/six-1.9.0[${PYTHON_USEDEP}]
	>=dev-python/termcolor-1.1.0[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"
