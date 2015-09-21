#!/usr/bin/ruby

def print_fraction(numerator, denominator)
	puts '%.3f' % (numerator.to_f / denominator)
end

num = gets.chomp.to_i
line = gets.strip.split(" ").map(&:to_i)
positive = line.count { |x| x > 0 }
zero = line.count(0)
negative = num - positive - zero
print_fraction(positive, num)
print_fraction(negative, num)
print_fraction(zero, num)

