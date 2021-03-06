# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MY_PN=Impacket
MY_P=${MY_PN}-${PV}

PYTHON_COMPAT=( python2_{6,7} )
DISTUTILS_SRC_TEST=setup.py
inherit distutils-r1 git-r3

DESCRIPTION="A collection of Python classes focused on providing access to network packets"
HOMEPAGE="https://github.com/CoreSecurity/impacket"
SRC_URI=""
EGIT_REPO_URI="https://github.com/CoreSecurity/impacket.git"
LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""
