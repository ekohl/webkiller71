# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

EAPI=4
USE_RUBY="ruby19"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="API.txt History.txt README.md"

# No convenient way to run tests so check that out later.
RUBY_FAKEGEM_TASK_TEST=""

inherit ruby-fakegem

DESCRIPTION="Grit gives you object oriented read/write access to Git repositories via Ruby."
HOMEPAGE="http://github.com/mojombo/grit"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/mime-types-1.15 >=dev-ruby/diff-lcs-1.1.2
		>=dev-ruby/posix-spawn-0.3.6"
