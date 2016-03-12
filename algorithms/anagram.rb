#!/usr/bin/ruby

tests = gets.chomp.to_i

tests.times do 
  strings = gets.chomp.to_s
  len = strings.length

  if len.odd?
    puts -1
    next
  else
    sublen = len / 2
    counts = Hash.new(0)

    (0...len).each do |i|
      counts[strings[i]] += ( i < sublen ? 1 : -1 )
    end

    result = counts.values.inject(0) { |sum, e| sum + e.abs }
    puts result / 2
  end
end
