# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
USE_RUBY="ruby20"

inherit multilib ruby-fakegem

DESCRIPTION="EventMachine-based client and server implementation of Arachni-RPC"
HOMEPAGE="https://rubygems.org/gems/arachni-rpc-em"

LICENSE="BSD"
SLOT=0
KEYWORDS="~amd64 ~arm ~x86"

ruby_add_rdepend "dev-ruby/arachni-rpc
		>=dev-ruby/em-synchrony-1.0.0
		=dev-ruby/eventmachine-1.0* >=dev-ruby/eventmachine-1.0.0"
