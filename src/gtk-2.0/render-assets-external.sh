#! /bin/bash

INKSCAPE="/usr/bin/inkscape"
OPTIPNG="/usr/bin/optipng"

SRC_FILE="assets-external.svg"
ASSETS_DIR="assets"
ASSETS_DIR_DARK="assets-dark"

INDEX="assets-external.txt"

for i in `cat $INDEX`
do 

if [ -f $ASSETS_DIR/$i.png ]; then
    echo $ASSETS_DIR/$i.png exists.
else
    echo
    echo Rendering $ASSETS_DIR/$i.png
    $INKSCAPE --export-id=$i \
              --export-id-only \
              --export-background-opacity=0 \
              --export-png=$ASSETS_DIR/$i.png $SRC_FILE >/dev/null \
    && $OPTIPNG -o7 --quiet $ASSETS_DIR/$i.png 
fi

if [ -f $ASSETS_DIR_DARK/$i.png ]; then
    echo $ASSETS_DIR_DARK/$i.png exists.
else
    echo
    echo Rendering $ASSETS_DIR_DARK/$i.png
    $INKSCAPE --export-id=$i-dark \
              --export-id-only \
              --export-background-opacity=0 \
              --export-png=$ASSETS_DIR_DARK/$i.png $SRC_FILE >/dev/null \
    && $OPTIPNG -o7 --quiet $ASSETS_DIR_DARK/$i.png 
fi

done
exit 0
