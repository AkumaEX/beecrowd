def get_maze(n)
  maze = []
  n.times { maze.push(gets) }
  maze
end

def get_max_food(n, maze)
  max_food = 0
  food = 0
  (0...n).each do |i|
    (0...n).each do |j|
      position = maze[i][i.even? ? j : n - 1 - j]
      if position == "o"
        food += 1
      elsif position == "A"
        max_food = food if food > max_food
        food = 0
      end
    end
  end
  (food > max_food) ? food : max_food
end

n = gets.to_i
maze = get_maze(n)
puts get_max_food(n, maze)
