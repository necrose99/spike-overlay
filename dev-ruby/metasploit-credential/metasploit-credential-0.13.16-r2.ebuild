# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/metasploit_data_models/metasploit_data_models-0.17.0.ebuild,v 1.3 2014/07/09 21:13:54 zerochaos Exp $

EAPI=5
USE_RUBY="ruby20"

inherit ruby-fakegem versionator

RUBY_FAKEGEM_EXTRAINSTALL="app config db spec"

DESCRIPTION="Code for modeling and managing credentials in Metasploit"
HOMEPAGE="https://github.com/rapid7/metasploit-credential"
SRC_URI="mirror://rubygems/${P}.gem"

LICENSE="BSD"
SLOT="$(get_version_component_range 1-2).12"
KEYWORDS="~amd64 ~x86"
IUSE=""

ruby_add_rdepend "=dev-ruby/metasploit-concern-0.3*
	>=dev-ruby/metasploit_data_models-0.22.5
	=dev-ruby/metasploit_data_models-0.22*
	=dev-ruby/metasploit-model-0.28*
	=dev-ruby/rubyzip-1*
	dev-ruby/rubyntlm
	<dev-ruby/railties-4.0.0
	dev-ruby/pg"
