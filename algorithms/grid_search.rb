#!/usr/bin/ruby

ROW = 0
COL = 1
FIELD = 0
MATCH = 1

num = gets.chomp.to_i
size = Array.new(2) { Array.new(2, 0) 
match = Array.new(2)}
grid = Array.new(2)

num.times do 
	(0..1).each do |t|
		size[t] = gets.strip.split(" ").map(&:to_i)
		grid[t] = Array.new(size[t][ROW]) { Array.new(size[t][COL], 0) }
		(0...size[t][ROW]).each do |r|
			grid[t][r] = gets.chomp.to_s
#			grid[t][r] = gets.strip.split("").map(&:to_i)
		end	
	end

	text = grid[FIELD].join
	match = size.transpose.map {|x| x.reduce(:-)}
	temp = ""

	start_pos = 0
	end_pos = match[COL]

	(0...match[ROW]).each do	
		temp += "^[0-9]{#{start_pos},#{end_pos}}|"
		start_pos += size[FIELD][COL]
		end_pos += size[FIELD][COL]
	end

	prefix = "(" + temp[0...-1]	+ ")"
	ignore = "[0-9]{#{match[COL]}}"
	filler = Array.new(size[MATCH][ROW]-1, ignore)
	combine = prefix + grid[MATCH].zip(filler).join
	pattern = Regexp.new(combine)

#	puts combine

	if text.match(pattern)
		puts "YES"
	else
		puts "NO"
	end
end
