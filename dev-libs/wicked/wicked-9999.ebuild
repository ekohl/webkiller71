# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit git

EGIT_REPO_URI="git://git.glacicle.com/awesome/wicked.git"

DESCRIPTION="Wicked widgets for the awesome window manager"
HOMEPAGE="http://git.glacicle.com/?p=awesome/wicked.git;a=summary"
SRC_URI=""

LICENSE="WTFPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-lang/lua"
DEPEND="${RDEPEND}"

src_install() {
	doman "${PN}.7.gz"
	insinto "/usr/share/awesome/lib"
	doins "${PN}.lua"
}
