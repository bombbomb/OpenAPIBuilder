#!/bin/sh

echo "Ride the Snake!"
pwd

git config --global user.name "Patrick McDavid"
git config --global user.email "patrick@bombbomb.com"

sh build_lang.sh javascript
sh build_lang.sh php