#!/bin/bash

export GEM_HOME=$HOME/.gems

FULLPATH=$0
BASEPATH=${FULLPATH/tweet.sh}
cd $BASEPATH
IMG=$(ls 1* 9* B* | head -n 1)
./yoshi.rb $IMG
rm $IMG
