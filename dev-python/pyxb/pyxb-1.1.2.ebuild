# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit distutils

MY_PN="PyXB"
MY_PV="${PV}%20(Beta)"

DESCRIPTION="Generates Python source code for classes defined in XMLSchema"
HOMEPAGE="http://pyxb.sourceforge.net"
SRC_URI="mirror://sourceforge/${PN}/${PN}/${MY_PV}/${MY_PN}-base-${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}/${MY_PN}-${PV}"
