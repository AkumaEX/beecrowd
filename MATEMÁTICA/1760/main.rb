def area(l)
  l**2 * 2 * 3**0.5 / 5
end

$stdin.map(&:to_i).each do |l|
  puts "%.2f" % area(l)
end
