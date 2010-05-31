# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit distutils

DESCRIPTION="RSS Broadcatcher for podcasts, videocasts, and torrent feeds"
HOMEPAGE="http://code.google.com/p/rssdler/"
SRC_URI="http://${PN}.googlecode.com/files/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="mechanize"

DEPEND=""
RDEPEND="${DEPEND}
	dev-python/feedparser
	mechanize? ( dev-python/mechanize )"

S="${WORKDIR}/${PN}${PV//./}"
