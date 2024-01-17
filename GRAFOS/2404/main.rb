# frozen_string_literal:true

def min_distance(n, m)
  distance = 0
  parent = (0..n - 1).to_a
  edges = _get_edges(m)
  edges.keys.sort.each do |c|
    edges[c].each do |u, v|
      u_rep = _find(parent, u)
      v_rep = _find(parent, v)
      if u_rep != v_rep
        parent[u_rep] = v_rep
        distance += c
      end
    end
  end
  distance
end

def _get_edges(m)
  edges = {}
  m.times do
    u, v, c = gets.split.map(&:to_i)
    edges[c] = [] unless edges.key? c
    edges[c].push([u - 1, v - 1])
  end
  edges
end

def _find(parent, i)
  parent[i] = _find(parent, parent[i]) if parent[i] != i
  parent[i]
end

n, m = gets.split.map(&:to_i)
puts min_distance(n, m)
