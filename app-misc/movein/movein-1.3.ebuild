# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Keep your home directory in a VCS"
HOMEPAGE="https://github.com/stew/movein"

if [ "$PV" = "9999" ] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/stew/movein"
	KEYWORDS=""
else
	SRC_URI="http://stew.vireo.org/movein/downloads/${P}.tar.gz"
	KEYWORDS="amd64 ~x86"
fi

LICENSE="GPL-2"
SLOT="0"
IUSE=""

RDEPEND="dev-vcs/git
	dev-vcs/mr"

src_install() {
	dobin movein
	dodoc README
	doman movein.1
}
