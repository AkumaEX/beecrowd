n = gets.to_i
n.times do
  a, b, c = gets.split.map(&:to_f)
  puts "%.1f" % ((a * 2 + b * 3 + c * 5) / 10)
end
