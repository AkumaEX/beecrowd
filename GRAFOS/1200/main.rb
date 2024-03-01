# frozen_string_literal:true

class Node
  attr_accessor :data, :left, :right

  def initialize(data)
    @data = data
  end
end

def insert(data, node)
  if node
    if data < node.data
      node.left = insert(data, node.left)
    else
      node.right = insert(data, node.right)
    end
    return node
  end
  Node.new data
end

def print_search(data, tree)
  puts _search(data, tree) ? "#{data} existe" : "#{data} nao existe"
end

def _search(data, node)
  return node.data == data || _search(data, node.left) || _search(data, node.right) if node

  false
end

def print_tree(expression, tree)
  result = []
  _expression_tree(expression, tree, result)
  puts result.join(' ')
end

def _expression_tree(expression, node, result)
  return unless node

  result.push(node.data) if expression == 'PREFIXA'
  _expression_tree(expression, node.left, result)
  result.push(node.data) if expression == 'INFIXA'
  _expression_tree(expression, node.right, result)
  result.push(node.data) if expression == 'POSFIXA'
end

data = gets.split[1]
tree = Node.new data
while line = gets
  if line.include? ' '
    command, data = line.strip.split
    command == 'I' ? insert(data, tree) : print_search(data, tree)
  else
    expression = line.strip
    print_tree(expression, tree)
  end
end
