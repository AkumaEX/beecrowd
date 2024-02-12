# frozen_string_literal:true

while (line = gets)
  a, b, c = line.split.map(&:to_f)
  a *= 3.141592654 / 180
  puts format('%.2f', (Math.tan(a) * b + c) * 5)
end
