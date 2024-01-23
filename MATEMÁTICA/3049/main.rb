# frozen_string_literal:true

def bigger_size(b, t)
  size = b + t
  return 1 if size > 160
  return 2 if size < 160

  0
end

b = gets.to_i
t = gets.to_i
puts bigger_size(b, t)
