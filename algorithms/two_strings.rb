#!/usr/bin/ruby
tests = gets.chomp.to_i

tests.times do 
  string1 = gets.chomp.to_s
  string2 = gets.chomp.to_s

  len1 = string1.length
  len2 = string2.length

  if len1 < len2
    hash_str = string1
    proc_str = string2
    hash_len = len1
    proc_len = len2
  else
    hash_str = string2
    proc_str = string1
    hash_len = len2
    proc_len = len1
  end

  lookup = Hash.new
  found = false

  (0...hash_len).each do |i|
    lookup[hash_str[i]] = true
  end

  (0...proc_len).each do |i|
    found = true if lookup[proc_str[i]]
  end

  puts found ? 'YES' : 'NO'
end
