class BST
  attr_reader :root, :not_found

  class Node
    attr_reader :value, :left, :right

    def initialize(value)
      @value = value
      @left, @right = nil, nil
    end

    def insert(value)
      if value < @value
        @left.nil? ? @left = Node.new(value) : @left.insert(value)
      else
        @right.nil? ? @right = Node.new(value) : @right.insert(value)
      end
    end
  end

  def insert(value)
    @root.nil? ? @root = Node.new(value) : @root.insert(value)
  end

  def height(value, node=@root)
    return 0 if value == node.value
    if (value < node.value && node.left.nil?) || (value > node.value && node.right.nil?)
      @not_found = true
      return 0
    else
      1 + (value < node.value ? height(value, node.left) : height(value, node.right))
    end
  end
end

def bstDistance(list, node1, node2)
  min, max = node1 < node2 ? [node1, node2] : [node2, node1]
  parent = list.find { |x| x.between?(min, max) }

  bst = BST.new
  list.each { |x| bst.insert(x) }

  parent_h, min_h, max_h = [parent, min, max].map { |x| bst.height(x) }

  return -1 if bst.not_found
  return (min_h - parent_h) + (max_h - parent_h)
end

# TEST

values = [3, 5, 8, 4, 1, 2, 6, 9, 10, 7]
node1, node2 = 4, 9
puts "-----------------------"
puts bstDistance(values, node1, node2)

values = [3, 5, 8, 4, 1, 2, 6, 9, 10, 7]
node1, node2 = 11, 9
puts "-----------------------"
puts bstDistance(values, node1, node2)

values = [3, 5, 8, 4, 1, 2, 6, 9, 10, 7]
node1, node2 = 2, 9
puts "-----------------------"
puts bstDistance(values, node1, node2)

values = [3, 5, 8, 4, 1, 2, 6, 9, 10, 7]
node1, node2 = 7, 6
puts "-----------------------"
puts bstDistance(values, node1, node2)

values = [3, 5, 8, 4, 1, 2, 6, 9, 10, 7]
node1, node2 = 6, 6
puts "-----------------------"
puts bstDistance(values, node1, node2)

require 'set'

def rand_n(n, max)
  randoms = Set.new
  loop do
    randoms << rand(max)
    return randoms.to_a if randoms.size >= n
  end
end

max_rand = 100000
values = rand_n(max_rand, max_rand)
node1, node2 = rand(max_rand), rand(max_rand)
puts "-----------------------"
puts bstDistance(values, node1, node2)
