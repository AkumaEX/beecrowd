x_m, y_m, x_r, y_r = gets.split.map(&:to_i)
puts (x_m - x_r).abs + (y_m - y_r).abs
