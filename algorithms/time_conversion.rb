#!/usr/bin/ruby

line = gets.strip
time_of_day = line[-2,2]
format = line[0..-2].split(":").map(&:to_i)

if time_of_day == "PM"
	format[0] += 12 if format[0] < 12
else
	format[0] = 0 if format[0] == 12
end

puts "%02d:%02d:%02d" % format
