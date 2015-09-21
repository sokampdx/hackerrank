#!/usr/bin/ruby

def find_remain(remain)
	return if remain.empty?
	puts remain.size
	min = remain.min
	current = remain.map { |x| x - min }.reject { |x| x == 0 }
	find_remain(current)
end

num = gets.chomp.to_i
sticks = gets.strip.split(" ").map(&:to_i)
find_remain(sticks)


