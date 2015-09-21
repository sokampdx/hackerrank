#!/usr/bin/ruby

def getsOneLineOfInteger
	gets.strip.split(" ").map(&:to_i)
end

Y = 2
M = 1
D = 0

actual = getsOneLineOfInteger
expect = getsOneLineOfInteger
diff = [actual, expect].transpose.map { |x| x.reduce(:-) }

def calculateFine(diff)
	return 10000 if diff[Y] > 0
	return 500 * diff[M] if diff[M] > 0 && diff[Y] == 0
	return 15 * diff[D] if diff[D] > 0 && diff[M] == 0 && diff[Y] == 0
	0
end

puts calculateFine(diff) 
 
