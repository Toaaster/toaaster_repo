EAPI=8

inherit cmake git-r3

DESCRIPTION="scalable C++ machine learning library"
HOMEPAGE="
	https://www.mlpack.org
	https://github.com/mlpack/mlpack
"
LICENSE="LGPL-3 BSD"

EGIT_REPO_URI="https://github.com/mlpack/mlpack.git"

SLOT="0"

RDEPEND="
	>=sci-libs/armadillo-12.4.0[blas,lapack]
	>=sci-libs/ensmallen-2.10.0
	>=dev-libs/cereal-1.1.2
"

DEPEND="${RDEPEND}"

BDEPEND="
	app-text/txt2man
	virtual/pkgconfig
"

src_prepare() {
	cmake_src_prepare
}

src_configure() {
	cmake_src_configure
}

src_compile() {
	cmake_src_compile
}

src_install() {
	cmake_src_install
}
