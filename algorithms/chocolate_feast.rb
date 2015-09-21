#!/usr/bin/ruby

def get_num_chocolate(money, cost, exchange)
	chocolate = money / cost
	chocolate + get_free(chocolate, exchange)
end

def get_free(wrapper, exchange)
	return 0 if exchange > wrapper
	chocolate = wrapper / exchange
	remain = wrapper % exchange
	chocolate + get_free(remain + chocolate, exchange)
end

num = gets.chomp.to_i

(1..num).each do
	input = gets.strip.split(" ").map(&:to_i)
	puts get_num_chocolate(*input)
end

=begin
t = gets.to_i
   t.times{
      (n, c, m) = gets.split.map{|i| i.to_i}
      
        answer = get_num_chocolate(n, c, m)
        puts answer
   }
=end
