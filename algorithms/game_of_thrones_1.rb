#!/usr/bin/ruby

test = gets.chomp.to_i

test.times do 
  string = gets.chomp.to_s

  size = string.length
  count = Hash.new(0)

  (0...size).each do |i|
    count[string[i]] += 1
  end

  found = true
  odd_count = 0

  count.values.each do |v|
    odd_count += 1 if v.odd?
  end

  found = false if odd_count > 1

  puts found ? "YES" : "NO"
end
