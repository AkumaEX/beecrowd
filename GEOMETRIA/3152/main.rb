# frozen_string_literal:true

def get_area
  x1, y1 = gets.split.map(&:to_i)
  x2, y2 = gets.split.map(&:to_i)
  x3, y3 = gets.split.map(&:to_i)
  x4, y4 = gets.split.map(&:to_i)
  ((x1 * y2 - y1 * x2) + (x2 * y3 - y2 * x3) + (x3 * y4 - y3 * x4) + (x4 * y1 - y4 * x1)).abs / 2
end

area_a = get_area
area_b = get_area
puts "terreno #{area_a > area_b ? 'A' : 'B'}"
