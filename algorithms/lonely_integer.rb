#!/usr/bin/ruby

num = gets.strip.to_i
list = gets.strip.split(' ').map! { |i| i.to_i }
puts list.reduce(&:^)
