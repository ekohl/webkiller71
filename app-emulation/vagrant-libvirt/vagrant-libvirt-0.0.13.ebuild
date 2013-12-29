# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

USE_RUBY="ruby19"

inherit ruby-fakegem

DESCRIPTION="Vagrant provider for libvirt"
HOMEPAGE="https://github.com/pradels/vagrant-libvirt"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""

ruby_add_rdepend "
	>=app-emulation/vagrant-1.3
	=dev-ruby/fog-1.15.0
	=dev-ruby/nokogiri-1.5.10
	>=dev-ruby/ruby-libvirt-0.4.0
"
