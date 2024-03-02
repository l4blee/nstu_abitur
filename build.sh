#!/usr/bin/env bash

clear 

if [ ! -d "./express/node_modules" ]; then
    npm --prefix ./express/ i
fi

if [ ! -d "./svelte/node_modules" ]; then
    npm --prefix ./svelte/ i
fi

rm -rf ./express/build
rm -rf ./svelte/build
rm -rf ./build

npm --prefix ./express/ run compile
npm --prefix ./svelte/ run build

echo Creating build directory and pushing to it

mkdir ./build/
cp -r ./svelte/build ./build/frontend
cp -r ./express/build/* ./build

cp ./express/package.json ./build
npm --prefix ./build/ install

echo Cleaning up

rm -rf ./express/build
rm -rf ./express/node
rm -rf ./svelte/build
