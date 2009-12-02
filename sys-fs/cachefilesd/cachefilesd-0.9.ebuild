# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: sys-fs/cachefilesd/cachefilesd-0.9.ebuild,v 1.1 2009/09/16 17:46:00 [Enrico] Exp $

inherit toolchain-funcs linux-info

DESCRIPTION="Cache on already mounted filesystem"
HOMEPAGE="http://people.redhat.com/~dhowells/fscache/"
SRC_URI="http://people.redhat.com/~dhowells/fscache/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT="mirror"

RDEPEND="sys-apps/attr"
DEPEND=""

CONFIG_CHECK="~FSCACHE ~CACHEFILES"
ERROR_FSCACHE="FSCACHE is needed to be able to use ${PN}"
ERROR_CACHEFILES="CACHEFILES is needed to be able to use ${PN}"

pkg_setup()
{
	if ! kernel_is ge 2 6 30 ; then
		ewarn "You need kernel 2.6.30 or better to use ${PN}"
	fi
}

src_compile() {
	tc-export 'CC'
	emake CFLAGS="${CFLAGS}" || die "emake failed"
}
src_install() {
	emake DESTDIR="${D}" install || die "Install failed"
	dodoc README howto.txt move-cache.txt || die "dodoc failed"
	newinitd "${FILESDIR}"/cachefilesd.rc cachefilesd || die "newinitd failed"
	keepdir /var/fscache || die "keepdir failed"
}
