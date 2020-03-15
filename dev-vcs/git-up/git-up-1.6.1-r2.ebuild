# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_6 )
DISTUTILS_SINGLE_IMPL=1
DISTUTILS_USE_SETUPTOOLS=rdepend

inherit distutils-r1

DESCRIPTION="Python implementation of git-up"
HOMEPAGE="https://github.com/msiemens/PyGitUp"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	${PYTHON_DEPS}
	$(python_gen_cond_dep '
		>=dev-python/click-6.0.0[${PYTHON_MULTI_USEDEP}]
		<dev-python/click-7.0.0[${PYTHON_MULTI_USEDEP}]
		>=dev-python/colorama-0.3.7[${PYTHON_MULTI_USEDEP}]
		>=dev-python/GitPython-2.1.8[${PYTHON_MULTI_USEDEP}]
		>=dev-python/six-1.10.0[${PYTHON_MULTI_USEDEP}]
		>=dev-python/termcolor-1.1.0[${PYTHON_MULTI_USEDEP}]
	')"
DEPEND="${RDEPEND}"
