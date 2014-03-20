#!/bin/bash

export GEM_HOME=$HOME/.gems

FULLPATH=$0
CMD=${FULLPATH/tweet.sh/yoshi.rb}
$CMD
