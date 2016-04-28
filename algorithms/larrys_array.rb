#!/usr/bin/ruby

test = gets.chomp.to_i

(1..test).each do 
  num = gets.chomp.to_i
  array = gets.strip.split(" ").map(&:to_i)

  parity = 0

  (0...num).each do |i|
    value = array[i] - 1
    (0...i).each { |j| value -= 1 if array[j] < array[i] }
    parity += value
  end
  
  puts parity.even? ? "YES" : "NO"
end
