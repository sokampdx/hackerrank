#!/usr/bin/ruby

tests = gets.chomp.to_i

tests.times do
  string = gets.chomp.to_s
  len = string.length
  
  operate = len / 2
  count = 0

  operate.times do |i|
    count += ( string[i].ord - string[len - i - 1].ord).abs
  end

  puts count
end
