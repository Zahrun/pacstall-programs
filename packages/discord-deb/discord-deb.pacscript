pkgname="discord-deb"
gives="discord"
breaks=("${gives}" "${gives}-app" "${gives}-debian-patched-deb")
pkgver="0.0.52"
pkgdesc="Chat for Communities and Friends. Discord is the easiest way to communicate over voice, video, and text. Chat, hang out, and stay close with your friends and communities"
sha256sums=("5f301979bd3f2755946ebeb8d8ae82a14ad8c887d943ef71288c7b715345a428")
maintainer=("ObsidianPresidium <emil@aarestrup.nu>")
arch=('amd64')
source=("https://dl.discordapp.net/apps/linux/${pkgver}/discord-${pkgver}.deb")
homepage='https://discord.com/'
repology=("project: ${gives}")
