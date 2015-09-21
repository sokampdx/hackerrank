#!/usr/bin/ruby

num = gets.chomp.to_i
map = Array.new
cav = Array.new

(0...num).each do |i|
	cav[i] = Array.new
	map << gets.strip.split("").map(&:to_i)
	(0...num).each do |j|
		cav[i][j] = map[i][j].to_s 
	end
end

(1...(num-1)).each do |i|
	(1...(num-1)).each do |j|
		current = map[i][j]
		cav[i][j] = "X"	if current > map[i-1][j] && current > map[i+1][j] && current > map[i][j-1] && current > map[i][j+1]
	end
end	

(0...num).each do |i|
	puts cav[i].join
end

