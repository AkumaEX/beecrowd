# frozen_string_literal:true

def get_coordinates(x1_before, y1_before, x1_after, y1_after, x2_before, y2_before, x2_after, y2_after)
  xm1, ym1, m1 = _get_params(x1_before, y1_before, x1_after, y1_after)
  xm2, ym2, m2 = _get_params(x2_before, y2_before, x2_after, y2_after)
  return [xm1, ym2 + m2 * (xm1 - xm2)] if m1.zero?
  return [xm2, y = ym1 + m1 * (xm2 - xm1)] if m2.zero?

  x = (m1 * xm1 - ym1 - m2 * xm2 + ym2) / (m1 - m2)
  y = ym1 + m1 * (x - xm1)
  [x, y]
end

def _get_params(x_before, y_before, x_after, y_after)
  xm = (x_before + x_after) / 2
  ym = (y_before + y_after) / 2
  m = y1_before != y1_after ? -(x_before - x_after) / (y_before - y_after) : 0
  [xm, ym, m]
end

def print_formatted(c, x, y)
  puts "Caso ##{c}: #{format('%.2f', x)} #{format('%.2f', y)}"
end

t = gets.to_i
1.upto(t) do |c|
  x1_before, y1_before = gets.split.map(&:to_f)
  x2_before, y2_before = gets.split.map(&:to_f)
  x1_after, y1_after = gets.split.map(&:to_f)
  x2_after, y2_after = gets.split.map(&:to_f)

  x, y = get_coordinates(x1_before, y1_before, x1_after, y1_after, x2_before, y2_before, x2_after, y2_after)
  print_formatted(c, x, y)
end
