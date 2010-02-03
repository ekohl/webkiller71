# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

USE_RUBY="ruby18"

inherit ruby-fakegem

DESCRIPTION="Kill Rails fixtures, DRY, reduce the complexity of your tests."
HOMEPAGE="http://github.com/nofxx/object_daddy"
# The source is on github, but the author doesn't tag
SRC_URI="http://gems.github.com/gems/nofxx-${P}.gem"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

# The test files aren't bundled with the gem
RESTRICT="test"
