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

def search(data, node)
  if node
    return true if node.data == data

    return search(data, node.left) || search(data, node.right)
  end
  false
end

def formatted_print(tree, expression)
  result = []
  _expression_tree(tree, expression, result)
  puts result.join(' ')
end

def _expression_tree(node, expression, result)
  return unless node

  result.push(node.data) if expression == 'PREFIXA'
  _expression_tree(node.left, expression, result)
  result.push(node.data) if expression == 'INFIXA'
  _expression_tree(node.right, expression, result)
  result.push(node.data) if expression == 'POSFIXA'
end

data = gets.split[1]
tree = Node.new data
while line = gets
  if line.include? ' '
    command, data = line.strip.split 
    if command == 'I'
      insert(data, tree)
    elsif search(data, tree)
      puts "#{data} existe"
    else
      puts "#{data} nao existe"
    end
  else
    formatted_print(tree, line.strip)
  end
end
