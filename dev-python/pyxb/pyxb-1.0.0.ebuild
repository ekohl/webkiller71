# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit distutils

DESCRIPTION="Generates Python source code for classes defined in XMLSchema"
HOMEPAGE="http://pyxb.sourceforge.net"
SRC_URI="mirror://sourceforge/${PN}/${PN}/${PV}%20%28Stable%29/PyXB-base-${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

S="${WORKDIR}/PyXB-${PV}"
