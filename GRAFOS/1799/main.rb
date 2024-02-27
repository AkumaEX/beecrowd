# frozen_string_literal:true

require 'set'

def build_maze
  maze = {}
  links = gets.split[1].to_i
  links.times do
    a, b = gets.split
    maze[a] = (maze[a] || []) + [b]
    maze[b] = (maze[b] || []) + [a]
  end
  maze
end

def minimum_points(maze, target, queue, visited)
  next_queue = []
  queue.each do |node|
    next if visited.include? node

    visited.add(node)
    return 1 if maze[node].include? target

    next_queue += maze[node]
  end
  1 + minimum_points(maze, target, next_queue, visited)
end

maze = build_maze
points_to_cheese = minimum_points(maze, '*', ['Entrada'], Set.new)
points_to_exit = minimum_points(maze, 'Saida', ['*'], Set.new)
puts points_to_cheese + points_to_exit
