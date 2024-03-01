#!/usr/bin/env bash

clear 

if [ ! -d "./express/node_modules" ]; then
    npm --prefix ./express/ i --only=dev
fi

if [ ! -d "./svelte/node_modules" ]; then
    npm --prefix ./svelte/ i --only=dev
fi

rm -rf ./express/build
rm -rf ./svelte/build
rm -rf ./build

npm --prefix ./express/ run compile
npm --prefix ./svelte/ run build

mkdir ./build/
cp -r ./svelte/build ./build/frontend
cp -r ./express/build/* ./build

if [ -f "./express/.env"]; then
    cp ./express/.env ./build
fi

cp ./express/package.json ./build
npm --prefix ./build/ install --omit=dev

rm -rf ./express/build
rm -rf ./express/node
rm -rf ./svelte/build
