#!/usr/bin/ruby

def encrypt(char, rotate)
	char_num = char.ord
	if char_num >= 65 && char_num <= 90
		normalize_num = 65
	elsif char_num >= 97 && char_num <= 122
		normalize_num = 97
	else
		return char
	end

	((char_num - normalize_num + rotate) % 26 + normalize_num).chr
end

num = gets.chomp.to_i
string = gets.chomp.to_s
rotate = gets.chomp.to_i

string.split("").each do |c|
	printf encrypt(c, rotate)
end
puts

