#!/usr/bin/ruby

def insertionSort(array)
	value = array.last
	max = array.size - 2

	i = max
	current = array[i]

	while i >= 0 && current > value
		array[i+1] = array[i]
		puts array.join(" ").to_s
		i-=1
		current = array[i]
	end

	array[i+1] = value
	puts array.join(" ").to_s
end
	
size = gets.chomp.to_i
array = gets.strip.split(" ").map(&:to_i)
insertionSort(array)

