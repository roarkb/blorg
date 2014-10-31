#!/usr/bin/env ruby

dirs = %w[
]

path = ""

puts
dirs.each do |e|
  d = "~/#{path}/#{e}"
  puts "created: #{d}"
  system("mkdir #{d}")
end

puts
system("ls -l ~/#{path}")
puts
