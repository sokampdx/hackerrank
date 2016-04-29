#!/usr/bin/ruby

num_row, num_col, num_rotation = gets.strip.split(" ").map(&:to_i)
num_ring = [num_row, num_col].min / 2
matrix = []

num_row.times do 
  a_row = gets.strip.split(" ").map(&:to_i)
  matrix << a_row
end

(0...num_ring).each do |i|
  ring = []
  r_max = num_row - i - 1
  c_max = num_col - i - 1
  i.upto(c_max) { |c| ring << matrix[i][c] if c != c_max }
  i.upto(r_max) { |r| ring << matrix[r][c_max] if r != r_max }
  c_max.downto(i) { |c| ring << matrix[r_max][c] if c != i }
  r_max.downto(i) { |r| ring << matrix[r][i] if r != i }

  move = num_rotation % ring.size
  ring = ring[move..-1] + ring[0...move]

  i.upto(c_max) { |c| matrix[i][c] = ring.shift if c != c_max }
  i.upto(r_max) { |r| matrix[r][c_max] = ring.shift if r != r_max }
  c_max.downto(i) { |c| matrix[r_max][c] = ring.shift if c != i }
  r_max.downto(i) { |r| matrix[r][i] = ring.shift if r != i }
end

matrix.each do |row|
  puts row.join(" ")
end
