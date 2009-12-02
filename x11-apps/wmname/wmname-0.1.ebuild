# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Print and set the window manager name property of the root window"
HOMEPAGE="http://www.suckless.org/programs/wmname.html"
SRC_URI="http://code.suckless.org/dl/tools/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="x11-libs/libX11"
RDEPEND="${RDEPEND}"

src_prepare() {
	sed -i -e '/^PREFIX = /s:/usr/local:/usr:' \
		-e '/^LDFLAGS = /s:-s::' \
		config.mk || die "Sed failed!"
	sed -i -e 's/@strip $@//' \
		-e '/^all: /s:options::' \
		Makefile || die "Sed failed!"
}

src_install() {
	emake DESTDIR="${D}" install || die "Install failed"
	dodoc README || die
}

