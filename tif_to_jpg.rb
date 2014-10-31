#!/usr/bin/env ruby

dir = ARGV[0]

`ls #{dir}*.tif`.each do |e|
  fname = e.split(dir)[1].split(".tif")[0]
  system("convert #{dir}#{fname}.tif #{dir}#{fname}.jpg")
  puts
  system("ls -l #{dir}")
  puts
end
