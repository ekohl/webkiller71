# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit git-2

DESCRIPTION="Keep your home directory in a VCS"
HOMEPAGE="http://git.vireo.org/movein.git/"

EGIT_REPO_URI="git://git.vireo.org/movein.git http://git.vireo.org/movein.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

src_install() {
	dobin movein
	dodoc README
}
