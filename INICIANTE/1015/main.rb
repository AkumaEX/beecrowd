x1, y1 = gets.split.map(&:to_f)
x2, y2 = gets.split.map(&:to_f)
distance = ((x2 - x1)**2 + (y2 - y1)**2)**0.5
puts "%.4f" % distance
