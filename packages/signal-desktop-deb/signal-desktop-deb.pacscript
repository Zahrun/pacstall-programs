pkgname="signal-desktop-deb"
gives="signal-desktop"
breaks=("${gives}-app")
repology=("project: ${gives}" "repo: arch")
pkgver="6.44.1"
source=("https://updates.signal.org/desktop/apt/pool/s/signal-desktop/signal-desktop_${pkgver}_amd64.deb")
pkgdesc="Signal Private Messenger for Linux"
sha256sums=("4f73003779f66f202e2a96aa92d39a64463fdad3c527279b46a7375801a2a580")
arch=('amd64')
maintainer=("Jon Banafato <pacstall@jonafato.com>")
