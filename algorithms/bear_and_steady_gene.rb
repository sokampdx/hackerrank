#!/usr/bin/ruby

def found?(replace, count, basic)
  basic.reduce(true) { |t, v| t &&= (replace[v] + count[v] >= 0) }
end

num = gets.chomp.to_i

num.times do
  len = gets.chomp.to_i
  balance = len / 4 
  gene = gets.chomp.strip.to_s
  basic = %W(A C T G)

  count = Hash[basic.map { |a| [a, balance < gene.count(a) ? balance - gene.count(a) : 0] }]
  replace = Hash[basic.map { |a| [a, 0] }]

  min = count.values.reduce(:+).abs
  current_length = 0 
  min_length = len

  unless basic.reduce(true) { |t, v| t &&= count[v] == 0 }
    (0...len).each do |i| 
      replace[gene[i]] += 1
      current_length += 1
      next if current_length < min || !found?(replace, count, basic)

      min_length = [min_length, current_length].min
      first = i - current_length + 1 

      (first..i-3).each do |j|
        current_length -= 1
        replace[gene[j]] -= 1
        break unless found?(replace, count, basic)
        min_length = [min_length, current_length].min
      end 
    end
  end

  puts "#{min_length == len ? 0 : min_length}"
end
