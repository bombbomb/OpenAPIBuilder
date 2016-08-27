#!/bin/sh

language=$1

echo "Building $language..."

echo "Making $language directory..."
mkdir ../${language}
cd ../${language}


echo "Performing $language git bootstrapping..."
git init
git remote add origin https://bombbomb:${GIT_TOKEN}@github.com/bombbomb/bombbomb-${language}-openapi.git
git pull origin master
git rm *


echo "Generating $language OpenAPI client..."
java -jar ../OpenAPIBuilder/swagger-codegen-cli.jar generate -i https://dev.api.bombbomb.com/v2/spec -l ${language} -c ../OpenAPIBuilder/config/${language}.json

echo "Pushing $language repo back to GitHub..."
git add .
git push origin master -f


echo "Done generating $language client..."
cd ../OpenAPIBuilder