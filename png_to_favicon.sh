#!/bin/bash

# png_to_favicon is a bash script which converts a 128 x 128 png into a
# favicon.ico file for use with the web and ie

# adapted from:
# https://gist.github.com/nateware/900d2d09f4884ac0c073
# https://www.imagemagick.org/discourse-server/viewtopic.php?t=26252

set -Eo pipefail

# set variables
IMG_DIR="$( cd "$(dirname "$1")" ; pwd -P )"

# VERIFY AND CHECK THINGS
# check for image magic
if ! which convert &> /dev/null
then
    echo "it looks like you need to install imagemagick."
    echo
    echo "please ask your parent's permission before installing software"
    exit 1
fi

# verify a file was passed and file exists
if ! [ $1 ] || ! [ -f $1 ]
then
    echo "No such file."
    exit 1
fi

# verify file is a png file
if ! file --mime $1 | grep -i png &> /dev/null
then
    echo "Not a png file."
    exit 1
fi

# ACTUAL CONVERSION
convert $1 -define icon:auto-resize=64,48,32,16 $IMG_DIR/favicon.ico

exit 0