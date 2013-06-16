# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
USE_RUBY="ruby18 ruby19"

inherit ruby-fakegem

DESCRIPTION="The client tools for the OpenShift Express platform that allow for application management."
HOMEPAGE="https://openshift.redhat.com/app/express"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RUBY_FAKEGEM_EXTRAINSTALL="conf/"

ruby_add_rdepend "dev-ruby/archive-tar-minitar
>=dev-ruby/commander-4.0
>=dev-ruby/highline-1.6.11
>=dev-ruby/httpclient-2.0.11
>=dev-ruby/net-ssh-2.0.11
dev-ruby/open4"
