#!/usr/bin/ruby


def print_progress
	puts "shortest: " + @shortest.to_s
	puts "visited: " + @visited.to_s
end

@graph = {}
@shortest = []
@visited = Array.new 

def find_shortest_distance(v1, v2)
	return 0 if v1 == v2 || @visited.include?(v1) || @graph[v1].nil?

	current = @graph[v1].map do |n|
		find_shortest_distance(n, v2) + 6
	end

	current.empty? ? 0 : current.min 
end

def shortest_reach(node)
	return if @graph[node].empty?
	(1..@shortest.size).each do |i|
		distance = find_shortest_distance(i, node) 
		@shortest[i] = distance > 0 ? distance : -1
		@visited << i 
	end
end

test = gets.chomp.to_i
(0...test).each do 
	nodes, edges = gets.strip.split(" ").map(&:to_i)
	@graph = (1..nodes).inject({}) { |h, v| h[v] = Array.new; h }
	@shortest = Array.new(nodes, -1)
	(1..edges).each do 
		x, y = gets.strip.split(" ").map(&:to_i)
		@graph[x] << y unless @graph[x].include?(y)
		@graph[y] << x unless @graph[y].include?(x)
	end

	start = gets.chomp.to_i
	
	shortest_reach(start)

	@shortest.delete_at(start)
	@shortest.delete_at(0)
	puts @shortest.join(" ").to_s
end

