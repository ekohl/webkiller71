# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="Git extensions Vincent Driessen's branching model"
HOMEPAGE="https://github.com/nvie/gitflow"

if [[ "${PV}" == 9999 ]] ; then
	inherit git-2
	EGIT_REPO_URI="git://github.com/nvie/gitflow.git"
	EGIT_BRANCH="develop"
	SRC_URI=""
	KEYWORDS=""
else
	SRC_URI="https://github.com/nvie/${PN}/archive/${PV}.tar.gz"
	KEYWORDS="~amd64 ~x86"
fi

LICENSE="BSD"
SLOT="0"
IUSE=""

DEPEND="dev-util/shflags
	dev-vcs/git"
RDEPEND="${DEPEND}"

EXEC_FILES="git-flow"
SCRIPT_FILES="git-flow-init git-flow-feature git-flow-hotfix git-flow-release git-flow-support git-flow-version gitflow-common gitflow-shFlags"

src_compile() {
	return # No compilation needed
}

src_install() {
	for exec_file in $EXEC_FILES ; do
		dobin $exec_file
	done

	insinto "${PREFIX}/usr/bin"
	for script_file in $SCRIPT_FILES ; do
		doins $script_file
	done
}
