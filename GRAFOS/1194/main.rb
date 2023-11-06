# frozen_string_literal:true

def get_nodes(s1)
  graph = {}
  s1.each_char { |data| graph[data] = [] }
  graph
end

def add_edges(graph, to_insert, to_stop)
  stop_node = to_stop.next
  parent = to_insert.next
  path = [parent]
  loop do
    child = to_insert.next
    graph[parent].push(child)
    path.push(child)
    parent = child
    next unless parent == stop_node

    while path.include? stop_node
      parent = stop_node
      begin
        stop_node = to_stop.next
      rescue StopIteration
        return graph
      end
    end
  end
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
  graph = add_edges(graph, s1.each_char, s2.each_char)
  root = s1[0]
  puts post_order(root, graph)
end
