#!/usr/bin/ruby

test = gets.chomp.to_i

(1..test).each do 
	result = true
	array = gets.strip.split("").map { |x| x.ord }
	
	max = array.size - 1
	half = max / 2
	
	(0..half).each do |i|
		result = (array[i+1] - array[i]).abs == (array[max-i] - array[max-(i+1)]).abs
		break unless result
	end

	print "Not " unless result
	puts "Funny"
end
	
