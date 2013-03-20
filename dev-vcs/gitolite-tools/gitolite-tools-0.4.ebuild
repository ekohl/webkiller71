# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="Collection of tools to work with gitolite repositories"
HOMEPAGE="https://github.com/tmatilai/gitolite-tools"
SRC_URI="https://github.com/tmatilai/gitolite-tools/archive/release/0.4.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+vim"

DEPEND="dev-vcs/git"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${PN}-release-${PV}"

src_install() {
	emake DESTDIR="${D}" install-git-programs

	if use vim ; then
		emake DESTDIR="${D}" install-vim
	fi
}
