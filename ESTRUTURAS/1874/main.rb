# frozen_string_literal:true

def get_cells(h)
  cells = []
  h.times do
    cells.push(gets.split.map(&:to_i))
  end
  cells
end

def get_vacant_spaces(h, p, cells)
  vacant_spaces = []
  (p - 1).downto(0).each do |column|
    (h - 1).downto(0).each do |line|
      vacant_spaces.push([line, column]) if cells[line][column].zero?
    end
  end
  vacant_spaces
end

def insert_new_blocks(cells, vacant_spaces)
  queue = gets.split.map(&:to_i)
  vacant_spaces.zip(queue) do |(line, column), block|
    cells[line][column] = block unless block.nil?
  end
  cells
end

def print_formatted(cells)
  cells.each do |line|
    puts line.join(' ')
  end
end

h, p, f = gets.split.map(&:to_i)
while h.nonzero? && p.nonzero? && f.nonzero?
  cells = get_cells(h)
  vacant_spaces = get_vacant_spaces(h, p, cells)
  insert_new_blocks(cells, vacant_spaces)
  print_formatted(cells)
  h, p, f = gets.split.map(&:to_i)
end
