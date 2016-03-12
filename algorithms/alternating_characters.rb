#!/usr/bin/ruby

test = gets.chomp.to_i

(1..test).each do 
  string = gets.chomp.to_s

  size = string.size
  previous = string[0]
  count = 0

  (1...size).each do |i|
    current = string[i]
    if current == previous
      count += 1
    else
      previous = current
    end
  end

  puts count
end
	
