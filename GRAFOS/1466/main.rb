# frozen_string_literal:true

def build(tree)
  gets
  root, *nodes = gets.split.map(&:to_i)
  tree[root] = [nil, nil]
  nodes.each do |node|
    tree[node] = [nil, nil]
  end
  nodes.each do |node|
    _insert(node, tree, root)
  end
  root
end

def _insert(node, tree, parent)
  edge = node < parent ? 0 : 1
  child = tree[parent][edge]
  if child.nil?
    tree[parent][edge] = node
  else
    _insert(node, tree, child)
  end
end

def print_formatted(i, tree, root)
  puts "Case #{i + 1}:"
  queue = [root]
  loop do
    node = queue.shift
    tree[node].each do |child|
      queue += [child] unless child.nil?
    end
    return print "#{node}\n\n" unless queue.any?

    print "#{node} "
  end
end

c = gets.to_i
c.times do |i|
  tree = {}
  root = build(tree)
  print_formatted(i, tree, root)
end
