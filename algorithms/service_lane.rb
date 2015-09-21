#!/usr/bin/ruby

first = gets.strip.split(" ").map(&:to_i)
$highway = gets.strip.split(" ").map(&:to_i)

=begin
def find_size(enter, leave)
	$highway[enter..leave].min
end
=end

def find_size(enter, leave)
	best = 3
	(enter..leave).each do |x|
		current = $highway[x]
		best = current if current < best
		break if best == 1
	end
	best
end

(1..first[1]).each do 
	location = gets.strip.split(" ").map(&:to_i)
	puts find_size(*location)	
end


