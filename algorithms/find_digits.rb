#!/usr/bin/ruby

digits = *(1..9)
$count = Hash[digits.map { |x| [x, 0] }]

def find_divisor(number)
	total = 0
	$count.each do |key, value|
		total += value if (value != 0) && (number % key == 0)
	end

	total
end

def get_counts(number)
	return if number == 0
	digit = number % 10
	$count[digit] += 1 if digit != 0
	get_counts(number / 10)
end

def clear_counts
	$count.each { |key, value| $count[key] = 0 }
end

num_test = gets.chomp.to_i

(1..num_test).each do
	number = gets.chomp.to_i
	get_counts(number)
	puts find_divisor(number)
	clear_counts
end
	
