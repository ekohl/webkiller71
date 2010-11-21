# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit games cmake-utils

DESCRIPTION="Open source clone of Theme Hospital"
HOMEPAGE="http://code.google.com/p/corsix-th"
#FIXME Use PV
SRC_URI="http://corsix-th.googlecode.com/files/CorsixTH-Beta4-Source.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="+audio midi opengl"

# FIXME: Use PV
S="${WORKDIR}/CorsixTH-Beta4-Source"

# Notes:
# lua 5.2 is unsupported
# FIXME: Add wxWidgets support and map editor
DEPEND=">=media-libs/libsdl-1.2[opengl?]
	audio? ( >=media-libs/sdl-mixer-1.2[midi?] )
	"
RDEPEND="${DEPEND}"

src_prepare() {
	# Create a config file
	cp "$S"/{WindowsInstaller/config_template.txt,CorsixTH/config.txt}
#	sed -i 's/[[ORIGINAL_HOSPITAL_DIRECTORY]]/test/' \
#		"$S"/CorsixTH/config.txt
}

src_configure() {
	mycmakeargs=(
		$(cmake-utils_use_with opengl)
		$(cmake-utils_use_with audio)
		-DCMAKE_INSTALL_PREFIX=/usr/games
	)

	cmake-utils_src_configure
}

# FIXME: Install FHS compatible
src_install() {
	cmake-utils_src_install

	dosym ../CorsixTH/CorsixTH /usr/games/bin/CorsixTH || die
}
