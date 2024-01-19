# frozen_string_literal:true

def coast_size(m, n)
  size = 0
  map = _get_map(m)
  (0..m - 1).each do |i|
    (0..n - 1).each do |j|
      size += 1 if _is_coast(map, i, j, m, n)
    end
  end
  size
end

def _get_map(m)
  map = []
  m.times do
    map.push(gets)
  end
  map
end

def _is_coast(map, i, j, m, n)
  if map[i][j] == '#'
    return true if i == 0 || i == m - 1 || j == 0 || j == n - 1
    return true if map[i - 1][j] == '.' || map[i + 1][j] == '.' || map[i][j - 1] == '.' || map[i][j + 1] == '.'
  end
  false
end

m, n = gets.split.map(&:to_i)
puts coast_size(m, n)
