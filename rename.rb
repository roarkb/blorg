#!/usr/bin/env ruby

# EXAMPLE: './rename.rb giving_back/3-renamed/bantayan/ islet_bantayan'

abort %Q{\nUSAGE: '#{$0} <dir/> <name>'\n\n} unless ARGV.length == 2

dir = ARGV[0]
name = ARGV[1]

count = 1
# assumes all are jpg/JPG files
`ls -rt #{dir}*`.split("\n").each do |file|
  #file.chomp!
  suffix = file.split(".")[1]
  rename = "#{dir}#{name}#{count}.jpg"
  puts "#{file} -> #{rename}"
  system("mv '#{file}' #{rename}")
  count += 1
end
