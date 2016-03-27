#!/usr/bin/ruby

class HourGlassSum
  def initialize
    @size = 6
    @matrix = Array.new(@size)
    @min = 1
    @max = @size - 1
    @max_sum = nil
  end

  def setup
    (0...@size).each do |i|
      @matrix[i] = gets.chomp.strip.split(' ').map(&:to_i)
    end
  end

  def find_sum(row, col)
    sum = 0
    (-1..1).each do |m_r|
      (-1..1).each do |m_c|
        sum += @matrix[row + m_r][col + m_c] unless m_r == 0 && (m_c == -1 || m_c == 1)
      end
    end
    sum
  end

  def find_max
    setup
    sum = 0

    (@min...@max).each do |r|
      (@min...@max).each do |c|
        sum = find_sum(r, c)
        @max_sum = sum if @max_sum.nil? || sum > @max_sum
      end
    end

    @max_sum    
  end
end

def main
  hour_glass_max = HourGlassSum.new
  puts hour_glass_max.find_max 
end 

main
