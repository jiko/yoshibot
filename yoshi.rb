#!/usr/bin/env ruby

require 'rubygems'
require 'chatterbot/dsl'

# remove this to send out tweets
# debug_mode

# remove this to update the db
no_update
# remove this to get less output when running
verbose

# here's a list of users to ignore
#blacklist "abc", "def"

# here's a list of things to exclude from searches
# exclude "haha", "thank", "thanks", "stop", "lol"

#search "'my jimmies'", opts={:count => 1} do |tweet|
#  reply "#USER# " + pick_random_line(path+"responses.txt"), tweet
#end

replies do |tweet|
  reply "#USER# " + Random.rand(12).times.map{"YOSHI"}.join(" "), tweet
end

tweet Random.rand(23).times.map{"YOSHI"}.join(" ")
