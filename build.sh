#!/bin/sh

echo "Beginning Build"
pwd

git config --global user.name "Patrick McDavid"
git config --global user.email "patrick@bombbomb.com"

sh build_lang.sh javascript
sh build_lang.sh php
sh build_lang.sh csharp
sh build_lang.sh swift
sh build_lang.sh ruby