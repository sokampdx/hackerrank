#!/usr/bin/ruby

alpha = Hash.new(0)
count = [1, -1]

count.each do |unit|
  string = gets.chomp.to_s
  size = string.length

  (0...size).each do |i|
    alpha[string[i]] += unit
  end
end

count = 0

alpha.values.each do |v|
  count += v.abs if v != 0
end

puts count
