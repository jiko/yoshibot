#!/bin/bash

export GEM_HOME=$HOME/.gems

FULLPATH=$0
BASEPATH=${FULLPATH/tweet.sh}
cd $BASEPATH
./yoshi.rb
