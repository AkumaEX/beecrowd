# frozen_string_literal:true

Point = Struct.new(:x, :y)

def get_black_hole_point(s1_before, s1_after, s2_before, s2_after)
  x1 = (s1_before.x + s1_after.x) / 2
  y1 = (s1_before.y + s1_after.y) / 2
  m1 = (s1_before.y - s1_after.y) / (s1_before.x - s1_after.x)

  x2 = (s2_before.x + s2_after.x) / 2
  y2 = (s2_before.y + s2_after.y) / 2
  m2 = (s2_before.y - s2_after.y) / (s2_before.x - s2_after.x)

  if m1.zero?
    return Point.new x1, y2 if m2.zero?

    return Point.new x1, y2 - (x1 - x2) / m2
  end

  x = ((y2 - y1) * m1 * m2 + ((m1 * x2) - (m2 * x1))) / (m1 - m2)
  y = y1 - (x - x1) / m1
  Point.new x, y
end

def print_formatted(c, point)
  puts "Caso ##{c}: #{format('%.2f', point.x)} #{format('%.2f', point.y)}"
end

t = gets.to_i
1.upto(t) do |c|
  s1_before = Point.new(*gets.split.map(&:to_f))
  s2_before = Point.new(*gets.split.map(&:to_f))
  s1_after = Point.new(*gets.split.map(&:to_f))
  s2_after = Point.new(*gets.split.map(&:to_f))

  black_hole = get_black_hole_point(s1_before, s1_after, s2_before, s2_after)
  print_formatted(c, black_hole)
end
