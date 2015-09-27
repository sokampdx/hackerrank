#!/usr/bin/ruby

n, m = gets.strip.split(" ").map(&:to_i)

people = Array.new

(0...n).each do 
	people << gets.strip.to_i(2)
end

topic = -1 
team = 0

(0...(n-1)).each do |i|
	((i+1)...n).each do |j|
		current = (people[i] | people[j]).to_s(2).count "1"
		if current == topic
			team += 1
		elsif current > topic
			team = 1
			topic = current
		end
	end
end

puts topic
puts team
