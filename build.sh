#!/bin/sh

echo "Ride the Snake!"
pwd

git config --global user.name "Patrick McDavid"
git config --global user.email "patrick@bombbomb.com"

# javascript
mkdir ../javascript
cd ../javascript
git init
git remote add origin https://bombbomb:${GIT_TOKEN}@github.com/bombbomb/bombbomb-nodejs-openapi.git
git pull origin master
find -delete

java -jar ../OpenAPIBuilder/swagger-codegen-cli.jar generate -i https://dev.api.bombbomb.com/v2/spec -l javascript -c ../OpenAPIBuilder/config/javascript.json

chmod u+x git_push.sh
sh git_push.sh bombbomb bombbomb-nodejs-openapi "ride the snake!"

