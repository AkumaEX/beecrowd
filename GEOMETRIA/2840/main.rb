# frozen_string_literal:true

def ballons(radius, liters)
  pi = 3.1415
  volume = (4.0 / 3) * pi * radius**3
  (liters / volume).to_i
end

r, l = gets.split.map(&:to_i)
puts ballons(r, l)
