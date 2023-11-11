# frozen_string_literal:true

def get_map(lines)
  map = []
  lines.times do
    map.push(gets.split(''))
  end
  map
end

def map_is_valid(x, y, map)
  position = [0, 0]
  visited = []
  direction = [0, 0]
  loop do
    return false unless _no_problem(position, visited, x, y, map)
    return true if _chest_found(position, map)

    visited.push(position)
    direction = _update_direction(position, map, direction)
    position = _next_position(position, direction)
  end
end

def _no_problem(position, visited, x, y, map)
  unless visited.include?(position)
    line, column = position
    return true if line < y && column < x && ['>', '<', 'v', '^', '.', '*'].any?(map[line][column])
  end
  false
end

def _chest_found(position, map)
  line, column = position
  map[line][column] == '*'
end

def _update_direction(position, map, direction)
  line, column = position
  return direction if map[line][column] == '.'

  directions = { '>' => [0, 1], '<' => [0, -1], 'v' => [1, 0], '^' => [-1, 0] }
  directions[map[line][column]]
end

def _next_position(position, direction)
  line, column = position
  line_direction, column_direction = direction
  [line + line_direction, column + column_direction]
end

x = gets.to_i
y = gets.to_i
map = get_map(y)
puts map_is_valid(x, y, map) ? '*' : '!'
