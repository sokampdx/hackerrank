#!/usr/bin/ruby

def find_matrix_size(size)
	rootf = Math.sqrt(size).to_i
	rootc = rootf + 1
	if (rootf * rootf) >= size
		return rootf, rootf
	elsif (rootf * rootc) >= size
		return rootf, rootc
	else
		return rootc, rootc
	end
end


message = gets.chomp.to_s
@length = message.length

row, col = find_matrix_size(@length)

(0...col).each do |c|
	(0...row).each do |r|
		current = r * col + c
		print message[current] if current < @length
	end
	print " "
end
