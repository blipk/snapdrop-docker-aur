pkgname="snapdrop-docker-git"
pkgver="latest"
srcdir="/tmp/snapdrop-package"
pkdir="/opt/snapdrop"
pkgrel=1
epoch=
pkgdesc=""
arch=("x86_64")
url=""
license=("GPL")
groups=()
depends=()
makedepends=("docker-compose")
checkdepends=()
optdepends=()
provides=()
conflicts=()
replaces=()
backup=()
options=()
install=
changelog=
source=("$pkgname-$pkgver.tar.gz")
noextract=()
md5sums=()
validpgpkeys=()

prepare() {
	echo "Preparing"
}

build() {
	cd "$pkgdir"
	url="https://github.com/RobinLinus/snapdrop.git"
	folder="./snapdrop"
	if ! git clone "${url}" "${folder}" 2>/dev/null && [ -d "${folder}" ] ; then
    	echo "Clone failed because the folder ${folder} exists"
	fi
	sed -i 's/8080/3000/g' ./snapdrop/docker-compose.yml

}


package() {
	yes | cp -f ./* "$pkgdir/$pkgname/snapdrop"
	yes | cp -f ./xdg/icons/*.png ~/.local/share/icons
	yes | cp -f ./xdg/*.desktop ~/.local/share/applications
}

sha256sums=('2e579f5eb35a2f1ef9b06385ffd7b3770d93921b6d68973c001b3affb0132041')

