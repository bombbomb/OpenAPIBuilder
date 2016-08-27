#!/bin/sh

language=$1

echo "Building $language..."

echo "Making $language directory..."
mkdir ../${language}
cd ../${language}
pwd

echo "Performing $language git bootstrapping..."
git init
git remote add origin https://bombbomb:${GIT_TOKEN}@github.com/bombbomb/bombbomb-${language}-openapi.git
git pull origin master
git rm *
git status

echo "Generating $language OpenAPI client..."
java -jar ../OpenAPIBuilder/swagger-codegen-cli.jar generate -i https://dev.api.bombbomb.com/v2/spec -l ${language} -c ../OpenAPIBuilder/config/${language}.json
ls

echo "Pushing $language repo back to GitHub..."
git add -A
git status
git commit -m "Auto-generated!"
git push origin master --force

echo "Done generating $language client... resetting to start dir"
cd ../OpenAPIBuilder
pwd