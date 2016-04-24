#!/usr/bin/ruby

test = gets.chomp.to_i

(1..test).each do 
  area_row, area_col = gets.strip.split(" ").map(&:to_i)
  area = []
  area_row.times { area << gets.strip }
  find_row, find_col = gets.strip.split(" ").map(&:to_i)
  find = []
  find_row.times { find << gets.strip }
  found = false

  last = (area_row - find_row)
  (0..last).each do |i|
    common = []
    (0...find_row).each do |j|
      found_line = area[i+j].enum_for(:scan, /(?=(#{find[j]}))/).map { Regexp.last_match.begin(0) }
      common.empty? ? common = found_line : common &= found_line
      break if common.empty?
      found = true if j == find_row - 1
    end
    break if found
  end

  puts found ? "YES" : "NO"
end
