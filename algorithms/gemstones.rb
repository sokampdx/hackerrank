#!/usr/bin/ruby

test = gets.chomp.to_i
gem_element = Hash.new(0)

(0...test).each do |count|
  string = gets.chomp.to_s
  size = string.length

  (0...size).each do |i|
    current = gem_element[string[i]]
    gem_element[string[i]] = count + 1 if current == count
  end
end

count = 0

gem_element.values.each do |v|
  count += 1 if v == test
end

puts count
