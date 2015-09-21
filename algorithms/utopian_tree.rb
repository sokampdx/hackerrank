#!/usr/bin/ruby

def find_spring_height(cycle, height)
	return height if cycle == 0
	find_fall_height(cycle - 1, height * 2)
end

def find_fall_height(cycle, height)
	return height if cycle == 0
	find_spring_height(cycle - 1, height + 1)
end

num_test = gets.chomp.to_i

(1..num_test).each do
	cycle = gets.chomp.to_i
	puts find_spring_height(cycle, 1)
end
	
