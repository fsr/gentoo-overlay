# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

PYTHON_COMPAT=( python3_{3,4,5,6,7} )

inherit eutils distutils-r1 git-r3

DESCRIPTION="Content Security Policy for Django"
HOMEPAGE="https://github.com/mozilla/django-csp"
EGIT_REPO_URI="https://github.com/mozilla/django-csp.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		dev-python/django[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"

python_test() {
	PYTHONPATH=".:${PYTHONPATH}" DJANGO_SETTINGS_MODULE="test_settings" django-admin.py test csp || die
}
