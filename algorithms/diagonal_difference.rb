#!/usr/bin/ruby

num = gets.chomp.to_i
diff = 0
(0...num).each do |i|
	line = gets.strip.split(" ").map(&:to_i)
	diff += (line[i] - line[(num-1-i)]) 
end
puts diff.abs
