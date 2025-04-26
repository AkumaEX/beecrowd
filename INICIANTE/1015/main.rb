def distance(x1, y1, x2, y2)
  ((x2 - x1)**2 + (y2 - y1)**2)**0.5
end

x1, y1 = gets.split.map(&:to_f)
x2, y2 = gets.split.map(&:to_f)

puts "%.4f" % distance(x1, y1, x2, y2)
