#!/bin/sh

echo "Compilation et construction de la solution messaging ."

echo " - Tomee "
cd tomee
./build-image.sh
cd ..