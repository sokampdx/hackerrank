#!/usr/bin/ruby

test = gets.chomp.to_i

(1..test).each do 
	num = gets.chomp.to_i
	array = gets.strip.split(" ").map(&:to_i)

	max_ending_here = con_sum = non_sum = 0
	largest_negative = array[0]

	array.each do |x|
		
		max_ending_here = [0, max_ending_here + x].max
		con_sum = [con_sum, max_ending_here].max
		non_sum += x if x > 0
		largest_negtive = x if x > largest_negative
	end

	non_sum = largest_negative if non_sum == 0	
	con_sum = largest_negative if con_sum == 0

	print con_sum, " ",  non_sum
	puts
end
	
