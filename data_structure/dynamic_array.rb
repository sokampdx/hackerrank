#!/usr/bin/ruby

class DynamicArray
  def initialize
    @lastans = 0
    @seq_size, @query_size = gets.chomp.strip.split(' ').map(&:to_i)
    setup  
  end

  def setup
    @seq = Array.new(@seq_size)
    (0...@seq_size).each { |i| @seq[i] = [] }
  end

  def xormod(x)
    (x ^ @lastans) % @seq_size
  end

  def query
    @query_size.times do 
      rule, x, y = gets.chomp.strip.split(' ').map(&:to_i)
      order = xormod(x)
      if rule == 1
        @seq[order] << y
      else
        size = @seq[order].size 
        @lastans = @seq[order][y % size]
        puts @lastans
      end
    end
  end
end

def main
  da = DynamicArray.new
  da.query
end

main
