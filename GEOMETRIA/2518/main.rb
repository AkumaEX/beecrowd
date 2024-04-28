# frozen_string_literal:true

def area(n, h, c, l)
  d = (h**2 + c**2)**0.5
  n * d * l / 10_000
end

while n = gets&.to_i
  h, c, l = gets.split.map(&:to_i)
  puts format('%.4f', area(n, h, c, l))
end
