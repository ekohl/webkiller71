# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit distutils

DESCRIPTION="A collection of useful tools for localisation, and a powerful API"
HOMEPAGE="http://translate.sourceforge.net/wiki/toolkit/index"
SRC_URI="mirror://sourceforge/translate/Translate%20Toolkit/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="xml sqlite html +fuzzy iso-codes ical subtitle doc"

DEPEND=">=dev-lang/python-2.4
	xml? ( >=dev-python/lxml-2.1.0 )
	sqlite? ( || ( >=dev-lang/python-2.5 dev-python/pysqlite ) )
	html? ( dev-python/utidylib )
	fuzzy? ( dev-python/python-levenshtein )
	iso-codes? ( app-text/iso-codes )
	ical? ( >=dev-python/vobject-0.6.5 )
	subtitle? ( media-video/gaupol dev-python/chardet )"
	# ini? ( dev-python/iniparse )
RDEPEND="${DEPEND}"

# FIXME: don't install docs in /usr/lib/python/site-packages

pkg_postinst() {
	echo
	elog "You can export USECPO=2 (or 1) at runtime to use the system gettext."
	elog "The authors indicate that it hasn't been extensivly tested, so be"
	elog "warned."
}
