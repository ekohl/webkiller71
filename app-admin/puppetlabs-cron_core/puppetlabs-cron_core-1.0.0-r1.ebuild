# Copyright 2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PATCHES=(
	"${FILESDIR}/0001-Ignore-hidden-files.patch"
)

DESCRIPTION="Install and manage cron resources."
HOMEPAGE="https://github.com/puppetlabs/puppetlabs-cron_core"
SRC_URI="https://forge.puppet.com/v3/files/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

src_install() {
	# Default for puppet config print vendormoduledir
	local vendor_moduledir="/opt/puppetlabs/puppet/vendor_modules"
	local module_name="${PN#*-}"
	insinto "${vendor_moduledir}/${module_name}"
	doins -r *
}
