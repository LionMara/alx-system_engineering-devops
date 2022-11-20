#!/usr/bin/env ruby
# This one matches a  in the string
#+ "Jack is a boy"
puts ARGV[0].scan(/hbt{2,5}n/).join
