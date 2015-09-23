#!/usr/bin/ruby

a = gets.chomp.to_s
b = gets.chomp.to_s

def matchOnes(a, b)
	aone = a.scan(/1/).count
	bone = b.scan(/1/).count
	aone != bone
end

def countSwap(a, b)
	count = 0
	(0...a.length).each do |i|
		count += 1 unless a[i] == b[i]
	end
	count / 2
end

if a.length != b.length ||  matchOnes(a,b)
	puts "-1"
else
	puts countSwap(a,b)
end
	

