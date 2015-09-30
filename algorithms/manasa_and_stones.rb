#!/usr/bin/ruby


def find_combination(num_stones, a, b)
	n = num_stones - 1
	diff = a - b
	(0..n).map { |i|  a * n - i * diff }
end

testcase = gets.chomp.to_i

(1..testcase).each do
	num_stones = gets.chomp.to_i
	a = gets.chomp.to_i
	b = gets.chomp.to_i
	steps = find_combination(num_stones, a, b)
	puts steps.uniq.sort.join(" ")
end
