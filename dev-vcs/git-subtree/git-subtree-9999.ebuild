# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit git-2

DESCRIPTION="An experimental alternative to the git-submodule command"
HOMEPAGE="https://github.com/apenwarr/git-subtree"

EGIT_REPO_URI="git://github.com/apenwarr/git-subtree.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE="doc"

DEPEND="doc? (
	app-text/xmlto
	app-text/asciidoc
)"
RDEPEND="dev-vcs/git"

src_compile() {
	use doc && emake doc
}

src_install() {
	DESTDIR="${D}" emake install-exe

	use doc && DESTDIR="${D}" emake install-doc
}

src_test() {
	emake test
}
