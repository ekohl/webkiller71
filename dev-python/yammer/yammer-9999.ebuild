# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
PYTHON_DEPEND="2:2.4"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

EGIT_REPO_URI="http://github.com/sunlightlabs/python-yammer.git"

inherit distutils git

DESCRIPTION="Python client for Yammer OAuth API"
HOMEPAGE="http://pypi.python.org/pypi/python-yammer/"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-lang/python-2.4
	|| ( >=dev-lang/python-2.6 >=dev-python/simplejson-1.8 )
	>=dev-python/oauth2-1.1.3"
RDEPEND="${DEPEND}"
