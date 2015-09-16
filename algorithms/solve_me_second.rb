def add( a,b)
	a+b
end

num = gets.to_i
(0...num).each do
	line = gets.strip.split(" ")
	puts add(line[0].to_i, line[1].to_i)
end
