

def find_mfab(a, b, n)
	term = 2
	while term < n
		a, b = b, b * b + a
		term += 1
	end
	b
end

a, b, n = gets.strip.split(" ").map(&:to_i)
puts find_mfab(a, b, n)
