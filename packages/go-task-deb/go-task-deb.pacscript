pkgname="go-task-deb"
gives="task"
pkgdesc="A task runner / simpler Make alternative written in Go"
maintainer=("lfromanini <lfromanini@yahoo.com>")
repology=("project: ${gives}")
arch=("amd64" "arm64")
pkgver="3.36.0"
source_amd64=("https://github.com/go-task/task/releases/download/v${pkgver}/task_linux_amd64.deb")
sha256sums_amd64=("8d60fc4127347b48487d7da99ffe825dd9d2d1740dcad2a9d283d30d26925753")
source_arm64=("https://github.com/go-task/task/releases/download/v${pkgver}/task_linux_arm64.deb")
sha256sums_arm64=("d14fef178fa0afd02588154e179beef3972fe6d008f8bbfb86389671e63d6554")
