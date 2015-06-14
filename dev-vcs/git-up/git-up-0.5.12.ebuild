# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
USE_RUBY="ruby19"

inherit ruby-fakegem

DESCRIPTION="Stop using 'git pull'. Be polite."
HOMEPAGE="https://github.com/aanand/git-up"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

#ruby_add_bdepend test "" # FIXME

ruby_add_rdepend ">=dev-ruby/colored-1.2 dev-ruby/grit"
