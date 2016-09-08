#!/bin/sh

echo "Beginning Build"
pwd

git config --global user.name "Patrick McDavid"
git config --global user.email "patrick@bombbomb.com"

spec=https://api.bombbomb.com/v2/spec

api_version=`ruby getVersion.rb`

echo "Found API Version: ${api_version}"

cd config
sed -i 's/APIVERSIONSLUG/$api_version/g' *.json
cd ..

#sh build_lang.sh javascript ${spec}
#sh build_lang.sh php ${spec}
#sh build_lang.sh csharp ${spec}
#sh build_lang.sh swift ${spec}
#sh build_lang.sh ruby ${spec}