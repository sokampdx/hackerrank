#!/usr/bin/ruby

tests = gets.chomp.to_i

tests.times do 
  string = gets.chomp.to_s
  len = string.length
  half = (len + 1) / 2
  alt_index = index = nil
  lower = 0
  upper = len - 1

  (0...half).each do |first_index|
    last_index = upper - first_index
    first = string[first_index]
    last = string[last_index]

    if first != last && index.nil?
      first_next = string[first_index + 1]
      last_next = string[last_index - 1]

      if first == last_next && first_next == last
        index = last_index
        upper -= 1
        alt_index = first_index
      elsif first == last_next
        index = last_index
        break
      else 
        index = first_index
        break
      end
    elsif first != last && !index.nil?
      index = alt_index
      break
    end
  end

  puts index ? index : -1
end
