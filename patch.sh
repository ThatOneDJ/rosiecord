#!/bin/bash

mkdir dist

for Pack in $(ls Packs) 
do
    unzip Enmity.ipa
    cp -rf Packs/${Pack}/ Payload/Discord.app/assets/
    zip -r dist/${Pack}cord.ipa Payload
    rm -rf Payload
done


