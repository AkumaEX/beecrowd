# frozen_string_literal:true

def get_nodes(s1)
  graph = {}
  s1.each_char { |data| graph[data] = [] }
  graph
end

def add_edges(nodes, leaves, graph)
  leaf = leaves.next
  parent = nodes.next
  path = [parent]
  loop do
    child = nodes.next
    graph[parent].push(child)
    path.push(child)
    parent, leaf = _backtrack_if_leaf(child, leaf, path, leaves)
  end
  path.first
end

def _backtrack_if_leaf(node, leaf, path, leaves)
  if node == leaf
    leaves.each do |leaf|
      return [node, leaf] unless path.any? leaf

      node = leaf
    end
  end
  [node, leaf]
end

def post_order(parent, graph)
  children = ''
  graph[parent].each { |child| children += post_order(child, graph) } if graph[parent].any?
  children + parent
end

c = gets.to_i
c.times do
  _, s1, s2 = gets.split
  graph = get_nodes(s1)
  tree_root = add_edges(s1.each_char, s2.each_char, graph)
  puts post_order(tree_root, graph)
end
