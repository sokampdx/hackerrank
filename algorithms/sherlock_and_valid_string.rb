#!/usr/bin/ruby

string = gets.chomp.to_s
len = string.length
counts = Hash.new(0)
max_count = max = 0

(0...len).each do |i| 
  count = counts[string[i]] += 1
  if max < count
    max = count
    max_count = 1
  elsif max == count
    max_count +=1
  end
end

if max_count == counts.length
  puts 'YES'
elsif max_count == counts.length - 1 || max_count == 1 
  unique = counts.values.uniq
  if unique.length == 2 && (unique[0] - unique [1]).abs == 1
    puts 'YES'
  else
    puts 'NO'
  end
else
  puts 'NO'
end
