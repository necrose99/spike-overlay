# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/virtual/ffmpeg/ffmpeg-9.ebuild,v 1.10 2014/07/28 13:49:46 ago Exp $

EAPI=4

DESCRIPTION="Virtual package for FFmpeg implementation"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ~ia64 ~mips ppc ~ppc64 ~sparc x86 ~amd64-fbsd ~x86-fbsd ~amd64-linux ~x86-linux ~x64-macos ~x86-solaris"
IUSE="X +encode gsm jpeg2k mp3 opus sdl speex theora threads truetype vaapi vdpau x264"

RDEPEND="
	|| (
		>=media-video/ffmpeg-1.0:0[X?,encode?,gsm?,jpeg2k?,mp3?,opus?,sdl?,speex?,theora?,threads?,truetype?,vaapi?,vdpau?,x264?]
		>=media-video/libav-9[X?,encode?,gsm?,jpeg2k?,mp3?,opus?,sdl?,speex?,theora?,threads?,truetype?,vaapi?,vdpau?,x264?]
	)
"
DEPEND=""
