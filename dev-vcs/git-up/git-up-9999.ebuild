# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
USE_RUBY="ruby19"

inherit git-2 ruby-fakegem

DESCRIPTION="Stop using 'git pull'. Be polite."
HOMEPAGE="https://github.com/aanand/git-up"
EGIT_REPO_URI="git://github.com/aanand/git-up.git"
SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

#ruby_add_bdepend test "" # FIXME

ruby_add_rdepend ">=dev-ruby/colored-1.2 dev-ruby/grit"

all_ruby_unpack() {
	git-2_src_unpack
}
