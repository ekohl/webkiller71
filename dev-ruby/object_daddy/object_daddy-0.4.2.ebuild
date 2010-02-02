# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
USE_RUBY="ruby18"

inherit ruby-ng

DESCRIPTION="Kill Rails fixtures, DRY, reduce the complexity of your tests."
HOMEPAGE="http://github.com/flogic/object_daddy"
SRC_URI="http://github.com/flogic/${PN}/tarball/v${PV} -> ${P}.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="${IUSE}"

ruby_add_bdepend test "dev-ruby/rspec"

S="${WORKDIR}/flogic-${PN}-62102e9"

each_ruby_install() {
	doruby init.rb
	doruby -r lib
	dodoc README.markdown
}

each_ruby_test() {
	spec spec/
}