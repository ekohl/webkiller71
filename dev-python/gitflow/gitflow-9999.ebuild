# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit git-2 distutils

DESCRIPTION="Git extensions for Vincent Driessen's branching model"
HOMEPAGE="https://github.com/nvie/gitflow/tree/feature/python-rewrite"
EGIT_REPO_URI="git://github.com/nvie/gitflow.git https://github.com/nvie/gitflow.git"
EGIT_BRANCH="feature/python-rewrite"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="dev-python/git-python"
