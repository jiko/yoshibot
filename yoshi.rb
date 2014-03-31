#!/usr/bin/env ruby

require 'rubygems'
require 'chatterbot/dsl'

# here's a list of users to ignore
#blacklist "abc", "def"

def yoshi(max)
  rand(max).times.map{"YOSHI"}.join(" ")
end

# here's a list of things to exclude from searches
# exclude "haha", "thank", "thanks", "stop", "lol"

#search "yoshi", opts={:count => 1} do |tweet|
#  reply "#USER# " + yoshi(12), tweet
#end

replies do |tid|
  reply "#USER# " + yoshi(12), tid
end

tweet yoshi(14)
