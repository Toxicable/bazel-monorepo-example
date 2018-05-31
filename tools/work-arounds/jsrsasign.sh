#!/bin/bash


# needs to be run before publishing libs
if [ $1 = "fix" ];
then
    # jsrsasign does not export the symbol KEYUTIL
    mv "node_modules/jsrsasign/lib/jsrsasign.js" "node_modules/jsrsasign/lib/jsrsasign.js.old"
    echo 'export const KEYUTIL = {};export const KJUR = {};' > node_modules/jsrsasign/lib/jsrsasign.js
fi

if [ $1 = "undo" ];
then
    mv "node_modules/jsrsasign/lib/jsrsasign.js.old" "node_modules/jsrsasign/lib/jsrsasign.js"
fi
