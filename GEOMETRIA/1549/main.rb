# frozen_string_literal:true

def h(n, l, b, _B, _H)
  return l / (n * Math::PI * b**2) if b == _B

  r = (((3 * l * (_B - b)) / (n * Math::PI * _H)) + b**3)**(1.0 / 3)
  _H * (r - b) / (_B - b)
end

c = gets.to_i
c.times do
  n, l = gets.split.map(&:to_i)
  b, _B, _H = gets.split.map(&:to_i)
  puts format('%.2f', h(n, l, b, _B, _H))
end
