#!/usr/bin/ruby

def find_min_spending(num_black, num_white, price_black, price_white, price_convert)
	white_convert = price_white + price_convert
	black_convert = price_black + price_convert

	if price_black > white_convert
		num_white * price_white + num_black * white_convert
	elsif price_white > black_convert
		num_black * price_black + num_white * black_convert
	else
		num_white * price_white + num_black * price_black
	end
end


n = gets.chomp.to_i

(1..n).each do 
	num_black, num_white = gets.strip.split(" ").map(&:to_i)
	price_black, price_white , price_convert = gets.strip.split(" ").map(&:to_i)

	puts find_min_spending(num_black, num_white, price_black, price_white, price_convert)
end

