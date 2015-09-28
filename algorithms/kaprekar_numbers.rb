#!/usr/bin/ruby

@result = Array.new 

def find_digit(x)
	count = 0
	current = x
	while current > 0
		current /= 10
		count += 1
	end
	count
end

def is_kaprekar?(x)
	digit = find_digit(x)
	square = x * x
	split = 10 ** digit
	(square / split + square % split) == x
end

min = gets.chomp.to_i
max = gets.chomp.to_i

(min..max).each do |x|
	 @result << x if is_kaprekar?(x)
end

if @result.empty?
	puts "INVALID RANGE"
else
	puts @result.join(" ").to_s
end

