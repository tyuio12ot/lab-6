!/bin/zsh

if [ $# -ne 3 ]; then
	echo "Wrong arguments"
	exit 1
fi

DIRECTORY="$1"
OLD_STRING="$2"
NEW_STRING="$3"

if [ ! -d "$DIRECTORY" ] ; then
	echo "Your directory is not found"
	exit 1
fi

find "$DIRECTORY" -type f -name "*.txt" -exec sed -i "s|$OLD_STRING|$NEW_STRING|g" {} \;

echo "Replace is successful"
