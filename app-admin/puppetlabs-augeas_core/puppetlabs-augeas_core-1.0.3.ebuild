# Copyright 2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Manage files using Augeas"
HOMEPAGE="https://github.com/puppetlabs/puppetlabs-augeas_core"
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
