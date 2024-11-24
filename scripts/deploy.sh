#!/bin/bash
rm -rf ./.deploy
rm -rf ./dist
rm -rf ./output

npm run generate

if [ ! -d ./.deploy/deployment ]; then
    git clone -b master git@github.com:YoruCathy/YoruCathy.github.io ./.deploy/deployment
fi

mv ./.deploy/deployment/.git ./.deploy/
rm -rf ./.deploy/deployment/*
mv ./.deploy/.git ./.deploy/deployment/

cp -r ./dist/* ./.deploy/deployment/
touch ./.deploy/deployment/.nojekyll
touch ./.deploy/deployment/CNAME

GIT_SHA=$(git rev-parse HEAD)

echo "ruolinye.care" > ./.deploy/deployment/CNAME
echo "${GIT_SHA}" > ./.deploy/deployment/version.txt

cd ./.deploy/deployment
git add -A
# we need the || true, as sometimes you do not have any content changes
# and git woundn't commit and you don't want to break the CI because of that
git commit -m "rebuilding site on `date`" || true
git push

cd ../../
