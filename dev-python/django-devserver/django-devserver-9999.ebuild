# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit distutils git

DESCRIPTION="A drop-in replacement for Django's runserver"
HOMEPAGE="http://github.com/dcramer/django-devserver"
EGIT_REPO_URI="git://github.com/dcramer/django-devserver.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE="guppy werkzeug"

DEPEND=""
RDEPEND="${DEPEND}
	guppy? ( dev-python/guppy )
	werkzeug? ( dev-python/werkzeug )"
