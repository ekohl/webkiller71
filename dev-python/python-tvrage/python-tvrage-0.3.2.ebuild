# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit distutils

DESCRIPTION="python client for the tvrage.com XML API"
HOMEPAGE="http://pypi.python.org/pypi/python-tvrage"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

AUTHOR="ckreutzer"
REV="083ae6d7f664"
S="${WORKDIR}/${AUTHOR}-${PN}-${REV}"
