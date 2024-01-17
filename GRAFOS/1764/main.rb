# frozen_string_literal:true

def min_distance(m, n)
  distance = 0
  parent = (0..m - 1).to_a
  edges = _get_edges(n)
  edges.keys.sort.each do |z|
    edges[z].each do |x, y|
      x_rep = _find(parent, x)
      y_rep = _find(parent, y)
      if x_rep != y_rep
        parent[x_rep] = y_rep
        distance += z
      end
    end
  end
  distance
end

def _get_edges(n)
  edges = {}
  n.times do
    x, y, z = gets.split.map(&:to_i)
    edges[z] = [] unless edges.key? z
    edges[z].push([x, y])
  end
  edges
end

def _find(parent, i)
  parent[i] = _find(parent, parent[i]) if parent[i] != i

  parent[i]
end

m, n = gets.split.map(&:to_i)
while m.nonzero? && n.nonzero?
  puts min_distance(m, n)
  m, n = gets.split.map(&:to_i)
end
