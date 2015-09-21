#!/usr/bin/ruby

num_test = gets.chomp.to_i

(1..num_test).each do
	student = gets.strip.split(" ").map(&:to_i)
	arrival_time = gets.strip.split(" ").map(&:to_i)
	on_time = arrival_time.count { |x| x <= 0 }

	if on_time < student[1]
		puts "YES"
	else
		puts "NO"
	end
end

