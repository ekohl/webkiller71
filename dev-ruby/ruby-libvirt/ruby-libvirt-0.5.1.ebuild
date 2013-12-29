# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

USE_RUBY="ruby19"

inherit ruby-fakegem

DESCRIPTION="Ruby bindings for libvirt"
HOMEPAGE="http://libvirt.org/ruby/"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

ruby_add_bdepend "dev-ruby/rake"

RDEPEND="${RDEPEND}
	>=app-emulation/libvirt-0.4.0"
DEPEND="${DEPEND}
	>=app-emulation/libvirt-0.4.0"

each_ruby_compile() {
	rake build
	cp "${S}/ext/libvirt/_libvirt.so" "${S}/lib"
}
