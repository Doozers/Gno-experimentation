# HELP
if [ "$1" = "-h" ]
then
    echo "usage:"
    echo "\t./publishPkg.sh \$pkg_dir \$pkg_path"
    exit 0
fi
#

if [ -z "$1" ] || [ -z "$2" ]
then
    echo "bad args"
    exit 1
fi

PKG_DIR="$1"
PKG_PATH="$2"

gnokey maketx addpkg g1jg8mtutu9khhfwc4nxmuhcpftf0pajdhfvsqf5 --gas-fee "1ugnot" --gas-wanted "500000" --pkgdir $PKG_DIR --broadcast true --remote "localhost:26657" --chainid dev --pkgpath $PKG_PATH --deposit 1ugnot
