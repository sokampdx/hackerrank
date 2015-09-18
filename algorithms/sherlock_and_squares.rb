#!/usr/bin/ruby

def find_squares(min, max)
	count = 0

	rmin = Math.sqrt(min).to_i
	rmax = Math.sqrt(max).to_i

	(rmin..rmax).each { |x| count +=1 if (x**2).between?(min, max) }	

	count
end

num = gets.chomp.to_i

(1..num).each do 
	range = gets.strip.split(" ").map(&:to_i)
	puts find_squares(*range)	
end


