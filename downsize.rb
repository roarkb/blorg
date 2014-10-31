#!/usr/bin/env ruby

# EXAMPLE: './downsize.rb giving_back/4-downsized/'
# run as many times as it takes

abort %Q{\nUSAGE: '#{$0} <dir/>'\n\n} unless ARGV.length == 1

dir = ARGV[0]

puts
Dir.glob("#{dir}*.jpg") do |file|
  if File.size(file) / 1024000.00  >= 1
    system(%Q{convert -monitor #{file} -resize %50 #{file}})
  end
end
puts
