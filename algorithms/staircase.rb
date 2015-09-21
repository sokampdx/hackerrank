#!/usr/bin/ruby

def print_step(current, max)
	return if current > max
	space = max - current
	space.times { print " " }
	current.times { print "#" }
	print "\n"
	print_step(current + 1, max)
end

num = gets.chomp.to_i
print_step(1, num)
