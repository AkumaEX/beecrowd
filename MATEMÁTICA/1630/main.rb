# frozen_string_literal:true

while (line = gets)
  x, y = line.split.map(&:to_i)
  puts 2 * (x + y) / x.gcd(y)
end
