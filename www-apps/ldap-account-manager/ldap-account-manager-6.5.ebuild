# Copyright 2018 iFSR
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

inherit webapp

DESCRIPTION="A web-based frontend to manage LDAP users and groups"
HOMEPAGE="https://www.ldap-account-manager.org/"
SRC_URI="mirror://sourceforge/lam/${P}.tar.bz2"

LICENSE="GPL-3"
KEYWORDS="amd64"

IUSE="ssl perl"

RDEPEND="dev-lang/php[ldap,xml,ssl?]
	 perl? ( dev-lang/perl )
	"

src_install() {
	webapp_src_preinst
        insinto "${MY_HTDOCSDIR}"
	doins -r .

	webapp_src_install
}


