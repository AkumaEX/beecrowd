require "set"

def get_forest(n)
  forest = []
  n.times { forest.push(gets.split.map(&:to_i)) }
  forest
end

def num_butterflies(n, forest)
  butterflies = Set[]
  n.times do
    x, y = gets.split.map(&:to_i)
    butterflies.add(forest[x - 1][y - 1])
  end
  butterflies.size
end

n = gets.to_i
puts num_butterflies(2 * n, get_forest(n))
