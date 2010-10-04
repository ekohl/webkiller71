# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit eutils

DESCRIPTION="Simple TCP proxy."
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"
HOMEPAGE="http://sourceforge.net/projects/simpleproxy"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND=""

src_prepare(){
	# prepare the man page
	sed -i 's/^.TP8$/.TP 8/' simpleproxy.man
	mv simpleproxy.man simpleproxy.1

	# Address some mdns performance issues
	epatch "${FILESDIR}/${PN}-3.4-mdns.patch"
}

src_install(){
	dobin simpleproxy
	dodoc README pop3users.txt ChangeLog
	doman simpleproxy.1
}
