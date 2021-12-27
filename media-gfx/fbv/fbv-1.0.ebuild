# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION=""
HOMEPAGE="https://github.com/godspeed1989/fbv"
SRC_URI="https://api.github.com/repos/godspeed1989/fbv/tarball -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 ~amd64"

DEPEND="media-libs/libpng"
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack() {
	unpack ${A}
	mv godspeed1989* ${P} || die
}

src_configure() {
	./configure --without-libjpeg \
		--without-bmp \
		--prefix=/usr
}

src_install() {
	dodir /usr/bin
	dobin fbv
}
