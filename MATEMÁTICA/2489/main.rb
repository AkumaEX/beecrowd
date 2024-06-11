# frozen_string_literal:true

def h(a, d, r)
  x = (90 - r) * Math::PI / 180
  a - Math.tan(x) * d
end

while (line = gets)
  a, d, r = line.split.map(&:to_f)
  puts format('%.4f', h(a, d, r))
end
