#!/usr/bin/ruby

num_string = gets.chomp.strip.to_i

hash = Hash.new(0)

num_string.times do
  string = gets.chomp.strip.to_s
  hash[string] += 1
end

num_query = gets.chomp.strip.to_i

num_query.times do
  string = gets.chomp.strip.to_s
  puts hash[string]
end 
