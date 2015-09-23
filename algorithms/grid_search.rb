#!/usr/bin/ruby

ROW = 0
COL = 1
FIELD = 0
MATCH = 1

def create_shift_table
	table = Array.new(2)
	table[ROW] = Array.new(10, size[MATCH][ROW])
	table[COL] = Array.new(10, size[MATCH][COL])

	

end

def find_match
	# Horspool's 2D

	$shift = create_shift_table
	start = Array.new(2)
	start[ROW] = 
	start = size[MATCH].map { |x| x-1 }

	
	


	# brute_force
	find = false
	max = size.transpose.map { |x| x.reduce(:-) }
	(0..max[ROW]).each do |r|
		(0..max[COL]).each do |c|
			match = true
			(0...size[MATCH][ROW]).each do |m_r|
				(0...size[MATCH][COL]).each do |m_c|
					match = match && ( grid[FIELD][r+m_r][c+m_c] == grid[MATCH][m_r][m_c] )
					next if !match
				end
				next if !match
			end
			find = find || match
			break if find
		end
	end

	if find 
		"YES"
	else
		"NO"
	end
end

num = gets.chomp.to_i
$size = Array.new(2) { Array.new(2, 0) }
$grid = Array.new(2)
$shift = Array.new(2)

num.times do 
	(0..1).each do |t|
		$size[t] = gets.strip.split(" ").map(&:to_i)
		$grid[t] = Array.new($size[t][ROW]) { Array.new($size[t][COL], 0) }
		(0...$size[t][ROW]).each do |r|
			$grid[t][r] = gets.strip.split("").map(&:to_i)
		end			
	end
	puts find_match
end
