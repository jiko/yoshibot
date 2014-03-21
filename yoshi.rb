#!/usr/bin/env ruby

require 'rubygems'
require 'chatterbot/dsl'

# remove this to send out tweets
# debug_mode

# remove this to update the db
no_update
# remove this to get less output when running
#verbose

# here's a list of users to ignore
#blacklist "abc", "def"

# here's a list of things to exclude from searches
# exclude "haha", "thank", "thanks", "stop", "lol"

def yoshi(max)
  Random.rand(max).times.map{"YOSHI"}.join(" ")
end

#search "yoshi", opts={:count => 1} do |tweet|
#  reply "#USER# " + yoshi(12), tweet
#end

replies do |tweet|
  reply "#USER# " + yoshi(12), tweet
end

tweet yoshi(23)
