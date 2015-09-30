#!/usr/bin/ruby

@digit = {
	1 => "one",
	2 => "two",
	3 => "three",
	4 => "four",
	5 => "five",
	6 => "six",
	7 => "seven",
	8 => "eight",
	9 => "nine",
	10 => "ten",
	11 => "eleven",
	12 => "twelve",
	13 => "thirteen",
	14 => "fourteen",
	15 => "quarter",
	16 => "sixteen",
	17 => "seventeen",
	18 => "eighteen",
	19 => "ninteen",
	20 => "twenty",
	30 => "half",
}

def find_words(hour, minute)
	return @digit[hour] + " o' clock" if minute == 0
	
	word_min = ""
	indicator = ""
	value = 0

	if minute > 30
		indicator = "to"
		value = 60 - minute
		hour == 12 ? hour = 1 : hour += 1
	else
		indicator = "past"
		value = minute
	end

	if value == 1
		indicator = "minute" + " " + indicator
	else
		indicator = "minutes" + " " + indicator unless minute % 15 == 0  
	end

	if value > 20 && value < 30
		word_min = @digit[20] + " " + @digit[value % 20]
	else
		word_min = @digit[value]
	end

	word_min + " " + indicator + " " + @digit[hour]
end

hour = gets.chomp.to_i
minute = gets.chomp.to_i
puts find_words(hour, minute)

