# frozen_string_literal:true

def min_cost(r, c)
  cost = 0
  parent = (0..r - 1).to_a
  edges = _get_edges(c)
  edges.keys.sort.each do |p|
    edges[p].each do |v, w|
      v_rep = _find(parent, v)
      w_rep = _find(parent, w)
      if v_rep != w_rep
        parent[v_rep] = w_rep
        cost += p
      end
    end
  end
  cost
end

def _get_edges(c)
  edges = {}
  c.times do
    v, w, p = gets.split.map(&:to_i)
    edges[p] = [] unless edges.key? p
    edges[p].push([v - 1, w - 1])
  end
  edges
end

def _find(parent, i)
  parent[i] = _find(parent, parent[i]) if parent[i] != i
  parent[i]
end

r, c = gets.split.map(&:to_i)
puts min_cost(r, c)
