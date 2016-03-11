#!/usr/bin/ruby


line = gets.strip.downcase.split("")
print "not " unless ([*('a'..'z')] - line).empty? 
puts "pangram"
	
