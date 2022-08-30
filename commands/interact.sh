# HELP
if [ "$1" = "-h" ]
then
    echo "usage:"
    echo "\t./interact.sh \$PKG_PATH \$FUNC ...\$ARGS"
    exit 0
fi
#

if [ -z "$1" ] || [ -z "$2" ]
then
    echo "bad args"
    exit 1
fi

PKG_PATH="$1"
FUNC="$2"

CMD="gnokey maketx call g1jg8mtutu9khhfwc4nxmuhcpftf0pajdhfvsqf5 --gas-fee "1ugnot" --gas-wanted "500000" --broadcast true --remote "localhost:26657" --chainid dev --pkgpath $PKG_PATH --func $FUNC"

for v in "${@:3}"
do
    CMD+=" --args $v"
done

$CMD

