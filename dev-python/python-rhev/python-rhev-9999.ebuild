# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

EHG_REPO_URI="https://bitbucket.org/geertj/${PN}"

inherit distutils mercurial

DESCRIPTION="Python binding to Red Hat Enterprise Virtualization's REST API"
HOMEPAGE="https://bitbucket.org/geertj/python-rhev/wiki/Home"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-python/pyxb-1.1.0"
DEPEND="${RDEPEND}"
#	test? ( dev-python/nose )" # No tests

# We can't set up a test.conf
RESTRICT="test"

src_test() {
	# FIXME: Set up test.conf
	nosetests
}
