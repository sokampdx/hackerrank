#!/usr/bin/ruby

chapters, max = gets.strip.split(" ").map(&:to_i)
problems = gets.strip.split(" ").map(&:to_i)

num_special = 0
page = 1
first = 1 
last = max

problems.each do |p|
  repeat = p / max + (p % max == 0 ? 0 : 1)
  
  repeat.times do 
    limit = first + max - 1
    last = p < limit ? p : limit
    num_special += 1 if (first..last).include?(page)
    first = p > last ? last + 1 : 1
    page += 1  
  end
end
   
puts num_special
