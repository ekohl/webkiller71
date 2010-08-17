# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-irc/ngircd/ngircd-13.ebuild,v 1.2 2009/09/23 18:44:41 patrick Exp $

EAPI=3

inherit eutils

DESCRIPTION="A IRC server written from scratch."
HOMEPAGE="http://ngircd.barton.de/"
SRC_URI="ftp://ftp.berlios.de/pub/${PN}/${P}.tar.gz
	ftp://ngircd.barton.de/pub/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE="zlib tcpd debug ident ssl ipv6 zeroconf"
RESTRICT="test"

DEPEND="zlib? ( sys-libs/zlib )
	ident? ( net-libs/libident )
	tcpd? ( sys-apps/tcp-wrappers )
	ssl? ( dev-libs/openssl )
	zeroconf? ( net-dns/avahi[howl-compat] )
	>=sys-apps/sed-4"

src_prepare() {
	sed -i \
		-e "s:/usr/local/etc/ngircd.motd:/etc/ngircd/ngircd.motd:" \
		-e "s:;ServerUID = 65534:ServerUID = ngircd:" \
		-e "s:;ServerGID = 65534:ServerGID = nogroup:" \
		doc/sample-ngircd.conf
}

src_configure() {
	econf \
		--sysconfdir=/etc/ngircd \
		--docdir=/usr/share/doc/${PF} \
		$(use_with zlib) \
		$(use_with tcpd tcp-wrappers) \
		$(use_with ident ) \
		$(use_with ssl openssl) \
		$(use_with zeroconf) \
		$(use_enable debug) \
		$(use_enable debug sniffer) \
		$(use_enable ipv6)
}

src_install() {
	# The docdir is needed for <ngircd-17. See 
	# http://arthur.barton.de/cgi-bin/bugzilla3/show_bug.cgi?id=108
	emake \
		DESTDIR="${D}" \
		docdir=/usr/share/doc/${PF} \
		install || die "make install failed"

	newinitd "${FILESDIR}"/ngircd.init.d ngircd
}

pkg_postinst() {
	enewuser ngircd
	chown ngircd "${ROOT}"/etc/ngircd/ngircd.conf
}
