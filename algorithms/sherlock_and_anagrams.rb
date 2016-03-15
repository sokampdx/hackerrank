#!/usr/bin/ruby

class SherlockAnagrams
  def initialize(string)
    @lookup = Hash.new(0)
    @string = string
    @count = 0
  end

  def combination(n)
    n * (n - 1) / 2
  end

  def sort(string)
    string.split('').sort.join
  end

  def partition(string)
    len = string.length
    return if len <= 1

    (1...len).each do |i|
      first, last = string[0...i], string[i...len]
      @lookup[sort(first)] += 1
      @lookup[sort(last)] += 1
    end
    
    shrink(string)
  end

  def shrink(string)
    return if string.nil? || string.empty?
    middle = string[1..-2]
    @lookup[sort(middle)] += 1

    partition(middle)
  end

  def solve
    partition(@string)
    @lookup.each_value do |v|
      @count += combination(v)
    end
    puts @count
  end
end

def main
  tests = gets.chomp.to_i

  tests.times do 
    string = gets.chomp.to_s
    sherlock_anagram = SherlockAnagrams.new(string)
    sherlock_anagram.solve
  end
end

main if $0 == __FILE__ 
