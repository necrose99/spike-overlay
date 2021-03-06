# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit eutils

DESCRIPTION="Wordpress security scanner"
HOMEPAGE="http://wpscan.org/"
SRC_URI="https://github.com/wpscanteam/wpscan/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 arm x86"
IUSE="hardened test"

DEPEND=""
RDEPEND="dev-lang/ruby
	dev-ruby/rubygems
	dev-ruby/typhoeus
	dev-ruby/nokogiri
	dev-ruby/json
	dev-ruby/terminal-table
	>=dev-ruby/ruby-progressbar-1.1.0

	test? (
		>=dev-ruby/webmock-1.9.3
		dev-ruby/simplecov
		dev-ruby/rspec
	)"

src_prepare() {
	rm -r README.md
	sed -i "/require 'bundler\/setup'/d" lib/environment.rb
	#dev-lang/ruby might need the "hardened" flag to enforce the following:
	if use hardened; then
		paxctl -v /usr/bin/ruby19 2>/dev/null | grep MPROTECT | grep disabled || ewarn '!!! Some dependencies such as typhoeus may only work if ruby19 has MPROTECT flag disabled\n  You can disable it running paxctl -m /usr/bin/ruby19'
	fi
}

src_install() {
	dodoc README CREDITS
	rm README CREDITS
	insinto /usr/$(get_libdir)/${PN}
	doins -r *
	dosbin "${FILESDIR}"/wpscan
	dosbin "${FILESDIR}"/wpstools
}
