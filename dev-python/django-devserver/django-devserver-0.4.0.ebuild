# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python{2_5,2_6,2_7} )
inherit distutils-r1

DESCRIPTION="A drop-in replacement for Django's runserver"
HOMEPAGE="http://github.com/dcramer/django-devserver"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="guppy sqlparse werkzeug"

DEPEND=""
RDEPEND="${DEPEND}
	>=dev-python/django-1.1
	guppy? ( dev-python/guppy )
	sqlparse? ( dev-python/python-sqlparse )
	werkzeug? ( dev-python/werkzeug )"
