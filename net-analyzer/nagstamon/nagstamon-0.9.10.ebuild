# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

PYTHON_COMPAT=( python{2_6,2_7} )

inherit eutils distutils-r1

MY_PN="Nagstamon"
MY_P="${MY_PN}-${PV/_/-}"

DESCRIPTION="Nagstamon is a Nagios status monitor for a systray and displays a realtime status of a Nagios box"
HOMEPAGE="http://nagstamon.ifw-dresden.de"
SRC_URI="mirror://sourceforge/${PN}/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="gnome sound"

DEPEND="${PYTHON_DEPS}"
RDEPEND="${DEPEND}
	dev-python/pygtk[${PYTHON_USEDEP}]
	dev-python/lxml[${PYTHON_USEDEP}]
	dev-python/beautifulsoup:python-2
	gnome-base/librsvg
	gnome? ( dev-python/egg-python )
	sound? ( media-sound/sox )"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	rm Nagstamon/resources/LICENSE
	rm Nagstamon/BeautifulSoup.py
}

src_install() {
	domenu "${FILESDIR}"/${PN}.desktop

	distutils-r1_src_install
}
