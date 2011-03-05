# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

DESCRIPTION="Ewouds desktop"
HOMEPAGE="http://kohlvanwijngaarden.nl/ewoud-desktop"
SRC_URI="http://dump.kohlvanwijngaarden.nl/${PN}/${P}.tar.bz2"

LICENSE="freedist"
SLOT="0"
KEYWORDS="~amd64"
IUSE="nfs +X"

DEPEND=""
RDEPEND="app-admin/sudo
	app-editors/vim
	app-portage/gentoolkit
	app-text/wgetpaste
	net-dns/bind-tools
	net-misc/dhcpcd
	net-misc/openntpd
	sys-apps/ifplugd
	nfs? ( net-fs/nfs-utils )
	X? (
		mail-client/thunderbird
		media-fonts/terminus-font
		sys-power/acpid
		www-client/firefox
		www-plugins/adobe-flash
		x11-base/xorg-server
		x11-misc/slim
		x11-terms/roxterm
		x11-themes/gtk-engines
		x11-wm/awesome
	)
	"

S="${WORKDIR}/${PN}"

src_install() {
	cp -R "${S}"/* "${D}" || die "Install failed!"
}
