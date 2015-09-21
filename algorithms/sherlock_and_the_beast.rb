#!/usr/bin/ruby

def largest_decent(digit)
	return "" if digit == 0
	return "-1" if digit < 3

	remainder = digit % 3
	return "5" * (digit - remainder) + "3" * remainder if remainder % 5 == 0

	string = largest_decent(digit - 5)
	string + (string == "-1" ? "" : "3" * 5)
end

num_test = gets.chomp.to_i

(1..num_test).each do
	digit = gets.chomp.to_i
	puts largest_decent(digit)
end
	
