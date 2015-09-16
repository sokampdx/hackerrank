#!/usr/bin/ruby

num = gets.to_i
line = gets.strip.split(" ").map(&:to_i)
puts line.inject(:+)
