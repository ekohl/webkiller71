# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit distutils

DESCRIPTION="Python bindings for the ethtool kernel interface"
HOMEPAGE="http://fedorapeople.org/gitweb?p=dsommers/public_git/python-ethtool.git;a=summary"
SRC_URI="http://dsommers.fedorapeople.org/${PN}/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-libs/libnl"
DEPEND="${RDEPEND}
	app-text/asciidoc"

src_compile() {
	distutils_src_compile

	a2x -d manpage -f manpage man/pethtool.8.asciidoc
	a2x -d manpage -f manpage man/pifconfig.8.asciidoc
}

src_install() {
	distutils_src_install

	newsbin pethtool.py pethtool
	newsbin pifconfig.py pifconfig

	doman man/pethtool.8 man/pifconfig.8
}
