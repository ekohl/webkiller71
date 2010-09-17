# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit distutils

DESCRIPTION="A user-friendly web portal simplifies the translation process"
HOMEPAGE="http://translate.sourceforge.net/wiki/pootle/index"
SRC_URI="mirror://sourceforge/project/translate/${PN}/${PV}/${P}.tar.bz2"

LICENSE="GPL-1"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-lang/python-2.4"
RDEPEND="${DEPEND}
	>=dev-python/django-1.0.4
	>=dev-python/translate-toolkit-1.8.0
	dev-python/lxml
	dev-python/south"
