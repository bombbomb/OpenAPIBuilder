#!/bin/sh

pwd

git config --global user.name "Patrick McDavid"
git config --global user.email "patrick@bombbomb.com"

# javascript
java -jar swagger-codegen-cli.jar generate -i https://dev.api.bombbomb.com/v2/spec -l javascript -o ../javascript -c config/javascript.json
cd ../javascript
chmod u+x git_push.sh
sh git_push.sh bombbomb bombbomb-nodejs-openapi "ride the snake!"