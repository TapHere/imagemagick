pkg_name=imagemagick
pkg_origin=franklinwebber
pkg_version=7.0.8-68
pkg_description="A software suite to create, edit, compose, or convert bitmap images."
pkg_upstream_url="http://imagemagick.org/"
pkg_license=('Apache2')
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_source=http://www.imagemagick.org/download/releases/ImageMagick-${pkg_version}.tar.xz
pkg_shasum=3ab140e46390e63731298d7ddb21c06d4a21cf09673b2e911aea605f4489cbab
pkg_deps=(core/glibc core/zlib core/libpng core/xz core/gcc-libs core/libjpeg-turbo)
pkg_build_deps=(core/zlib core/coreutils core/diffutils core/patch core/make core/gcc core/sed core/glibc core/pkg-config core/libjpeg-turbo)
pkg_bin_dirs=(bin)
pkg_include_dirs=(include/ImageMagick-6)
pkg_lib_dirs=(lib)
pkg_dirname=ImageMagick-${pkg_version}

do_build() {
    CC="gcc -std=gnu99" ./configure --prefix=$pkg_prefix
    make
}
