maintainer=("echometerain <echometer@disroot.org>")
pkgname="libresprite-git"
pkgdesc="fork of last GPL version of aseprite"
depends="libpixman-1-0 libcurl4 libgif7 zlib1g libpng16-16 libjpeg-turbo8 libwebp6 libxcursor1"
makedepends=("g++" "libx11-dev" "libxcursor-dev" "cmake" "ninja-build" "zlib1g-dev" "libpixman-1-dev" "libpng-dev" "libjpeg-turbo8-dev" "libtinyxml-dev" "libwebp-dev" "libgif-dev" "libgtest-dev" "libfreetype-dev" "libcurlpp-dev" "libharfbuzz-dev" "libsdl2-image-dev" "liblua5.3-dev")
source=("https://github.com/LibreSprite/LibreSprite.git")
arch=("any")
pkgver="1.0"
breaks=("aseprite" "libresprite-bin" "libresprite-app" "libresprite-deb" "libresprite")
gives="libresprite"

prepare() {
  cd "LibreSprite"
  git fetch --all --tags --prune
  git submodule update --init --recursive
  mkdir build
}
build() {
  cd "LibreSprite"
  cd build
  cmake -G Ninja \
    -DWITH_DESKTOP_INTEGRATION=ON \
    -DUSE_SHARED_PIXMAN=ON \
    -DWITH_WEBP_SUPPORT=ON \
    -DUSE_SHARED_LIBWEBP=ON \
    -DUSE_SHARED_CURL=ON \
    -DUSE_SHARED_GIFLIB=ON \
    -DUSE_SHARED_JPEGLIB=ON \
    -DZLIB_INCLUDE_DIR="/usr/include" \
    -DUSE_SHARED_ZLIB=ON \
    -DUSE_SHARED_LIBPNG=ON \
    -DUSE_SHARED_LIBLOADPNG=OFF \
    -DUSE_SHARED_TINYXML=ON \
    -DENABLE_UPDATER=OFF \
    -DUSE_SHARED_FREETYPE=ON \
    -DFREETYPE_INCLUDE_DIR="/usr/include/freetype2" \
    -DCMAKE_INSTALL_PREFIX:STRING="/usr" ..
  ninja libresprite
  # shellcheck disable=SC2103
  cd "${srcdir}"
}

package() {
  cd "LibreSprite"
  cd build
  DESTDIR="${pkgdir}" ninja install
  # shellcheck disable=SC2103
  cd "${srcdir}"
}
