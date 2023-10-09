# frozen_string_literal:true

def fill_initial_values
  matrix = []
  (1..6).each { |size| matrix.push(Array.new(size, 0)) }
  matrix.push(gets.gsub(' ', ' 0 ').split.map(&:to_i))
  matrix.push(Array.new(8, 0))
  matrix.push(gets.gsub(' ', ' 0 ').split.map(&:to_i))
  matrix
end

def solve_base_values(matrix)
  # i is the index of the four base triangles
  [0, 2, 4, 6].each do |i|
    matrix[8][i + 1] = (matrix[6][i] - matrix[8][i] - matrix[8][i + 2]) / 2
  end
  matrix
end

def fill_all_values(matrix)
  # from line 7 to the top
  7.downto(0).each do |line|
    (0..line).each do |i|
      matrix[line][i] = matrix[line + 1][i] + matrix[line + 1][i + 1]
    end
  end
  matrix
end

def print_pyramid(matrix)
  matrix.each do |line|
    puts line.join(' ')
  end
end

n = gets.to_i
n.times do
  # top half values of the pyramid aren't necessary
  3.times { gets }
  print_pyramid(fill_all_values(solve_base_values(fill_initial_values)))
end
