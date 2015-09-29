#!/usr/bin/ruby

@match = gets.chomp.to_i
size = gets.chomp.to_i
@array = gets.strip.split(" ").map(&:to_i)

def binary_search(min, max)
	mid = (max + min) / 2
	current = @array[mid]
	return mid if current == @match
	if @match > current
		return binary_search(mid + 1, max)
	else
		return binary_search(min, mid - 1)
	end
end

max = size - 1
puts binary_search(0, max)

